.class Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;
.super Lcom/censivn/C3DEngine/api/event/VMouseEventListener;
.source "ColorSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MouseEvent"
.end annotation


# instance fields
.field private SilderBarSize:F

.field private SilderBarhalf:F

.field local:Lcom/censivn/C3DEngine/api/element/Number3d;

.field final synthetic this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;


# direct methods
.method public constructor <init>(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;Lcom/censivn/C3DEngine/api/core/VObject3d;)V
    .locals 2
    .param p2, "target"    # Lcom/censivn/C3DEngine/api/core/VObject3d;

    .prologue
    const/4 v1, 0x0

    .line 106
    iput-object p1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    .line 108
    invoke-direct {p0, p2}, Lcom/censivn/C3DEngine/api/event/VMouseEventListener;-><init>(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 101
    new-instance v0, Lcom/censivn/C3DEngine/api/element/Number3d;

    invoke-direct {v0, v1, v1, v1}, Lcom/censivn/C3DEngine/api/element/Number3d;-><init>(FFF)V

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->local:Lcom/censivn/C3DEngine/api/element/Number3d;

    .line 103
    const/high16 v0, 0x43d00000

    sget v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->SilderBarSize:F

    .line 104
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->SilderBarSize:F

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->SilderBarhalf:F

    .line 110
    return-void
.end method

.method private getLocal(Landroid/view/MotionEvent;)Lcom/censivn/C3DEngine/api/element/Number3d;
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v7, 0x40000000

    const/4 v6, 0x0

    .line 158
    invoke-static {}, Lcom/censivn/C3DEngine/api/shell/VInformation;->getScreenHeight()I

    move-result v3

    int-to-float v0, v3

    .line 159
    .local v0, "EngineHeight":F
    invoke-static {}, Lcom/censivn/C3DEngine/api/shell/VInformation;->getScreenWidth()I

    move-result v3

    int-to-float v1, v3

    .line 161
    .local v1, "EngineWidth":F
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->local:Lcom/censivn/C3DEngine/api/element/Number3d;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    div-float v5, v1, v7

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    .line 162
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->local:Lcom/censivn/C3DEngine/api/element/Number3d;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    div-float v5, v0, v7

    sub-float/2addr v4, v5

    sub-float v4, v6, v4

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/Number3d;->y:F

    .line 163
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->local:Lcom/censivn/C3DEngine/api/element/Number3d;

    iput v6, v3, Lcom/censivn/C3DEngine/api/element/Number3d;->z:F

    .line 165
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->local:Lcom/censivn/C3DEngine/api/element/Number3d;

    invoke-virtual {v3, v4}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->globalToLocal(Lcom/censivn/C3DEngine/api/element/Number3d;)Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v2

    .line 167
    .local v2, "temp":Lcom/censivn/C3DEngine/api/element/Number3d;
    return-object v2
.end method

.method private getTarget(F)F
    .locals 3
    .param p1, "x"    # F

    .prologue
    .line 173
    iget v1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->SilderBarhalf:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->SilderBarSize:F

    div-float/2addr v1, v2

    const/high16 v2, 0x41800000

    mul-float v0, v1, v2

    .line 175
    .local v0, "target":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 177
    const/4 v0, 0x0

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    const/high16 v1, 0x41700000

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 181
    const/high16 v0, 0x41700000

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDown"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 134
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 122
    invoke-direct {p0, p2}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->getLocal(Landroid/view/MotionEvent;)Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v0

    .line 124
    .local v0, "temp":Lcom/censivn/C3DEngine/api/element/Number3d;
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    iget v2, v0, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    invoke-direct {p0, v2}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->getTarget(F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->access$0(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;F)V

    .line 126
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    # getter for: Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->targetIndex:F
    invoke-static {v2}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->access$1(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    # invokes: Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->setColor(I)V
    invoke-static {v1, v2}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->access$2(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;I)V

    .line 128
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->invalidate()V

    .line 130
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->getLocal(Landroid/view/MotionEvent;)Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v0

    .line 141
    .local v0, "temp":Lcom/censivn/C3DEngine/api/element/Number3d;
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    iget v2, v0, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    invoke-direct {p0, v2}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->getTarget(F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->access$0(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;F)V

    .line 143
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    # getter for: Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->targetIndex:F
    invoke-static {v2}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->access$1(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    # invokes: Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->setColor(I)V
    invoke-static {v1, v2}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->access$2(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;I)V

    .line 145
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    invoke-virtual {v1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->invalidate()V

    .line 147
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$MouseEvent;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    const/high16 v1, -0x3f600000

    invoke-static {v0, v1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->access$0(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;F)V

    .line 154
    return-void
.end method
