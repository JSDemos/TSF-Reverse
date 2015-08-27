package com.tsf.shell.widget.cubeclock.test;

import android.graphics.Color;
import android.opengl.GLES20;
import com.censivn.C3DEngine.api.core.VObject3dContainer;
import com.censivn.C3DEngine.api.element.Number3d;
import com.censivn.C3DEngine.common.renderer.ShaderManager;
import com.tsf.shell.widget.cubeclock.R;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class CubeIcon extends VObject3dContainer {
    public static int hal;
    public static int one;
    public int BackGroundTexture;
    private int ColorIndex;
    public int ContentTexture;
    private int FrameCount;
    private int VerticesCount;
    private float cb;
    private float cg;
    private int[] colorArray;
    float[] colors;
    private float cr;
    private int currectColor;
    protected FloatBuffer mBufColors;
    protected FloatBuffer mBufTexCoords;
    protected FloatBuffer mBufVertices;
    private CubeColor mCubeColor;
    private int targetColor;
    private float tb;
    float[] texCoord;
    private float tg;
    private float tr;
    float[] vertices;

    static {
        one = 36;
        hal = one / 2;
    }

    public CubeIcon() {
        this.VerticesCount = 36;
        this.ContentTexture = 0;
        this.BackGroundTexture = 0;
        this.targetColor = 0;
        this.currectColor = 0;
        this.cr = 0.0f;
        this.cg = 0.0f;
        this.cb = 0.0f;
        this.FrameCount = 0;
        this.ColorIndex = 0;
        this.colorArray = new int[]{-8319731, -62196, -1609171, -536534, -13607043, -13667434, -13521439, -5315356, -16306422, -15901936, -15947500, -9712101, -15462385, -14540254, -13421773, -10066330};
        this.mCubeColor = new CubeColor();
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
        rotation().x = 30.0f;
        initVertices();
    }

    private void initVertices() {
        this.vertices = new float[]{(float) (-one), (float) one, (float) one, (float) (-one), (float) (-one), (float) one, (float) one, (float) one, (float) one, (float) one, (float) one, (float) one, (float) (-one), (float) (-one), (float) one, (float) one, (float) (-one), (float) one, (float) (-one), (float) one, (float) (-one), (float) (-one), (float) one, (float) one, (float) one, (float) one, (float) (-one), (float) one, (float) one, (float) (-one), (float) (-one), (float) one, (float) one, (float) one, (float) one, (float) one, (float) (-one), (float) (-one), (float) (-one), (float) (-one), (float) one, (float) (-one), (float) one, (float) (-one), (float) (-one), (float) one, (float) (-one), (float) (-one), (float) (-one), (float) one, (float) (-one), (float) one, (float) one, (float) (-one), (float) (-one), (float) (-one), (float) one, (float) (-one), (float) (-one), (float) (-one), (float) one, (float) (-one), (float) one, (float) one, (float) (-one), (float) one, (float) (-one), (float) (-one), (float) (-one), (float) one, (float) (-one), (float) (-one), (float) (-one), (float) one, (float) (-one), (float) (-one), (float) (-one), (float) (-one), (float) (-one), (float) one, (float) one, (float) (-one), (float) one, (float) one, (float) (-one), (float) (-one), (float) (-one), (float) (-one), (float) (-one), (float) one, (float) one, (float) one, (float) one, (float) one, (float) (-one), (float) one, (float) one, (float) one, (float) (-one), (float) one, (float) one, (float) (-one), (float) one, (float) (-one), (float) one, (float) one, (float) (-one), (float) (-one)};
        this.colors = new float[(this.VerticesCount * 4)];
        onColorChange(-13421773);
        exportColorBuffer(-13421773);
        this.mBufVertices.put(this.vertices);
        this.mBufTexCoords.put(this.mCubeColor.getColorFace());
        this.mBufTexCoords.put(this.mCubeColor.getColorFace());
        this.mBufTexCoords.put(this.mCubeColor.getColorFace());
        this.mBufTexCoords.put(this.mCubeColor.getColorFace());
        this.mBufTexCoords.put(this.mCubeColor.getColorFace());
        this.mBufTexCoords.put(this.mCubeColor.getColorFace());
        this.mBufVertices.position(0);
        this.mBufTexCoords.position(0);
    }

    public void onColorChange(int color) {
        this.targetColor = color;
        this.tr = (float) Color.red(this.targetColor);
        this.tg = (float) Color.green(this.targetColor);
        this.tb = (float) Color.blue(this.targetColor);
    }

    private void calculateColor() {
        float dr = Math.abs(this.tr - this.cr);
        float dg = Math.abs(this.tg - this.cg);
        float db = Math.abs(this.tb - this.cb);
        if (dr > 1.0f || dg > 1.0f || db > 1.0f) {
            invalidate();
            this.cr += (this.tr - this.cr) * 0.1f;
            this.cg += (this.tg - this.cg) * 0.1f;
            this.cb += (this.tb - this.cb) * 0.1f;
            exportColorBuffer(Color.argb(255, (int) this.cr, (int) this.cg, (int) this.cb));
        } else if (this.currectColor != this.targetColor) {
            this.cr = this.tr;
            this.cg = this.tg;
            this.cb = this.tb;
            exportColorBuffer(this.targetColor);
            this.currectColor = this.targetColor;
        }
    }

    public void exportColorBuffer(int color) {
        int r = Color.red(color);
        int g = Color.green(color);
        int b = Color.blue(color);
        int a = Color.alpha(color);
        int i = 0;
        while (i < this.VerticesCount) {
            if (i < 24) {
                switch (i % 6) {
                    case R.styleable.ColorPicker_color_wheel_radius /*0*/:
                    case R.styleable.ColorPicker_color_center_radius /*2*/:
                    case R.styleable.ColorPicker_color_center_halo_radius /*3*/:
                        this.colors[(i * 4) + 0] = ((float) r) / 255.0f;
                        this.colors[(i * 4) + 1] = ((float) g) / 255.0f;
                        this.colors[(i * 4) + 2] = ((float) b) / 255.0f;
                        this.colors[(i * 4) + 3] = ((float) a) / 255.0f;
                        break;
                    default:
                        this.colors[(i * 4) + 0] = (((float) r) / 255.0f) * 0.8f;
                        this.colors[(i * 4) + 1] = (((float) g) / 255.0f) * 0.8f;
                        this.colors[(i * 4) + 2] = (((float) b) / 255.0f) * 0.8f;
                        this.colors[(i * 4) + 3] = ((float) a) / 255.0f;
                        break;
                }
            } else if (i < 24 || i >= 36) {
                this.colors[(i * 4) + 0] = 1.0f;
                this.colors[(i * 4) + 1] = 1.0f;
                this.colors[(i * 4) + 2] = 1.0f;
                this.colors[(i * 4) + 3] = 1.0f;
            } else {
                this.colors[(i * 4) + 0] = (((float) r) / 255.0f) * 0.6f;
                this.colors[(i * 4) + 1] = (((float) g) / 255.0f) * 0.6f;
                this.colors[(i * 4) + 2] = (((float) b) / 255.0f) * 0.6f;
                this.colors[(i * 4) + 3] = ((float) a) / 255.0f;
            }
            i++;
        }
        this.mBufColors.position(0);
        this.mBufColors.put(this.colors);
        this.mBufColors.position(0);
    }

    public void setFaceTexture(int index, float[] texCoord) {
        this.mBufTexCoords.position((index * 24) + 72);
        this.mBufTexCoords.put(texCoord);
        this.mBufTexCoords.position(0);
    }

    public void onDrawStart() {
        Number3d rotation = rotation();
        rotation.y += 1.0f;
        this.FrameCount++;
        if (this.FrameCount % 120 == 0) {
            changeColor();
        }
    }

    private void changeColor() {
        this.ColorIndex++;
        if (this.ColorIndex >= this.colorArray.length) {
            this.ColorIndex = 0;
        }
        onColorChange(this.colorArray[this.ColorIndex]);
    }

    public void dispatchDraw() {
        if (colorFillEnable()) {
            setCustomShader(ShaderManager.SHADER_COLOR_TEXTURE);
        } else {
            setCustomShader(ShaderManager.SHADER_COLOR_TEXTURE);
        }
        super.dispatchDraw();
    }

    public void drawElement() {
        calculateColor();
        boolean colorFill = colorFillEnable();
        if (visible()) {
            if (colorFill) {
                ShaderManager.SHADER_COLOR_TEXTURE.glMVPMatrix();
                ShaderManager.SHADER_COLOR_TEXTURE.glTexCoordPointer(2, 5126, false, 0, this.mBufTexCoords);
                ShaderManager.SHADER_COLOR_TEXTURE.glVertexPointer(3, 5126, false, 0, this.mBufVertices);
                ShaderManager.SHADER_COLOR_TEXTURE.glColor4f(this);
            } else {
                ShaderManager.SHADER_COLOR_TEXTURE.glMVPMatrix();
                ShaderManager.SHADER_COLOR_TEXTURE.glTexCoordPointer(2, 5126, false, 0, this.mBufTexCoords);
                ShaderManager.SHADER_COLOR_TEXTURE.glVertexPointer(3, 5126, false, 0, this.mBufVertices);
                ShaderManager.SHADER_COLOR_TEXTURE.glColorPointer(4, 5126, false, 0, this.mBufColors);
            }
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, this.mCubeColor.mTexture.id);
            GLES20.glDrawArrays(4, 0, 36);
            GLES20.glDisableVertexAttribArray(ShaderManager.SHADER_COLOR_TEXTURE.maColor4Handle);
            GLES20.glDisableVertexAttribArray(ShaderManager.CURRENT_SHADER.maPositionHandle);
            GLES20.glDisableVertexAttribArray(ShaderManager.CURRENT_SHADER.maTextureHandle);
            GLES20.glBindTexture(3553, 0);
        }
    }
}
