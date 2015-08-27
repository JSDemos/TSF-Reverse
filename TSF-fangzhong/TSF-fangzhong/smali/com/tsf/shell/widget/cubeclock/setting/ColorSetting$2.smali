.class Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$2;
.super Ljava/lang/Object;
.source "ColorSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->turnOnLight(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;


# direct methods
.method constructor <init>(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$2;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$2;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    # getter for: Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->plus:Lcom/censivn/C3DEngine/api/core/VObject3d;
    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->access$3(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;)Lcom/censivn/C3DEngine/api/core/VObject3d;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/censivn/C3DEngine/api/core/VObject3d;->visible(Ljava/lang/Boolean;)V

    .line 205
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$2;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    # getter for: Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->minus:Lcom/censivn/C3DEngine/api/primitives/VRectangle;
    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->access$4(Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;)Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->visible(Ljava/lang/Boolean;)V

    .line 207
    return-void
.end method
