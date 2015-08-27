package com.tsf.shell.widget.cubeclock;

import android.text.format.DateFormat;

public class HourCubeAdapter extends CubeAdapter {
    public int getCount() {
        if (DateFormat.is24HourFormat(ClockWidget.mContext)) {
            return 24;
        }
        return 12;
    }

    public float[] getFaceTexCoord(int index) {
        Log.e("INDEX:" + index);
        if (!DateFormat.is24HourFormat(ClockWidget.mContext) && index == 0) {
            index = 12;
        }
        return ClockWidget.mNumberTexture.getNumber(index / 10, index % 10);
    }
}
