package com.tsf.shell.widget.cubeclock.test;

import android.graphics.Bitmap;
import com.tsf.shell.widget.cubeclock.ClockWidget;
import com.tsf.shell.widget.cubeclock.R;
import com.tsf.shell.widget.cubeclock.Utils;

public class NumberTexture extends CubeTexture {
    private static float GridHeight;
    private static float GridSize;
    private static float TexH;
    private static float TexW;

    static {
        GridSize = 65.0f;
        GridHeight = 130.0f;
    }

    public NumberTexture() {
        create();
    }

    private void create() {
        Bitmap b = Utils.loadResourceFitSize(ClockWidget.mContext, R.drawable.cube_clock_number);
        TexW = (float) b.getWidth();
        TexH = (float) b.getHeight();
        this.mTexture = ClockWidget.mVTextureManager.createTexture(b, true);
        b.recycle();
    }

    public static float[] getNumber(int index, int index2) {
        float u0_zer = (((GridSize * ((float) index)) + 1.0f) - 0.875f) / TexW;
        float u0_one = (((GridSize * ((float) (index + 1))) - 2.0f) - 0.875f) / TexW;
        float v0_zer = ((GridHeight * 0.0f) + 1.0f) / TexH;
        float v0_one = ((GridHeight * 1.0f) - 1.0f) / TexH;
        float u1_zer = (((GridSize * ((float) index2)) + 2.0f) - -5.0f) / TexW;
        float u1_one = (((GridSize * ((float) (index2 + 1))) - 1.0f) - -5.0f) / TexW;
        float v1_zer = ((GridHeight * 0.0f) + 1.0f) / TexH;
        float v1_one = ((GridHeight * 1.0f) - 1.0f) / TexH;
        return new float[]{u0_zer, v0_zer, u0_zer, v0_one, u0_one, v0_zer, u0_one, v0_zer, u0_zer, v0_one, u0_one, v0_one, u1_zer, v1_zer, u1_zer, v1_one, u1_one, v1_zer, u1_one, v1_zer, u1_zer, v1_one, u1_one, v1_one};
    }
}
