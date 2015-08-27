.class Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;
.super Lcom/censivn/C3DEngine/api/event/VMouseEventListener;
.source "CubeContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tsf/shell/widget/cubeclock/CubeContainer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isFling:Z

.field rotationX:F

.field final synthetic this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;


# direct methods
.method constructor <init>(Lcom/tsf/shell/widget/cubeclock/CubeContainer;Lcom/censivn/C3DEngine/api/core/VObject3d;)V
    .locals 1
    .param p2, "$anonymous0"    # Lcom/censivn/C3DEngine/api/core/VObject3d;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    .line 32
    invoke-direct {p0, p2}, Lcom/censivn/C3DEngine/api/event/VMouseEventListener;-><init>(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->rotationX:F

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->isFling:Z

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->isFling:Z

    .line 43
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/Cube;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v0

    iget v0, v0, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->rotationX:F

    .line 45
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    const/high16 v1, -0x3d380000

    invoke-static {v0, v1}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->access$0(Lcom/tsf/shell/widget/cubeclock/CubeContainer;F)V

    .line 47
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    const v1, 0x3f4ccccd

    invoke-static {v0, v1}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->access$1(Lcom/tsf/shell/widget/cubeclock/CubeContainer;F)V

    .line 49
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v0, v0, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-static {v0}, Lcom/censivn/C3DEngine/api/tween/VTween;->killTween(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;)V

    .line 51
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 72
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->isFling:Z

    .line 78
    iget v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->rotationX:F

    const/high16 v4, 0x44610000

    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    const/high16 v2, -0x40800000

    :goto_0
    mul-float/2addr v2, v4

    add-float v0, v3, v2

    .line 80
    .local v0, "rx":F
    const/high16 v2, 0x42b40000

    div-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 90
    .local v1, "target":I
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->setCubeIndex(II)V

    .line 92
    return-void

    .line 78
    .end local v0    # "rx":F
    .end local v1    # "target":I
    :cond_0
    const/high16 v2, 0x3f800000

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 56
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v1, v1, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-static {v1}, Lcom/censivn/C3DEngine/api/tween/VTween;->killTween(Lcom/censivn/C3DEngine/api/tween/TweenTarget/VTweenTarget;)V

    .line 58
    invoke-static {}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->delayTimer()V

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42800000

    div-float/2addr v1, v2

    const/high16 v2, 0x42b40000

    mul-float v0, v1, v2

    .line 62
    .local v0, "diffY":F
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scroll rotationX:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->rotationX:F

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v1, v1, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/Cube;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v1

    iget v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->rotationX:F

    add-float/2addr v2, v0

    iput v2, v1, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    .line 66
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v1, v1, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/Cube;->invalidate()V

    .line 68
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v3, v3, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v3}, Lcom/tsf/shell/widget/cubeclock/Cube;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v3

    iget v3, v3, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    invoke-virtual {v2, v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->calculateGrid(F)I

    move-result v1

    .line 99
    .local v1, "cubeindex":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hit CubeIndex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-virtual {v2, v1}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->getCurrnetAdapterIndex(I)I

    move-result v0

    .line 103
    .local v0, "AdapterIndex":I
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    # getter for: Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;
    invoke-static {v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->access$2(Lcom/tsf/shell/widget/cubeclock/CubeContainer;)Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    # getter for: Lcom/tsf/shell/widget/cubeclock/CubeContainer;->mCubeAdapter:Lcom/tsf/shell/widget/cubeclock/CubeAdapter;
    invoke-static {v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->access$2(Lcom/tsf/shell/widget/cubeclock/CubeContainer;)Lcom/tsf/shell/widget/cubeclock/CubeAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;->ItemOnClick(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 114
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->access$0(Lcom/tsf/shell/widget/cubeclock/CubeContainer;F)V

    .line 116
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    const v3, 0x3e4ccccd

    invoke-static {v2, v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->access$1(Lcom/tsf/shell/widget/cubeclock/CubeContainer;F)V

    .line 118
    invoke-static {}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->delayTimer()V

    .line 120
    iget-boolean v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->isFling:Z

    if-eqz v2, :cond_0

    .line 141
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v2, v2, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->cube:Lcom/tsf/shell/widget/cubeclock/Cube;

    invoke-virtual {v2}, Lcom/tsf/shell/widget/cubeclock/Cube;->rotation()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v2

    iget v0, v2, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    .line 127
    .local v0, "rx":F
    const/high16 v2, 0x42b40000

    div-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 129
    .local v1, "target":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EndingRotationX:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/CubeContainer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->setCubeIndex(II)V

    goto :goto_0
.end method
