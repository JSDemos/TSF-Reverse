package com.tsf.shell.widget.cubeclock.test;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import com.censivn.C3DEngine.api.element.TextureElement;
import com.tsf.shell.widget.cubeclock.ClockWidget;
import java.util.ArrayList;

public class CubeColor {
    private ArrayList<CubeIcon> CubeList;
    private float GridHeight;
    private float GridSize;
    private float TexH;
    private float TexW;
    private int currectColor;
    public TextureElement mTexture;

    public CubeColor() {
        this.GridSize = 92.0f;
        this.GridHeight = 92.0f;
        this.currectColor = -13421773;
        this.CubeList = new ArrayList();
        create();
    }

    private void create() {
        Bitmap b = Bitmap.createBitmap(92, 92, Config.ARGB_8888);
        this.TexW = (float) b.getWidth();
        this.TexH = (float) b.getHeight();
        Canvas c = new Canvas(b);
        Paint p = new Paint();
        p.setStyle(Style.FILL);
        p.setColor(-1);
        c.drawRect(4.0f, 4.0f, 88.0f, 88.0f, p);
        this.mTexture = ClockWidget.mVTextureManager.createTexture(b, true);
        b.recycle();
    }

    public float[] getColorFace() {
        float u0_zer = ((this.GridSize * ((float) (0 % 4))) + 1.0f) / this.TexW;
        float u0_one = ((this.GridSize * ((float) 1)) - 1.0f) / this.TexW;
        float v0_zer = ((this.GridHeight * ((float) (0 / 4))) + 1.0f) / this.TexH;
        float v0_one = ((this.GridHeight * ((float) 1)) - 1.0f) / this.TexH;
        return new float[]{u0_zer, v0_zer, u0_zer, v0_one, u0_one, v0_zer, u0_one, v0_zer, u0_zer, v0_one, u0_one, v0_one};
    }
}
