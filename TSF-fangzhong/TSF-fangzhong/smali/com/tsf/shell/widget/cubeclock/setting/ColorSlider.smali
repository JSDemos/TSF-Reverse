.class public Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;
.super Lcom/censivn/C3DEngine/api/core/VObject3dContainer;
.source "ColorSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;,
        Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;
    }
.end annotation


# static fields
.field public static hal:I

.field public static one:I


# instance fields
.field public BackGroundTexture:I

.field public ContentTexture:I

.field private SelectedColor:I

.field private VerticesCount:I

.field public colorArray:[I

.field protected mBufColors:Ljava/nio/FloatBuffer;

.field protected mBufTexCoords:Ljava/nio/FloatBuffer;

.field protected mBufVertices:Ljava/nio/FloatBuffer;

.field private mColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;",
            ">;"
        }
    .end annotation
.end field

.field private mColorSortList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;",
            ">;"
        }
    .end annotation
.end field

.field private targetIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x1a

    sput v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->one:I

    .line 32
    sget v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->one:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->hal:I

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x40000000

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/censivn/C3DEngine/api/core/VObject3dContainer;-><init>()V

    .line 29
    const/16 v0, 0x60

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->VerticesCount:I

    .line 34
    iput v2, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->ContentTexture:I

    .line 35
    iput v2, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->BackGroundTexture:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mColorList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mColorSortList:Ljava/util/ArrayList;

    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 59
    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->colorArray:[I

    .line 62
    const/high16 v0, -0x3f600000

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->targetIndex:F

    .line 64
    const v0, -0xcccccd

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->SelectedColor:I

    .line 68
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mObjectManager:Lcom/censivn/C3DEngine/api/core/VObjectManager;

    invoke-virtual {v0, p0}, Lcom/censivn/C3DEngine/api/core/VObjectManager;->addObject(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 70
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->scale()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v0

    sget v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    iput v1, v0, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    .line 71
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->scale()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v0

    sget v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    iput v1, v0, Lcom/censivn/C3DEngine/api/element/Number3d;->y:F

    .line 72
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->scale()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v0

    sget v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    iput v1, v0, Lcom/censivn/C3DEngine/api/element/Number3d;->z:F

    .line 74
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->VerticesCount:I

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 75
    .local v9, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufVertices:Ljava/nio/FloatBuffer;

    .line 77
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->VerticesCount:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 80
    .local v8, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufTexCoords:Ljava/nio/FloatBuffer;

    .line 82
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->VerticesCount:I

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 85
    .local v7, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufColors:Ljava/nio/FloatBuffer;

    .line 87
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 89
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->initVertices()V

    .line 93
    new-instance v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;

    invoke-direct {v0, p0, p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;-><init>(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    invoke-virtual {p0, v0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->setMouseEventListener(Lcom/censivn/C3DEngine/api/event/VMouseEventListener;)V

    .line 95
    const/high16 v0, -0x3bed0000

    sget v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->HDScale:F

    div-float/2addr v0, v1

    div-float v1, v0, v6

    const/high16 v0, -0x3cf00000

    sget v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->HDScale:F

    div-float/2addr v0, v2

    div-float v2, v0, v6

    const/high16 v0, 0x44130000

    sget v4, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->HDScale:F

    div-float/2addr v0, v4

    div-float v4, v0, v6

    const/high16 v0, 0x43100000

    sget v5, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->HDScale:F

    div-float/2addr v0, v5

    div-float v5, v0, v6

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->setAABBSP(FFFFFF)V

    .line 97
    return-void

    .line 40
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

.method static synthetic access$0(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;F)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->targetIndex:F

    return-void
.end method

.method static synthetic access$1(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;)F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->targetIndex:F

    return v0
.end method

.method static synthetic access$2(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;I)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->setColor(I)V

    return-void
.end method

.method private calculateScale()V
    .locals 9

    .prologue
    const/high16 v5, 0x3f800000

    .line 408
    iget-object v6, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 410
    .local v3, "max":I
    const/4 v4, 0x0

    .line 412
    .local v4, "needInvalidate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 431
    if-eqz v4, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->invalidate()V

    .line 437
    :cond_0
    return-void

    .line 414
    :cond_1
    iget-object v6, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;

    .line 416
    .local v0, "c":Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;
    iget v6, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->targetIndex:F

    iget v7, v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->index:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40400000

    div-float v1, v6, v7

    .line 418
    .local v1, "diff":F
    cmpl-float v6, v1, v5

    if-lez v6, :cond_2

    move v1, v5

    .line 420
    :cond_2
    const/high16 v6, 0x40000000

    sub-float/2addr v6, v1

    iput v6, v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->targetScale:F

    .line 422
    iget v6, v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->scale:F

    iget v7, v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->targetScale:F

    iget v8, v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->scale:F

    sub-float/2addr v7, v8

    const v8, 0x3ecccccd

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->scale:F

    .line 424
    iget v6, v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->scale:F

    const v7, 0x3f8ccccd

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 426
    const/4 v4, 0x1

    .line 412
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getColorWithBrightness(I)I
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 209
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->Brightness:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 210
    .local v3, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->Brightness:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 211
    .local v2, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->Brightness:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 213
    .local v0, "b":I
    const/16 v4, 0xff

    invoke-static {v4, v3, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 215
    .local v1, "brightnessColor":I
    return v1
.end method

.method private initVertices()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/16 v9, 0x10

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 221
    const/high16 v5, 0x40f00000

    sget v6, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->one:I

    int-to-float v6, v6

    mul-float v1, v5, v6

    .line 223
    .local v1, "diff":F
    const/16 v5, 0x12

    new-array v0, v5, [F

    .line 224
    sget v5, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->hal:I

    neg-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v5, v1

    aput v5, v0, v8

    const/4 v5, 0x1

    sget v6, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->one:I

    int-to-float v6, v6

    aput v6, v0, v5

    const/4 v5, 0x2

    aput v7, v0, v5

    const/4 v5, 0x3

    .line 225
    sget v6, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->hal:I

    neg-int v6, v6

    int-to-float v6, v6

    sub-float/2addr v6, v1

    aput v6, v0, v5

    const/4 v5, 0x4

    sget v6, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->one:I

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v0, v5

    const/4 v5, 0x5

    aput v7, v0, v5

    .line 226
    sget v5, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->hal:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    aput v5, v0, v10

    const/4 v5, 0x7

    sget v6, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->one:I

    int-to-float v6, v6

    aput v6, v0, v5

    const/16 v5, 0x8

    aput v7, v0, v5

    const/16 v5, 0x9

    .line 228
    sget v6, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->hal:I

    int-to-float v6, v6

    sub-float/2addr v6, v1

    aput v6, v0, v5

    const/16 v5, 0xa

    sget v6, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->one:I

    int-to-float v6, v6

    aput v6, v0, v5

    const/16 v5, 0xb

    aput v7, v0, v5

    const/16 v5, 0xc

    .line 229
    sget v6, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->hal:I

    neg-int v6, v6

    int-to-float v6, v6

    sub-float/2addr v6, v1

    aput v6, v0, v5

    const/16 v5, 0xd

    sget v6, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->one:I

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v0, v5

    const/16 v5, 0xe

    aput v7, v0, v5

    const/16 v5, 0xf

    .line 230
    sget v6, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->hal:I

    int-to-float v6, v6

    sub-float/2addr v6, v1

    aput v6, v0, v5

    sget v5, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->one:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v0, v9

    const/16 v5, 0x11

    aput v7, v0, v5

    .line 233
    .local v0, "base":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v9, :cond_0

    .line 253
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v9, :cond_2

    .line 261
    const/high16 v5, 0x3f800000

    invoke-virtual {p0, v5}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->setSliderColor(F)V

    .line 265
    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 266
    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    return-void

    .line 235
    :cond_0
    new-instance v4, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;

    invoke-direct {v4, p0, v2}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;-><init>(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;I)V

    .line 237
    .local v4, "mColorPlane":Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;
    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mColorSortList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 243
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-lt v3, v10, :cond_1

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_1
    mul-int/lit8 v5, v3, 0x3

    aget v6, v0, v5

    sget v7, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->one:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    aput v6, v0, v5

    .line 243
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 255
    .end local v3    # "j":I
    .end local v4    # "mColorPlane":Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;
    :cond_2
    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufTexCoords:Ljava/nio/FloatBuffer;

    sget-object v6, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mSingleColorTexture:Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;

    invoke-virtual {v6}, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->getColorFace()[F

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setColor(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->colorArray:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->SelectedColor:I

    .line 195
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->SelectedColor:I

    invoke-direct {p0, v0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->getColorWithBrightness(I)I

    move-result v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->SelectedColor:I

    .line 197
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mSingleColorTexture:Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;

    iget v1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->SelectedColor:I

    invoke-virtual {v0, v1}, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->onColorChange(I)V

    .line 199
    return-void
.end method


# virtual methods
.method public dispatchDraw()V
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->colorFillEnable()Z

    move-result v0

    .line 311
    .local v0, "colorFill":Z
    if-eqz v0, :cond_0

    .line 313
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->setCustomShader(Lcom/censivn/C3DEngine/common/shader/Shader;)V

    .line 321
    :goto_0
    invoke-super {p0}, Lcom/censivn/C3DEngine/api/core/VObject3dContainer;->dispatchDraw()V

    .line 323
    return-void

    .line 317
    :cond_0
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->setCustomShader(Lcom/censivn/C3DEngine/common/shader/Shader;)V

    goto :goto_0
.end method

.method public drawElement()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x2

    const/high16 v9, 0x3f800000

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->colorFillEnable()Z

    move-result v6

    .line 330
    .local v6, "colorFill":Z
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->visible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 336
    :cond_0
    if-eqz v6, :cond_1

    .line 338
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glMVPMatrix()V

    .line 340
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufTexCoords:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glTexCoordPointer(IIZILjava/nio/Buffer;)V

    .line 342
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufVertices:Ljava/nio/FloatBuffer;

    move v1, v10

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glVertexPointer(IIZILjava/nio/Buffer;)V

    .line 344
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {v0, p0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glColor4f(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 358
    :goto_1
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 360
    const/16 v0, 0xde1

    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mSingleColorTexture:Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;

    iget-object v1, v1, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->mTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    iget v1, v1, Lcom/censivn/C3DEngine/api/element/TextureElement;->id:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 364
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mColorSortList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 366
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->calculateScale()V

    .line 368
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    const/16 v0, 0x10

    if-lt v7, v0, :cond_2

    .line 388
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget v0, v0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->maColor4Handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 398
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->CURRENT_SHADER:Lcom/censivn/C3DEngine/common/shader/Shader;

    iget v0, v0, Lcom/censivn/C3DEngine/common/shader/Shader;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 400
    sget-object v0, Lcom/censivn/C3DEngine/common/renderer/ShaderManager;->CURRENT_SHADER:Lcom/censivn/C3DEngine/common/shader/Shader;

    iget v0, v0, Lcom/censivn/C3DEngine/common/shader/Shader;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 402
    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    .line 348
    .end local v7    # "i":I
    :cond_1
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glMVPMatrix()V

    .line 350
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufTexCoords:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glTexCoordPointer(IIZILjava/nio/Buffer;)V

    .line 352
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufVertices:Ljava/nio/FloatBuffer;

    move v1, v10

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glVertexPointer(IIZILjava/nio/Buffer;)V

    .line 354
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    const/4 v1, 0x4

    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufColors:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glColorPointer(IIZILjava/nio/Buffer;)V

    goto :goto_1

    .line 370
    .restart local v7    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mColorSortList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;

    .line 372
    .local v8, "plane":Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;
    invoke-static {}, Lcom/censivn/C3DEngine/common/renderer/MatrixStack;->glPushMatrix()V

    .line 374
    iget v0, v8, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->scale:F

    const/high16 v1, 0x41200000

    div-float/2addr v0, v1

    add-float/2addr v0, v9

    iget v1, v8, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->scale:F

    invoke-static {v0, v1, v9}, Lcom/censivn/C3DEngine/common/renderer/MatrixStack;->glScalef(FFF)V

    .line 376
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;->glMVPMatrix()V

    .line 378
    const/4 v0, 0x4

    iget v1, v8, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->index:I

    mul-int/lit8 v1, v1, 0x6

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 380
    invoke-static {}, Lcom/censivn/C3DEngine/common/renderer/MatrixStack;->glPopMatrix()V

    .line 368
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->SelectedColor:I

    return v0
.end method

.method public onDrawStart()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public setSliderColor(F)V
    .locals 8
    .param p1, "brightness"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x437f0000

    .line 272
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 274
    iget v4, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->VerticesCount:I

    mul-int/lit8 v4, v4, 0x4

    new-array v1, v4, [F

    .line 276
    .local v1, "colors":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->VerticesCount:I

    if-lt v2, v4, :cond_0

    .line 289
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 291
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->mBufColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 293
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->invalidate()V

    .line 295
    return-void

    .line 278
    :cond_0
    div-int/lit8 v3, v2, 0x6

    .line 280
    .local v3, "index":I
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->colorArray:[I

    aget v0, v4, v3

    .line 282
    .local v0, "color":I
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    div-float/2addr v5, v6

    aput v5, v1, v4

    .line 283
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    div-float/2addr v5, v6

    aput v5, v1, v4

    .line 284
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    div-float/2addr v5, v6

    aput v5, v1, v4

    .line 285
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x3

    aput v6, v1, v4

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
