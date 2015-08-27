.class public Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;
.super Lcom/tsf/shell/widget/cubeclock/CubeTexture;
.source "SingleColorTexture.java"


# instance fields
.field private CubeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tsf/shell/widget/cubeclock/Cube;",
            ">;"
        }
    .end annotation
.end field

.field private GridHeight:F

.field private GridSize:F

.field private TexH:F

.field private TexW:F

.field private currectColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x42b80000

    .line 26
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/CubeTexture;-><init>()V

    .line 19
    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->GridSize:F

    .line 20
    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->GridHeight:F

    .line 22
    const v0, -0xcccccd

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->currectColor:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->CubeList:Ljava/util/ArrayList;

    .line 28
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->getColor()I

    move-result v0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->currectColor:I

    .line 30
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->create()V

    .line 32
    return-void
.end method

.method private create()V
    .locals 8

    .prologue
    const/16 v4, 0x5c

    const/high16 v3, 0x42b60000

    const/high16 v1, 0x3f800000

    .line 133
    const/4 v7, -0x1

    .line 135
    .local v7, "color":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 137
    .local v6, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->TexW:F

    .line 139
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->TexH:F

    .line 141
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 143
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 145
    .local v5, "p":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    move v2, v1

    move v4, v3

    .line 149
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 151
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVTextureManager:Lcom/censivn/C3DEngine/api/core/VTextureManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Lcom/censivn/C3DEngine/api/core/VTextureManager;->createTexture(Landroid/graphics/Bitmap;Z)Lcom/censivn/C3DEngine/api/element/TextureElement;

    move-result-object v1

    iput-object v1, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->mTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    .line 153
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    return-void
.end method

.method private getColor()I
    .locals 10

    .prologue
    .line 86
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/provider/SettingColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 88
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "widgetid = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->AppWidgetId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "selection":Ljava/lang/String;
    const-string v5, "modified DESC"

    .line 92
    .local v5, "sortOrder":Ljava/lang/String;
    const v6, -0xcccccd

    .line 94
    .local v6, "color":I
    const/4 v7, 0x0

    .line 98
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 100
    if-eqz v7, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "=============================:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 104
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "color"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 108
    .local v9, "index":I
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 120
    .end local v9    # "index":I
    :cond_0
    if-eqz v7, :cond_1

    .line 122
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_1
    :goto_0
    return v6

    .line 114
    :catch_0
    move-exception v8

    .line 116
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    if-eqz v7, :cond_1

    .line 122
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 118
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 120
    if-eqz v7, :cond_2

    .line 122
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_2
    throw v0
.end method

.method private saveColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 64
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/provider/SettingColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 66
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "widgetid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->AppWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "selection":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v1, "mContentValues":Landroid/content/ContentValues;
    const-string v4, "color"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    sget-object v4, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "mContentValues":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getColorFace()[F
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f800000

    .line 187
    const/4 v0, 0x0

    .line 189
    .local v0, "index":I
    rem-int/lit8 v2, v0, 0x4

    .line 190
    .local v2, "u":I
    div-int/lit8 v5, v0, 0x4

    .line 192
    .local v5, "v":I
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->GridSize:F

    int-to-float v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->TexW:F

    div-float v4, v8, v9

    .line 193
    .local v4, "u0_zer":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->GridSize:F

    int-to-float v9, v11

    mul-float/2addr v8, v9

    sub-float/2addr v8, v10

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->TexW:F

    div-float v3, v8, v9

    .line 195
    .local v3, "u0_one":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->GridHeight:F

    int-to-float v9, v5

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->TexH:F

    div-float v7, v8, v9

    .line 196
    .local v7, "v0_zer":F
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->GridHeight:F

    int-to-float v9, v11

    mul-float/2addr v8, v9

    sub-float/2addr v8, v10

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->TexH:F

    div-float v6, v8, v9

    .line 198
    .local v6, "v0_one":F
    const/16 v8, 0xc

    new-array v1, v8, [F

    const/4 v8, 0x0

    .line 201
    aput v4, v1, v8

    aput v7, v1, v11

    const/4 v8, 0x2

    .line 202
    aput v4, v1, v8

    const/4 v8, 0x3

    aput v6, v1, v8

    const/4 v8, 0x4

    .line 203
    aput v3, v1, v8

    const/4 v8, 0x5

    aput v7, v1, v8

    const/4 v8, 0x6

    .line 205
    aput v3, v1, v8

    const/4 v8, 0x7

    aput v7, v1, v8

    const/16 v8, 0x8

    .line 206
    aput v4, v1, v8

    const/16 v8, 0x9

    aput v6, v1, v8

    const/16 v8, 0xa

    .line 207
    aput v3, v1, v8

    const/16 v8, 0xb

    aput v6, v1, v8

    .line 211
    .local v1, "result":[F
    return-object v1
.end method

.method public onColorChange(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->currectColor:I

    .line 48
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->CubeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 50
    .local v2, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 60
    return-void

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->CubeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tsf/shell/widget/cubeclock/Cube;

    .line 54
    .local v0, "c":Lcom/tsf/shell/widget/cubeclock/Cube;
    invoke-virtual {v0, p1}, Lcom/tsf/shell/widget/cubeclock/Cube;->onColorChange(I)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public registerCube(Lcom/tsf/shell/widget/cubeclock/Cube;)V
    .locals 1
    .param p1, "c"    # Lcom/tsf/shell/widget/cubeclock/Cube;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->CubeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;->currectColor:I

    invoke-virtual {p1, v0}, Lcom/tsf/shell/widget/cubeclock/Cube;->onSetColor(I)V

    .line 42
    return-void
.end method
