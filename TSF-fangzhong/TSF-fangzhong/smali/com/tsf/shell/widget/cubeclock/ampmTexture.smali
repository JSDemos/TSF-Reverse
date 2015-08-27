.class public Lcom/tsf/shell/widget/cubeclock/ampmTexture;
.super Lcom/tsf/shell/widget/cubeclock/CubeTexture;
.source "ampmTexture.java"


# instance fields
.field private GridHeight:F

.field private GridSize:F

.field private TexH:F

.field private TexW:F

.field private hal:F

.field private one:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x43020000

    .line 17
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/CubeTexture;-><init>()V

    .line 10
    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->GridSize:F

    .line 12
    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->GridHeight:F

    .line 14
    const/high16 v0, 0x42800000

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->hal:F

    .line 15
    const/high16 v0, 0x43000000

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->one:F

    .line 19
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->create()V

    .line 21
    return-void
.end method

.method private create()V
    .locals 3

    .prologue
    .line 27
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f020001

    invoke-static {v1, v2}, Lcom/tsf/shell/widget/cubeclock/Utils;->loadResourceFitSize(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    .local v0, "b":Landroid/graphics/Bitmap;
    const v1, 0x44228000

    iput v1, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->TexW:F

    .line 31
    const/high16 v1, 0x43020000

    iput v1, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->TexH:F

    .line 33
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVTextureManager:Lcom/censivn/C3DEngine/api/core/VTextureManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/censivn/C3DEngine/api/core/VTextureManager;->createTexture(Landroid/graphics/Bitmap;Z)Lcom/censivn/C3DEngine/api/element/TextureElement;

    move-result-object v1

    iput-object v1, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->mTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    .line 35
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 37
    return-void
.end method


# virtual methods
.method public getNumber(I)[F
    .locals 13
    .param p1, "index"    # I

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000

    .line 41
    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->GridSize:F

    int-to-float v10, p1

    mul-float/2addr v9, v10

    add-float/2addr v9, v11

    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->TexW:F

    div-float v2, v9, v10

    .line 42
    .local v2, "u0_zer":F
    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->GridSize:F

    int-to-float v10, p1

    mul-float/2addr v9, v10

    add-float/2addr v9, v11

    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->hal:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->TexW:F

    div-float v1, v9, v10

    .line 44
    .local v1, "u0_one":F
    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->GridHeight:F

    mul-float/2addr v9, v12

    add-float/2addr v9, v11

    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->TexH:F

    div-float v6, v9, v10

    .line 45
    .local v6, "v0_zer":F
    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->GridHeight:F

    mul-float/2addr v9, v11

    sub-float/2addr v9, v11

    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->TexH:F

    div-float v5, v9, v10

    .line 47
    .local v5, "v0_one":F
    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->GridSize:F

    int-to-float v10, p1

    mul-float/2addr v9, v10

    add-float/2addr v9, v11

    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->hal:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->TexW:F

    div-float v4, v9, v10

    .line 48
    .local v4, "u1_zer":F
    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->GridSize:F

    int-to-float v10, p1

    mul-float/2addr v9, v10

    add-float/2addr v9, v11

    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->one:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->TexW:F

    div-float v3, v9, v10

    .line 50
    .local v3, "u1_one":F
    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->GridHeight:F

    mul-float/2addr v9, v12

    add-float/2addr v9, v11

    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->TexH:F

    div-float v8, v9, v10

    .line 51
    .local v8, "v1_zer":F
    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->GridHeight:F

    mul-float/2addr v9, v11

    sub-float/2addr v9, v11

    iget v10, p0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->TexH:F

    div-float v7, v9, v10

    .line 53
    .local v7, "v1_one":F
    const/16 v9, 0x18

    new-array v0, v9, [F

    const/4 v9, 0x0

    .line 56
    aput v2, v0, v9

    const/4 v9, 0x1

    aput v6, v0, v9

    const/4 v9, 0x2

    .line 57
    aput v2, v0, v9

    const/4 v9, 0x3

    aput v5, v0, v9

    const/4 v9, 0x4

    .line 58
    aput v1, v0, v9

    const/4 v9, 0x5

    aput v6, v0, v9

    const/4 v9, 0x6

    .line 60
    aput v1, v0, v9

    const/4 v9, 0x7

    aput v6, v0, v9

    const/16 v9, 0x8

    .line 61
    aput v2, v0, v9

    const/16 v9, 0x9

    aput v5, v0, v9

    const/16 v9, 0xa

    .line 62
    aput v1, v0, v9

    const/16 v9, 0xb

    aput v5, v0, v9

    const/16 v9, 0xc

    .line 64
    aput v4, v0, v9

    const/16 v9, 0xd

    aput v8, v0, v9

    const/16 v9, 0xe

    .line 65
    aput v4, v0, v9

    const/16 v9, 0xf

    aput v7, v0, v9

    const/16 v9, 0x10

    .line 66
    aput v3, v0, v9

    const/16 v9, 0x11

    aput v8, v0, v9

    const/16 v9, 0x12

    .line 68
    aput v3, v0, v9

    const/16 v9, 0x13

    aput v8, v0, v9

    const/16 v9, 0x14

    .line 69
    aput v4, v0, v9

    const/16 v9, 0x15

    aput v7, v0, v9

    const/16 v9, 0x16

    .line 70
    aput v3, v0, v9

    const/16 v9, 0x17

    aput v7, v0, v9

    .line 74
    .local v0, "result":[F
    return-object v0
.end method
