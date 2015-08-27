.class Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$1;
.super Lcom/censivn/C3DEngine/api/event/VMouseEventListener;
.source "ColorSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;


# direct methods
.method constructor <init>(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;Lcom/censivn/C3DEngine/api/core/VObject3d;)V
    .locals 0
    .param p2, "$anonymous0"    # Lcom/censivn/C3DEngine/api/core/VObject3d;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$1;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    .line 107
    invoke-direct {p0, p2}, Lcom/censivn/C3DEngine/api/event/VMouseEventListener;-><init>(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mClockWidget:Lcom/tsf/shell/widget/cubeclock/ClockWidget;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->interceptMouseEventLongPressOnTimes()V

    .line 114
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$1;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    const/4 v1, 0x1

    # invokes: Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->turnOnLight(Z)V
    invoke-static {v0, v1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->access$0(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;Z)V

    .line 116
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$1;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    # invokes: Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plusBrightness(F)V
    invoke-static {v0, p4}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->access$1(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;F)V

    .line 125
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$1;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    # getter for: Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->mColorSlider:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;
    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->access$2(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;)Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    move-result-object v0

    sget v1, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->Brightness:F

    invoke-virtual {v0, v1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;->setSliderColor(F)V

    .line 129
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$1;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    const/4 v1, 0x0

    # invokes: Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->turnOnLight(Z)V
    invoke-static {v0, v1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->access$0(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;Z)V

    .line 136
    return-void
.end method
