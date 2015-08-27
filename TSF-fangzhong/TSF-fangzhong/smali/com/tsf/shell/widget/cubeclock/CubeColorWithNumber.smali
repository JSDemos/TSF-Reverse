.class public Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;
.super Lcom/censivn/C3DEngine/api/core/VObject3dContainer;
.source "CubeColorWithNumber.java"


# static fields
.field public static hal:I

.field public static one:I


# instance fields
.field private VerticesCount:I

.field colors:[F

.field protected mBufColors:Ljava/nio/FloatBuffer;

.field protected mBufTexCoords:Ljava/nio/FloatBuffer;

.field protected mBufVertices:Ljava/nio/FloatBuffer;

.field texCoord:[F

.field public textureId:I

.field vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x40

    sput v0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    .line 26
    sget v0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->hal:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 30
    invoke-direct {p0}, Lcom/censivn/C3DEngine/api/core/VObject3dContainer;-><init>()V

    .line 23
    const/16 v3, 0x3c

    iput v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->VerticesCount:I

    .line 28
    iput v4, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->textureId:I

    .line 32
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->VerticesCount:I

    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 33
    .local v2, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufVertices:Ljava/nio/FloatBuffer;

    .line 35
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 37
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->VerticesCount:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 38
    .local v1, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 39
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufTexCoords:Ljava/nio/FloatBuffer;

    .line 40
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->VerticesCount:I

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufColors:Ljava/nio/FloatBuffer;

    .line 45
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->initVertices()V

    .line 49
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v3

    const/high16 v4, -0x3c4c0000

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    .line 51
    return-void
.end method


# virtual methods
.method public dispatchDraw()V
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colorFillEnable()Z

    move-result v0

    .line 248
    .local v0, "colorFill":Z
    if-eqz v0, :cond_0

    .line 250
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->setCustomShader(Lcom/censivn/C3DEngine/common/shader/Shader;)V

    .line 258
    :goto_0
    invoke-super {p0}, Lcom/censivn/C3DEngine/api/core/VObject3dContainer;->dispatchDraw()V

    .line 260
    return-void

    .line 254
    :cond_0
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->setCustomShader(Lcom/censivn/C3DEngine/common/shader/Shader;)V

    goto :goto_0
.end method

.method public drawElement()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colorFillEnable()Z

    move-result v6

    .line 267
    .local v6, "colorFill":Z
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->visible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 286
    :cond_0
    if-eqz v6, :cond_1

    .line 288
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glMVPMatrix()V

    .line 290
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufTexCoords:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glTexCoordPointer(IIZILjava/nio/Buffer;)V

    .line 292
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufVertices:Ljava/nio/FloatBuffer;

    move v1, v7

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glVertexPointer(IIZILjava/nio/Buffer;)V

    .line 294
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {v0, p0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glColor4f(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 310
    :goto_1
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 312
    const/16 v0, 0xde1

    iget v1, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->textureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 314
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->VerticesCount:I

    invoke-static {v8, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 318
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget v0, v0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->maColor4Handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 328
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->CURRENT_SHADER:Lcom/censivn/C3DEngine/common/shader/Shader;

    iget v0, v0, Lcom/censivn/C3DEngine/common/shader/Shader;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 330
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->CURRENT_SHADER:Lcom/censivn/C3DEngine/common/shader/Shader;

    iget v0, v0, Lcom/censivn/C3DEngine/common/shader/Shader;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 332
    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    .line 298
    :cond_1
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glMVPMatrix()V

    .line 300
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufTexCoords:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glTexCoordPointer(IIZILjava/nio/Buffer;)V

    .line 302
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufVertices:Ljava/nio/FloatBuffer;

    move v1, v7

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glVertexPointer(IIZILjava/nio/Buffer;)V

    .line 304
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufColors:Ljava/nio/FloatBuffer;

    move v1, v8

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glColorPointer(IIZILjava/nio/Buffer;)V

    goto :goto_1
.end method

.method public initVertices()V
    .locals 10

    .prologue
    const/16 v9, 0x30

    const v8, 0x3f19999a

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    .line 59
    const/16 v2, 0xb4

    new-array v2, v2, [F

    .line 62
    sget v3, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v7

    const/4 v3, 0x1

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x2

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x3

    .line 63
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x4

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x5

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    .line 64
    aput v5, v2, v3

    const/4 v3, 0x7

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x8

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x9

    .line 66
    aput v5, v2, v3

    const/16 v3, 0xa

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xb

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xc

    .line 67
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xd

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xe

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xf

    .line 68
    aput v5, v2, v3

    const/16 v3, 0x10

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x11

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x12

    .line 70
    aput v5, v2, v3

    const/16 v3, 0x13

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x14

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x15

    .line 71
    aput v5, v2, v3

    const/16 v3, 0x16

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x17

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x18

    .line 72
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x19

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x1a

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x1b

    .line 74
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x1c

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x1d

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x1e

    .line 75
    aput v5, v2, v3

    const/16 v3, 0x1f

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x20

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x21

    .line 76
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x22

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x23

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x24

    .line 80
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x25

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x26

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x27

    .line 81
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x28

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x29

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x2a

    .line 82
    aput v5, v2, v3

    const/16 v3, 0x2b

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x2c

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x2d

    .line 84
    aput v5, v2, v3

    const/16 v3, 0x2e

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x2f

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    .line 85
    sget v3, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v9

    const/16 v3, 0x31

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x32

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x33

    .line 86
    aput v5, v2, v3

    const/16 v3, 0x34

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x35

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x36

    .line 88
    aput v5, v2, v3

    const/16 v3, 0x37

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x38

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x39

    .line 89
    aput v5, v2, v3

    const/16 v3, 0x3a

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x3b

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x3c

    .line 90
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x3d

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x3e

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x3f

    .line 92
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x40

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x41

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x42

    .line 93
    aput v5, v2, v3

    const/16 v3, 0x43

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x44

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x45

    .line 94
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x46

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x47

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x48

    .line 98
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x49

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x4a

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x4b

    .line 99
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x4c

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x4d

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x4e

    .line 100
    aput v5, v2, v3

    const/16 v3, 0x4f

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x50

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x51

    .line 102
    aput v5, v2, v3

    const/16 v3, 0x52

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x53

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x54

    .line 103
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x55

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x56

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x57

    .line 104
    aput v5, v2, v3

    const/16 v3, 0x58

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x59

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x5a

    .line 106
    aput v5, v2, v3

    const/16 v3, 0x5b

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x5c

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x5d

    .line 107
    aput v5, v2, v3

    const/16 v3, 0x5e

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x5f

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x60

    .line 108
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x61

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x62

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x63

    .line 110
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x64

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x65

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x66

    .line 111
    aput v5, v2, v3

    const/16 v3, 0x67

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x68

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x69

    .line 112
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x6a

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x6b

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x6c

    .line 116
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x6d

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x6e

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x6f

    .line 117
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x70

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x71

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x72

    .line 118
    aput v5, v2, v3

    const/16 v3, 0x73

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x74

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x75

    .line 120
    aput v5, v2, v3

    const/16 v3, 0x76

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x77

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x78

    .line 121
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x79

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x7a

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x7b

    .line 122
    aput v5, v2, v3

    const/16 v3, 0x7c

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x7d

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x7e

    .line 125
    aput v5, v2, v3

    const/16 v3, 0x7f

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x80

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x81

    .line 126
    aput v5, v2, v3

    const/16 v3, 0x82

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x83

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x84

    .line 127
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x85

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x86

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x87

    .line 129
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x88

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x89

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x8a

    .line 130
    aput v5, v2, v3

    const/16 v3, 0x8b

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x8c

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x8d

    .line 131
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x8e

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x8f

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x90

    .line 135
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x91

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x92

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x93

    .line 136
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x94

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x95

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x96

    .line 137
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x97

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x98

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x99

    .line 139
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x9a

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x9b

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x9c

    .line 140
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x9d

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x9e

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x9f

    .line 141
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xa0

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xa1

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xa2

    .line 145
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xa3

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xa4

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xa5

    .line 146
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xa6

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xa7

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xa8

    .line 147
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xa9

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xaa

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xab

    .line 149
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xac

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xad

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xae

    .line 150
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xaf

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xb0

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xb1

    .line 151
    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xb2

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xb3

    sget v4, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->one:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    .line 59
    iput-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->vertices:[F

    .line 155
    const/16 v2, 0xf0

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colors:[F

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x3c

    if-lt v0, v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufVertices:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->vertices:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 204
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufColors:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colors:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 206
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 207
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 208
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 210
    return-void

    .line 159
    :cond_0
    if-ge v0, v9, :cond_1

    .line 161
    rem-int/lit8 v1, v0, 0xc

    .line 163
    .local v1, "index":I
    packed-switch v1, :pswitch_data_0

    .line 177
    :pswitch_0
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colors:[F

    mul-int/lit8 v3, v0, 0x4

    aput v8, v2, v3

    .line 178
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colors:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    aput v8, v2, v3

    .line 179
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colors:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    aput v8, v2, v3

    .line 180
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colors:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    aput v6, v2, v3

    .line 157
    .end local v1    # "index":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .restart local v1    # "index":I
    :pswitch_1
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colors:[F

    mul-int/lit8 v3, v0, 0x4

    aput v6, v2, v3

    .line 171
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colors:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    aput v6, v2, v3

    .line 172
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colors:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    aput v6, v2, v3

    .line 173
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colors:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    aput v6, v2, v3

    goto :goto_1

    .line 186
    .end local v1    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colors:[F

    mul-int/lit8 v3, v0, 0x4

    aput v6, v2, v3

    .line 187
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colors:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    aput v6, v2, v3

    .line 188
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colors:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    aput v6, v2, v3

    .line 189
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->colors:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    aput v6, v2, v3

    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onDrawStart()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public setColorFace(Lcom/tsf/shell/widget/cubeclock/CubeTexture;)V
    .locals 2
    .param p1, "cube"    # Lcom/tsf/shell/widget/cubeclock/CubeTexture;

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aaaa"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public setFaceTexture(I[F)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "texCoord"    # [F

    .prologue
    .line 214
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufTexCoords:Ljava/nio/FloatBuffer;

    mul-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 218
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeColorWithNumber;->mBufTexCoords:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 220
    return-void
.end method
