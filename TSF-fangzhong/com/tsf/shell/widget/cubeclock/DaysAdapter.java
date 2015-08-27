package com.tsf.shell.widget.cubeclock;

public class DaysAdapter extends CubeAdapter {
    public int getCount() {
        return 31;
    }

    public float[] getFaceTexCoord(int index) {
        index++;
        return ClockWidget.mNumberTexture.getNumber(index / 10, index % 10);
    }
}
