package com.tsf.shell.widget.cubeclock;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.censivn.C3DEngine.api.core.VObjectManager;
import com.censivn.C3DEngine.api.core.VTextureManager;
import com.censivn.C3DEngine.api.core.VWidgetContainer;
import com.censivn.C3DEngine.api.message.VMessageQueueManager;
import com.censivn.C3DEngine.api.shell.VInformation;
import com.tsf.shell.widget.cubeclock.provider.SettingColumns;
import com.tsf.shell.widget.cubeclock.setting.ColorSetting;
import com.tsf.shell.widget.cubeclock.shader.ShaderColorTexture;
import com.tsf.shell.widget.cubeclock.shader.ShaderStandard;

public class ClockWidget extends VWidgetContainer {
    public static int AppWidgetId;
    public static float EngineScale;
    public static float HDScale;
    public static float SD2HDScale;
    public static ampmTexture mAmpmTexture;
    public static ClockWidget mClockWidget;
    public static ColorSetting mColorSetting;
    public static Context mContext;
    public static MainCubes mMainCubes;
    public static NumberTexture mNumberTexture;
    public static VObjectManager mObjectManager;
    public static ShaderColorTexture mShaderColorTexture;
    public static ShaderStandard mShaderStandard;
    public static SingleColorTexture mSingleColorTexture;
    public static UpdateTimer mUpdateTimer;
    public static VMessageQueueManager mVMessageQueueManager;
    public static VTextureManager mVTextureManager;
    public static WeekTexture mWeekTexture;

    static {
        mShaderStandard = new ShaderStandard();
        mShaderColorTexture = new ShaderColorTexture();
        HDScale = Utils.mStandardScale;
        EngineScale = VInformation.Scale();
        SD2HDScale = EngineScale / HDScale;
    }

    public ClockWidget(Context context, int appWidgetId) {
        int i;
        super(appWidgetId);
        mClockWidget = this;
        AppWidgetId = appWidgetId;
        mContext = context;
        mVTextureManager = getTextureManager();
        mObjectManager = getObjectManager();
        mObjectManager.addObject(this);
        mVMessageQueueManager = new VMessageQueueManager(appWidgetId);
        lockView(true);
        setUserRotation(false);
        interceptMouseEventVerticalScroll(true);
        openAABB(false);
        initDatabase();
        mNumberTexture = new NumberTexture();
        mAmpmTexture = new ampmTexture();
        mWeekTexture = new WeekTexture();
        mSingleColorTexture = new SingleColorTexture();
        mColorSetting = new ColorSetting();
        addChild(mColorSetting);
        mUpdateTimer = new UpdateTimer();
        mMainCubes = new MainCubes();
        mObjectManager.addObject(mColorSetting);
        addChild(mMainCubes);
        UpdateTimer updateTimer = mUpdateTimer;
        if (mMainCubes.CURRECT_MODE == 0) {
            i = 1000;
        } else {
            i = 60000;
        }
        updateTimer.setDelayTime(i);
    }

    private void initDatabase() {
        Uri uri = SettingColumns.CONTENT_URI;
        Cursor cursor = null;
        try {
            cursor = mContext.getContentResolver().query(uri, null, "widgetid = " + AppWidgetId, null, SettingColumns.DEFAULT_SORT_ORDER);
            if (cursor != null && cursor.getCount() == 0) {
                ContentValues mContentValues = new ContentValues();
                mContentValues.put(SettingColumns.WIDGETID, Integer.valueOf(AppWidgetId));
                mContentValues.put(SettingColumns.COLOR, Integer.valueOf(-13421773));
                mContentValues.put(SettingColumns.MODE, Integer.valueOf(0));
                mContext.getContentResolver().insert(uri, mContentValues);
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
    }

    public void openAABB(boolean open) {
        if (open) {
            setAABBPX(-280.0f * SD2HDScale, SD2HDScale * -240.0f, 0.0f, 280.0f * SD2HDScale, 70.0f * SD2HDScale, 0.0f);
            return;
        }
        setAABBPX(-280.0f * SD2HDScale, SD2HDScale * -70.0f, 0.0f, 280.0f * SD2HDScale, 70.0f * SD2HDScale, 0.0f);
    }

    public void onDrawStart() {
    }

    public void onPause() {
        mUpdateTimer.onPause();
        mVMessageQueueManager.pause();
    }

    public void onResume() {
        mUpdateTimer.onResume();
        mVMessageQueueManager.resume();
    }

    public void onDestroy() {
        mUpdateTimer.onDestroy();
    }

    public void onKillFocus() {
        Log.e("onKillFocus");
        mColorSetting.closeIfOpen();
    }
}
