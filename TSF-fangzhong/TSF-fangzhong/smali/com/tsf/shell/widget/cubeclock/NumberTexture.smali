.class public Lcom/tsf/shell/widget/cubeclock/NumberTexture;
.super Lcom/tsf/shell/widget/cubeclock/CubeTexture;
.source "NumberTexture.java"


# instance fields
.field private GridHeight:F

.field private GridSize:F

.field private TexH:F

.field private TexW:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/CubeTexture;-><init>()V

    .line 10
    const/high16 v0, 0x42820000

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->GridSize:F

    .line 12
    const/high16 v0, 0x43020000

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->GridHeight:F

    .line 16
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->create()V

    .line 18
    return-void
.end method

.method private create()V
    .locals 3

    .prologue
    .line 24
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f020006

    invoke-static {v1, v2}, Lcom/tsf/shell/widget/cubeclock/Utils;->loadResourceFitSize(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 26
    .local v0, "b":Landroid/graphics/Bitmap;
    const v1, 0x44228000

    iput v1, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->TexW:F

    .line 28
    const/high16 v1, 0x43020000

    iput v1, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->TexH:F

    .line 30
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVTextureManager:Lcom/censivn/C3DEngine/api/core/VTextureManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/censivn/C3DEngine/api/core/VTextureManager;->createTexture(Landroid/graphics/Bitmap;Z)Lcom/censivn/C3DEngine/api/element/TextureElement;

    move-result-object v1

    iput-object v1, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->mTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    .line 32
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    return-void
.end method


# virtual methods
.method public getColorFace()[F
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000

    .line 79
    iget v5, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->GridSize:F

    const/high16 v6, 0x41200000

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    iget v6, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->TexW:F

    div-float v2, v5, v6

    .line 80
    .local v2, "u0_zer":F
    iget v5, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->GridSize:F

    const/high16 v6, 0x41300000

    mul-float/2addr v5, v6

    sub-float/2addr v5, v7

    iget v6, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->TexW:F

    div-float v1, v5, v6

    .line 82
    .local v1, "u0_one":F
    iget v5, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->GridHeight:F

    const/4 v6, 0x0

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    iget v6, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->TexH:F

    div-float v4, v5, v6

    .line 83
    .local v4, "v0_zer":F
    iget v5, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->GridHeight:F

    mul-float/2addr v5, v7

    sub-float/2addr v5, v7

    iget v6, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->TexH:F

    div-float v3, v5, v6

    .line 85
    .local v3, "v0_one":F
    const/16 v5, 0xc

    new-array v0, v5, [F

    const/4 v5, 0x0

    .line 88
    aput v2, v0, v5

    const/4 v5, 0x1

    aput v4, v0, v5

    const/4 v5, 0x2

    .line 89
    aput v2, v0, v5

    const/4 v5, 0x3

    aput v3, v0, v5

    const/4 v5, 0x4

    .line 90
    aput v1, v0, v5

    const/4 v5, 0x5

    aput v4, v0, v5

    const/4 v5, 0x6

    .line 92
    aput v1, v0, v5

    const/4 v5, 0x7

    aput v4, v0, v5

    const/16 v5, 0x8

    .line 93
    aput v2, v0, v5

    const/16 v5, 0x9

    aput v3, v0, v5

    const/16 v5, 0xa

    .line 94
    aput v1, v0, v5

    const/16 v5, 0xb

    aput v3, v0, v5

    .line 98
    .local v0, "result":[F
    return-object v0
.end method

.method public getNumber(II)[F
    .locals 12
    .param p1, "index"    # I
    .param p2, "index2"    # I

    .prologue
    .line 38
    const/high16 v0, -0x3f600000

    .line 40
    .local v0, "diff":F
    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->GridSize:F

    int-to-float v11, p1

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000

    add-float/2addr v10, v11

    add-float/2addr v10, v0

    iget v11, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->TexW:F

    div-float v3, v10, v11

    .line 41
    .local v3, "u0_zer":F
    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->GridSize:F

    add-int/lit8 v11, p1, 0x1

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000

    sub-float/2addr v10, v11

    add-float/2addr v10, v0

    iget v11, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->TexW:F

    div-float v2, v10, v11

    .line 43
    .local v2, "u0_one":F
    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->GridHeight:F

    const/4 v11, 0x0

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000

    add-float/2addr v10, v11

    iget v11, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->TexH:F

    div-float v7, v10, v11

    .line 44
    .local v7, "v0_zer":F
    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->GridHeight:F

    const/high16 v11, 0x3f800000

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->TexH:F

    div-float v6, v10, v11

    .line 46
    .local v6, "v0_one":F
    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->GridSize:F

    int-to-float v11, p2

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000

    add-float/2addr v10, v11

    sub-float/2addr v10, v0

    iget v11, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->TexW:F

    div-float v5, v10, v11

    .line 47
    .local v5, "u1_zer":F
    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->GridSize:F

    add-int/lit8 v11, p2, 0x1

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000

    sub-float/2addr v10, v11

    sub-float/2addr v10, v0

    iget v11, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->TexW:F

    div-float v4, v10, v11

    .line 49
    .local v4, "u1_one":F
    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->GridHeight:F

    const/4 v11, 0x0

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000

    add-float/2addr v10, v11

    iget v11, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->TexH:F

    div-float v9, v10, v11

    .line 50
    .local v9, "v1_zer":F
    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->GridHeight:F

    const/high16 v11, 0x3f800000

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->TexH:F

    div-float v8, v10, v11

    .line 52
    .local v8, "v1_one":F
    const/16 v10, 0x18

    new-array v1, v10, [F

    const/4 v10, 0x0

    .line 55
    aput v3, v1, v10

    const/4 v10, 0x1

    aput v7, v1, v10

    const/4 v10, 0x2

    .line 56
    aput v3, v1, v10

    const/4 v10, 0x3

    aput v6, v1, v10

    const/4 v10, 0x4

    .line 57
    aput v2, v1, v10

    const/4 v10, 0x5

    aput v7, v1, v10

    const/4 v10, 0x6

    .line 59
    aput v2, v1, v10

    const/4 v10, 0x7

    aput v7, v1, v10

    const/16 v10, 0x8

    .line 60
    aput v3, v1, v10

    const/16 v10, 0x9

    aput v6, v1, v10

    const/16 v10, 0xa

    .line 61
    aput v2, v1, v10

    const/16 v10, 0xb

    aput v6, v1, v10

    const/16 v10, 0xc

    .line 63
    aput v5, v1, v10

    const/16 v10, 0xd

    aput v9, v1, v10

    const/16 v10, 0xe

    .line 64
    aput v5, v1, v10

    const/16 v10, 0xf

    aput v8, v1, v10

    const/16 v10, 0x10

    .line 65
    aput v4, v1, v10

    const/16 v10, 0x11

    aput v9, v1, v10

    const/16 v10, 0x12

    .line 67
    aput v4, v1, v10

    const/16 v10, 0x13

    aput v9, v1, v10

    const/16 v10, 0x14

    .line 68
    aput v5, v1, v10

    const/16 v10, 0x15

    aput v8, v1, v10

    const/16 v10, 0x16

    .line 69
    aput v4, v1, v10

    const/16 v10, 0x17

    aput v8, v1, v10

    .line 73
    .local v1, "result":[F
    return-object v1
.end method
