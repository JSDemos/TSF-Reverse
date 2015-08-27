package com.tsf.shell.widget.cubeclock.test;

public abstract class CubeAdapter {
    int CurrentIndex;

    public abstract int getCount();

    public abstract float[] getFaceTexCoord(int i);

    public CubeAdapter() {
        this.CurrentIndex = 0;
    }

    public void ItemOnClick(int index) {
    }

    public void onItemRelease(int index) {
    }
}
