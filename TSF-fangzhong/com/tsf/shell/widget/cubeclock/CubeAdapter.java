package com.tsf.shell.widget.cubeclock;

public abstract class CubeAdapter {
    int CurrentIndex;
    CubeContainer mCubeContainer;

    public abstract int getCount();

    public abstract float[] getFaceTexCoord(int i);

    public CubeAdapter() {
        this.CurrentIndex = 0;
    }

    public void ItemOnClick(int index) {
    }

    public void onItemRelease(int index) {
    }

    public void onItemSelect(int index) {
    }

    public void setCubeContainer(CubeContainer cube) {
        this.mCubeContainer = cube;
    }

    public void setCubeIndex(int index, int time) {
        this.mCubeContainer.setCubeIndex(index, time);
    }
}
