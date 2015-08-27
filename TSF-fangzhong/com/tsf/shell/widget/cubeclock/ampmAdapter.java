package com.tsf.shell.widget.cubeclock;

public class ampmAdapter extends CubeAdapter {
    public int getCount() {
        return 5;
    }

    public float[] getFaceTexCoord(int index) {
        return ClockWidget.mAmpmTexture.getNumber(index);
    }

    public void ItemOnClick(int index) {
        switch (index) {
            case R.styleable.ColorPicker_color_center_radius /*2*/:
                ClockWidget.mColorSetting.open();
                ClockWidget.mClockWidget.setZOrderOnTop();
                return;
            default:
                return;
        }
    }

    public void onItemRelease(int index) {
        switch (index) {
            case R.styleable.ColorPicker_color_center_radius /*2*/:
                ClockWidget.mColorSetting.closeIfOpen();
                return;
            default:
                return;
        }
    }

    public void onItemSelect(int index) {
        Log.e("onItemSelect:" + index);
        switch (index) {
            case R.styleable.ColorPicker_color_center_radius /*2*/:
                ClockWidget.mColorSetting.toggle();
                ClockWidget.mClockWidget.setZOrderOnTop();
                return;
            case R.styleable.ColorPicker_color_center_halo_radius /*3*/:
                ClockWidget.mMainCubes.selectMode(1);
                return;
            case R.styleable.ColorPicker_color_pointer_radius /*4*/:
                ClockWidget.mMainCubes.selectMode(0);
                return;
            default:
                return;
        }
    }
}
