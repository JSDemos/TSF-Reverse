.class public Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;
.super Lcom/tsf/shell/widget/cubeclock/test/CubeTexture;
.source "NumberTexture.java"


# static fields
.field private static GridHeight:F

.field private static GridSize:F

.field private static TexH:F

.field private static TexW:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/high16 v0, 0x42820000

    sput v0, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->GridSize:F

    .line 16
    const/high16 v0, 0x43020000

    sput v0, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->GridHeight:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/test/CubeTexture;-><init>()V

    .line 20
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->create()V

    .line 22
    return-void
.end method

.method private create()V
    .locals 3

    .prologue
    .line 28
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f020006

    invoke-static {v1, v2}, Lcom/tsf/shell/widget/cubeclock/Utils;->loadResourceFitSize(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->TexW:F

    .line 32
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->TexH:F

    .line 34
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVTextureManager:Lcom/censivn/C3DEngine/api/core/VTextureManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/censivn/C3DEngine/api/core/VTextureManager;->createTexture(Landroid/graphics/Bitmap;Z)Lcom/censivn/C3DEngine/api/element/TextureElement;

    move-result-object v1

    iput-object v1, p0, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->mTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    .line 36
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 38
    return-void
.end method

.method public static getNumber(II)[F
    .locals 12
    .param p0, "index"    # I
    .param p1, "index2"    # I

    .prologue
    .line 42
    const/high16 v0, -0x3f600000

    .line 44
    .local v0, "diff":F
    sget v10, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->GridSize:F

    int-to-float v11, p0

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000

    add-float/2addr v10, v11

    add-float/2addr v10, v0

    sget v11, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->TexW:F

    div-float v3, v10, v11

    .line 45
    .local v3, "u0_zer":F
    sget v10, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->GridSize:F

    add-int/lit8 v11, p0, 0x1

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000

    sub-float/2addr v10, v11

    add-float/2addr v10, v0

    sget v11, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->TexW:F

    div-float v2, v10, v11

    .line 47
    .local v2, "u0_one":F
    sget v10, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->GridHeight:F

    const/4 v11, 0x0

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000

    add-float/2addr v10, v11

    sget v11, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->TexH:F

    div-float v7, v10, v11

    .line 48
    .local v7, "v0_zer":F
    sget v10, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->GridHeight:F

    const/high16 v11, 0x3f800000

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000

    sub-float/2addr v10, v11

    sget v11, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->TexH:F

    div-float v6, v10, v11

    .line 50
    .local v6, "v0_one":F
    sget v10, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->GridSize:F

    int-to-float v11, p1

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000

    add-float/2addr v10, v11

    sub-float/2addr v10, v0

    sget v11, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->TexW:F

    div-float v5, v10, v11

    .line 51
    .local v5, "u1_zer":F
    sget v10, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->GridSize:F

    add-int/lit8 v11, p1, 0x1

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000

    sub-float/2addr v10, v11

    sub-float/2addr v10, v0

    sget v11, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->TexW:F

    div-float v4, v10, v11

    .line 53
    .local v4, "u1_one":F
    sget v10, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->GridHeight:F

    const/4 v11, 0x0

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000

    add-float/2addr v10, v11

    sget v11, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->TexH:F

    div-float v9, v10, v11

    .line 54
    .local v9, "v1_zer":F
    sget v10, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->GridHeight:F

    const/high16 v11, 0x3f800000

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000

    sub-float/2addr v10, v11

    sget v11, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->TexH:F

    div-float v8, v10, v11

    .line 56
    .local v8, "v1_one":F
    const/16 v10, 0x18

    new-array v1, v10, [F

    const/4 v10, 0x0

    .line 59
    aput v3, v1, v10

    const/4 v10, 0x1

    aput v7, v1, v10

    const/4 v10, 0x2

    .line 60
    aput v3, v1, v10

    const/4 v10, 0x3

    aput v6, v1, v10

    const/4 v10, 0x4

    .line 61
    aput v2, v1, v10

    const/4 v10, 0x5

    aput v7, v1, v10

    const/4 v10, 0x6

    .line 63
    aput v2, v1, v10

    const/4 v10, 0x7

    aput v7, v1, v10

    const/16 v10, 0x8

    .line 64
    aput v3, v1, v10

    const/16 v10, 0x9

    aput v6, v1, v10

    const/16 v10, 0xa

    .line 65
    aput v2, v1, v10

    const/16 v10, 0xb

    aput v6, v1, v10

    const/16 v10, 0xc

    .line 67
    aput v5, v1, v10

    const/16 v10, 0xd

    aput v9, v1, v10

    const/16 v10, 0xe

    .line 68
    aput v5, v1, v10

    const/16 v10, 0xf

    aput v8, v1, v10

    const/16 v10, 0x10

    .line 69
    aput v4, v1, v10

    const/16 v10, 0x11

    aput v9, v1, v10

    const/16 v10, 0x12

    .line 71
    aput v4, v1, v10

    const/16 v10, 0x13

    aput v9, v1, v10

    const/16 v10, 0x14

    .line 72
    aput v5, v1, v10

    const/16 v10, 0x15

    aput v8, v1, v10

    const/16 v10, 0x16

    .line 73
    aput v4, v1, v10

    const/16 v10, 0x17

    aput v8, v1, v10

    .line 77
    .local v1, "result":[F
    return-object v1
.end method
