.class Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$3;
.super Ljava/lang/Object;
.source "ColorSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->close()V
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
    iput-object p1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$3;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting$3;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->visible(Ljava/lang/Boolean;)V

    .line 312
    return-void
.end method
