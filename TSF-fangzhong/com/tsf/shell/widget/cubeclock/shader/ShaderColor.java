package com.tsf.shell.widget.cubeclock.shader;

import android.opengl.GLES20;
import com.censivn.C3DEngine.api.core.VObject3d;
import com.censivn.C3DEngine.common.shader.Shader;
import java.nio.Buffer;

public class ShaderColor extends Shader {
    public String mFragmentShader;
    public String mVertexShader;
    public int maColor4Handle;

    public ShaderColor() {
        this.mVertexShader = "uniform mat4 uMVPMatrix;      \nattribute vec2 aTextureCoord;      \nattribute vec4 aPosition;      \nvarying vec2 vTextureCoord;      \nattribute vec4 aColor;      \nvarying vec4 vColor;      \nvoid main() {      \ngl_Position = uMVPMatrix * aPosition;      \n vTextureCoord = aTextureCoord;      \n vColor = aColor;      \n}";
        this.mFragmentShader = "precision mediump float;      \nvarying vec2 vTextureCoord;      \nuniform sampler2D sTexture;      \nvarying vec4 vColor;      \nvoid main() {      \n gl_FragColor = vColor;   \n}";
        createProgram(this.mVertexShader, this.mFragmentShader);
    }

    public void createProgram(String vertex, String fragment) {
        this.id = ShaderUtils.createProgram(vertex, fragment);
        if (this.id == 0) {
            throw new RuntimeException("Could create shader program");
        }
        this.maPositionHandle = GLES20.glGetAttribLocation(this.id, "aPosition");
        Utils.checkGlError("glGetAttribLocation aPosition");
        if (this.maPositionHandle == -1) {
            throw new RuntimeException("Could not get attrib location for aPosition");
        }
        this.maColor4Handle = GLES20.glGetAttribLocation(this.id, "aColor");
        Utils.checkGlError("glGetAttribLocation aColor");
        if (this.maColor4Handle == -1) {
            throw new RuntimeException("Could not get attrib location for aColor");
        }
        this.muMVPMatrixHandle = GLES20.glGetUniformLocation(this.id, "uMVPMatrix");
        Utils.checkGlError("glGetUniformLocation uMVPMatrix");
        if (this.muMVPMatrixHandle == -1) {
            throw new RuntimeException("Could not get attrib location for uMVPMatrix");
        }
    }

    public void glColorPointer(int size, int type, boolean normalized, int stride, Buffer ptr) {
        GLES20.glEnableVertexAttribArray(this.maColor4Handle);
        GLES20.glVertexAttribPointer(this.maColor4Handle, size, type, normalized, stride, ptr);
    }

    public void glColor4f(int a, int r, int g, int b) {
        float alpha = ((float) a) / 255.0f;
        GLES20.glVertexAttrib4f(this.maColor4Handle, (((float) r) / 255.0f) * alpha, (((float) g) / 255.0f) * alpha, (((float) b) / 255.0f) * alpha, alpha);
    }

    public void glColor4f(VObject3d target) {
        float alpha = ((float) target.alpha()) / 255.0f;
        GLES20.glVertexAttrib4f(this.maColor4Handle, (((float) target.defaultColor().r) / 255.0f) * alpha, (((float) target.defaultColor().g) / 255.0f) * alpha, (((float) target.defaultColor().b) / 255.0f) * alpha, alpha);
    }
}
