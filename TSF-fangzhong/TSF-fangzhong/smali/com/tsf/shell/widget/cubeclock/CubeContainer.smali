.class public Lcom/tsf/shell/widget/cubeclock/CubeContainer;
.super Lcom/censivn/C3DEngine/api/core/VObject3dContainer;
.source "CubeContainer.java"


# instance fields
.field PrevGrid:I

.field public cube:Lcom/tsf/shell/widget/cubeclock/Cube;

.field private currectIndex:I

.field private mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

.field private selectedIndex:I

.field private speedZ:F

.field private targetZ:F


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x42800000

    const/high16 v6, -0x3d800000

    .line 26
    invoke-direct {p0}, Lcom/censivn/C3DEngine/api/core/VObject3dContainer;-><init>()V

    .line 14
    new-instance v0, Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-direct {v0}, Lcom/tsf/shell/widget/cubeclock/Cube;-><init>()V

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->targetZ:F

    .line 19
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->speedZ:F

    .line 21
    iput v1, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->currectIndex:I

    .line 22
    iput v1, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->selectedIndex:I

    .line 162
    iput v1, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->PrevGrid:I

    .line 28
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mObjectManager:Lcom/censivn/C3DEngine/api/core/VObjectManager;

    invoke-virtual {v0, p0}, Lcom/censivn/C3DEngine/api/core/VObjectManager;->addObject(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 30
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {p0, v0}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->addChild(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 32
    new-instance v7, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;

    invoke-direct {v7, p0, p0}, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;-><init>(Lcom/tsf/shell/widget/cubeclock/CubeContainer;Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 145
    .local v7, "ml":Lcom/censivn/C3DEngine/api/event/VMouseEventListener;
    invoke-virtual {p0, v7}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->setMouseEventListener(Lcom/censivn/C3DEngine/api/event/VMouseEventListener;)V

    .line 149
    sget v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float v1, v6, v0

    sget v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float v2, v6, v0

    sget v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float v3, v5, v0

    sget v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float v4, v5, v0

    sget v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float/2addr v5, v0

    sget v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float/2addr v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->setAABBPX(FFFFFF)V

    .line 153
    return-void
.end method

.method static synthetic access$0(Lcom/tsf/shell/widget/cubeclock/CubeContainer;F)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->targetZ:F

    return-void
.end method

.method static synthetic access$1(Lcom/tsf/shell/widget/cubeclock/CubeContainer;F)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->speedZ:F

    return-void
.end method

.method static synthetic access$2(Lcom/tsf/shell/widget/cubeclock/CubeContainer;)Lcom/tsf/shell/widget/cubeclock/CubeAdapter;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    return-object v0
.end method

.method private updateAllFace()V
    .locals 6

    .prologue
    const/high16 v5, 0x42b40000

    .line 277
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    if-eqz v4, :cond_0

    .line 279
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v4}, Lcom/tsf/shell/widget/cubeclock/Cube;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v4

    iget v4, v4, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    invoke-virtual {p0, v4}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->calculateGrid(F)I

    move-result v2

    .line 281
    .local v2, "cubeindex":I
    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->getCurrentBackFaceIndex(I)I

    move-result v1

    .line 283
    .local v1, "cubeface":I
    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->getCurrnetAdapterIndex(I)I

    move-result v0

    .line 285
    .local v0, "adaperindex":I
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    invoke-virtual {v4, v0}, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;->getFaceTexCoord(I)[F

    move-result-object v3

    .line 287
    .local v3, "texCoord":[F
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v4, v1, v3}, Lcom/tsf/shell/widget/cubeclock/Cube;->setFaceTexture(I[F)V

    .line 291
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v4}, Lcom/tsf/shell/widget/cubeclock/Cube;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v4

    iget v4, v4, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    add-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->calculateGrid(F)I

    move-result v2

    .line 293
    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->getCurrentBackFaceIndex(I)I

    move-result v1

    .line 295
    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->getCurrnetAdapterIndex(I)I

    move-result v0

    .line 297
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    invoke-virtual {v4, v0}, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;->getFaceTexCoord(I)[F

    move-result-object v3

    .line 299
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v4, v1, v3}, Lcom/tsf/shell/widget/cubeclock/Cube;->setFaceTexture(I[F)V

    .line 303
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v4}, Lcom/tsf/shell/widget/cubeclock/Cube;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v4

    iget v4, v4, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    sub-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->calculateGrid(F)I

    move-result v2

    .line 305
    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->getCurrentBackFaceIndex(I)I

    move-result v1

    .line 307
    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->getCurrnetAdapterIndex(I)I

    move-result v0

    .line 309
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    invoke-virtual {v4, v0}, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;->getFaceTexCoord(I)[F

    move-result-object v3

    .line 311
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v4, v1, v3}, Lcom/tsf/shell/widget/cubeclock/Cube;->setFaceTexture(I[F)V

    .line 315
    .end local v0    # "adaperindex":I
    .end local v1    # "cubeface":I
    .end local v2    # "cubeindex":I
    .end local v3    # "texCoord":[F
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateGrid(F)I
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 227
    const/high16 v1, 0x42b40000

    div-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 229
    .local v0, "grid":I
    return v0
.end method

.method public getCubeIndex()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/Cube;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v0

    iget v0, v0, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    invoke-virtual {p0, v0}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->calculateGrid(F)I

    move-result v0

    return v0
.end method

.method public getCurrentBackFaceIndex(I)I
    .locals 1
    .param p1, "backface"    # I

    .prologue
    .line 319
    rem-int/lit8 v0, p1, 0x4

    .line 321
    .local v0, "BackFaceIndex":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 323
    :cond_0
    return v0
.end method

.method public getCurrnetAdapterIndex(I)I
    .locals 3
    .param p1, "CubeIndex"    # I

    .prologue
    .line 328
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    invoke-virtual {v2}, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;->getCount()I

    move-result v1

    .line 330
    .local v1, "faceCount":I
    rem-int v0, p1, v1

    .line 332
    .local v0, "AdatperIndex":I
    if-gez v0, :cond_0

    add-int/2addr v0, v1

    .line 336
    :cond_0
    return v0
.end method

.method public notificationCubeDataSetChange()V
    .locals 6

    .prologue
    .line 208
    new-instance v1, Lcom/censivn/C3DEngine/api/tween/VTweenParam;

    invoke-direct {v1}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;-><init>()V

    .line 210
    .local v1, "tp":Lcom/censivn/C3DEngine/api/tween/VTweenParam;
    const/high16 v0, 0x43b40000

    .line 212
    .local v0, "degree":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 214
    const/high16 v2, -0x40800000

    mul-float/2addr v0, v2

    .line 217
    :cond_0
    invoke-virtual {v1, v0}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setRotationX(F)V

    .line 219
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-static {v2}, Lcom/censivn/C3DEngine/api/tween/VTween;->killTween(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;)V

    .line 221
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    const/16 v3, 0x3e8

    invoke-static {v2, v3, v1}, Lcom/censivn/C3DEngine/api/tween/VTween;->to(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;ILcom/censivn/C3DEngine/api/tween/VTweenParam;)V

    .line 223
    return-void
.end method

.method public onDrawStart()V
    .locals 5

    .prologue
    .line 168
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v3}, Lcom/tsf/shell/widget/cubeclock/Cube;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v3

    iget v3, v3, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    invoke-virtual {p0, v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->calculateGrid(F)I

    move-result v2

    .line 170
    .local v2, "nowGrid":I
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->PrevGrid:I

    if-eq v2, v3, :cond_0

    .line 172
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->PrevGrid:I

    invoke-virtual {p0, v3, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->updateCubeFaceTexCoord(II)V

    .line 176
    :cond_0
    iput v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->PrevGrid:I

    .line 180
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->targetZ:F

    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v4}, Lcom/tsf/shell/widget/cubeclock/Cube;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v4

    iget v4, v4, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->z:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->speedZ:F

    mul-float v1, v3, v4

    .line 182
    .local v1, "diff":F
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v3}, Lcom/tsf/shell/widget/cubeclock/Cube;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    iget v4, v3, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->z:F

    add-float/2addr v4, v1

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->z:F

    .line 184
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3ca3d70a

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v3}, Lcom/tsf/shell/widget/cubeclock/Cube;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    iget v4, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->targetZ:F

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->z:F

    .line 188
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    if-eqz v3, :cond_1

    .line 190
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->currectIndex:I

    invoke-virtual {p0, v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->getCurrnetAdapterIndex(I)I

    move-result v0

    .line 192
    .local v0, "adapterIndex":I
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->selectedIndex:I

    if-eq v3, v0, :cond_1

    .line 194
    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->selectedIndex:I

    .line 196
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    invoke-virtual {v3, v0}, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;->onItemSelect(I)V

    .line 204
    .end local v0    # "adapterIndex":I
    :cond_1
    return-void
.end method

.method public setAdapter(Lcom/tsf/shell/widget/cubeclock/CubeAdapter;Lcom/tsf/shell/widget/cubeclock/CubeTexture;)V
    .locals 2
    .param p1, "adapter"    # Lcom/tsf/shell/widget/cubeclock/CubeAdapter;
    .param p2, "texture"    # Lcom/tsf/shell/widget/cubeclock/CubeTexture;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    .line 237
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    invoke-virtual {v0, p0}, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;->setCubeContainer(Lcom/tsf/shell/widget/cubeclock/CubeContainer;)V

    .line 239
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    iget-object v1, p2, Lcom/tsf/shell/widget/cubeclock/CubeTexture;->mTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    iget v1, v1, Lcom/censivn/C3DEngine/api/element/TextureElement;->id:I

    iput v1, v0, Lcom/tsf/shell/widget/cubeclock/Cube;->ContentTexture:I

    .line 241
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->updateAllFace()V

    .line 243
    return-void
.end method

.method public setCubeIndex(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "time"    # I

    .prologue
    .line 342
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    if-eqz v3, :cond_1

    .line 344
    mul-int/lit8 v3, p1, 0x5a

    int-to-float v1, v3

    .line 346
    .local v1, "target":F
    new-instance v2, Lcom/censivn/C3DEngine/api/tween/VTweenParam;

    invoke-direct {v2}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;-><init>()V

    .line 348
    .local v2, "tp":Lcom/censivn/C3DEngine/api/tween/VTweenParam;
    invoke-virtual {v2, v1}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setRotationX(F)V

    .line 350
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-static {v3}, Lcom/censivn/C3DEngine/api/tween/VTween;->killTween(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;)V

    .line 352
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-static {v3, p2, v2}, Lcom/censivn/C3DEngine/api/tween/VTween;->to(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;ILcom/censivn/C3DEngine/api/tween/VTweenParam;)V

    .line 354
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->currectIndex:I

    if-eq v3, p1, :cond_0

    .line 356
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->currectIndex:I

    invoke-virtual {p0, v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->getCurrnetAdapterIndex(I)I

    move-result v0

    .line 358
    .local v0, "adapterIndex":I
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    invoke-virtual {v3, v0}, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;->onItemRelease(I)V

    .line 362
    .end local v0    # "adapterIndex":I
    :cond_0
    iput p1, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->currectIndex:I

    .line 366
    .end local v1    # "target":F
    .end local v2    # "tp":Lcom/censivn/C3DEngine/api/tween/VTweenParam;
    :cond_1
    return-void
.end method

.method public updateCubeFaceTexCoord(II)V
    .locals 6
    .param p1, "prevFaceIndex"    # I
    .param p2, "nowFaceIndex"    # I

    .prologue
    const/4 v3, 0x2

    .line 247
    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    if-eqz v5, :cond_0

    .line 249
    sub-int v5, p2, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v3, :cond_2

    .line 253
    if-le p2, p1, :cond_1

    .line 255
    .local v3, "diff":I
    :goto_0
    add-int v1, p1, v3

    .line 257
    .local v1, "BackFaceIndex":I
    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->getCurrentBackFaceIndex(I)I

    move-result v2

    .line 259
    .local v2, "CurrentIndex":I
    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->getCurrnetAdapterIndex(I)I

    move-result v0

    .line 261
    .local v0, "AdatperIndex":I
    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    invoke-virtual {v5, v0}, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;->getFaceTexCoord(I)[F

    move-result-object v4

    .line 263
    .local v4, "texCoord":[F
    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v5, v2, v4}, Lcom/tsf/shell/widget/cubeclock/Cube;->setFaceTexture(I[F)V

    .line 273
    .end local v0    # "AdatperIndex":I
    .end local v1    # "BackFaceIndex":I
    .end local v2    # "CurrentIndex":I
    .end local v3    # "diff":I
    .end local v4    # "texCoord":[F
    :cond_0
    :goto_1
    return-void

    .line 253
    :cond_1
    const/4 v3, -0x2

    goto :goto_0

    .line 267
    :cond_2
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->updateAllFace()V

    goto :goto_1
.end method
