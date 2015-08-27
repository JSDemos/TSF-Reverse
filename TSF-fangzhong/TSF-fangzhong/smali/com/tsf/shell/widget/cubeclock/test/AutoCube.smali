.class public Lcom/tsf/shell/widget/cubeclock/test/AutoCube;
.super Lcom/censivn/C3DEngine/api/core/VObject3dContainer;
.source "AutoCube.java"


# instance fields
.field private PrevGrid:I

.field public cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

.field private currectIndex:I

.field private mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 17
    invoke-direct {p0}, Lcom/censivn/C3DEngine/api/core/VObject3dContainer;-><init>()V

    .line 9
    new-instance v2, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-direct {v2}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;-><init>()V

    iput-object v2, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    .line 11
    iput v3, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->currectIndex:I

    .line 13
    iput v3, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->PrevGrid:I

    .line 19
    new-instance v0, Lcom/tsf/shell/widget/cubeclock/test/HourCubeAdapter;

    invoke-direct {v0}, Lcom/tsf/shell/widget/cubeclock/test/HourCubeAdapter;-><init>()V

    .line 21
    .local v0, "mHourCubeAdapter":Lcom/tsf/shell/widget/cubeclock/test/HourCubeAdapter;
    new-instance v1, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;

    invoke-direct {v1}, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;-><init>()V

    .line 23
    .local v1, "mNumberTexture":Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;
    invoke-virtual {p0, v0, v1}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->setAdapter(Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;Lcom/tsf/shell/widget/cubeclock/test/CubeTexture;)V

    .line 25
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->addChild(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 27
    return-void
.end method

.method private updateAllFace()V
    .locals 6

    .prologue
    const/high16 v5, 0x42b40000

    .line 115
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;

    if-eqz v4, :cond_0

    .line 117
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-virtual {v4}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v4

    iget v4, v4, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    invoke-virtual {p0, v4}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->calculateGrid(F)I

    move-result v2

    .line 119
    .local v2, "cubeindex":I
    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->getCurrentBackFaceIndex(I)I

    move-result v1

    .line 121
    .local v1, "cubeface":I
    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->getCurrnetAdapterIndex(I)I

    move-result v0

    .line 123
    .local v0, "adaperindex":I
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;

    invoke-virtual {v4, v0}, Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;->getFaceTexCoord(I)[F

    move-result-object v3

    .line 125
    .local v3, "texCoord":[F
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-virtual {v4, v1, v3}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->setFaceTexture(I[F)V

    .line 129
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-virtual {v4}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v4

    iget v4, v4, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    add-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->calculateGrid(F)I

    move-result v2

    .line 131
    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->getCurrentBackFaceIndex(I)I

    move-result v1

    .line 133
    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->getCurrnetAdapterIndex(I)I

    move-result v0

    .line 135
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;

    invoke-virtual {v4, v0}, Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;->getFaceTexCoord(I)[F

    move-result-object v3

    .line 137
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-virtual {v4, v1, v3}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->setFaceTexture(I[F)V

    .line 141
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-virtual {v4}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v4

    iget v4, v4, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    sub-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->calculateGrid(F)I

    move-result v2

    .line 143
    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->getCurrentBackFaceIndex(I)I

    move-result v1

    .line 145
    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->getCurrnetAdapterIndex(I)I

    move-result v0

    .line 147
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;

    invoke-virtual {v4, v0}, Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;->getFaceTexCoord(I)[F

    move-result-object v3

    .line 149
    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-virtual {v4, v1, v3}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->setFaceTexture(I[F)V

    .line 153
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
    .line 69
    const/high16 v1, 0x42b40000

    div-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 71
    .local v0, "grid":I
    return v0
.end method

.method public getCubeIndex()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v0

    iget v0, v0, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    invoke-virtual {p0, v0}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->calculateGrid(F)I

    move-result v0

    return v0
.end method

.method public getCurrentBackFaceIndex(I)I
    .locals 1
    .param p1, "backface"    # I

    .prologue
    .line 157
    rem-int/lit8 v0, p1, 0x4

    .line 159
    .local v0, "BackFaceIndex":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 161
    :cond_0
    return v0
.end method

.method public getCurrnetAdapterIndex(I)I
    .locals 3
    .param p1, "CubeIndex"    # I

    .prologue
    .line 166
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;

    invoke-virtual {v2}, Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;->getCount()I

    move-result v1

    .line 168
    .local v1, "faceCount":I
    rem-int v0, p1, v1

    .line 170
    .local v0, "AdatperIndex":I
    if-gez v0, :cond_0

    add-int/2addr v0, v1

    .line 172
    :cond_0
    return v0
.end method

.method public notificationCubeDataSetChange()V
    .locals 6

    .prologue
    .line 50
    new-instance v1, Lcom/censivn/C3DEngine/api/tween/VTweenParam;

    invoke-direct {v1}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;-><init>()V

    .line 52
    .local v1, "tp":Lcom/censivn/C3DEngine/api/tween/VTweenParam;
    const/high16 v0, 0x43b40000

    .line 54
    .local v0, "degree":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 56
    const/high16 v2, -0x40800000

    mul-float/2addr v0, v2

    .line 59
    :cond_0
    invoke-virtual {v1, v0}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setRotationX(F)V

    .line 61
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-static {v2}, Lcom/censivn/C3DEngine/api/tween/VTween;->killTween(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;)V

    .line 63
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    const/16 v3, 0x3e8

    invoke-static {v2, v3, v1}, Lcom/censivn/C3DEngine/api/tween/VTween;->to(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;ILcom/censivn/C3DEngine/api/tween/VTweenParam;)V

    .line 65
    return-void
.end method

.method public onDrawStart()V
    .locals 4

    .prologue
    .line 32
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v1

    iget v1, v1, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->calculateGrid(F)I

    move-result v0

    .line 34
    .local v0, "nowGrid":I
    iget v1, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->PrevGrid:I

    if-eq v0, v1, :cond_0

    .line 36
    iget v1, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->PrevGrid:I

    invoke-virtual {p0, v1, v0}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->updateCubeFaceTexCoord(II)V

    .line 40
    :cond_0
    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->PrevGrid:I

    .line 44
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v1

    iget v2, v1, Lcom/censivn/C3DEngine/api/element/Number3d;->y:F

    const/high16 v3, 0x3f800000

    add-float/2addr v2, v3

    iput v2, v1, Lcom/censivn/C3DEngine/api/element/Number3d;->y:F

    .line 46
    return-void
.end method

.method public setAdapter(Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;Lcom/tsf/shell/widget/cubeclock/test/CubeTexture;)V
    .locals 2
    .param p1, "adapter"    # Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;
    .param p2, "texture"    # Lcom/tsf/shell/widget/cubeclock/test/CubeTexture;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;

    .line 79
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    iget-object v1, p2, Lcom/tsf/shell/widget/cubeclock/test/CubeTexture;->mTexture:Lcom/censivn/C3DEngine/api/element/TextureElement;

    iget v1, v1, Lcom/censivn/C3DEngine/api/element/TextureElement;->id:I

    iput v1, v0, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->ContentTexture:I

    .line 81
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->updateAllFace()V

    .line 83
    return-void
.end method

.method public setCubeIndex(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "time"    # I

    .prologue
    .line 178
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;

    if-eqz v3, :cond_1

    .line 180
    mul-int/lit8 v3, p1, 0x5a

    int-to-float v1, v3

    .line 182
    .local v1, "target":F
    new-instance v2, Lcom/censivn/C3DEngine/api/tween/VTweenParam;

    invoke-direct {v2}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;-><init>()V

    .line 184
    .local v2, "tp":Lcom/censivn/C3DEngine/api/tween/VTweenParam;
    invoke-virtual {v2, v1}, Lcom/censivn/C3DEngine/api/tween/VTweenParam;->setRotationX(F)V

    .line 186
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-static {v3}, Lcom/censivn/C3DEngine/api/tween/VTween;->killTween(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;)V

    .line 188
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-static {v3, p2, v2}, Lcom/censivn/C3DEngine/api/tween/VTween;->to(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;ILcom/censivn/C3DEngine/api/tween/VTweenParam;)V

    .line 190
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->currectIndex:I

    if-eq v3, p1, :cond_0

    .line 192
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->currectIndex:I

    invoke-virtual {p0, v3}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->getCurrnetAdapterIndex(I)I

    move-result v0

    .line 194
    .local v0, "adapterIndex":I
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;

    invoke-virtual {v3, v0}, Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;->onItemRelease(I)V

    .line 198
    .end local v0    # "adapterIndex":I
    :cond_0
    iput p1, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->currectIndex:I

    .line 202
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

    .line 87
    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;

    if-eqz v5, :cond_0

    .line 89
    sub-int v5, p2, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v3, :cond_2

    .line 91
    if-le p2, p1, :cond_1

    .line 93
    .local v3, "diff":I
    :goto_0
    add-int v1, p1, v3

    .line 95
    .local v1, "BackFaceIndex":I
    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->getCurrentBackFaceIndex(I)I

    move-result v2

    .line 97
    .local v2, "CurrentIndex":I
    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->getCurrnetAdapterIndex(I)I

    move-result v0

    .line 99
    .local v0, "AdatperIndex":I
    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;

    invoke-virtual {v5, v0}, Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;->getFaceTexCoord(I)[F

    move-result-object v4

    .line 101
    .local v4, "texCoord":[F
    iget-object v5, p0, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->cube:Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;

    invoke-virtual {v5, v2, v4}, Lcom/tsf/shell/widget/cubeclock/test/CubeIcon;->setFaceTexture(I[F)V

    .line 111
    .end local v0    # "AdatperIndex":I
    .end local v1    # "BackFaceIndex":I
    .end local v2    # "CurrentIndex":I
    .end local v3    # "diff":I
    .end local v4    # "texCoord":[F
    :cond_0
    :goto_1
    return-void

    .line 91
    :cond_1
    const/4 v3, -0x2

    goto :goto_0

    .line 105
    :cond_2
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/test/AutoCube;->updateAllFace()V

    goto :goto_1
.end method
