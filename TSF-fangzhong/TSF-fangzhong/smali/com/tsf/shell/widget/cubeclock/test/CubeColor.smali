.class public Lcom/tsf/shell/widget/cubeclock/test/CubeColor;
.super Ljava/lang/Object;
.source "CubeColor.java"


# instance fields
.field private CubeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;",
            ">;"
        }
    .end annotation
.end field

.field private GridHeight:F

.field private GridSize:F

.field private TexH:F

.field private TexW:F

.field private currectColor:I

.field public mTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x42b80000

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->GridSize:F

    .line 22
    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->GridHeight:F

    .line 24
    const v0, -0xcccccd

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->currectColor:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->CubeList:Ljava/util/ArrayList;

    .line 32
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->create()V

    .line 34
    return-void
.end method

.method private create()V
    .locals 8

    .prologue
    const/16 v4, 0x5c

    const/high16 v3, 0x42b00000

    const/high16 v1, 0x40800000

    .line 63
    const/4 v7, -0x1

    .line 65
    .local v7, "color":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 67
    .local v6, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->TexW:F

    .line 69
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->TexH:F

    .line 71
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 75
    .local v5, "p":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    move v2, v1

    move v4, v3

    .line 79
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 81
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVTextureManager:Lcom/censivn/C3DEngine/api/core/VTextureManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Lcom/censivn/C3DEngine/api/core/VTextureManager;->createTexture(Landroid/graphics/Bitmap;Z)Lcom/censivn/C3DEngine/api/element/TextureElement;

    move-result-object v1

    iput-object v1, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->mTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    .line 83
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    return-void
.end method


# virtual methods
.method public getColorFace()[F
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f800000

    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, "index":I
    rem-int/lit8 v2, v0, 0x4

    .line 92
    .local v2, "u":I
    div-int/lit8 v5, v0, 0x4

    .line 94
    .local v5, "v":I
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->GridSize:F

    int-to-float v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->TexW:F

    div-float v4, v8, v9

    .line 95
    .local v4, "u0_zer":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->GridSize:F

    int-to-float v9, v11

    mul-float/2addr v8, v9

    sub-float/2addr v8, v10

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->TexW:F

    div-float v3, v8, v9

    .line 97
    .local v3, "u0_one":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->GridHeight:F

    int-to-float v9, v5

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->TexH:F

    div-float v7, v8, v9

    .line 98
    .local v7, "v0_zer":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->GridHeight:F

    int-to-float v9, v11

    mul-float/2addr v8, v9

    sub-float/2addr v8, v10

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeColor;->TexH:F

    div-float v6, v8, v9

    .line 100
    .local v6, "v0_one":F
    const/16 v8, 0xc

    new-array v1, v8, [F

    const/4 v8, 0x0

    .line 103
    aput v4, v1, v8

    aput v7, v1, v11

    const/4 v8, 0x2

    .line 104
    aput v4, v1, v8

    const/4 v8, 0x3

    aput v6, v1, v8

    const/4 v8, 0x4

    .line 105
    aput v3, v1, v8

    const/4 v8, 0x5

    aput v7, v1, v8

    const/4 v8, 0x6

    .line 107
    aput v3, v1, v8

    const/4 v8, 0x7

    aput v7, v1, v8

    const/16 v8, 0x8

    .line 108
    aput v4, v1, v8

    const/16 v8, 0x9

    aput v6, v1, v8

    const/16 v8, 0xa

    .line 109
    aput v3, v1, v8

    const/16 v8, 0xb

    aput v6, v1, v8

    .line 113
    .local v1, "result":[F
    return-object v1
.end method
