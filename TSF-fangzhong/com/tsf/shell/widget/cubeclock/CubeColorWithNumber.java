package com.tsf.shell.widget.cubeclock;

import android.opengl.GLES20;
import com.censivn.C3DEngine.api.core.VObject3dContainer;
import com.censivn.C3DEngine.common.renderer.ShaderManager;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class CubeColorWithNumber extends VObject3dContainer {
    public static int hal;
    public static int one;
    private int VerticesCount;
    float[] colors;
    protected FloatBuffer mBufColors;
    protected FloatBuffer mBufTexCoords;
    protected FloatBuffer mBufVertices;
    float[] texCoord;
    public int textureId;
    float[] vertices;

    static {
        one = 64;
        hal = one / 2;
    }

    public CubeColorWithNumber() {
        this.VerticesCount = 60;
        this.textureId = 0;
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
        rotation().x = -360.0f;
    }

    public void initVertices() {
        this.vertices = new float[]{(float) (-one), (float) one, (float) one, (float) (-one), (float) (-one), (float) one, 0.0f, (float) one, (float) one, 0.0f, (float) one, (float) one, (float) (-one), (float) (-one), (float) one, 0.0f, (float) (-one), (float) one, 0.0f, (float) one, (float) one, 0.0f, (float) (-one), (float) one, (float) one, (float) one, (float) one, (float) one, (float) one, (float) one, 0.0f, (float) (-one), (float) one, (float) one, (float) (-one), (float) one, (float) (-one), (float) one, (float) (-one), (float) (-one), (float) one, (float) one, 0.0f, (float) one, (float) (-one), 0.0f, (float) one, (float) (-one), (float) (-one), (float) one, (float) one, 0.0f, (float) one, (float) one, 0.0f, (float) one, (float) (-one), 0.0f, (float) one, (float) one, (float) one, (float) one, (float) (-one), (float) one, (float) one, (float) (-one), 0.0f, (float) one, (float) one, (float) one, (float) one, (float) one, (float) (-one), (float) (-one), (float) (-one), (float) (-one), (float) one, (float) (-one), 0.0f, (float) (-one), (float) (-one), 0.0f, (float) (-one), (float) (-one), (float) (-one), (float) one, (float) (-one), 0.0f, (float) one, (float) (-one), 0.0f, (float) (-one), (float) (-one), 0.0f, (float) one, (float) (-one), (float) one, (float) (-one), (float) (-one), (float) one, (float) (-one), (float) (-one), 0.0f, (float) one, (float) (-one), (float) one, (float) one, (float) (-one), (float) (-one), (float) (-one), (float) one, (float) (-one), (float) (-one), (float) (-one), 0.0f, (float) (-one), (float) one, 0.0f, (float) (-one), (float) one, (float) (-one), (float) (-one), (float) (-one), 0.0f, (float) (-one), (float) (-one), 0.0f, (float) (-one), (float) one, 0.0f, (float) (-one), (float) (-one), (float) one, (float) (-one), (float) one, (float) one, (float) (-one), (float) one, 0.0f, (float) (-one), (float) (-one), (float) one, (float) (-one), (float) (-one), (float) (-one), (float) one, (float) (-one), (float) (-one), (float) (-one), (float) (-one), (float) (-one), (float) one, (float) one, (float) (-one), (float) one, (float) one, (float) (-one), (float) (-one), (float) (-one), (float) (-one), (float) (-one), (float) one, (float) one, (float) one, (float) one, (float) one, (float) (-one), (float) one, (float) one, (float) one, (float) (-one), (float) one, (float) one, (float) (-one), (float) one, (float) (-one), (float) one, (float) one, (float) (-one), (float) (-one)};
        this.colors = new float[240];
        for (int i = 0; i < 60; i++) {
            if (i < 48) {
                switch (i % 12) {
                    case R.styleable.ColorPicker_color_wheel_radius /*0*/:
                    case R.styleable.ColorPicker_color_center_radius /*2*/:
                    case R.styleable.ColorPicker_color_center_halo_radius /*3*/:
                    case 6:
                    case 8:
                    case 9:
                        this.colors[i * 4] = 1.0f;
                        this.colors[(i * 4) + 1] = 1.0f;
                        this.colors[(i * 4) + 2] = 1.0f;
                        this.colors[(i * 4) + 3] = 1.0f;
                        break;
                    default:
                        this.colors[i * 4] = 0.6f;
                        this.colors[(i * 4) + 1] = 0.6f;
                        this.colors[(i * 4) + 2] = 0.6f;
                        this.colors[(i * 4) + 3] = 1.0f;
                        break;
                }
            }
            this.colors[i * 4] = 1.0f;
            this.colors[(i * 4) + 1] = 1.0f;
            this.colors[(i * 4) + 2] = 1.0f;
            this.colors[(i * 4) + 3] = 1.0f;
        }
        this.mBufVertices.put(this.vertices);
        this.mBufColors.put(this.colors);
        this.mBufColors.position(0);
        this.mBufVertices.position(0);
        this.mBufTexCoords.position(0);
    }

    public void setFaceTexture(int index, float[] texCoord) {
        this.mBufTexCoords.position(index * 24);
        this.mBufTexCoords.put(texCoord);
        this.mBufTexCoords.position(0);
    }

    public void setColorFace(CubeTexture cube) {
        Log.e("aaaa" + cube);
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
            GLES20.glBindTexture(3553, this.textureId);
            GLES20.glDrawArrays(4, 0, this.VerticesCount);
            GLES20.glDisableVertexAttribArray(ClockWidget.mShaderColorTexture.maColor4Handle);
            GLES20.glDisableVertexAttribArray(ShaderManager.CURRENT_SHADER.maPositionHandle);
            GLES20.glDisableVertexAttribArray(ShaderManager.CURRENT_SHADER.maTextureHandle);
            GLES20.glBindTexture(3553, 0);
        }
    }
}
