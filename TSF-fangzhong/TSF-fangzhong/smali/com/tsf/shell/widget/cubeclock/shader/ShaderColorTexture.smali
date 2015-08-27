.class public Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;
.super Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;
.source "ShaderColorTexture.java"


# instance fields
.field public mFragmentShader:Ljava/lang/String;

.field public mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;-><init>()V

    .line 7
    const-string v0, "uniform mat4 uMVPMatrix;      \nattribute vec2 aTextureCoord;      \nattribute vec4 aPosition;      \nvarying vec2 vTextureCoord;      \nattribute vec4 aColor;      \nvarying vec4 vColor;      \nvoid main() {      \ngl_Position = uMVPMatrix * aPosition;      \n vTextureCoord = aTextureCoord;      \n vColor = aColor;      \n}"

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->mVertexShader:Ljava/lang/String;

    .line 21
    const-string v0, "precision mediump float;      \nvarying vec2 vTextureCoord;      \nuniform sampler2D sTexture;      \nvarying vec4 vColor;      \nvoid main() {      \n gl_FragColor = vColor*texture2D(sTexture, vTextureCoord).rgba;      \n}"

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->mFragmentShader:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->createProgram()V

    .line 33
    return-void
.end method


# virtual methods
.method public createProgram()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->mFragmentShader:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColor;->createProgram(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->id:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->maTextureHandle:I

    .line 41
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/shader/Utils;->checkGlError(Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->maTextureHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    return-void
.end method
