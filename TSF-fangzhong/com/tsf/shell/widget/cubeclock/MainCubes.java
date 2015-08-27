package com.tsf.shell.widget.cubeclock;

import android.content.ContentValues;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.text.format.DateFormat;
import com.censivn.C3DEngine.api.core.VObject3dContainer;
import com.censivn.C3DEngine.api.element.TextureElement;
import com.censivn.C3DEngine.api.primitives.VRectangle;
import com.tsf.shell.widget.cubeclock.provider.SettingColumns;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MainCubes extends VObject3dContainer {
    public static final int MODE_CALENDAR = 1;
    public static final int MODE_CLOCK = 0;
    public int CURRECT_MODE;
    private boolean MMDD;
    private CubeContainer cube;
    private CubeContainer cube2;
    private CubeContainer cube3;
    private CubeContainer cube4;
    private int dat;
    private Date date;
    private int day;
    private int hou;
    private HourCubeAdapter hourAdapter;
    private int iAM;
    private ampmAdapter mAmpmAdapter;
    private DaysAdapter mDaysAdapter;
    private MonthAdapter mMonthAdapter;
    private weekAdapter mWeekAdapter;
    private int min;
    private MinCubeAdapter minAdapter;
    private int mon;
    private int sec;
    private MinCubeAdapter secAdapter;

    public MainCubes() {
        this.MMDD = false;
        this.date = new Date();
        ClockWidget.mObjectManager.addObject(this);
        scale().x = ClockWidget.SD2HDScale;
        scale().y = ClockWidget.SD2HDScale;
        scale().z = ClockWidget.SD2HDScale;
        this.MMDD = getSystemDateFormatMD();
        Bitmap b = Utils.loadResourceFitSize(ClockWidget.mContext, R.drawable.cube_clock_shadow);
        TextureElement shadowTexture = ClockWidget.mVTextureManager.createTexture(b, true);
        b.recycle();
        VRectangle shadow = new VRectangle(600.0f / ClockWidget.EngineScale, 256.0f / ClockWidget.EngineScale);
        shadow.position().x = 16.0f;
        shadow.position().y = -16.0f;
        shadow.alpha(100);
        shadow.textures().addElement(shadowTexture);
        addChild(shadow);
        this.cube = new CubeContainer();
        this.cube.position().x = -204.0f;
        this.cube2 = new CubeContainer();
        this.cube2.position().x = -68.0f;
        this.cube3 = new CubeContainer();
        this.cube3.position().x = 68.0f;
        this.cube4 = new CubeContainer();
        this.cube4.position().x = 204.0f;
        addChild(this.cube);
        addChild(this.cube4);
        addChild(this.cube2);
        addChild(this.cube3);
        this.hourAdapter = new HourCubeAdapter();
        this.minAdapter = new MinCubeAdapter();
        this.secAdapter = new MinCubeAdapter();
        this.mDaysAdapter = new DaysAdapter();
        this.mWeekAdapter = new weekAdapter();
        this.mMonthAdapter = new MonthAdapter();
        this.mAmpmAdapter = new ampmAdapter();
        this.cube4.setAdapter(this.mAmpmAdapter, ClockWidget.mAmpmTexture);
        selectMode(getMode());
    }

    private int getMode() {
        int mode = 0;
        Cursor cursor = null;
        try {
            cursor = ClockWidget.mContext.getContentResolver().query(SettingColumns.CONTENT_URI, null, "widgetid = " + ClockWidget.AppWidgetId, null, SettingColumns.DEFAULT_SORT_ORDER);
            if (cursor != null && cursor.moveToFirst()) {
                mode = cursor.getInt(cursor.getColumnIndex(SettingColumns.MODE));
                Log.e("LoadMODE:" + mode);
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
        return mode;
    }

    private void saveMode(int mode) {
        Uri uri = SettingColumns.CONTENT_URI;
        String selection = "widgetid = " + ClockWidget.AppWidgetId;
        try {
            ContentValues mContentValues = new ContentValues();
            mContentValues.put(SettingColumns.MODE, Integer.valueOf(mode));
            ClockWidget.mContext.getContentResolver().update(uri, mContentValues, selection, null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void selectMode(int mode) {
        this.CURRECT_MODE = mode;
        switch (this.CURRECT_MODE) {
            case R.styleable.ColorPicker_color_wheel_radius /*0*/:
                ClockWidget.mUpdateTimer.setDelayTime(1000);
                selectClockMode();
                break;
            case MODE_CALENDAR /*1*/:
                ClockWidget.mUpdateTimer.setDelayTime(60000);
                selectCalendarMode();
                break;
        }
        saveMode(this.CURRECT_MODE);
        refreshAll(System.currentTimeMillis(), true);
    }

    private void selectClockMode() {
        this.cube.setAdapter(this.hourAdapter, ClockWidget.mNumberTexture);
        this.cube2.setAdapter(this.minAdapter, ClockWidget.mNumberTexture);
        this.cube3.setAdapter(this.secAdapter, ClockWidget.mNumberTexture);
    }

    private void selectCalendarMode() {
        this.MMDD = getSystemDateFormatMD();
        if (this.MMDD) {
            this.cube.setAdapter(this.mMonthAdapter, ClockWidget.mNumberTexture);
            this.cube2.setAdapter(this.mDaysAdapter, ClockWidget.mNumberTexture);
        } else {
            this.cube2.setAdapter(this.mMonthAdapter, ClockWidget.mNumberTexture);
            this.cube.setAdapter(this.mDaysAdapter, ClockWidget.mNumberTexture);
        }
        this.cube3.setAdapter(this.mWeekAdapter, ClockWidget.mWeekTexture);
    }

    private boolean getSystemDateFormatMD() {
        String format = System.getString(ClockWidget.mContext.getContentResolver(), "date_format");
        if (TextUtils.isEmpty(format)) {
            Log.e("System format is Empty");
            format = ((SimpleDateFormat) DateFormat.getMediumDateFormat(ClockWidget.mContext.getApplicationContext())).toLocalizedPattern();
            Log.e("Pattern String:" + format);
        } else {
            Log.e("System format not Empty");
        }
        Log.e("getSystemDateFormatMD :" + format);
        if (format.indexOf("d") < format.indexOf("M")) {
            return false;
        }
        return true;
    }

    public void refreshAll(long now, boolean all) {
        this.date.setTime(now);
        switch (this.CURRECT_MODE) {
            case R.styleable.ColorPicker_color_wheel_radius /*0*/:
                int n_min = this.date.getMinutes();
                int n_hou = this.date.getHours();
                int n_sec = this.date.getSeconds();
                if (this.min != n_min || all) {
                    this.min = n_min;
                    this.minAdapter.setCubeIndex(this.min, 800);
                }
                if (this.sec != n_sec || all) {
                    this.sec = n_sec;
                    this.secAdapter.setCubeIndex(this.sec, 500);
                }
                if (this.hou != n_hou || all) {
                    this.hou = n_hou;
                    this.hourAdapter.setCubeIndex(this.hou, 1000);
                }
                int n_iAM = this.hou >= 12 ? 0 : MODE_CALENDAR;
                Log.e("==============hou:" + this.hou);
                if (this.iAM != n_iAM || all) {
                    this.iAM = n_iAM;
                    this.mAmpmAdapter.setCubeIndex(n_iAM, 900);
                    return;
                }
                return;
            case MODE_CALENDAR /*1*/:
                int n_mon = this.date.getMonth();
                int n_dat = this.date.getDate();
                int n_day = this.date.getDay();
                if (this.mon != n_mon || all) {
                    this.mon = n_mon;
                    this.mMonthAdapter.setCubeIndex(this.mon, 1000);
                }
                if (this.dat != n_dat || all) {
                    this.dat = n_dat;
                    this.mDaysAdapter.setCubeIndex(this.dat - 1, 800);
                }
                if (this.day != n_day || all) {
                    this.day = n_day;
                    this.mWeekAdapter.setCubeIndex(this.day - 1, 500);
                }
                if (this.cube4.getCubeIndex() != 3 || all) {
                    this.mAmpmAdapter.setCubeIndex(3, 500);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
