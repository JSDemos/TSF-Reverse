.class public Lcom/tsf/shell/widget/cubeclock/shader/ShaderUtils;
.super Ljava/lang/Object;
.source "ShaderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 16
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderUtils;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 18
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 64
    :cond_0
    :goto_0
    return v2

    .line 24
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderUtils;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 26
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 28
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 34
    .local v2, "program":I
    if-eqz v2, :cond_0

    .line 36
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 38
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/tsf/shell/widget/cubeclock/shader/Utils;->checkGlError(Ljava/lang/String;)V

    .line 40
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 42
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/tsf/shell/widget/cubeclock/shader/Utils;->checkGlError(Ljava/lang/String;)V

    .line 44
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 46
    new-array v0, v6, [I

    .line 48
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 50
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 52
    const-string v4, "Could not link program: "

    invoke-static {v4}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 54
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 56
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 58
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 4
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 72
    .local v1, "shader":I
    if-eqz v1, :cond_0

    .line 74
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 76
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 78
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 80
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 82
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not compile shader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 86
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 88
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 90
    const/4 v1, 0x0

    .line 96
    .end local v0    # "compiled":[I
    :cond_0
    return v1
.end method
