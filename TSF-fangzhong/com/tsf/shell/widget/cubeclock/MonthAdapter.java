package com.tsf.shell.widget.cubeclock;

public class MonthAdapter extends CubeAdapter {
    public int getCount() {
        return 12;
    }

    public float[] getFaceTexCoord(int index) {
        index++;
        return ClockWidget.mNumberTexture.getNumber(index / 10, index % 10);
    }
}
