.class public Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;
.super Lcom/censivn/C3DEngine/api/core/VObject3dContainer;
.source "CubeIcon.java"


# static fields
.field public static hal:I

.field public static one:I


# instance fields
.field public BackGroundTexture:I

.field private ColorIndex:I

.field public ContentTexture:I

.field private FrameCount:I

.field private VerticesCount:I

.field private cb:F

.field private cg:F

.field private colorArray:[I

.field colors:[F

.field private cr:F

.field private currectColor:I

.field protected mBufColors:Ljava/nio/FloatBuffer;

.field protected mBufTexCoords:Ljava/nio/FloatBuffer;

.field protected mBufVertices:Ljava/nio/FloatBuffer;

.field private mCubeColor:Lcom/tsf/shell/widget/cubeclock/test/CubeColor;

.field private targetColor:I

.field private tb:F

.field texCoord:[F

.field private tg:F

.field private tr:F

.field vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x24

    sput v0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    .line 20
    sget v0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->hal:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 27
    invoke-direct {p0}, Lcom/censivn/C3DEngine/api/core/VObject3dContainer;-><init>()V

    .line 17
    const/16 v3, 0x24

    iput v3, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->VerticesCount:I

    .line 22
    iput v4, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->ContentTexture:I

    .line 23
    iput v4, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->BackGroundTexture:I

    .line 141
    iput v4, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->targetColor:I

    .line 143
    iput v4, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->currectColor:I

    .line 149
    iput v5, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cr:F

    .line 150
    iput v5, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cg:F

    .line 151
    iput v5, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cb:F

    .line 288
    iput v4, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->FrameCount:I

    .line 290
    iput v4, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->ColorIndex:I

    .line 292
    const/16 v3, 0x10

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    .line 311
    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colorArray:[I

    .line 29
    new-instance v3, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;

    invoke-direct {v3}, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;-><init>()V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mCubeColor:Lcom/tsf/shell/widget/cubeclock/test/CubeColor;

    .line 31
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->VerticesCount:I

    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 32
    .local v2, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufVertices:Ljava/nio/FloatBuffer;

    .line 34
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 36
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->VerticesCount:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 37
    .local v1, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufTexCoords:Ljava/nio/FloatBuffer;

    .line 39
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->VerticesCount:I

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 42
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufColors:Ljava/nio/FloatBuffer;

    .line 44
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v3

    const/high16 v4, 0x41f00000

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    .line 48
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->initVertices()V

    .line 50
    return-void

    .line 292
    nop

    :array_0
    .array-data 4
        -0x7ef2f3
        -0xf2f4
        -0x188dd3
        -0x82fd6
        -0xcfa083
        -0xd08c6a
        -0xce521f
        -0x511b1c
        -0xf8d0f6
        -0xf2a4f0
        -0xf356ec
        -0x9431e5
        -0xebeff1
        -0xddddde
        -0xcccccd
        -0x99999a
    .end array-data
.end method

.method private calculateColor()V
    .locals 12

    .prologue
    const/high16 v10, 0x3f800000

    .line 165
    const v7, 0x3dcccccd

    .line 167
    .local v7, "speed":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->tr:F

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cr:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 168
    .local v5, "dr":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->tg:F

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cg:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 169
    .local v1, "dg":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->tb:F

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cb:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 173
    .local v0, "db":F
    cmpl-float v8, v5, v10

    if-gtz v8, :cond_0

    cmpl-float v8, v1, v10

    if-gtz v8, :cond_0

    cmpl-float v8, v0, v10

    if-lez v8, :cond_2

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->invalidate()V

    .line 177
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->tr:F

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cr:F

    sub-float v4, v8, v9

    .line 179
    .local v4, "diffR":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cr:F

    mul-float v9, v4, v7

    add-float/2addr v8, v9

    iput v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cr:F

    .line 183
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->tg:F

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cg:F

    sub-float v3, v8, v9

    .line 185
    .local v3, "diffG":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cg:F

    mul-float v9, v3, v7

    add-float/2addr v8, v9

    iput v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cg:F

    .line 189
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->tb:F

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cb:F

    sub-float v2, v8, v9

    .line 191
    .local v2, "diffB":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cb:F

    mul-float v9, v2, v7

    add-float/2addr v8, v9

    iput v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cb:F

    .line 195
    const/16 v8, 0xff

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cr:F

    float-to-int v9, v9

    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cg:F

    float-to-int v10, v10

    iget v11, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cb:F

    float-to-int v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 197
    .local v6, "export":I
    invoke-virtual {p0, v6}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->exportColorBuffer(I)V

    .line 217
    .end local v2    # "diffB":F
    .end local v3    # "diffG":F
    .end local v4    # "diffR":F
    .end local v6    # "export":I
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->currectColor:I

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->targetColor:I

    if-eq v8, v9, :cond_1

    .line 205
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->tr:F

    iput v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cr:F

    .line 206
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->tg:F

    iput v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cg:F

    .line 207
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->tb:F

    iput v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->cb:F

    .line 209
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->targetColor:I

    invoke-virtual {p0, v8}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->exportColorBuffer(I)V

    .line 211
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->targetColor:I

    iput v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->currectColor:I

    goto :goto_0
.end method

.method private changeColor()V
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->ColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->ColorIndex:I

    .line 332
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->ColorIndex:I

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colorArray:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->ColorIndex:I

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colorArray:[I

    iget v1, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->ColorIndex:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->onColorChange(I)V

    .line 339
    return-void
.end method

.method private initVertices()V
    .locals 5

    .prologue
    const v4, -0xcccccd

    const/4 v3, 0x0

    .line 58
    const/16 v0, 0x6c

    new-array v0, v0, [F

    .line 60
    sget v1, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v3

    const/4 v1, 0x1

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 61
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 62
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 64
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 65
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 66
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 70
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 71
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 72
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x19

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 74
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1c

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1d

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 75
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1f

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x20

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 76
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x22

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x23

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 80
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x25

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x26

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 81
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x28

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x29

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 82
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x2b

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x2c

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 84
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x2e

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x2f

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 85
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x31

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x32

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 86
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x34

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x35

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 90
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x37

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x38

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 91
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x3a

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x3b

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 92
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x3d

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x3e

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 94
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x40

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x41

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 95
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x43

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x44

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 96
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x46

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x47

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x48

    .line 100
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x49

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x4a

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x4b

    .line 101
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x4c

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x4d

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 102
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x4f

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x50

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x51

    .line 104
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x52

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x53

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x54

    .line 105
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x55

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x56

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 106
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x58

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x59

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x5a

    .line 110
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x5b

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x5c

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x5d

    .line 111
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x5e

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x5f

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 112
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x61

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x62

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x63

    .line 114
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x64

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x65

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x66

    .line 115
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x67

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x68

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x69

    .line 116
    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x6a

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x6b

    sget v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 58
    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->vertices:[F

    .line 122
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->VerticesCount:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    .line 124
    invoke-virtual {p0, v4}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->onColorChange(I)V

    .line 125
    invoke-virtual {p0, v4}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->exportColorBuffer(I)V

    .line 127
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 129
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufTexCoords:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mCubeColor:Lcom/tsf/shell/widget/cubeclock/test/CubeColor;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->getColorFace()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 130
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufTexCoords:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mCubeColor:Lcom/tsf/shell/widget/cubeclock/test/CubeColor;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->getColorFace()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 131
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufTexCoords:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mCubeColor:Lcom/tsf/shell/widget/cubeclock/test/CubeColor;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->getColorFace()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 132
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufTexCoords:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mCubeColor:Lcom/tsf/shell/widget/cubeclock/test/CubeColor;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->getColorFace()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 133
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufTexCoords:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mCubeColor:Lcom/tsf/shell/widget/cubeclock/test/CubeColor;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->getColorFace()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 134
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufTexCoords:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mCubeColor:Lcom/tsf/shell/widget/cubeclock/test/CubeColor;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->getColorFace()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 136
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 137
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 139
    return-void
.end method


# virtual methods
.method public dispatchDraw()V
    .locals 2

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colorFillEnable()Z

    move-result v0

    .line 348
    .local v0, "colorFill":Z
    if-eqz v0, :cond_0

    .line 350
    sget-object v1, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->SHADER_COLOR_TEXTURE:Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;

    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->setCustomShader(Lcom/censivn/C3DEngine/common/shader/Shader;)V

    .line 358
    :goto_0
    invoke-super {p0}, Lcom/censivn/C3DEngine/api/core/VObject3dContainer;->dispatchDraw()V

    .line 360
    return-void

    .line 354
    :cond_0
    sget-object v1, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->SHADER_COLOR_TEXTURE:Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;

    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->setCustomShader(Lcom/censivn/C3DEngine/common/shader/Shader;)V

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

    .line 365
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->calculateColor()V

    .line 369
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colorFillEnable()Z

    move-result v6

    .line 371
    .local v6, "colorFill":Z
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->visible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 379
    :cond_0
    if-eqz v6, :cond_1

    .line 381
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->SHADER_COLOR_TEXTURE:Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;

    invoke-virtual {v0}, Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;->glMVPMatrix()V

    .line 383
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->SHADER_COLOR_TEXTURE:Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufTexCoords:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;->glTexCoordPointer(IIZILjava/nio/Buffer;)V

    .line 385
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->SHADER_COLOR_TEXTURE:Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufVertices:Ljava/nio/FloatBuffer;

    move v1, v7

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;->glVertexPointer(IIZILjava/nio/Buffer;)V

    .line 387
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->SHADER_COLOR_TEXTURE:Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;

    invoke-virtual {v0, p0}, Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;->glColor4f(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 401
    :goto_1
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 403
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mCubeColor:Lcom/tsf/shell/widget/cubeclock/test/CubeColor;

    iget-object v1, v1, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->mTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    iget v1, v1, Lcom/censivn/C3DEngine/api/element/TextureElement;->id:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 405
    const/16 v0, 0x24

    invoke-static {v8, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 411
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->SHADER_COLOR_TEXTURE:Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;

    iget v0, v0, Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;->maColor4Handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 415
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->CURRENT_SHADER:Lcom/censivn/C3DEngine/common/shader/Shader;

    iget v0, v0, Lcom/censivn/C3DEngine/common/shader/Shader;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 417
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->CURRENT_SHADER:Lcom/censivn/C3DEngine/common/shader/Shader;

    iget v0, v0, Lcom/censivn/C3DEngine/common/shader/Shader;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 419
    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    .line 391
    :cond_1
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->SHADER_COLOR_TEXTURE:Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;

    invoke-virtual {v0}, Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;->glMVPMatrix()V

    .line 393
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->SHADER_COLOR_TEXTURE:Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufTexCoords:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;->glTexCoordPointer(IIZILjava/nio/Buffer;)V

    .line 395
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->SHADER_COLOR_TEXTURE:Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufVertices:Ljava/nio/FloatBuffer;

    move v1, v7

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;->glVertexPointer(IIZILjava/nio/Buffer;)V

    .line 397
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->SHADER_COLOR_TEXTURE:Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufColors:Ljava/nio/FloatBuffer;

    move v1, v8

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/censivn/C3DEngine/common/shader/ShaderColorTexture;->glColorPointer(IIZILjava/nio/Buffer;)V

    goto :goto_1
.end method

.method public exportColorBuffer(I)V
    .locals 12
    .param p1, "color"    # I

    .prologue
    .line 221
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 222
    .local v7, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 223
    .local v4, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 224
    .local v1, "b":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 226
    .local v0, "a":I
    const v2, 0x3f4ccccd

    .line 227
    .local v2, "d1":F
    const v3, 0x3f19999a

    .line 229
    .local v3, "d2":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->VerticesCount:I

    if-lt v5, v8, :cond_0

    .line 272
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufColors:Ljava/nio/FloatBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 273
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufColors:Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 274
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufColors:Ljava/nio/FloatBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 276
    return-void

    .line 231
    :cond_0
    const/16 v8, 0x18

    if-ge v5, v8, :cond_1

    .line 233
    rem-int/lit8 v6, v5, 0x6

    .line 235
    .local v6, "index":I
    packed-switch v6, :pswitch_data_0

    .line 247
    :pswitch_0
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x0

    int-to-float v10, v7

    const/high16 v11, 0x437f0000

    div-float/2addr v10, v11

    mul-float/2addr v10, v2

    aput v10, v8, v9

    .line 248
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x1

    int-to-float v10, v4

    const/high16 v11, 0x437f0000

    div-float/2addr v10, v11

    mul-float/2addr v10, v2

    aput v10, v8, v9

    .line 249
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x2

    int-to-float v10, v1

    const/high16 v11, 0x437f0000

    div-float/2addr v10, v11

    mul-float/2addr v10, v2

    aput v10, v8, v9

    .line 250
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x3

    int-to-float v10, v0

    const/high16 v11, 0x437f0000

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 229
    .end local v6    # "index":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 240
    .restart local v6    # "index":I
    :pswitch_1
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x0

    int-to-float v10, v7

    const/high16 v11, 0x437f0000

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 241
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x1

    int-to-float v10, v4

    const/high16 v11, 0x437f0000

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 242
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x2

    int-to-float v10, v1

    const/high16 v11, 0x437f0000

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 243
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x3

    int-to-float v10, v0

    const/high16 v11, 0x437f0000

    div-float/2addr v10, v11

    aput v10, v8, v9

    goto :goto_1

    .line 254
    .end local v6    # "index":I
    :cond_1
    const/16 v8, 0x18

    if-lt v5, v8, :cond_2

    const/16 v8, 0x24

    if-ge v5, v8, :cond_2

    .line 256
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x0

    int-to-float v10, v7

    const/high16 v11, 0x437f0000

    div-float/2addr v10, v11

    mul-float/2addr v10, v3

    aput v10, v8, v9

    .line 257
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x1

    int-to-float v10, v4

    const/high16 v11, 0x437f0000

    div-float/2addr v10, v11

    mul-float/2addr v10, v3

    aput v10, v8, v9

    .line 258
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x2

    int-to-float v10, v1

    const/high16 v11, 0x437f0000

    div-float/2addr v10, v11

    mul-float/2addr v10, v3

    aput v10, v8, v9

    .line 259
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x3

    int-to-float v10, v0

    const/high16 v11, 0x437f0000

    div-float/2addr v10, v11

    aput v10, v8, v9

    goto :goto_1

    .line 263
    :cond_2
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x0

    const/high16 v10, 0x3f800000

    aput v10, v8, v9

    .line 264
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x1

    const/high16 v10, 0x3f800000

    aput v10, v8, v9

    .line 265
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x2

    const/high16 v10, 0x3f800000

    aput v10, v8, v9

    .line 266
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->colors:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v9, v9, 0x3

    const/high16 v10, 0x3f800000

    aput v10, v8, v9

    goto/16 :goto_1

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onColorChange(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->targetColor:I

    .line 157
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->targetColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->tr:F

    .line 158
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->targetColor:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->tg:F

    .line 159
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->targetColor:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->tb:F

    .line 161
    return-void
.end method

.method public onDrawStart()V
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v0

    iget v1, v0, Lcom/censivn/C3DEngine/api/element/Number3d;->y:F

    const/high16 v2, 0x3f800000

    add-float/2addr v1, v2

    iput v1, v0, Lcom/censivn/C3DEngine/api/element/Number3d;->y:F

    .line 318
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->FrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->FrameCount:I

    .line 320
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->FrameCount:I

    rem-int/lit8 v0, v0, 0x78

    if-nez v0, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->changeColor()V

    .line 326
    :cond_0
    return-void
.end method

.method public setFaceTexture(I[F)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "texCoord"    # [F

    .prologue
    .line 280
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufTexCoords:Ljava/nio/FloatBuffer;

    mul-int/lit8 v1, p1, 0x18

    add-int/lit8 v1, v1, 0x48

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 282
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 284
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->mBufTexCoords:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 286
    return-void
.end method
