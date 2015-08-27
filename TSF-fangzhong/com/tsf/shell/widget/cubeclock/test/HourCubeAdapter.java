package com.tsf.shell.widget.cubeclock.test;

public class HourCubeAdapter extends CubeAdapter {
    public int getCount() {
        return 12;
    }

    public float[] getFaceTexCoord(int index) {
        return NumberTexture.getNumber(index / 10, index % 10);
    }
}
