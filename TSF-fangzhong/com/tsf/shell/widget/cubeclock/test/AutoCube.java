package com.tsf.shell.widget.cubeclock.test;

import com.censivn.C3DEngine.api.core.VObject3dContainer;
import com.censivn.C3DEngine.api.element.Number3d;
import com.censivn.C3DEngine.api.tween.VTween;
import com.censivn.C3DEngine.api.tween.VTweenParam;

public class AutoCube extends VObject3dContainer {
    private int PrevGrid;
    public CubeIcon cube;
    private int currectIndex;
    private CubeAdapter mCubeAdapter;

    public AutoCube() {
        this.cube = new CubeIcon();
        this.currectIndex = 0;
        this.PrevGrid = 0;
        setAdapter(new HourCubeAdapter(), new NumberTexture());
        addChild(this.cube);
    }

    public void onDrawStart() {
        int nowGrid = calculateGrid(this.cube.rotation().x);
        if (nowGrid != this.PrevGrid) {
            updateCubeFaceTexCoord(this.PrevGrid, nowGrid);
        }
        this.PrevGrid = nowGrid;
        Number3d rotation = this.cube.rotation();
        rotation.y += 1.0f;
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
