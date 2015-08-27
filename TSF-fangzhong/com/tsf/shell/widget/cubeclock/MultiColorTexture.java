package com.tsf.shell.widget.cubeclock;

import android.graphics.Bitmap;

public class MultiColorTexture extends CubeTexture {
    private float GridHeight;
    private float GridSize;
    private float TexH;
    private float TexW;
    public int[] color;

    public MultiColorTexture() {
        this.GridSize = 92.0f;
        this.GridHeight = 92.0f;
        this.color = new int[]{-8319731, -62196, -1609171, -536534, -13607043, -13667434, -13521439, -5315356, -16306422, -15901936, -15947500, -9712101, -15462385, -14540254, -13421773, -10066330};
        create();
    }

    private void create() {
        Bitmap b = Utils.loadResource(ClockWidget.mContext, R.drawable.cube_clock_color);
        this.TexW = (float) b.getWidth();
        this.TexH = (float) b.getHeight();
        String colorString = "new int[]{";
        for (int i = 0; i < 16; i++) {
            this.color[i] = b.getPixel((int) ((this.GridSize * ((float) (i % 4))) + 45.0f), (int) ((this.GridSize * ((float) (i / 4))) + 45.0f));
            colorString = new StringBuilder(String.valueOf(colorString)).append("0x").append(Integer.toHexString(this.color[i])).append(",").toString();
        }
        Log.e("ColorString:" + new StringBuilder(String.valueOf(colorString)).append("];").toString());
        this.mTexture = ClockWidget.mVTextureManager.createTexture(b, true);
        b.recycle();
    }

    public float[] getColorFace(int index) {
        int u = index % 4;
        int v = index / 4;
        float u0_zer = ((this.GridSize * ((float) u)) + 1.0f) / this.TexW;
        float u0_one = ((this.GridSize * ((float) (u + 1))) - 1.0f) / this.TexW;
        float v0_zer = ((this.GridHeight * ((float) v)) + 1.0f) / this.TexH;
        float v0_one = ((this.GridHeight * ((float) (v + 1))) - 1.0f) / this.TexH;
        return new float[]{u0_zer, v0_zer, u0_zer, v0_one, u0_one, v0_zer, u0_one, v0_zer, u0_zer, v0_one, u0_one, v0_one};
    }
}
