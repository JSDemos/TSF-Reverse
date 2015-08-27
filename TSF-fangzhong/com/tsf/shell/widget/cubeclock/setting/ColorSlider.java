package com.tsf.shell.widget.cubeclock.setting;

import android.graphics.Color;
import android.opengl.GLES20;
import android.view.MotionEvent;
import com.censivn.C3DEngine.api.core.VObject3d;
import com.censivn.C3DEngine.api.core.VObject3dContainer;
import com.censivn.C3DEngine.api.element.Number3d;
import com.censivn.C3DEngine.api.event.VMouseEventListener;
import com.censivn.C3DEngine.api.shell.VInformation;
import com.censivn.C3DEngine.common.renderer.MatrixStack;
import com.censivn.C3DEngine.common.renderer.ShaderManager;
import com.tsf.shell.widget.cubeclock.ClockWidget;
import com.tsf.shell.widget.cubeclock.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Collections;

public class ColorSlider extends VObject3dContainer {
    public static int hal;
    public static int one;
    public int BackGroundTexture;
    public int ContentTexture;
    private int SelectedColor;
    private int VerticesCount;
    public int[] colorArray;
    protected FloatBuffer mBufColors;
    protected FloatBuffer mBufTexCoords;
    protected FloatBuffer mBufVertices;
    private ArrayList<ColorPlane> mColorList;
    private ArrayList<ColorPlane> mColorSortList;
    private float targetIndex;

    class ColorPlane implements Comparable<ColorPlane> {
        public int colorCode;
        public int index;
        public float scale;
        public float targetScale;

        public ColorPlane(int _index) {
            this.targetScale = 1.0f;
            this.scale = 1.0f;
            this.colorCode = -1;
            this.index = _index;
        }

        public int compareTo(ColorPlane another) {
            if (this.scale != another.scale) {
                return another.scale > this.scale ? -1 : 1;
            } else {
                return 0;
            }
        }
    }

    class MouseEvent extends VMouseEventListener {
        private float SilderBarSize;
        private float SilderBarhalf;
        Number3d local;

        public MouseEvent(VObject3d target) {
            super(target);
            this.local = new Number3d(0.0f, 0.0f, 0.0f);
            this.SilderBarSize = 416.0f * ClockWidget.SD2HDScale;
            this.SilderBarhalf = this.SilderBarSize / 2.0f;
        }

        public void onDown(MotionEvent me) {
            Log.e("onDown" + me.getX());
        }

        public void onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            ColorSlider.this.targetIndex = getTarget(getLocal(e2).x);
            ColorSlider.this.setColor((int) Math.floor((double) ColorSlider.this.targetIndex));
            ColorSlider.this.invalidate();
        }

        public void onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
        }

        public void onSingleTapUp(MotionEvent me) {
            ColorSlider.this.targetIndex = getTarget(getLocal(me).x);
            ColorSlider.this.setColor((int) Math.floor((double) ColorSlider.this.targetIndex));
            ColorSlider.this.invalidate();
        }

        public void onUp(MotionEvent me) {
            ColorSlider.this.targetIndex = -5.0f;
        }

        private Number3d getLocal(MotionEvent ev) {
            float EngineHeight = (float) VInformation.getScreenHeight();
            float EngineWidth = (float) VInformation.getScreenWidth();
            this.local.x = ev.getX() - (EngineWidth / 2.0f);
            this.local.y = 0.0f - (ev.getY() - (EngineHeight / 2.0f));
            this.local.z = 0.0f;
            return ColorSlider.this.globalToLocal(this.local);
        }

        private float getTarget(float x) {
            float target = ((this.SilderBarhalf + x) / this.SilderBarSize) * 16.0f;
            if (target < 0.0f) {
                return 0.0f;
            }
            if (target > 15.0f) {
                return 15.0f;
            }
            return target;
        }
    }

    static {
        one = 26;
        hal = one / 2;
    }

    public ColorSlider() {
        this.VerticesCount = 96;
        this.ContentTexture = 0;
        this.BackGroundTexture = 0;
        this.mColorList = new ArrayList();
        this.mColorSortList = new ArrayList();
        this.colorArray = new int[]{-8319731, -62196, -1609171, -536534, -13607043, -13667434, -13521439, -5315356, -16306422, -15901936, -15947500, -9712101, -15462385, -14540254, -13421773, -10066330};
        this.targetIndex = -5.0f;
        this.SelectedColor = -13421773;
        ClockWidget.mObjectManager.addObject(this);
        scale().x = ClockWidget.SD2HDScale;
        scale().y = ClockWidget.SD2HDScale;
        scale().z = ClockWidget.SD2HDScale;
        ByteBuffer vbb = ByteBuffer.allocateDirect((this.VerticesCount * 3) * 4);
        vbb.order(ByteOrder.nativeOrder());
        this.mBufVertices = vbb.asFloatBuffer();
        this.mBufVertices.position(0);
        ByteBuffer tbb = ByteBuffer.allocateDirect((this.VerticesCount * 2) * 4);
        tbb.order(ByteOrder.nativeOrder());
        this.mBufTexCoords = tbb.asFloatBuffer();
        this.mBufTexCoords.position(0);
        ByteBuffer cbb = ByteBuffer.allocateDirect((this.VerticesCount * 4) * 4);
        cbb.order(ByteOrder.nativeOrder());
        this.mBufColors = cbb.asFloatBuffer();
        this.mBufColors.position(0);
        initVertices();
        setMouseEventListener(new MouseEvent(this));
        setAABBSP((-588.0f / ClockWidget.HDScale) / 2.0f, (-144.0f / ClockWidget.HDScale) / 2.0f, 0.0f, (588.0f / ClockWidget.HDScale) / 2.0f, (144.0f / ClockWidget.HDScale) / 2.0f, 0.0f);
    }

    private void setColor(int index) {
        this.SelectedColor = this.colorArray[index];
        this.SelectedColor = getColorWithBrightness(this.SelectedColor);
        ClockWidget.mSingleColorTexture.onColorChange(this.SelectedColor);
    }

    public int getColor() {
        return this.SelectedColor;
    }

    private int getColorWithBrightness(int color) {
        return Color.argb(255, (int) (((float) Color.red(color)) * ColorSetting.Brightness), (int) (((float) Color.green(color)) * ColorSetting.Brightness), (int) (((float) Color.blue(color)) * ColorSetting.Brightness));
    }

    private void initVertices() {
        int i;
        float diff = 7.5f * ((float) one);
        float[] base = new float[]{((float) (-hal)) - diff, (float) one, 0.0f, ((float) (-hal)) - diff, (float) (-one), 0.0f, ((float) hal) - diff, (float) one, 0.0f, ((float) hal) - diff, (float) one, 0.0f, ((float) (-hal)) - diff, (float) (-one), 0.0f, ((float) hal) - diff, (float) (-one), 0.0f};
        for (i = 0; i < 16; i++) {
            ColorPlane mColorPlane = new ColorPlane(i);
            this.mColorList.add(mColorPlane);
            this.mColorSortList.add(mColorPlane);
            this.mBufVertices.put(base);
            for (int j = 0; j < 6; j++) {
                int i2 = j * 3;
                base[i2] = base[i2] + ((float) one);
            }
        }
        for (i = 0; i < 16; i++) {
            this.mBufTexCoords.put(ClockWidget.mSingleColorTexture.getColorFace());
        }
        setSliderColor(1.0f);
        this.mBufVertices.position(0);
        this.mBufTexCoords.position(0);
    }

    public void setSliderColor(float brightness) {
        this.mBufColors.position(0);
        float[] colors = new float[(this.VerticesCount * 4)];
        for (int i = 0; i < this.VerticesCount; i++) {
            int color = this.colorArray[i / 6];
            colors[(i * 4) + 0] = (((float) Color.red(color)) * brightness) / 255.0f;
            colors[(i * 4) + 1] = (((float) Color.green(color)) * brightness) / 255.0f;
            colors[(i * 4) + 2] = (((float) Color.blue(color)) * brightness) / 255.0f;
            colors[(i * 4) + 3] = 255.0f;
        }
        this.mBufColors.put(colors);
        this.mBufColors.position(0);
        invalidate();
    }

    public void onDrawStart() {
    }

    public void dispatchDraw() {
        if (colorFillEnable()) {
            setCustomShader(ClockWidget.mShaderColorTexture);
        } else {
            setCustomShader(ClockWidget.mShaderColorTexture);
        }
        super.dispatchDraw();
    }

    public void drawElement() {
        boolean colorFill = colorFillEnable();
        if (visible()) {
            if (colorFill) {
                ClockWidget.mShaderColorTexture.glMVPMatrix();
                ClockWidget.mShaderColorTexture.glTexCoordPointer(2, 5126, false, 0, this.mBufTexCoords);
                ClockWidget.mShaderColorTexture.glVertexPointer(3, 5126, false, 0, this.mBufVertices);
                ClockWidget.mShaderColorTexture.glColor4f(this);
            } else {
                ClockWidget.mShaderColorTexture.glMVPMatrix();
                ClockWidget.mShaderColorTexture.glTexCoordPointer(2, 5126, false, 0, this.mBufTexCoords);
                ClockWidget.mShaderColorTexture.glVertexPointer(3, 5126, false, 0, this.mBufVertices);
                ClockWidget.mShaderColorTexture.glColorPointer(4, 5126, false, 0, this.mBufColors);
            }
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, ClockWidget.mSingleColorTexture.mTexture.id);
            Collections.sort(this.mColorSortList);
            calculateScale();
            for (int i = 0; i < 16; i++) {
                ColorPlane plane = (ColorPlane) this.mColorSortList.get(i);
                MatrixStack.glPushMatrix();
                MatrixStack.glScalef((plane.scale / 10.0f) + 1.0f, plane.scale, 1.0f);
                ClockWidget.mShaderColorTexture.glMVPMatrix();
                GLES20.glDrawArrays(4, plane.index * 6, 6);
                MatrixStack.glPopMatrix();
            }
            GLES20.glDisableVertexAttribArray(ClockWidget.mShaderColorTexture.maColor4Handle);
            GLES20.glDisableVertexAttribArray(ShaderManager.CURRENT_SHADER.maPositionHandle);
            GLES20.glDisableVertexAttribArray(ShaderManager.CURRENT_SHADER.maTextureHandle);
            GLES20.glBindTexture(3553, 0);
        }
    }

    private void calculateScale() {
        int max = this.mColorList.size();
        boolean needInvalidate = false;
        for (int i = 0; i < max; i++) {
            ColorPlane c = (ColorPlane) this.mColorList.get(i);
            float diff = Math.abs(this.targetIndex - ((float) c.index)) / 3.0f;
            if (diff > 1.0f) {
                diff = 1.0f;
            }
            c.targetScale = 2.0f - diff;
            c.scale += (c.targetScale - c.scale) * 0.4f;
            if (c.scale > 1.1f) {
                needInvalidate = true;
            }
        }
        if (needInvalidate) {
            invalidate();
        }
    }
}
