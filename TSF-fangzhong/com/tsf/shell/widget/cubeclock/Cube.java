package com.tsf.shell.widget.cubeclock;

import android.graphics.Color;
import android.opengl.GLES20;
import com.censivn.C3DEngine.api.core.VObject3dContainer;
import com.censivn.C3DEngine.common.renderer.ShaderManager;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class Cube extends VObject3dContainer {
    public static int hal;
    public static int one;
    public static int oneX;
    public int BackGroundTexture;
    public int ContentTexture;
    private int VerticesCount;
    private float cb;
    private float cg;
    float[] colors;
    private float cr;
    private int currectColor;
    protected FloatBuffer mBufColors;
    protected FloatBuffer mBufTexCoords;
    protected FloatBuffer mBufVertices;
    private int targetColor;
    private float tb;
    float[] texCoord;
    private float tg;
    private float tr;
    float[] vertices;

    static {
        one = 63;
        hal = one / 2;
        oneX = 64;
    }

    public Cube() {
        this.VerticesCount = 84;
        this.ContentTexture = 0;
        this.BackGroundTexture = 0;
        this.targetColor = 0;
        this.currectColor = 0;
        this.cr = 0.0f;
        this.cg = 0.0f;
        this.cb = 0.0f;
        ClockWidget.mObjectManager.addObject(this);
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
        ClockWidget.mSingleColorTexture.registerCube(this);
        rotation().x = -360.0f;
    }

    private void initVertices() {
        this.vertices = new float[]{(float) (-oneX), (float) oneX, (float) one, (float) (-oneX), (float) (-oneX), (float) one, (float) oneX, (float) oneX, (float) one, (float) oneX, (float) oneX, (float) one, (float) (-oneX), (float) (-oneX), (float) one, (float) oneX, (float) (-oneX), (float) one, (float) (-oneX), (float) one, (float) (-oneX), (float) (-oneX), (float) one, (float) oneX, (float) oneX, (float) one, (float) (-oneX), (float) oneX, (float) one, (float) (-oneX), (float) (-oneX), (float) one, (float) oneX, (float) oneX, (float) one, (float) oneX, (float) (-oneX), (float) (-oneX), (float) (-one), (float) (-oneX), (float) oneX, (float) (-one), (float) oneX, (float) (-oneX), (float) (-one), (float) oneX, (float) (-oneX), (float) (-one), (float) (-oneX), (float) oneX, (float) (-one), (float) oneX, (float) oneX, (float) (-one), (float) (-oneX), (float) (-one), (float) oneX, (float) (-oneX), (float) (-one), (float) (-oneX), (float) oneX, (float) (-one), (float) oneX, (float) oneX, (float) (-one), (float) oneX, (float) (-oneX), (float) (-one), (float) (-oneX), (float) oneX, (float) (-one), (float) (-oneX), (float) (-one), (float) oneX, (float) (-oneX), (float) (-one), (float) (-oneX), (float) (-oneX), (float) (-one), (float) oneX, (float) oneX, (float) (-one), (float) oneX, (float) oneX, (float) (-one), (float) (-oneX), (float) (-oneX), (float) (-one), (float) (-oneX), (float) oneX, (float) one, (float) oneX, (float) oneX, (float) one, (float) (-oneX), (float) oneX, (float) one, (float) oneX, (float) (-oneX), (float) one, (float) oneX, (float) (-oneX), (float) one, (float) (-oneX), (float) oneX, (float) one, (float) (-oneX), (float) (-oneX), (float) (-one), (float) one, (float) one, (float) (-one), (float) (-one), (float) one, 0.0f, (float) one, (float) one, 0.0f, (float) one, (float) one, (float) (-one), (float) (-one), (float) one, 0.0f, (float) (-one), (float) one, 0.0f, (float) one, (float) one, 0.0f, (float) (-one), (float) one, (float) one, (float) one, (float) one, (float) one, (float) one, (float) one, 0.0f, (float) (-one), (float) one, (float) one, (float) (-one), (float) one, (float) (-one), (float) one, (float) (-one), (float) (-one), (float) one, (float) one, 0.0f, (float) one, (float) (-one), 0.0f, (float) one, (float) (-one), (float) (-one), (float) one, (float) one, 0.0f, (float) one, (float) one, 0.0f, (float) one, (float) (-one), 0.0f, (float) one, (float) one, (float) one, (float) one, (float) (-one), (float) one, (float) one, (float) (-one), 0.0f, (float) one, (float) one, (float) one, (float) one, (float) one, (float) (-one), (float) (-one), (float) (-one), (float) (-one), (float) one, (float) (-one), 0.0f, (float) (-one), (float) (-one), 0.0f, (float) (-one), (float) (-one), (float) (-one), (float) one, (float) (-one), 0.0f, (float) one, (float) (-one), 0.0f, (float) (-one), (float) (-one), 0.0f, (float) one, (float) (-one), (float) one, (float) (-one), (float) (-one), (float) one, (float) (-one), (float) (-one), 0.0f, (float) one, (float) (-one), (float) one, (float) one, (float) (-one), (float) (-one), (float) (-one), (float) one, (float) (-one), (float) (-one), (float) (-one), 0.0f, (float) (-one), (float) one, 0.0f, (float) (-one), (float) one, (float) (-one), (float) (-one), (float) (-one), 0.0f, (float) (-one), (float) (-one), 0.0f, (float) (-one), (float) one, 0.0f, (float) (-one), (float) (-one), (float) one, (float) (-one), (float) one, (float) one, (float) (-one), (float) one, 0.0f, (float) (-one), (float) (-one), (float) one, (float) (-one), (float) (-one)};
        this.colors = new float[(this.VerticesCount * 4)];
        exportColorBuffer(-13421773);
        this.mBufVertices.put(this.vertices);
        this.mBufTexCoords.put(ClockWidget.mSingleColorTexture.getColorFace());
        this.mBufTexCoords.put(ClockWidget.mSingleColorTexture.getColorFace());
        this.mBufTexCoords.put(ClockWidget.mSingleColorTexture.getColorFace());
        this.mBufTexCoords.put(ClockWidget.mSingleColorTexture.getColorFace());
        this.mBufTexCoords.put(ClockWidget.mSingleColorTexture.getColorFace());
        this.mBufTexCoords.put(ClockWidget.mSingleColorTexture.getColorFace());
        this.mBufVertices.position(0);
        this.mBufTexCoords.position(0);
    }

    public void onColorChange(int color) {
        this.targetColor = color;
        this.tr = (float) Color.red(this.targetColor);
        this.tg = (float) Color.green(this.targetColor);
        this.tb = (float) Color.blue(this.targetColor);
    }

    public void onSetColor(int color) {
        this.targetColor = color;
        this.currectColor = color;
        float red = (float) Color.red(this.targetColor);
        this.cr = red;
        this.tr = red;
        red = (float) Color.green(this.targetColor);
        this.cg = red;
        this.tg = red;
        red = (float) Color.blue(this.targetColor);
        this.cb = red;
        this.tb = red;
        exportColorBuffer(color);
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
            return;
        }
        if (this.currectColor != this.targetColor) {
            this.cr = this.tr;
            this.cg = this.tg;
            this.cb = this.tb;
            this.currectColor = this.targetColor;
            Log.e("Widget Cube Slient First");
        }
        exportColorBuffer(this.currectColor);
    }

    public int calculateGrid(float degree) {
        return Math.round(degree / 90.0f);
    }

    private float calculateRotProp(float degree) {
        float prop = ((45.0f + degree) % 90.0f) / 90.0f;
        if (prop < 0.0f) {
            return prop + 1.0f;
        }
        return prop;
    }

    public void exportColorBuffer(int color) {
        int r = Color.red(color);
        int g = Color.green(color);
        int b = Color.blue(color);
        int a = Color.alpha(color);
        int frontface = calculateArrayIndex(calculateGrid(rotation().x), 4);
        int prevface = calculateArrayIndex(frontface - 1, 4);
        int nextface = calculateArrayIndex(frontface + 1, 4);
        float prop = calculateRotProp(rotation().x);
        float propTop = ((double) prop) < 0.5d ? prop / 0.5f : 1.0f;
        float propBottom = prop > 0.5f ? (1.0f - prop) / 0.5f : 1.0f;
        float dark = 0.7f;
        float darkdiff = 1.0f - 0.7f;
        int i = 0;
        while (true) {
            int i2 = this.VerticesCount;
            if (i >= r0) {
                this.mBufColors.position(0);
                this.mBufColors.put(this.colors);
                this.mBufColors.position(0);
                return;
            }
            int index;
            int face;
            if (i < 24) {
                index = i % 6;
                face = i / 6;
                if (face != frontface) {
                    if (face != prevface) {
                        if (face != nextface) {
                            switch (index) {
                                case R.styleable.ColorPicker_color_wheel_radius /*0*/:
                                case R.styleable.ColorPicker_color_center_radius /*2*/:
                                case R.styleable.ColorPicker_color_center_halo_radius /*3*/:
                                    this.colors[(i * 4) + 0] = ((float) r) / 255.0f;
                                    this.colors[(i * 4) + 1] = ((float) g) / 255.0f;
                                    this.colors[(i * 4) + 2] = ((float) b) / 255.0f;
                                    this.colors[(i * 4) + 3] = ((float) a) / 255.0f;
                                    break;
                                default:
                                    this.colors[(i * 4) + 0] = (((float) r) / 255.0f) * 0.7f;
                                    this.colors[(i * 4) + 1] = (((float) g) / 255.0f) * 0.7f;
                                    this.colors[(i * 4) + 2] = (((float) b) / 255.0f) * 0.7f;
                                    this.colors[(i * 4) + 3] = ((float) a) / 255.0f;
                                    break;
                            }
                        }
                        switch (index) {
                            case R.styleable.ColorPicker_color_wheel_radius /*0*/:
                            case R.styleable.ColorPicker_color_center_radius /*2*/:
                            case R.styleable.ColorPicker_color_center_halo_radius /*3*/:
                                this.colors[(i * 4) + 0] = (((float) r) / 255.0f) * dark;
                                this.colors[(i * 4) + 1] = (((float) g) / 255.0f) * dark;
                                this.colors[(i * 4) + 2] = (((float) b) / 255.0f) * dark;
                                this.colors[(i * 4) + 3] = ((float) a) / 255.0f;
                                break;
                            default:
                                this.colors[(i * 4) + 0] = ((((float) r) / 255.0f) * 1.0f) * 0.7f;
                                this.colors[(i * 4) + 1] = ((((float) g) / 255.0f) * 1.0f) * 0.7f;
                                this.colors[(i * 4) + 2] = ((((float) b) / 255.0f) * 1.0f) * 0.7f;
                                this.colors[(i * 4) + 3] = ((float) a) / 255.0f;
                                break;
                        }
                    }
                    switch (index) {
                        case R.styleable.ColorPicker_color_wheel_radius /*0*/:
                        case R.styleable.ColorPicker_color_center_radius /*2*/:
                        case R.styleable.ColorPicker_color_center_halo_radius /*3*/:
                            this.colors[(i * 4) + 0] = (((float) r) / 255.0f) * 1.0f;
                            this.colors[(i * 4) + 1] = (((float) g) / 255.0f) * 1.0f;
                            this.colors[(i * 4) + 2] = (((float) b) / 255.0f) * 1.0f;
                            this.colors[(i * 4) + 3] = ((float) a) / 255.0f;
                            break;
                        default:
                            this.colors[(i * 4) + 0] = ((((float) r) / 255.0f) * dark) * 0.7f;
                            this.colors[(i * 4) + 1] = ((((float) g) / 255.0f) * dark) * 0.7f;
                            this.colors[(i * 4) + 2] = ((((float) b) / 255.0f) * dark) * 0.7f;
                            this.colors[(i * 4) + 3] = ((float) a) / 255.0f;
                            break;
                    }
                }
                switch (index) {
                    case R.styleable.ColorPicker_color_wheel_radius /*0*/:
                    case R.styleable.ColorPicker_color_center_radius /*2*/:
                    case R.styleable.ColorPicker_color_center_halo_radius /*3*/:
                        this.colors[(i * 4) + 0] = (((float) r) / 255.0f) * ((darkdiff * propTop) + dark);
                        this.colors[(i * 4) + 1] = (((float) g) / 255.0f) * ((darkdiff * propTop) + dark);
                        this.colors[(i * 4) + 2] = (((float) b) / 255.0f) * ((darkdiff * propTop) + dark);
                        this.colors[(i * 4) + 3] = ((float) a) / 255.0f;
                        break;
                    default:
                        this.colors[(i * 4) + 0] = ((((float) r) / 255.0f) * ((darkdiff * propBottom) + dark)) * 0.7f;
                        this.colors[(i * 4) + 1] = ((((float) g) / 255.0f) * ((darkdiff * propBottom) + dark)) * 0.7f;
                        this.colors[(i * 4) + 2] = ((((float) b) / 255.0f) * ((darkdiff * propBottom) + dark)) * 0.7f;
                        this.colors[(i * 4) + 3] = ((float) a) / 255.0f;
                        break;
                }
            } else if (i < 24 || i >= 36) {
                index = i % 6;
                face = (i - 36) / 12;
                dark = 0.5f;
                darkdiff = 1.0f - 0.5f;
                if (face != frontface) {
                    if (face != prevface) {
                        if (face != nextface) {
                            switch (index) {
                                case R.styleable.ColorPicker_color_wheel_radius /*0*/:
                                case R.styleable.ColorPicker_color_center_radius /*2*/:
                                case R.styleable.ColorPicker_color_center_halo_radius /*3*/:
                                    this.colors[(i * 4) + 0] = 1.0f;
                                    this.colors[(i * 4) + 1] = 1.0f;
                                    this.colors[(i * 4) + 2] = 1.0f;
                                    this.colors[(i * 4) + 3] = 1.0f;
                                    break;
                                default:
                                    this.colors[(i * 4) + 0] = 1.0f * 0.7f;
                                    this.colors[(i * 4) + 1] = 1.0f * 0.7f;
                                    this.colors[(i * 4) + 2] = 1.0f * 0.7f;
                                    this.colors[(i * 4) + 3] = 1.0f;
                                    break;
                            }
                        }
                        switch (index) {
                            case R.styleable.ColorPicker_color_wheel_radius /*0*/:
                            case R.styleable.ColorPicker_color_center_radius /*2*/:
                            case R.styleable.ColorPicker_color_center_halo_radius /*3*/:
                                this.colors[(i * 4) + 0] = 1.0f * 0.5f;
                                this.colors[(i * 4) + 1] = 1.0f * 0.5f;
                                this.colors[(i * 4) + 2] = 1.0f * 0.5f;
                                this.colors[(i * 4) + 3] = 1.0f;
                                break;
                            default:
                                this.colors[(i * 4) + 0] = 1.0f * 1.0f;
                                this.colors[(i * 4) + 1] = 1.0f * 1.0f;
                                this.colors[(i * 4) + 2] = 1.0f * 1.0f;
                                this.colors[(i * 4) + 3] = 1.0f;
                                break;
                        }
                    }
                    switch (index) {
                        case R.styleable.ColorPicker_color_wheel_radius /*0*/:
                        case R.styleable.ColorPicker_color_center_radius /*2*/:
                        case R.styleable.ColorPicker_color_center_halo_radius /*3*/:
                            this.colors[(i * 4) + 0] = 1.0f * 1.0f;
                            this.colors[(i * 4) + 1] = 1.0f * 1.0f;
                            this.colors[(i * 4) + 2] = 1.0f * 1.0f;
                            this.colors[(i * 4) + 3] = 1.0f;
                            break;
                        default:
                            this.colors[(i * 4) + 0] = 1.0f * 0.5f;
                            this.colors[(i * 4) + 1] = 1.0f * 0.5f;
                            this.colors[(i * 4) + 2] = 1.0f * 0.5f;
                            this.colors[(i * 4) + 3] = 1.0f;
                            break;
                    }
                }
                switch (index) {
                    case R.styleable.ColorPicker_color_wheel_radius /*0*/:
                    case R.styleable.ColorPicker_color_center_radius /*2*/:
                    case R.styleable.ColorPicker_color_center_halo_radius /*3*/:
                        this.colors[(i * 4) + 0] = ((darkdiff * propTop) + 0.5f) * 1.0f;
                        this.colors[(i * 4) + 1] = ((darkdiff * propTop) + 0.5f) * 1.0f;
                        this.colors[(i * 4) + 2] = ((darkdiff * propTop) + 0.5f) * 1.0f;
                        this.colors[(i * 4) + 3] = 1.0f;
                        break;
                    default:
                        this.colors[(i * 4) + 0] = ((darkdiff * propBottom) + 0.5f) * 1.0f;
                        this.colors[(i * 4) + 1] = ((darkdiff * propBottom) + 0.5f) * 1.0f;
                        this.colors[(i * 4) + 2] = ((darkdiff * propBottom) + 0.5f) * 1.0f;
                        this.colors[(i * 4) + 3] = 1.0f;
                        break;
                }
            } else {
                this.colors[(i * 4) + 0] = (((float) r) / 255.0f) * 0.5f;
                this.colors[(i * 4) + 1] = (((float) g) / 255.0f) * 0.5f;
                this.colors[(i * 4) + 2] = (((float) b) / 255.0f) * 0.5f;
                this.colors[(i * 4) + 3] = ((float) a) / 255.0f;
            }
            i++;
        }
    }

    public int calculateArrayIndex(int index, int size) {
        int target = index % size;
        if (target < 0) {
            return target + size;
        }
        return target;
    }

    public void setFaceTexture(int index, float[] texCoord) {
        this.mBufTexCoords.position((index * 24) + 72);
        this.mBufTexCoords.put(texCoord);
        this.mBufTexCoords.position(0);
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
        calculateColor();
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
            GLES20.glDrawArrays(4, 0, 36);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, this.ContentTexture);
            GLES20.glDrawArrays(4, 36, this.VerticesCount - 36);
            GLES20.glDisableVertexAttribArray(ClockWidget.mShaderColorTexture.maColor4Handle);
            GLES20.glDisableVertexAttribArray(ShaderManager.CURRENT_SHADER.maPositionHandle);
            GLES20.glDisableVertexAttribArray(ShaderManager.CURRENT_SHADER.maTextureHandle);
            GLES20.glBindTexture(3553, 0);
        }
    }
}
