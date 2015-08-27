.class public Lcom/tsf/shell/widget/cubeclock/Cube;
.super Lcom/censivn/C3DEngine/api/core/VObject3dContainer;
.source "Cube.java"


# static fields
.field public static hal:I

.field public static one:I

.field public static oneX:I


# instance fields
.field public BackGroundTexture:I

.field public ContentTexture:I

.field private VerticesCount:I

.field private cb:F

.field private cg:F

.field colors:[F

.field private cr:F

.field private currectColor:I

.field protected mBufColors:Ljava/nio/FloatBuffer;

.field protected mBufTexCoords:Ljava/nio/FloatBuffer;

.field protected mBufVertices:Ljava/nio/FloatBuffer;

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
    .line 27
    const/16 v0, 0x3f

    sput v0, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    .line 28
    sget v0, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/tsf/shell/widget/cubeclock/Cube;->hal:I

    .line 29
    const/16 v0, 0x40

    sput v0, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 34
    invoke-direct {p0}, Lcom/censivn/C3DEngine/api/core/VObject3dContainer;-><init>()V

    .line 25
    const/16 v3, 0x54

    iput v3, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->VerticesCount:I

    .line 31
    iput v4, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->ContentTexture:I

    .line 32
    iput v4, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->BackGroundTexture:I

    .line 226
    iput v4, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->targetColor:I

    .line 228
    iput v4, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->currectColor:I

    .line 234
    iput v5, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cr:F

    .line 235
    iput v5, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cg:F

    .line 236
    iput v5, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cb:F

    .line 36
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mObjectManager:Lcom/censivn/C3DEngine/api/core/VObjectManager;

    invoke-virtual {v3, p0}, Lcom/censivn/C3DEngine/api/core/VObjectManager;->addObject(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 38
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->VerticesCount:I

    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 39
    .local v2, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufVertices:Ljava/nio/FloatBuffer;

    .line 41
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->VerticesCount:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 44
    .local v1, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufTexCoords:Ljava/nio/FloatBuffer;

    .line 46
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->VerticesCount:I

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 49
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufColors:Ljava/nio/FloatBuffer;

    .line 51
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/Cube;->initVertices()V

    .line 55
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mSingleColorTexture:Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;

    invoke-virtual {v3, p0}, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->registerCube(Lcom/tsf/shell/widget/cubeclock/Cube;)V

    .line 57
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/Cube;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v3

    const/high16 v4, -0x3c4c0000

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    .line 59
    return-void
.end method

.method private calculateColor()V
    .locals 12

    .prologue
    const/high16 v10, 0x3f800000

    .line 262
    const v7, 0x3dcccccd

    .line 269
    .local v7, "speed":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tr:F

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cr:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 270
    .local v5, "dr":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tg:F

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cg:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 271
    .local v1, "dg":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tb:F

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cb:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 275
    .local v0, "db":F
    cmpl-float v8, v5, v10

    if-gtz v8, :cond_0

    cmpl-float v8, v1, v10

    if-gtz v8, :cond_0

    cmpl-float v8, v0, v10

    if-lez v8, :cond_1

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/Cube;->invalidate()V

    .line 279
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tr:F

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cr:F

    sub-float v4, v8, v9

    .line 281
    .local v4, "diffR":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cr:F

    mul-float v9, v4, v7

    add-float/2addr v8, v9

    iput v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cr:F

    .line 285
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tg:F

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cg:F

    sub-float v3, v8, v9

    .line 287
    .local v3, "diffG":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cg:F

    mul-float v9, v3, v7

    add-float/2addr v8, v9

    iput v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cg:F

    .line 291
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tb:F

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cb:F

    sub-float v2, v8, v9

    .line 293
    .local v2, "diffB":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cb:F

    mul-float v9, v2, v7

    add-float/2addr v8, v9

    iput v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cb:F

    .line 297
    const/16 v8, 0xff

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cr:F

    float-to-int v9, v9

    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cg:F

    float-to-int v10, v10

    iget v11, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cb:F

    float-to-int v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 299
    .local v6, "export":I
    invoke-virtual {p0, v6}, Lcom/tsf/shell/widget/cubeclock/Cube;->exportColorBuffer(I)V

    .line 323
    .end local v2    # "diffB":F
    .end local v3    # "diffG":F
    .end local v4    # "diffR":F
    .end local v6    # "export":I
    :goto_0
    return-void

    .line 305
    :cond_1
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->currectColor:I

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->targetColor:I

    if-eq v8, v9, :cond_2

    .line 307
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tr:F

    iput v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cr:F

    .line 308
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tg:F

    iput v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cg:F

    .line 309
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tb:F

    iput v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cb:F

    .line 311
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->targetColor:I

    iput v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->currectColor:I

    .line 315
    const-string v8, "Widget Cube Slient First"

    invoke-static {v8}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 319
    :cond_2
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->currectColor:I

    invoke-virtual {p0, v8}, Lcom/tsf/shell/widget/cubeclock/Cube;->exportColorBuffer(I)V

    goto :goto_0
.end method

.method private calculateRotProp(F)F
    .locals 3
    .param p1, "degree"    # F

    .prologue
    const/high16 v2, 0x42b40000

    .line 337
    const/high16 v1, 0x42340000

    add-float/2addr v1, p1

    rem-float/2addr v1, v2

    div-float v0, v1, v2

    .line 339
    .local v0, "prop":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x3f800000

    add-float/2addr v0, v1

    .line 341
    :cond_0
    return v0
.end method

.method private initVertices()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 67
    const/16 v0, 0xfc

    new-array v0, v0, [F

    .line 69
    sget v1, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v4

    const/4 v1, 0x1

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 70
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 71
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 73
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 74
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 75
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 79
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 80
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 81
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x19

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 83
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1c

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1d

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 84
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x1f

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x20

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 85
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x22

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x23

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 89
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x25

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x26

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 90
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x28

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x29

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 91
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x2b

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x2c

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 93
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x2e

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x2f

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 94
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x31

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x32

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 95
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x34

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x35

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 99
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x37

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x38

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 100
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x3a

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x3b

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 101
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x3d

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x3e

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 103
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x40

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x41

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 104
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x43

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x44

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 105
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x46

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x47

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x48

    .line 109
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x49

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x4a

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x4b

    .line 110
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x4c

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x4d

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 111
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x4f

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x50

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x51

    .line 113
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x52

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x53

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x54

    .line 114
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x55

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x56

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 115
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x58

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x59

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x5a

    .line 119
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x5b

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x5c

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x5d

    .line 120
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x5e

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x5f

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 121
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x61

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x62

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x63

    .line 123
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x64

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x65

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x66

    .line 124
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x67

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x68

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x69

    .line 125
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x6a

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x6b

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->oneX:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x6c

    .line 131
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x6d

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x6e

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x6f

    .line 132
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x70

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x71

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 133
    aput v3, v0, v1

    const/16 v1, 0x73

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x74

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x75

    .line 135
    aput v3, v0, v1

    const/16 v1, 0x76

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x77

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x78

    .line 136
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x79

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x7a

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x7b

    .line 137
    aput v3, v0, v1

    const/16 v1, 0x7c

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x7d

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x7e

    .line 139
    aput v3, v0, v1

    const/16 v1, 0x7f

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x80

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x81

    .line 140
    aput v3, v0, v1

    const/16 v1, 0x82

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x83

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x84

    .line 141
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x85

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x86

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x87

    .line 143
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x88

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x89

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x8a

    .line 144
    aput v3, v0, v1

    const/16 v1, 0x8b

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x8c

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x8d

    .line 145
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x8e

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x8f

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x90

    .line 149
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x91

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x92

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x93

    .line 150
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x94

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x95

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x96

    .line 151
    aput v3, v0, v1

    const/16 v1, 0x97

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x98

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x99

    .line 153
    aput v3, v0, v1

    const/16 v1, 0x9a

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x9b

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x9c

    .line 154
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x9d

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x9e

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0x9f

    .line 155
    aput v3, v0, v1

    const/16 v1, 0xa0

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xa1

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xa2

    .line 157
    aput v3, v0, v1

    const/16 v1, 0xa3

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xa4

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xa5

    .line 158
    aput v3, v0, v1

    const/16 v1, 0xa6

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xa7

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xa8

    .line 159
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xa9

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xaa

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xab

    .line 161
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xac

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xad

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xae

    .line 162
    aput v3, v0, v1

    const/16 v1, 0xaf

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb0

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb1

    .line 163
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb2

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb3

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb4

    .line 167
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb5

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb6

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb7

    .line 168
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb8

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xb9

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xba

    .line 169
    aput v3, v0, v1

    const/16 v1, 0xbb

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xbc

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xbd

    .line 171
    aput v3, v0, v1

    const/16 v1, 0xbe

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xbf

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xc0

    .line 172
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xc1

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xc2

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xc3

    .line 173
    aput v3, v0, v1

    const/16 v1, 0xc4

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xc5

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xc6

    .line 175
    aput v3, v0, v1

    const/16 v1, 0xc7

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xc8

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xc9

    .line 176
    aput v3, v0, v1

    const/16 v1, 0xca

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xcb

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xcc

    .line 177
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xcd

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xce

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xcf

    .line 179
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd0

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd1

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd2

    .line 180
    aput v3, v0, v1

    const/16 v1, 0xd3

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd4

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd5

    .line 181
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd6

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd7

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd8

    .line 185
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xd9

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xda

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xdb

    .line 186
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xdc

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xdd

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xde

    .line 187
    aput v3, v0, v1

    const/16 v1, 0xdf

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xe0

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xe1

    .line 189
    aput v3, v0, v1

    const/16 v1, 0xe2

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xe3

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xe4

    .line 190
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xe5

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xe6

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xe7

    .line 191
    aput v3, v0, v1

    const/16 v1, 0xe8

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xe9

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xea

    .line 194
    aput v3, v0, v1

    const/16 v1, 0xeb

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xec

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xed

    .line 195
    aput v3, v0, v1

    const/16 v1, 0xee

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xef

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf0

    .line 196
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf1

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf2

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf3

    .line 198
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf4

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf5

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf6

    .line 199
    aput v3, v0, v1

    const/16 v1, 0xf7

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf8

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf9

    .line 200
    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xfa

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/16 v1, 0xfb

    sget v2, Lcom/tsf/shell/widget/cubeclock/Cube;->one:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 67
    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->vertices:[F

    .line 204
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->VerticesCount:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    .line 206
    const v0, -0xcccccd

    invoke-virtual {p0, v0}, Lcom/tsf/shell/widget/cubeclock/Cube;->exportColorBuffer(I)V

    .line 208
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 210
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufTexCoords:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mSingleColorTexture:Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->getColorFace()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 211
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufTexCoords:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mSingleColorTexture:Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->getColorFace()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 212
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufTexCoords:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mSingleColorTexture:Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->getColorFace()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 213
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufTexCoords:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mSingleColorTexture:Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->getColorFace()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 214
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufTexCoords:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mSingleColorTexture:Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->getColorFace()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 215
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufTexCoords:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mSingleColorTexture:Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->getColorFace()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 221
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 224
    return-void
.end method


# virtual methods
.method public calculateArrayIndex(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    .line 588
    rem-int v0, p1, p2

    .line 590
    .local v0, "target":I
    if-gez v0, :cond_0

    add-int/2addr v0, p2

    .line 592
    :cond_0
    return v0
.end method

.method public calculateGrid(F)I
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 329
    const/high16 v1, 0x42b40000

    div-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 331
    .local v0, "grid":I
    return v0
.end method

.method public dispatchDraw()V
    .locals 2

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/Cube;->colorFillEnable()Z

    move-result v0

    .line 618
    .local v0, "colorFill":Z
    if-eqz v0, :cond_0

    .line 620
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/Cube;->setCustomShader(Lcom/censivn/C3DEngine/common/shader/Shader;)V

    .line 628
    :goto_0
    invoke-super {p0}, Lcom/censivn/C3DEngine/api/core/VObject3dContainer;->dispatchDraw()V

    .line 630
    return-void

    .line 624
    :cond_0
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/Cube;->setCustomShader(Lcom/censivn/C3DEngine/common/shader/Shader;)V

    goto :goto_0
.end method

.method public drawElement()V
    .locals 9

    .prologue
    const/4 v1, 0x2

    const/16 v8, 0xde1

    const/4 v7, 0x4

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 635
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/Cube;->calculateColor()V

    .line 639
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/Cube;->colorFillEnable()Z

    move-result v6

    .line 641
    .local v6, "colorFill":Z
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/Cube;->visible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    :goto_0
    return-void

    .line 660
    :cond_0
    if-eqz v6, :cond_1

    .line 662
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glMVPMatrix()V

    .line 664
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufTexCoords:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glTexCoordPointer(IIZILjava/nio/Buffer;)V

    .line 666
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufVertices:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glVertexPointer(IIZILjava/nio/Buffer;)V

    .line 668
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {v0, p0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glColor4f(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 684
    :goto_1
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 686
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mSingleColorTexture:Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->mTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    iget v0, v0, Lcom/censivn/C3DEngine/api/element/TextureElement;->id:I

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 688
    const/16 v0, 0x24

    invoke-static {v7, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 692
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 694
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->ContentTexture:I

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 696
    const/16 v0, 0x24

    iget v1, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->VerticesCount:I

    add-int/lit8 v1, v1, -0x24

    invoke-static {v7, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 700
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget v0, v0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->maColor4Handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 710
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->CURRENT_SHADER:Lcom/censivn/C3DEngine/common/shader/Shader;

    iget v0, v0, Lcom/censivn/C3DEngine/common/shader/Shader;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 712
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->CURRENT_SHADER:Lcom/censivn/C3DEngine/common/shader/Shader;

    iget v0, v0, Lcom/censivn/C3DEngine/common/shader/Shader;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 714
    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    .line 672
    :cond_1
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glMVPMatrix()V

    .line 674
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufTexCoords:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glTexCoordPointer(IIZILjava/nio/Buffer;)V

    .line 676
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufVertices:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glVertexPointer(IIZILjava/nio/Buffer;)V

    .line 678
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufColors:Ljava/nio/FloatBuffer;

    move v1, v7

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glColorPointer(IIZILjava/nio/Buffer;)V

    goto :goto_1
.end method

.method public exportColorBuffer(I)V
    .locals 26
    .param p1, "color"    # I

    .prologue
    .line 347
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v20

    .line 348
    .local v20, "r":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v12

    .line 349
    .local v12, "g":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 350
    .local v4, "b":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 352
    .local v3, "a":I
    const v6, 0x3f333333

    .line 353
    .local v6, "d1":F
    const/high16 v7, 0x3f000000

    .line 355
    .local v7, "d2":F
    invoke-virtual/range {p0 .. p0}, Lcom/tsf/shell/widget/cubeclock/Cube;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tsf/shell/widget/cubeclock/Cube;->calculateGrid(F)I

    move-result v22

    const/16 v23, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/tsf/shell/widget/cubeclock/Cube;->calculateArrayIndex(II)I

    move-result v11

    .line 357
    .local v11, "frontface":I
    add-int/lit8 v22, v11, -0x1

    const/16 v23, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/tsf/shell/widget/cubeclock/Cube;->calculateArrayIndex(II)I

    move-result v16

    .line 359
    .local v16, "prevface":I
    add-int/lit8 v22, v11, 0x1

    const/16 v23, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/tsf/shell/widget/cubeclock/Cube;->calculateArrayIndex(II)I

    move-result v15

    .line 363
    .local v15, "nextface":I
    invoke-virtual/range {p0 .. p0}, Lcom/tsf/shell/widget/cubeclock/Cube;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/tsf/shell/widget/cubeclock/Cube;->calculateRotProp(F)F

    move-result v17

    .line 365
    .local v17, "prop":F
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fe0000000000000L

    cmpg-double v22, v22, v24

    if-gez v22, :cond_0

    const/high16 v22, 0x3f000000

    div-float v19, v17, v22

    .line 367
    .local v19, "propTop":F
    :goto_0
    const/high16 v22, 0x3f000000

    cmpl-float v22, v17, v22

    if-lez v22, :cond_1

    const/high16 v22, 0x3f800000

    sub-float v22, v22, v17

    const/high16 v23, 0x3f000000

    div-float v18, v22, v23

    .line 371
    .local v18, "propBottom":F
    :goto_1
    const v8, 0x3f333333

    .line 372
    .local v8, "dark":F
    const/high16 v22, 0x3f800000

    sub-float v9, v22, v8

    .line 374
    .local v9, "darkdiff":F
    const v5, 0x3f333333

    .line 376
    .local v5, "bottomDark":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->VerticesCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v13, v0, :cond_2

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufColors:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufColors:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufColors:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 584
    return-void

    .line 365
    .end local v5    # "bottomDark":F
    .end local v8    # "dark":F
    .end local v9    # "darkdiff":F
    .end local v13    # "i":I
    .end local v18    # "propBottom":F
    .end local v19    # "propTop":F
    :cond_0
    const/high16 v19, 0x3f800000

    goto :goto_0

    .line 367
    .restart local v19    # "propTop":F
    :cond_1
    const/high16 v18, 0x3f800000

    goto :goto_1

    .line 378
    .restart local v5    # "bottomDark":F
    .restart local v8    # "dark":F
    .restart local v9    # "darkdiff":F
    .restart local v13    # "i":I
    .restart local v18    # "propBottom":F
    :cond_2
    const/16 v22, 0x18

    move/from16 v0, v22

    if-ge v13, v0, :cond_6

    .line 380
    rem-int/lit8 v14, v13, 0x6

    .line 381
    .local v14, "index":I
    div-int/lit8 v10, v13, 0x6

    .line 383
    .local v10, "face":I
    if-ne v10, v11, :cond_3

    .line 385
    packed-switch v14, :pswitch_data_0

    .line 397
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v25, v9, v18

    add-float v25, v25, v8

    mul-float v24, v24, v25

    mul-float v24, v24, v5

    aput v24, v22, v23

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    int-to-float v0, v12

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v25, v9, v18

    add-float v25, v25, v8

    mul-float v24, v24, v25

    mul-float v24, v24, v5

    aput v24, v22, v23

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    int-to-float v0, v4

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v25, v9, v18

    add-float v25, v25, v8

    mul-float v24, v24, v25

    mul-float v24, v24, v5

    aput v24, v22, v23

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    int-to-float v0, v3

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    aput v24, v22, v23

    .line 376
    .end local v10    # "face":I
    .end local v14    # "index":I
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 390
    .restart local v10    # "face":I
    .restart local v14    # "index":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v25, v9, v19

    add-float v25, v25, v8

    mul-float v24, v24, v25

    aput v24, v22, v23

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    int-to-float v0, v12

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v25, v9, v19

    add-float v25, v25, v8

    mul-float v24, v24, v25

    aput v24, v22, v23

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    int-to-float v0, v4

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v25, v9, v19

    add-float v25, v25, v8

    mul-float v24, v24, v25

    aput v24, v22, v23

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    int-to-float v0, v3

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    aput v24, v22, v23

    goto :goto_3

    .line 404
    :cond_3
    move/from16 v0, v16

    if-ne v10, v0, :cond_4

    .line 406
    packed-switch v14, :pswitch_data_1

    .line 418
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v24, v24, v8

    mul-float v24, v24, v5

    aput v24, v22, v23

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    int-to-float v0, v12

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v24, v24, v8

    mul-float v24, v24, v5

    aput v24, v22, v23

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    int-to-float v0, v4

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v24, v24, v8

    mul-float v24, v24, v5

    aput v24, v22, v23

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    int-to-float v0, v3

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    aput v24, v22, v23

    goto/16 :goto_3

    .line 411
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    const/high16 v25, 0x3f800000

    mul-float v24, v24, v25

    aput v24, v22, v23

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    int-to-float v0, v12

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    const/high16 v25, 0x3f800000

    mul-float v24, v24, v25

    aput v24, v22, v23

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    int-to-float v0, v4

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    const/high16 v25, 0x3f800000

    mul-float v24, v24, v25

    aput v24, v22, v23

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    int-to-float v0, v3

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    aput v24, v22, v23

    goto/16 :goto_3

    .line 425
    :cond_4
    if-ne v10, v15, :cond_5

    .line 427
    packed-switch v14, :pswitch_data_2

    .line 439
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    const/high16 v25, 0x3f800000

    mul-float v24, v24, v25

    mul-float v24, v24, v5

    aput v24, v22, v23

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    int-to-float v0, v12

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    const/high16 v25, 0x3f800000

    mul-float v24, v24, v25

    mul-float v24, v24, v5

    aput v24, v22, v23

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    int-to-float v0, v4

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    const/high16 v25, 0x3f800000

    mul-float v24, v24, v25

    mul-float v24, v24, v5

    aput v24, v22, v23

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    int-to-float v0, v3

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    aput v24, v22, v23

    goto/16 :goto_3

    .line 432
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v24, v24, v8

    aput v24, v22, v23

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    int-to-float v0, v12

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v24, v24, v8

    aput v24, v22, v23

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    int-to-float v0, v4

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v24, v24, v8

    aput v24, v22, v23

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    int-to-float v0, v3

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    aput v24, v22, v23

    goto/16 :goto_3

    .line 448
    :cond_5
    packed-switch v14, :pswitch_data_3

    .line 460
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v24, v24, v6

    aput v24, v22, v23

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    int-to-float v0, v12

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v24, v24, v6

    aput v24, v22, v23

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    int-to-float v0, v4

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v24, v24, v6

    aput v24, v22, v23

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    int-to-float v0, v3

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    aput v24, v22, v23

    goto/16 :goto_3

    .line 453
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    aput v24, v22, v23

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    int-to-float v0, v12

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    aput v24, v22, v23

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    int-to-float v0, v4

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    aput v24, v22, v23

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    int-to-float v0, v3

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    aput v24, v22, v23

    goto/16 :goto_3

    .line 469
    .end local v10    # "face":I
    .end local v14    # "index":I
    :cond_6
    const/16 v22, 0x18

    move/from16 v0, v22

    if-lt v13, v0, :cond_7

    const/16 v22, 0x24

    move/from16 v0, v22

    if-ge v13, v0, :cond_7

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v24, v24, v7

    aput v24, v22, v23

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    int-to-float v0, v12

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v24, v24, v7

    aput v24, v22, v23

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    int-to-float v0, v4

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    mul-float v24, v24, v7

    aput v24, v22, v23

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    int-to-float v0, v3

    move/from16 v24, v0

    const/high16 v25, 0x437f0000

    div-float v24, v24, v25

    aput v24, v22, v23

    goto/16 :goto_3

    .line 483
    :cond_7
    rem-int/lit8 v14, v13, 0x6

    .line 484
    .restart local v14    # "index":I
    add-int/lit8 v22, v13, -0x24

    div-int/lit8 v10, v22, 0xc

    .line 486
    .restart local v10    # "face":I
    const/high16 v21, 0x3f800000

    .line 487
    .local v21, "textColor":F
    const/high16 v8, 0x3f000000

    .line 488
    const/high16 v22, 0x3f800000

    sub-float v9, v22, v8

    .line 490
    if-ne v10, v11, :cond_8

    .line 492
    packed-switch v14, :pswitch_data_4

    .line 504
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    mul-float v24, v9, v18

    add-float v24, v24, v8

    mul-float v24, v24, v21

    aput v24, v22, v23

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    mul-float v24, v9, v18

    add-float v24, v24, v8

    mul-float v24, v24, v21

    aput v24, v22, v23

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    mul-float v24, v9, v18

    add-float v24, v24, v8

    mul-float v24, v24, v21

    aput v24, v22, v23

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    const/high16 v24, 0x3f800000

    aput v24, v22, v23

    goto/16 :goto_3

    .line 497
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    mul-float v24, v9, v19

    add-float v24, v24, v8

    mul-float v24, v24, v21

    aput v24, v22, v23

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    mul-float v24, v9, v19

    add-float v24, v24, v8

    mul-float v24, v24, v21

    aput v24, v22, v23

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    mul-float v24, v9, v19

    add-float v24, v24, v8

    mul-float v24, v24, v21

    aput v24, v22, v23

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    const/high16 v24, 0x3f800000

    aput v24, v22, v23

    goto/16 :goto_3

    .line 511
    :cond_8
    move/from16 v0, v16

    if-ne v10, v0, :cond_9

    .line 513
    packed-switch v14, :pswitch_data_5

    .line 525
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    mul-float v24, v21, v8

    aput v24, v22, v23

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    mul-float v24, v21, v8

    aput v24, v22, v23

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    mul-float v24, v21, v8

    aput v24, v22, v23

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    const/high16 v24, 0x3f800000

    aput v24, v22, v23

    goto/16 :goto_3

    .line 518
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    const/high16 v24, 0x3f800000

    mul-float v24, v24, v21

    aput v24, v22, v23

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    const/high16 v24, 0x3f800000

    mul-float v24, v24, v21

    aput v24, v22, v23

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    const/high16 v24, 0x3f800000

    mul-float v24, v24, v21

    aput v24, v22, v23

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    const/high16 v24, 0x3f800000

    aput v24, v22, v23

    goto/16 :goto_3

    .line 532
    :cond_9
    if-ne v10, v15, :cond_a

    .line 534
    packed-switch v14, :pswitch_data_6

    .line 546
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    const/high16 v24, 0x3f800000

    mul-float v24, v24, v21

    aput v24, v22, v23

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    const/high16 v24, 0x3f800000

    mul-float v24, v24, v21

    aput v24, v22, v23

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    const/high16 v24, 0x3f800000

    mul-float v24, v24, v21

    aput v24, v22, v23

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    const/high16 v24, 0x3f800000

    aput v24, v22, v23

    goto/16 :goto_3

    .line 539
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    mul-float v24, v21, v8

    aput v24, v22, v23

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    mul-float v24, v21, v8

    aput v24, v22, v23

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    mul-float v24, v21, v8

    aput v24, v22, v23

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    const/high16 v24, 0x3f800000

    aput v24, v22, v23

    goto/16 :goto_3

    .line 555
    :cond_a
    packed-switch v14, :pswitch_data_7

    .line 567
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    mul-float v24, v21, v6

    aput v24, v22, v23

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    mul-float v24, v21, v6

    aput v24, v22, v23

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    mul-float v24, v21, v6

    aput v24, v22, v23

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    const/high16 v24, 0x3f800000

    aput v24, v22, v23

    goto/16 :goto_3

    .line 560
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x0

    aput v21, v22, v23

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x1

    aput v21, v22, v23

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x2

    aput v21, v22, v23

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->colors:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v13, 0x4

    add-int/lit8 v23, v23, 0x3

    const/high16 v24, 0x3f800000

    aput v24, v22, v23

    goto/16 :goto_3

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 406
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 427
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 448
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 492
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 513
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 534
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch

    .line 555
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public onColorChange(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 240
    iput p1, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->targetColor:I

    .line 242
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->targetColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tr:F

    .line 243
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->targetColor:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tg:F

    .line 244
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->targetColor:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tb:F

    .line 246
    return-void
.end method

.method public onDrawStart()V
    .locals 0

    .prologue
    .line 609
    return-void
.end method

.method public onSetColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->targetColor:I

    iput p1, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->currectColor:I

    .line 252
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->targetColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cr:F

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tr:F

    .line 253
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->targetColor:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cg:F

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tg:F

    .line 254
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->targetColor:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->cb:F

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->tb:F

    .line 256
    invoke-virtual {p0, p1}, Lcom/tsf/shell/widget/cubeclock/Cube;->exportColorBuffer(I)V

    .line 258
    return-void
.end method

.method public setFaceTexture(I[F)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "texCoord"    # [F

    .prologue
    .line 598
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufTexCoords:Ljava/nio/FloatBuffer;

    mul-int/lit8 v1, p1, 0x18

    add-int/lit8 v1, v1, 0x48

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 600
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 602
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/Cube;->mBufTexCoords:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 604
    return-void
.end method
