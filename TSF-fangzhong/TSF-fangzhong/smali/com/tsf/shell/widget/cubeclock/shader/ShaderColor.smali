.class public Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;
.super Lcom/censivn/C3DEngine/common/shader/Shader;
.source "ShaderColor.java"


# instance fields
.field public mFragmentShader:Ljava/lang/String;

.field public mVertexShader:Ljava/lang/String;

.field public maColor4Handle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/censivn/C3DEngine/common/shader/Shader;-><init>()V

    .line 10
    const-string v0, "uniform mat4 uMVPMatrix;      \nattribute vec2 aTextureCoord;      \nattribute vec4 aPosition;      \nvarying vec2 vTextureCoord;      \nattribute vec4 aColor;      \nvarying vec4 vColor;      \nvoid main() {      \ngl_Position = uMVPMatrix * aPosition;      \n vTextureCoord = aTextureCoord;      \n vColor = aColor;      \n}"

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->mVertexShader:Ljava/lang/String;

    .line 17
    const-string v0, "precision mediump float;      \nvarying vec2 vTextureCoord;      \nuniform sampler2D sTexture;      \nvarying vec4 vColor;      \nvoid main() {      \n gl_FragColor = vColor;   \n}"

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->mFragmentShader:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->mFragmentShader:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->createProgram(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public createProgram(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "vertex"    # Ljava/lang/String;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 30
    invoke-static {p1, p2}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->id:I

    .line 32
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->id:I

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could create shader program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->id:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->maPositionHandle:I

    .line 40
    const-string v0, "glGetAttribLocation aPosition"

    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/shader/Utils;->checkGlError(Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->maPositionHandle:I

    if-ne v0, v2, :cond_1

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->id:I

    const-string v1, "aColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->maColor4Handle:I

    .line 50
    const-string v0, "glGetAttribLocation aColor"

    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/shader/Utils;->checkGlError(Ljava/lang/String;)V

    .line 52
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->maColor4Handle:I

    if-ne v0, v2, :cond_2

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aColor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->id:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->muMVPMatrixHandle:I

    .line 60
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/shader/Utils;->checkGlError(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->muMVPMatrixHandle:I

    if-ne v0, v2, :cond_3

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_3
    return-void
.end method

.method public glColor4f(IIII)V
    .locals 6
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    const/high16 v5, 0x437f0000

    .line 79
    int-to-float v1, p1

    div-float v0, v1, v5

    .line 81
    .local v0, "alpha":F
    iget v1, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->maColor4Handle:I

    int-to-float v2, p2

    div-float/2addr v2, v5

    mul-float/2addr v2, v0

    int-to-float v3, p3

    div-float/2addr v3, v5

    mul-float/2addr v3, v0

    int-to-float v4, p4

    div-float/2addr v4, v5

    mul-float/2addr v4, v0

    invoke-static {v1, v2, v3, v4, v0}, Landroid/opengl/GLES20;->glVertexAttrib4f(IFFFF)V

    .line 83
    return-void
.end method

.method public glColor4f(Lcom/censivn/C3DEngine/api/core/VObject3d;)V
    .locals 6
    .param p1, "target"    # Lcom/censivn/C3DEngine/api/core/VObject3d;

    .prologue
    const/high16 v5, 0x437f0000

    .line 87
    invoke-virtual {p1}, Lcom/censivn/C3DEngine/api/core/VObject3d;->alpha()I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v5

    .line 89
    .local v0, "alpha":F
    iget v1, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->maColor4Handle:I

    invoke-virtual {p1}, Lcom/censivn/C3DEngine/api/core/VObject3d;->defaultColor()Lcom/censivn/C3DEngine/api/element/Color4;

    move-result-object v2

    iget-short v2, v2, Lcom/censivn/C3DEngine/api/element/Color4;->r:S

    int-to-float v2, v2

    div-float/2addr v2, v5

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Lcom/censivn/C3DEngine/api/core/VObject3d;->defaultColor()Lcom/censivn/C3DEngine/api/element/Color4;

    move-result-object v3

    iget-short v3, v3, Lcom/censivn/C3DEngine/api/element/Color4;->g:S

    int-to-float v3, v3

    div-float/2addr v3, v5

    mul-float/2addr v3, v0

    invoke-virtual {p1}, Lcom/censivn/C3DEngine/api/core/VObject3d;->defaultColor()Lcom/censivn/C3DEngine/api/element/Color4;

    move-result-object v4

    iget-short v4, v4, Lcom/censivn/C3DEngine/api/element/Color4;->b:S

    int-to-float v4, v4

    div-float/2addr v4, v5

    mul-float/2addr v4, v0

    invoke-static {v1, v2, v3, v4, v0}, Landroid/opengl/GLES20;->glVertexAttrib4f(IFFFF)V

    .line 91
    return-void
.end method

.method public glColorPointer(IIZILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "normalized"    # Z
    .param p4, "stride"    # I
    .param p5, "ptr"    # Ljava/nio/Buffer;

    .prologue
    .line 72
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->maColor4Handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 73
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->maColor4Handle:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 75
    return-void
.end method
