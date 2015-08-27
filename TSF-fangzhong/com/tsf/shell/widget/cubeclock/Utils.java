package com.tsf.shell.widget.cubeclock;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import com.censivn.C3DEngine.api.element.TextureElement;
import com.censivn.C3DEngine.api.shell.VInformation;
import java.io.IOException;
import java.io.InputStream;

public class Utils {
    public static final float mStandardScale = 1.3333334f;

    public static Bitmap loadResourceFitSize(Context context, int id) {
        return mipmap(loadResource(context, id));
    }

    public static Bitmap loadResource(Context context, int id) {
        InputStream is = context.getResources().openRawResource(id);
        try {
            Bitmap bitmap = BitmapFactory.decodeStream(is);
            Bitmap resultBitmap = bitmap.copy(Config.ARGB_8888, true);
            bitmap.recycle();
            return resultBitmap;
        } finally {
            try {
                is.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static Bitmap mipmap(Bitmap source) {
        float targetScale = getTextureScale();
        if (targetScale == 1.0f) {
            Log.e("Mipmap return source");
            return source;
        }
        Log.e("targetScale:" + targetScale);
        Bitmap result = Bitmap.createBitmap((int) (((float) source.getWidth()) * targetScale), (int) (((float) source.getHeight()) * targetScale), Config.ARGB_8888);
        Canvas canvas = new Canvas(result);
        canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Matrix matrix = new Matrix();
        matrix.setScale(targetScale, targetScale);
        canvas.drawBitmap(source, matrix, paint);
        source.recycle();
        return result;
    }

    public static float getTextureScale() {
        float scale = VInformation.Scale();
        if (scale >= mStandardScale) {
            return 1.0f;
        }
        return scale / mStandardScale;
    }

    public static void replaceTexture(TextureElement target, Bitmap bitmap, int xOffset, int yOffset) {
        GLES20.glBindTexture(3553, target.id);
        GLUtils.texSubImage2D(3553, 0, xOffset, yOffset, bitmap);
    }
}
