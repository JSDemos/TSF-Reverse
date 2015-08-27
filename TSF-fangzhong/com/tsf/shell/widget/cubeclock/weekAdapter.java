package com.tsf.shell.widget.cubeclock;

public class weekAdapter extends CubeAdapter {
    public int getCount() {
        return 7;
    }

    public float[] getFaceTexCoord(int index) {
        return ClockWidget.mWeekTexture.getNumber(index);
    }
}
