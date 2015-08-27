package com.tsf.shell.widget.cubeclock;

import android.graphics.Bitmap;

public class NumberTexture extends CubeTexture {
    private float GridHeight;
    private float GridSize;
    private float TexH;
    private float TexW;

    public NumberTexture() {
        this.GridSize = 65.0f;
        this.GridHeight = 130.0f;
        create();
    }

    private void create() {
        Bitmap b = Utils.loadResourceFitSize(ClockWidget.mContext, R.drawable.cube_clock_number);
        this.TexW = 650.0f;
        this.TexH = 130.0f;
        this.mTexture = ClockWidget.mVTextureManager.createTexture(b, true);
        b.recycle();
    }

    public float[] getNumber(int index, int index2) {
        float u0_zer = (((this.GridSize * ((float) index)) + 1.0f) - 0.875f) / this.TexW;
        float u0_one = (((this.GridSize * ((float) (index + 1))) - 2.0f) - 0.875f) / this.TexW;
        float v0_zer = ((this.GridHeight * 0.0f) + 1.0f) / this.TexH;
        float v0_one = ((this.GridHeight * 1.0f) - 1.0f) / this.TexH;
        float u1_zer = (((this.GridSize * ((float) index2)) + 2.0f) - -5.0f) / this.TexW;
        float u1_one = (((this.GridSize * ((float) (index2 + 1))) - 1.0f) - -5.0f) / this.TexW;
        float v1_zer = ((this.GridHeight * 0.0f) + 1.0f) / this.TexH;
        float v1_one = ((this.GridHeight * 1.0f) - 1.0f) / this.TexH;
        return new float[]{u0_zer, v0_zer, u0_zer, v0_one, u0_one, v0_zer, u0_one, v0_zer, u0_zer, v0_one, u0_one, v0_one, u1_zer, v1_zer, u1_zer, v1_one, u1_one, v1_zer, u1_one, v1_zer, u1_zer, v1_one, u1_one, v1_one};
    }

    public float[] getColorFace() {
        float u0_zer = ((this.GridSize * 10.0f) + 1.0f) / this.TexW;
        float u0_one = ((this.GridSize * 11.0f) - 1.0f) / this.TexW;
        float v0_zer = ((this.GridHeight * 0.0f) + 1.0f) / this.TexH;
        float v0_one = ((this.GridHeight * 1.0f) - 1.0f) / this.TexH;
        return new float[]{u0_zer, v0_zer, u0_zer, v0_one, u0_one, v0_zer, u0_one, v0_zer, u0_zer, v0_one, u0_one, v0_one};
    }
}
