package com.tsf.shell.widget.cubeclock.shader;

import android.opengl.GLES20;

public class ShaderColorTexture extends ShaderColor {
    public String mFragmentShader;
    public String mVertexShader;

    public ShaderColorTexture() {
        this.mVertexShader = "uniform mat4 uMVPMatrix;      \nattribute vec2 aTextureCoord;      \nattribute vec4 aPosition;      \nvarying vec2 vTextureCoord;      \nattribute vec4 aColor;      \nvarying vec4 vColor;      \nvoid main() {      \ngl_Position = uMVPMatrix * aPosition;      \n vTextureCoord = aTextureCoord;      \n vColor = aColor;      \n}";
        this.mFragmentShader = "precision mediump float;      \nvarying vec2 vTextureCoord;      \nuniform sampler2D sTexture;      \nvarying vec4 vColor;      \nvoid main() {      \n gl_FragColor = vColor*texture2D(sTexture, vTextureCoord).rgba;      \n}";
        createProgram();
    }

    public void createProgram() {
        super.createProgram(this.mVertexShader, this.mFragmentShader);
        this.maTextureHandle = GLES20.glGetAttribLocation(this.id, "aTextureCoord");
        Utils.checkGlError("glGetAttribLocation aTextureCoord");
        if (this.maTextureHandle == -1) {
            throw new RuntimeException("Could not get attrib location for aTextureCoord");
        }
    }
}
