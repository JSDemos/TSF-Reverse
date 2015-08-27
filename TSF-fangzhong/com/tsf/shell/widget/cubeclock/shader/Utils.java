package com.tsf.shell.widget.cubeclock.shader;

import android.opengl.GLES20;
import com.tsf.shell.widget.cubeclock.Log;

public class Utils {
    public static void checkGlError(String op) {
        while (true) {
            int error = GLES20.glGetError();
            if (error != 0) {
                Log.e(new StringBuilder(String.valueOf(op)).append(": glError ").append(error).toString());
            } else {
                return;
            }
        }
    }
}
