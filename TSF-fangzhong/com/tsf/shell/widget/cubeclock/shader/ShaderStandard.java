package com.tsf.shell.widget.cubeclock.shader;

import android.opengl.GLES20;
import com.censivn.C3DEngine.common.shader.Shader;
import com.tsf.shell.widget.cubeclock.Log;

public class ShaderStandard extends Shader {
    private String mFragmentShader;
    private String mVertexShader;

    public ShaderStandard() {
        this.mVertexShader = "uniform mat4 uMVPMatrix;      \nattribute vec2 aTextureCoord;      \nattribute vec4 aPosition;      \nvarying vec2 vTextureCoord;      \nvoid main() {      \ngl_Position = uMVPMatrix * aPosition;      \n vTextureCoord = aTextureCoord;      \n}";
        this.mFragmentShader = "precision mediump float;      \nvarying vec2 vTextureCoord;      \nuniform sampler2D sTexture;      \nvoid main() {      \n gl_FragColor = texture2D(sTexture, vTextureCoord);      \n}";
        createProgram();
    }

    private void createProgram() {
        this.id = ShaderUtils.createProgram(this.mVertexShader, this.mFragmentShader);
        Log.e(" Create Program id:" + this.id);
        if (this.id == 0) {
            throw new RuntimeException("Could create shader program");
        }
        this.maPositionHandle = GLES20.glGetAttribLocation(this.id, "aPosition");
        Utils.checkGlError("glGetAttribLocation aPosition");
        if (this.maPositionHandle == -1) {
            throw new RuntimeException("Could not get attrib location for aPosition");
        }
        this.maTextureHandle = GLES20.glGetAttribLocation(this.id, "aTextureCoord");
        Utils.checkGlError("glGetAttribLocation aTextureCoord");
        if (this.maTextureHandle == -1) {
            throw new RuntimeException("Could not get attrib location for aTextureCoord");
        }
        this.muMVPMatrixHandle = GLES20.glGetUniformLocation(this.id, "uMVPMatrix");
        Utils.checkGlError("glGetUniformLocation uMVPMatrix");
        if (this.muMVPMatrixHandle == -1) {
            throw new RuntimeException("Could not get attrib location for uMVPMatrix");
        }
    }
}
