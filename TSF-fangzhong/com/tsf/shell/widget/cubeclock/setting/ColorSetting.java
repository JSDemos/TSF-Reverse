package com.tsf.shell.widget.cubeclock.setting;

import android.content.ContentValues;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.MotionEvent;
import com.censivn.C3DEngine.api.core.VObject3d;
import com.censivn.C3DEngine.api.core.VObject3dContainer;
import com.censivn.C3DEngine.api.element.TextureElement;
import com.censivn.C3DEngine.api.event.VMouseEventListener;
import com.censivn.C3DEngine.api.primitives.VRectangle;
import com.censivn.C3DEngine.api.tween.VTween;
import com.censivn.C3DEngine.api.tween.VTweenParam;
import com.tsf.shell.widget.cubeclock.ClockWidget;
import com.tsf.shell.widget.cubeclock.Log;
import com.tsf.shell.widget.cubeclock.R;
import com.tsf.shell.widget.cubeclock.UpdateTimer;
import com.tsf.shell.widget.cubeclock.Utils;
import com.tsf.shell.widget.cubeclock.provider.SettingColumns;

public class ColorSetting extends VObject3dContainer {
    public static float Brightness;
    private TextureElement BackgroundTexture;
    private boolean isOpen;
    private TextureElement lightTexture;
    private ColorSlider mColorSlider;
    private VRectangle minus;
    private TextureElement minusTexture;
    private VObject3d plus;
    private TextureElement plusTexture;

    static {
        Brightness = 1.0f;
    }

    public ColorSetting() {
        this.isOpen = false;
        ClockWidget.mObjectManager.addObject(this);
        visible(Boolean.valueOf(false));
        rotation().x = 90.0f;
        createTexture();
        VRectangle bg = new VRectangle(588.0f / ClockWidget.HDScale, 144.0f / ClockWidget.HDScale);
        bg.textures().addElement(this.BackgroundTexture);
        bg.position().spY(-125.0f);
        addChild(bg);
        this.mColorSlider = new ColorSlider();
        this.mColorSlider.position().spX(-20.0f);
        this.mColorSlider.position().spY(-135.0f);
        addChild(this.mColorSlider);
        this.plus = new VRectangle(49.0f / ClockWidget.HDScale, 49.0f / ClockWidget.HDScale);
        this.plus.textures().addElement(this.plusTexture);
        this.plus.position().spX(185.0f);
        this.plus.position().spY(-135.0f);
        this.plus.visible(Boolean.valueOf(false));
        addChild(this.plus);
        this.minus = new VRectangle(49.0f / ClockWidget.HDScale, 49.0f / ClockWidget.HDScale);
        this.minus.textures().addElement(this.minusTexture);
        this.minus.position().spX(185.0f);
        this.minus.position().spY(-135.0f);
        this.minus.visible(Boolean.valueOf(false));
        addChild(this.minus);
        VRectangle light = new VRectangle(49.0f / ClockWidget.HDScale, 49.0f / ClockWidget.HDScale);
        light.textures().addElement(this.lightTexture);
        light.position().spX(185.0f);
        light.position().spY(-135.0f);
        addChild(light);
        ClockWidget.mObjectManager.addObject(this.plus);
        ClockWidget.mObjectManager.addObject(this.minus);
        ClockWidget.mObjectManager.addObject(light);
        VMouseEventListener ml = new VMouseEventListener(light) {
            public void onDown(MotionEvent me) {
                ClockWidget.mClockWidget.interceptMouseEventLongPressOnTimes();
                ColorSetting.this.turnOnLight(true);
            }

            public void onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
                ColorSetting.this.plusBrightness(distanceY);
                ColorSetting.this.mColorSlider.setSliderColor(ColorSetting.Brightness);
            }

            public void onUp(MotionEvent me) {
                ColorSetting.this.turnOnLight(false);
            }
        };
        light.calAABB();
        light.setMouseEventListener(ml);
    }

    private void plusBrightness(float diff) {
        Brightness += diff / 200.0f;
        if (Brightness > 1.0f) {
            Brightness = 1.0f;
        } else if (Brightness < 0.2f) {
            Brightness = 0.2f;
        }
        Log.e("Brightness:" + Brightness);
    }

    private void turnOnLight(boolean open) {
        if (open) {
            this.plus.visible(Boolean.valueOf(true));
            this.minus.visible(Boolean.valueOf(true));
            VTween.killTween(this.plus);
            VTweenParam tpPlus = new VTweenParam();
            tpPlus.setSPY(-70.0f);
            tpPlus.setAlpha(255);
            VTween.to(this.plus, 300, tpPlus);
            VTween.killTween(this.minus);
            VTweenParam tpMinus = new VTweenParam();
            tpMinus.setSPY(-200.0f);
            tpMinus.setAlpha(255);
            VTween.to(this.minus, 300, tpMinus);
            return;
        }
        VTween.killTween(this.plus);
        VTween.killTween(this.minus);
        VTweenParam tp = new VTweenParam();
        tp.setCompleteRunnable(new Runnable() {
            public void run() {
                ColorSetting.this.plus.visible(Boolean.valueOf(false));
                ColorSetting.this.minus.visible(Boolean.valueOf(false));
            }
        });
        tp.setSPY(-135.0f);
        tp.setAlpha(0);
        VTween.to(this.plus, 800, tp);
        VTween.to(this.minus, 800, tp);
    }

    private void createTexture() {
        Bitmap b = Utils.loadResourceFitSize(ClockWidget.mContext, R.drawable.cube_clock_widget_setting_bg);
        this.BackgroundTexture = ClockWidget.mVTextureManager.createTexture(b, true);
        b.recycle();
        b = Utils.loadResourceFitSize(ClockWidget.mContext, R.drawable.cube_clock_plus);
        this.plusTexture = ClockWidget.mVTextureManager.createTexture(b, true);
        b.recycle();
        b = Utils.loadResourceFitSize(ClockWidget.mContext, R.drawable.cube_clock_minus);
        this.minusTexture = ClockWidget.mVTextureManager.createTexture(b, true);
        b.recycle();
        b = Utils.loadResourceFitSize(ClockWidget.mContext, R.drawable.cube_clock_light);
        this.lightTexture = ClockWidget.mVTextureManager.createTexture(b, true);
        b.recycle();
    }

    public void toggle() {
        if (this.isOpen) {
            close();
        } else {
            open();
        }
    }

    public void open() {
        this.isOpen = true;
        ClockWidget.mClockWidget.interceptMouseEventScroll(true);
        UpdateTimer.delayTimer(60000);
        VTween.killTween(this);
        VTweenParam tp = new VTweenParam();
        tp.setEase(300);
        tp.setRotationX(0.0f);
        tp.setAlpha(255);
        VTween.to(this, 1500, tp);
        visible(Boolean.valueOf(true));
        ClockWidget.mClockWidget.openAABB(true);
    }

    public void close() {
        this.isOpen = false;
        ClockWidget.mClockWidget.interceptMouseEventScroll(false);
        UpdateTimer.earlyTimer(3000);
        ClockWidget.mClockWidget.openAABB(false);
        VTween.killTween(this);
        VTweenParam tp = new VTweenParam();
        tp.setCompleteRunnable(new Runnable() {
            public void run() {
                ColorSetting.this.visible(Boolean.valueOf(false));
            }
        });
        tp.setRotationX(90.0f);
        tp.setAlpha(0);
        VTween.to(this, 400, tp);
        saveColor(this.mColorSlider.getColor());
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

    public void closeIfOpen() {
        if (this.isOpen) {
            close();
        }
    }
}
