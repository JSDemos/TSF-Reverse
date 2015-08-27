package com.tsf.shell.widget.cubeclock.shader;

import android.opengl.GLES20;
import android.opengl.Matrix;
import com.censivn.C3DEngine.common.renderer.MatrixStack;
import java.nio.Buffer;

public class Shader {
    public int id;
    public int maPositionHandle;
    public int maTextureHandle;
    public int muMVPMatrixHandle;

    public void glVertexPointer(int size, int type, boolean normalized, int stride, Buffer ptr) {
        GLES20.glEnableVertexAttribArray(this.maPositionHandle);
        GLES20.glVertexAttribPointer(this.maPositionHandle, size, type, normalized, stride, ptr);
    }

    public void glTexCoordPointer(int size, int type, boolean normalized, int stride, Buffer ptr) {
        GLES20.glEnableVertexAttribArray(this.maTextureHandle);
        GLES20.glVertexAttribPointer(this.maTextureHandle, size, type, normalized, stride, ptr);
    }

    public void glMVPMatrix(float[] matrix, int offset) {
        Matrix.multiplyMM(MatrixStack.rMVPMatrix, 0, MatrixStack.rSceneMatrix, 0, matrix, offset);
        GLES20.glUniformMatrix4fv(this.muMVPMatrixHandle, 1, false, MatrixStack.rMVPMatrix, 0);
    }

    public void glMVPMatrix() {
        glMVPMatrix(MatrixStack.matrix, MatrixStack.topIndex);
    }
}
