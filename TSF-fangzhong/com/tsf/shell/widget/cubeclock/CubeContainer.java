package com.tsf.shell.widget.cubeclock;

import android.view.MotionEvent;
import com.censivn.C3DEngine.api.core.VObject3dContainer;
import com.censivn.C3DEngine.api.element.PositionNumber3d;
import com.censivn.C3DEngine.api.event.VMouseEventListener;
import com.censivn.C3DEngine.api.tween.VTween;
import com.censivn.C3DEngine.api.tween.VTweenParam;

public class CubeContainer extends VObject3dContainer {
    int PrevGrid;
    public Cube cube;
    private int currectIndex;
    private CubeAdapter mCubeAdapter;
    private int selectedIndex;
    private float speedZ;
    private float targetZ;

    public CubeContainer() {
        this.cube = new Cube();
        this.targetZ = 0.0f;
        this.speedZ = 0.8f;
        this.currectIndex = 0;
        this.selectedIndex = 0;
        this.PrevGrid = 0;
        ClockWidget.mObjectManager.addObject(this);
        addChild(this.cube);
        setMouseEventListener(new VMouseEventListener(this) {
            boolean isFling;
            float rotationX;

            public void onDown(MotionEvent me) {
                this.isFling = false;
                this.rotationX = CubeContainer.this.cube.rotation().x;
                CubeContainer.this.targetZ = -100.0f;
                CubeContainer.this.speedZ = 0.8f;
                VTween.killTween(CubeContainer.this.cube);
            }

            public void onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
                VTween.killTween(CubeContainer.this.cube);
                UpdateTimer.delayTimer();
                float diffY = ((e2.getY() - e1.getY()) / 64.0f) * 90.0f;
                Log.e("Scroll rotationX:" + (this.rotationX + diffY));
                CubeContainer.this.cube.rotation().x = this.rotationX + diffY;
                CubeContainer.this.cube.invalidate();
            }

            public void onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
                this.isFling = true;
                CubeContainer.this.setCubeIndex(Math.round((this.rotationX + ((velocityY < 0.0f ? -1.0f : 1.0f) * 900.0f)) / 90.0f), 500);
            }

            public void onSingleTapUp(MotionEvent me) {
                int cubeindex = CubeContainer.this.calculateGrid(CubeContainer.this.cube.rotation().x);
                Log.e("hit CubeIndex:" + cubeindex);
                int AdapterIndex = CubeContainer.this.getCurrnetAdapterIndex(cubeindex);
                if (CubeContainer.this.mCubeAdapter != null) {
                    CubeContainer.this.mCubeAdapter.ItemOnClick(AdapterIndex);
                }
            }

            public void onUp(MotionEvent me) {
                CubeContainer.this.targetZ = 0.0f;
                CubeContainer.this.speedZ = 0.2f;
                UpdateTimer.delayTimer();
                if (!this.isFling) {
                    int target = Math.round(CubeContainer.this.cube.rotation().x / 90.0f);
                    Log.e("EndingRotationX:" + target);
                    CubeContainer.this.setCubeIndex(target, 500);
                }
            }
        });
        setAABBPX(-64.0f * ClockWidget.SD2HDScale, -64.0f * ClockWidget.SD2HDScale, 64.0f * ClockWidget.SD2HDScale, 64.0f * ClockWidget.SD2HDScale, 64.0f * ClockWidget.SD2HDScale, -64.0f * ClockWidget.SD2HDScale);
    }

    public void onDrawStart() {
        int nowGrid = calculateGrid(this.cube.rotation().x);
        if (nowGrid != this.PrevGrid) {
            updateCubeFaceTexCoord(this.PrevGrid, nowGrid);
        }
        this.PrevGrid = nowGrid;
        float diff = (this.targetZ - this.cube.position().z) * this.speedZ;
        PositionNumber3d position = this.cube.position();
        position.z += diff;
        if (Math.abs(diff) < 0.02f) {
            this.cube.position().z = this.targetZ;
            if (this.mCubeAdapter != null) {
                int adapterIndex = getCurrnetAdapterIndex(this.currectIndex);
                if (this.selectedIndex != adapterIndex) {
                    this.selectedIndex = adapterIndex;
                    this.mCubeAdapter.onItemSelect(adapterIndex);
                }
            }
        }
    }

    public void notificationCubeDataSetChange() {
        VTweenParam tp = new VTweenParam();
        float degree = 360.0f;
        if (Math.random() < 0.5d) {
            degree = 360.0f * -1.0f;
        }
        tp.setRotationX(degree);
        VTween.killTween(this.cube);
        VTween.to(this.cube, 1000, tp);
    }

    public int calculateGrid(float degree) {
        return Math.round(degree / 90.0f);
    }

    public void setAdapter(CubeAdapter adapter, CubeTexture texture) {
        this.mCubeAdapter = adapter;
        this.mCubeAdapter.setCubeContainer(this);
        this.cube.ContentTexture = texture.mTexture.id;
        updateAllFace();
    }

    public void updateCubeFaceTexCoord(int prevFaceIndex, int nowFaceIndex) {
        int diff = 2;
        if (this.mCubeAdapter == null) {
            return;
        }
        if (Math.abs(nowFaceIndex - prevFaceIndex) < 2) {
            if (nowFaceIndex <= prevFaceIndex) {
                diff = -2;
            }
            int BackFaceIndex = prevFaceIndex + diff;
            this.cube.setFaceTexture(getCurrentBackFaceIndex(BackFaceIndex), this.mCubeAdapter.getFaceTexCoord(getCurrnetAdapterIndex(BackFaceIndex)));
            return;
        }
        updateAllFace();
    }

    private void updateAllFace() {
        if (this.mCubeAdapter != null) {
            int cubeindex = calculateGrid(this.cube.rotation().x);
            this.cube.setFaceTexture(getCurrentBackFaceIndex(cubeindex), this.mCubeAdapter.getFaceTexCoord(getCurrnetAdapterIndex(cubeindex)));
            cubeindex = calculateGrid(this.cube.rotation().x + 90.0f);
            this.cube.setFaceTexture(getCurrentBackFaceIndex(cubeindex), this.mCubeAdapter.getFaceTexCoord(getCurrnetAdapterIndex(cubeindex)));
            cubeindex = calculateGrid(this.cube.rotation().x - 90.0f);
            this.cube.setFaceTexture(getCurrentBackFaceIndex(cubeindex), this.mCubeAdapter.getFaceTexCoord(getCurrnetAdapterIndex(cubeindex)));
        }
    }

    public int getCurrentBackFaceIndex(int backface) {
        int BackFaceIndex = backface % 4;
        if (BackFaceIndex < 0) {
            return BackFaceIndex + 4;
        }
        return BackFaceIndex;
    }

    public int getCurrnetAdapterIndex(int CubeIndex) {
        int faceCount = this.mCubeAdapter.getCount();
        int AdatperIndex = CubeIndex % faceCount;
        if (AdatperIndex < 0) {
            return AdatperIndex + faceCount;
        }
        return AdatperIndex;
    }

    public void setCubeIndex(int index, int time) {
        if (this.mCubeAdapter != null) {
            float target = (float) (index * 90);
            VTweenParam tp = new VTweenParam();
            tp.setRotationX(target);
            VTween.killTween(this.cube);
            VTween.to(this.cube, time, tp);
            if (this.currectIndex != index) {
                this.mCubeAdapter.onItemRelease(getCurrnetAdapterIndex(this.currectIndex));
            }
            this.currectIndex = index;
        }
    }

    public int getCubeIndex() {
        return calculateGrid(this.cube.rotation().x);
    }
}
