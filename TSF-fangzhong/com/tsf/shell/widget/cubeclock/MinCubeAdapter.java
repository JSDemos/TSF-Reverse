package com.tsf.shell.widget.cubeclock;

public class MinCubeAdapter extends CubeAdapter {
    public int getCount() {
        return 60;
    }

    public float[] getFaceTexCoord(int index) {
        return ClockWidget.mNumberTexture.getNumber(index / 10, index % 10);
    }
}
