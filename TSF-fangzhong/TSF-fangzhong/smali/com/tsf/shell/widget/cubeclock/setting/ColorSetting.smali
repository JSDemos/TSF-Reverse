.class public Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;
.super Lcom/censivn/C3DEngine/api/core/VObject3dContainer;
.source "ColorSetting.java"


# static fields
.field public static Brightness:F


# instance fields
.field private BackgroundTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

.field private isOpen:Z

.field private lightTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

.field private mColorSlider:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

.field private minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;

.field private minusTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

.field private plus:Lcom/censivn/C3DEngine/api/core/VObject3d;

.field private plusTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/high16 v0, 0x3f800000

    sput v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->Brightness:F

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/high16 v9, 0x43390000

    const/4 v8, 0x0

    const/high16 v7, -0x3cf90000

    const/high16 v6, 0x42440000

    .line 44
    invoke-direct {p0}, Lcom/censivn/C3DEngine/api/core/VObject3dContainer;-><init>()V

    .line 28
    iput-boolean v8, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->isOpen:Z

    .line 46
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mObjectManager:Lcom/censivn/C3DEngine/api/core/VObjectManager;

    invoke-virtual {v3, p0}, Lcom/censivn/C3DEngine/api/core/VObjectManager;->addObject(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 48
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->visible(Ljava/lang/Boolean;)V

    .line 50
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v3

    const/high16 v4, 0x42b40000

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    .line 54
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->createTexture()V

    .line 56
    new-instance v0, Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    const/high16 v3, 0x44130000

    sget v4, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->HDScale:F

    div-float/2addr v3, v4

    const/high16 v4, 0x43100000

    sget v5, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->HDScale:F

    div-float/2addr v4, v5

    invoke-direct {v0, v3, v4}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;-><init>(FF)V

    .line 58
    .local v0, "bg":Lcom/censivn/C3DEngine/api/primitives/VRectangle;
    invoke-virtual {v0}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->textures()Lcom/censivn/C3DEngine/api/core/VTextureList;

    move-result-object v3

    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->BackgroundTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    invoke-virtual {v3, v4}, Lcom/censivn/C3DEngine/api/core/VTextureList;->addElement(Lcom/censivn/C3DEngine/api/element/TextureElement;)Lcom/censivn/C3DEngine/api/element/TextureDescription;

    .line 60
    invoke-virtual {v0}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    const/high16 v4, -0x3d060000

    invoke-virtual {v3, v4}, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->spY(F)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->addChild(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 66
    new-instance v3, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    invoke-direct {v3}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;-><init>()V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->mColorSlider:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    .line 68
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->mColorSlider:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    invoke-virtual {v3}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    const/high16 v4, -0x3e600000

    invoke-virtual {v3, v4}, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->spX(F)V

    .line 69
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->mColorSlider:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    invoke-virtual {v3}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->spY(F)V

    .line 71
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->mColorSlider:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    invoke-virtual {p0, v3}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->addChild(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 75
    new-instance v3, Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    sget v4, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->HDScale:F

    div-float v4, v6, v4

    sget v5, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->HDScale:F

    div-float v5, v6, v5

    invoke-direct {v3, v4, v5}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;-><init>(FF)V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plus:Lcom/censivn/C3DEngine/api/core/VObject3d;

    .line 77
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plus:Lcom/censivn/C3DEngine/api/core/VObject3d;

    invoke-virtual {v3}, Lcom/censivn/C3DEngine/api/core/VObject3d;->textures()Lcom/censivn/C3DEngine/api/core/VTextureList;

    move-result-object v3

    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plusTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    invoke-virtual {v3, v4}, Lcom/censivn/C3DEngine/api/core/VTextureList;->addElement(Lcom/censivn/C3DEngine/api/element/TextureElement;)Lcom/censivn/C3DEngine/api/element/TextureDescription;

    .line 78
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plus:Lcom/censivn/C3DEngine/api/core/VObject3d;

    invoke-virtual {v3}, Lcom/censivn/C3DEngine/api/core/VObject3d;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->spX(F)V

    .line 79
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plus:Lcom/censivn/C3DEngine/api/core/VObject3d;

    invoke-virtual {v3}, Lcom/censivn/C3DEngine/api/core/VObject3d;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->spY(F)V

    .line 80
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plus:Lcom/censivn/C3DEngine/api/core/VObject3d;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/censivn/C3DEngine/api/core/VObject3d;->visible(Ljava/lang/Boolean;)V

    .line 82
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plus:Lcom/censivn/C3DEngine/api/core/VObject3d;

    invoke-virtual {p0, v3}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->addChild(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 84
    new-instance v3, Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    sget v4, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->HDScale:F

    div-float v4, v6, v4

    sget v5, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->HDScale:F

    div-float v5, v6, v5

    invoke-direct {v3, v4, v5}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;-><init>(FF)V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    .line 86
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    invoke-virtual {v3}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->textures()Lcom/censivn/C3DEngine/api/core/VTextureList;

    move-result-object v3

    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minusTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    invoke-virtual {v3, v4}, Lcom/censivn/C3DEngine/api/core/VTextureList;->addElement(Lcom/censivn/C3DEngine/api/element/TextureElement;)Lcom/censivn/C3DEngine/api/element/TextureDescription;

    .line 87
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    invoke-virtual {v3}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->spX(F)V

    .line 88
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    invoke-virtual {v3}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->spY(F)V

    .line 89
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->visible(Ljava/lang/Boolean;)V

    .line 91
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    invoke-virtual {p0, v3}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->addChild(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 95
    new-instance v1, Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    sget v3, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->HDScale:F

    div-float v3, v6, v3

    sget v4, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->HDScale:F

    div-float v4, v6, v4

    invoke-direct {v1, v3, v4}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;-><init>(FF)V

    .line 97
    .local v1, "light":Lcom/censivn/C3DEngine/api/primitives/VRectangle;
    invoke-virtual {v1}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->textures()Lcom/censivn/C3DEngine/api/core/VTextureList;

    move-result-object v3

    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->lightTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    invoke-virtual {v3, v4}, Lcom/censivn/C3DEngine/api/core/VTextureList;->addElement(Lcom/censivn/C3DEngine/api/element/TextureElement;)Lcom/censivn/C3DEngine/api/element/TextureDescription;

    .line 98
    invoke-virtual {v1}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->spX(F)V

    .line 99
    invoke-virtual {v1}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->spY(F)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->addChild(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 103
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mObjectManager:Lcom/censivn/C3DEngine/api/core/VObjectManager;

    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plus:Lcom/censivn/C3DEngine/api/core/VObject3d;

    invoke-virtual {v3, v4}, Lcom/censivn/C3DEngine/api/core/VObjectManager;->addObject(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 104
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mObjectManager:Lcom/censivn/C3DEngine/api/core/VObjectManager;

    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    invoke-virtual {v3, v4}, Lcom/censivn/C3DEngine/api/core/VObjectManager;->addObject(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 105
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mObjectManager:Lcom/censivn/C3DEngine/api/core/VObjectManager;

    invoke-virtual {v3, v1}, Lcom/censivn/C3DEngine/api/core/VObjectManager;->addObject(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 107
    new-instance v2, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$1;

    invoke-direct {v2, p0, v1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$1;-><init>(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 140
    .local v2, "ml":Lcom/censivn/C3DEngine/api/event/VMouseEventListener;
    invoke-virtual {v1}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->calAABB()V

    .line 141
    invoke-virtual {v1, v2}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->setMouseEventListener(Lcom/censivn/C3DEngine/api/event/VMouseEventListener;)V

    .line 145
    return-void
.end method

.method static synthetic access$0(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;Z)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->turnOnLight(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;F)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plusBrightness(F)V

    return-void
.end method

.method static synthetic access$2(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;)Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->mColorSlider:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;)Lcom/censivn/C3DEngine/api/core/VObject3d;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plus:Lcom/censivn/C3DEngine/api/core/VObject3d;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;)Lcom/censivn/C3DEngine/api/primitives/VRectangle;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    return-object v0
.end method

.method private createTexture()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 225
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f02000b

    invoke-static {v1, v2}, Lcom/tsf/shell/widget/cubeclock/Utils;->loadResourceFitSize(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    .local v0, "b":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVTextureManager:Lcom/censivn/C3DEngine/api/core/VTextureManager;

    invoke-virtual {v1, v0, v3}, Lcom/censivn/C3DEngine/api/core/VTextureManager;->createTexture(Landroid/graphics/Bitmap;Z)Lcom/censivn/C3DEngine/api/element/TextureElement;

    move-result-object v1

    iput-object v1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->BackgroundTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    .line 229
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f020007

    invoke-static {v1, v2}, Lcom/tsf/shell/widget/cubeclock/Utils;->loadResourceFitSize(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVTextureManager:Lcom/censivn/C3DEngine/api/core/VTextureManager;

    invoke-virtual {v1, v0, v3}, Lcom/censivn/C3DEngine/api/core/VTextureManager;->createTexture(Landroid/graphics/Bitmap;Z)Lcom/censivn/C3DEngine/api/element/TextureElement;

    move-result-object v1

    iput-object v1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plusTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    .line 235
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 237
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f020005

    invoke-static {v1, v2}, Lcom/tsf/shell/widget/cubeclock/Utils;->loadResourceFitSize(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVTextureManager:Lcom/censivn/C3DEngine/api/core/VTextureManager;

    invoke-virtual {v1, v0, v3}, Lcom/censivn/C3DEngine/api/core/VTextureManager;->createTexture(Landroid/graphics/Bitmap;Z)Lcom/censivn/C3DEngine/api/element/TextureElement;

    move-result-object v1

    iput-object v1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minusTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 243
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f020004

    invoke-static {v1, v2}, Lcom/tsf/shell/widget/cubeclock/Utils;->loadResourceFitSize(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVTextureManager:Lcom/censivn/C3DEngine/api/core/VTextureManager;

    invoke-virtual {v1, v0, v3}, Lcom/censivn/C3DEngine/api/core/VTextureManager;->createTexture(Landroid/graphics/Bitmap;Z)Lcom/censivn/C3DEngine/api/element/TextureElement;

    move-result-object v1

    iput-object v1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->lightTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    return-void
.end method

.method private plusBrightness(F)V
    .locals 4
    .param p1, "diff"    # F

    .prologue
    const/high16 v3, 0x3f800000

    const v2, 0x3e4ccccd

    .line 149
    sget v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->Brightness:F

    const/high16 v1, 0x43480000

    div-float v1, p1, v1

    add-float/2addr v0, v1

    sput v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->Brightness:F

    .line 151
    sget v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->Brightness:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 153
    sput v3, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->Brightness:F

    .line 161
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Brightness:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->Brightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 163
    return-void

    .line 155
    :cond_1
    sget v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->Brightness:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 157
    sput v2, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->Brightness:F

    goto :goto_0
.end method

.method private saveColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 328
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/provider/SettingColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 330
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "widgetid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->AppWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "selection":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v1, "mContentValues":Landroid/content/ContentValues;
    const-string v4, "color"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    sget-object v4, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v1    # "mContentValues":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private turnOnLight(Z)V
    .locals 8
    .param p1, "open"    # Z

    .prologue
    const/16 v4, 0x320

    const/16 v7, 0x12c

    const/16 v6, 0xff

    const/4 v5, 0x1

    .line 167
    if-eqz p1, :cond_0

    .line 169
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plus:Lcom/censivn/C3DEngine/api/core/VObject3d;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/censivn/C3DEngine/api/core/VObject3d;->visible(Ljava/lang/Boolean;)V

    .line 170
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->visible(Ljava/lang/Boolean;)V

    .line 172
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plus:Lcom/censivn/C3DEngine/api/core/VObject3d;

    invoke-static {v3}, Lcom/censivn/C3DEngine/api/tween/VTween;->killTween(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;)V

    .line 174
    new-instance v2, Lcom/censivn/C3DEngine/api/tween/VTweenParam;

    invoke-direct {v2}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;-><init>()V

    .line 176
    .local v2, "tpPlus":Lcom/censivn/C3DEngine/api/tween/VTweenParam;
    const/high16 v3, -0x3d740000

    invoke-virtual {v2, v3}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setSPY(F)V

    .line 177
    invoke-virtual {v2, v6}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setAlpha(I)V

    .line 179
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plus:Lcom/censivn/C3DEngine/api/core/VObject3d;

    invoke-static {v3, v7, v2}, Lcom/censivn/C3DEngine/api/tween/VTween;->to(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;ILcom/censivn/C3DEngine/api/tween/VTweenParam;)V

    .line 183
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    invoke-static {v3}, Lcom/censivn/C3DEngine/api/tween/VTween;->killTween(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;)V

    .line 185
    new-instance v1, Lcom/censivn/C3DEngine/api/tween/VTweenParam;

    invoke-direct {v1}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;-><init>()V

    .line 187
    .local v1, "tpMinus":Lcom/censivn/C3DEngine/api/tween/VTweenParam;
    const/high16 v3, -0x3cb80000

    invoke-virtual {v1, v3}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setSPY(F)V

    .line 188
    invoke-virtual {v1, v6}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setAlpha(I)V

    .line 190
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    invoke-static {v3, v7, v1}, Lcom/censivn/C3DEngine/api/tween/VTween;->to(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;ILcom/censivn/C3DEngine/api/tween/VTweenParam;)V

    .line 219
    .end local v1    # "tpMinus":Lcom/censivn/C3DEngine/api/tween/VTweenParam;
    .end local v2    # "tpPlus":Lcom/censivn/C3DEngine/api/tween/VTweenParam;
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plus:Lcom/censivn/C3DEngine/api/core/VObject3d;

    invoke-static {v3}, Lcom/censivn/C3DEngine/api/tween/VTween;->killTween(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;)V

    .line 195
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    invoke-static {v3}, Lcom/censivn/C3DEngine/api/tween/VTween;->killTween(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;)V

    .line 197
    new-instance v0, Lcom/censivn/C3DEngine/api/tween/VTweenParam;

    invoke-direct {v0}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;-><init>()V

    .line 199
    .local v0, "tp":Lcom/censivn/C3DEngine/api/tween/VTweenParam;
    new-instance v3, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$2;

    invoke-direct {v3, p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$2;-><init>(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;)V

    invoke-virtual {v0, v3}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setCompleteRunnable(Ljava/lang/Runnable;)V

    .line 211
    const/high16 v3, -0x3cf90000

    invoke-virtual {v0, v3}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setSPY(F)V

    .line 212
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setAlpha(I)V

    .line 214
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plus:Lcom/censivn/C3DEngine/api/core/VObject3d;

    invoke-static {v3, v4, v0}, Lcom/censivn/C3DEngine/api/tween/VTween;->to(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;ILcom/censivn/C3DEngine/api/tween/VTweenParam;)V

    .line 215
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    invoke-static {v3, v4, v0}, Lcom/censivn/C3DEngine/api/tween/VTween;->to(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;ILcom/censivn/C3DEngine/api/tween/VTweenParam;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    iput-boolean v2, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->isOpen:Z

    .line 295
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mClockWidget:Lcom/tsf/shell/widget/cubeclock/ClockWidget;

    invoke-virtual {v1, v2}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->interceptMouseEventScroll(Z)V

    .line 297
    const/16 v1, 0xbb8

    invoke-static {v1}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->earlyTimer(I)V

    .line 299
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mClockWidget:Lcom/tsf/shell/widget/cubeclock/ClockWidget;

    invoke-virtual {v1, v2}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->openAABB(Z)V

    .line 301
    invoke-static {p0}, Lcom/censivn/C3DEngine/api/tween/VTween;->killTween(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;)V

    .line 303
    new-instance v0, Lcom/censivn/C3DEngine/api/tween/VTweenParam;

    invoke-direct {v0}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;-><init>()V

    .line 305
    .local v0, "tp":Lcom/censivn/C3DEngine/api/tween/VTweenParam;
    new-instance v1, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$3;

    invoke-direct {v1, p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$3;-><init>(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;)V

    invoke-virtual {v0, v1}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setCompleteRunnable(Ljava/lang/Runnable;)V

    .line 316
    const/high16 v1, 0x42b40000

    invoke-virtual {v0, v1}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setRotationX(F)V

    .line 318
    invoke-virtual {v0, v2}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setAlpha(I)V

    .line 320
    const/16 v1, 0x190

    invoke-static {p0, v1, v0}, Lcom/censivn/C3DEngine/api/tween/VTween;->to(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;ILcom/censivn/C3DEngine/api/tween/VTweenParam;)V

    .line 322
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->mColorSlider:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->getColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->saveColor(I)V

    .line 324
    return-void
.end method

.method public closeIfOpen()V
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->isOpen:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->close()V

    .line 356
    :cond_0
    return-void
.end method

.method public open()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 267
    iput-boolean v2, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->isOpen:Z

    .line 269
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mClockWidget:Lcom/tsf/shell/widget/cubeclock/ClockWidget;

    invoke-virtual {v1, v2}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->interceptMouseEventScroll(Z)V

    .line 271
    const v1, 0xea60

    invoke-static {v1}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->delayTimer(I)V

    .line 273
    invoke-static {p0}, Lcom/censivn/C3DEngine/api/tween/VTween;->killTween(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;)V

    .line 275
    new-instance v0, Lcom/censivn/C3DEngine/api/tween/VTweenParam;

    invoke-direct {v0}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;-><init>()V

    .line 277
    .local v0, "tp":Lcom/censivn/C3DEngine/api/tween/VTweenParam;
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setEase(I)V

    .line 279
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setRotationX(F)V

    .line 281
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setAlpha(I)V

    .line 283
    const/16 v1, 0x5dc

    invoke-static {p0, v1, v0}, Lcom/censivn/C3DEngine/api/tween/VTween;->to(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;ILcom/censivn/C3DEngine/api/tween/VTweenParam;)V

    .line 285
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->visible(Ljava/lang/Boolean;)V

    .line 287
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mClockWidget:Lcom/tsf/shell/widget/cubeclock/ClockWidget;

    invoke-virtual {v1, v2}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->openAABB(Z)V

    .line 289
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->isOpen:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->close()V

    .line 263
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->open()V

    goto :goto_0
.end method
