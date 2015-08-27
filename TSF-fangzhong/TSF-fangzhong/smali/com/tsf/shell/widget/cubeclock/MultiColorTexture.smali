.class public Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;
.super Lcom/tsf/shell/widget/cubeclock/CubeTexture;
.source "MultiColorTexture.java"


# instance fields
.field private GridHeight:F

.field private GridSize:F

.field private TexH:F

.field private TexW:F

.field public color:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x42b80000

    .line 35
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/CubeTexture;-><init>()V

    .line 10
    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->GridSize:F

    .line 12
    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->GridHeight:F

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 33
    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->color:[I

    .line 37
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->create()V

    .line 39
    return-void

    .line 16
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

.method private create()V
    .locals 10

    .prologue
    const/high16 v9, 0x42340000

    .line 45
    sget-object v5, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    const v6, 0x7f020002

    invoke-static {v5, v6}, Lcom/tsf/shell/widget/cubeclock/Utils;->loadResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->TexW:F

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->TexH:F

    .line 51
    const-string v1, "new int[]{"

    .line 53
    .local v1, "colorString":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0x10

    if-lt v2, v5, :cond_0

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "];"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ColorString:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 68
    sget-object v5, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVTextureManager:Lcom/censivn/C3DEngine/api/core/VTextureManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lcom/censivn/C3DEngine/api/core/VTextureManager;->createTexture(Landroid/graphics/Bitmap;Z)Lcom/censivn/C3DEngine/api/element/TextureElement;

    move-result-object v5

    iput-object v5, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->mTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 72
    return-void

    .line 55
    :cond_0
    rem-int/lit8 v3, v2, 0x4

    .line 56
    .local v3, "u":I
    div-int/lit8 v4, v2, 0x4

    .line 58
    .local v4, "v":I
    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->color:[I

    iget v6, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->GridSize:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    add-float/2addr v6, v9

    float-to-int v6, v6

    iget v7, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->GridSize:F

    int-to-float v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    aput v6, v5, v2

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->color:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getColorFace(I)[F
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/high16 v9, 0x3f800000

    .line 76
    rem-int/lit8 v1, p1, 0x4

    .line 77
    .local v1, "u":I
    div-int/lit8 v4, p1, 0x4

    .line 79
    .local v4, "v":I
    iget v7, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->GridSize:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->TexW:F

    div-float v3, v7, v8

    .line 80
    .local v3, "u0_zer":F
    iget v7, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->GridSize:F

    add-int/lit8 v8, v1, 0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float/2addr v7, v9

    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->TexW:F

    div-float v2, v7, v8

    .line 82
    .local v2, "u0_one":F
    iget v7, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->GridHeight:F

    int-to-float v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->TexH:F

    div-float v6, v7, v8

    .line 83
    .local v6, "v0_zer":F
    iget v7, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->GridHeight:F

    add-int/lit8 v8, v4, 0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float/2addr v7, v9

    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/MultiColorTexture;->TexH:F

    div-float v5, v7, v8

    .line 85
    .local v5, "v0_one":F
    const/16 v7, 0xc

    new-array v0, v7, [F

    const/4 v7, 0x0

    .line 88
    aput v3, v0, v7

    const/4 v7, 0x1

    aput v6, v0, v7

    const/4 v7, 0x2

    .line 89
    aput v3, v0, v7

    const/4 v7, 0x3

    aput v5, v0, v7

    const/4 v7, 0x4

    .line 90
    aput v2, v0, v7

    const/4 v7, 0x5

    aput v6, v0, v7

    const/4 v7, 0x6

    .line 92
    aput v2, v0, v7

    const/4 v7, 0x7

    aput v6, v0, v7

    const/16 v7, 0x8

    .line 93
    aput v3, v0, v7

    const/16 v7, 0x9

    aput v5, v0, v7

    const/16 v7, 0xa

    .line 94
    aput v2, v0, v7

    const/16 v7, 0xb

    aput v5, v0, v7

    .line 98
    .local v0, "result":[F
    return-object v0
.end method
