.class public Lcom/tsf/shell/widget/cubeclock/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final mStandardScale:F = 1.3333334f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTextureScale()F
    .locals 4

    .prologue
    const v3, 0x3faaaaab

    .line 107
    invoke-static {}, Lcom/censivn/C3DEngine/api/shell/VInformation;->Scale()F

    move-result v0

    .line 109
    .local v0, "scale":F
    cmpl-float v2, v0, v3

    if-ltz v2, :cond_0

    .line 111
    const/high16 v1, 0x3f800000

    .line 117
    :goto_0
    return v1

    .line 115
    :cond_0
    div-float v1, v0, v3

    .line 117
    .local v1, "targetScale":F
    goto :goto_0
.end method

.method public static loadResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 39
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 45
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :goto_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 57
    .local v3, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 59
    return-object v3

    .line 41
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "resultBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    .line 45
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 53
    :goto_1
    throw v4

    .line 47
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 47
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    .line 49
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadResourceFitSize(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/tsf/shell/widget/cubeclock/Utils;->loadResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 26
    .local v0, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/Utils;->mipmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method public static mipmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 65
    invoke-static {}, Lcom/tsf/shell/widget/cubeclock/Utils;->getTextureScale()F

    move-result v6

    .line 67
    .local v6, "targetScale":F
    const/high16 v7, 0x3f800000

    cmpl-float v7, v6, v7

    if-nez v7, :cond_0

    .line 69
    const-string v7, "Mipmap return source"

    invoke-static {v7}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 99
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 75
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "targetScale:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v5, v7

    .line 79
    .local v5, "tarW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v4, v7

    .line 81
    .local v4, "tarH":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 83
    .local v3, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 85
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 87
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 89
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 93
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 95
    invoke-virtual {v0, p0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 97
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v3

    .line 99
    goto :goto_0
.end method

.method public static replaceTexture(Lcom/censivn/C3DEngine/api/element/TextureElement;Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p0, "target"    # Lcom/censivn/C3DEngine/api/element/TextureElement;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .prologue
    const/16 v1, 0xde1

    .line 125
    iget v0, p0, Lcom/censivn/C3DEngine/api/element/TextureElement;->id:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 127
    const/4 v0, 0x0

    invoke-static {v1, v0, p2, p3, p1}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 129
    return-void
.end method
