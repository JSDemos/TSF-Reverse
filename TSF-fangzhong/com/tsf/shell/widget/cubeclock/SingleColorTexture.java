package com.tsf.shell.widget.cubeclock;

import android.content.ContentValues;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.net.Uri;
import com.tsf.shell.widget.cubeclock.provider.SettingColumns;
import java.util.ArrayList;

public class SingleColorTexture extends CubeTexture {
    private ArrayList<Cube> CubeList;
    private float GridHeight;
    private float GridSize;
    private float TexH;
    private float TexW;
    private int currectColor;

    public SingleColorTexture() {
        this.GridSize = 92.0f;
        this.GridHeight = 92.0f;
        this.currectColor = -13421773;
        this.CubeList = new ArrayList();
        this.currectColor = getColor();
        create();
    }

    public void registerCube(Cube c) {
        this.CubeList.add(c);
        c.onSetColor(this.currectColor);
    }

    public void onColorChange(int color) {
        this.currectColor = color;
        int max = this.CubeList.size();
        for (int i = 0; i < max; i++) {
            ((Cube) this.CubeList.get(i)).onColorChange(color);
        }
    }

    private void saveColor(int color) {
        Uri uri = SettingColumns.CONTENT_URI;
        String selection = "widgetid = " + ClockWidget.AppWidgetId;
        try {
            ContentValues mContentValues = new ContentValues();
            mContentValues.put(SettingColumns.COLOR, Integer.valueOf(color));
            ClockWidget.mContext.getContentResolver().update(uri, mContentValues, selection, null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private int getColor() {
        int color = -13421773;
        Cursor cursor = null;
        try {
            cursor = ClockWidget.mContext.getContentResolver().query(SettingColumns.CONTENT_URI, null, "widgetid = " + ClockWidget.AppWidgetId, null, SettingColumns.DEFAULT_SORT_ORDER);
            if (cursor != null) {
                Log.e("=============================:" + cursor.getCount());
                if (cursor.moveToFirst()) {
                    color = cursor.getInt(cursor.getColumnIndex(SettingColumns.COLOR));
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
        return color;
    }

    private void create() {
        Bitmap b = Bitmap.createBitmap(92, 92, Config.ARGB_8888);
        this.TexW = (float) b.getWidth();
        this.TexH = (float) b.getHeight();
        Canvas c = new Canvas(b);
        Paint p = new Paint();
        p.setStyle(Style.FILL);
        p.setColor(-1);
        c.drawRect(1.0f, 1.0f, 91.0f, 91.0f, p);
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
