.class Lcom/tsf/shell/widget/cubeclock/UpdateTimer$1;
.super Ljava/lang/Object;
.source "UpdateTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->refreshTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;


# direct methods
.method constructor <init>(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 147
    const-string v2, "===========refreshTime============="

    invoke-static {v2}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$1;->this$0:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    # getter for: Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Pause:Z
    invoke-static {v2}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->access$2(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 153
    .local v0, "now":J
    sget-wide v2, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->invail_date:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 155
    sget-object v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mMainCubes:Lcom/tsf/shell/widget/cubeclock/MainCubes;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->refreshAll(JZ)V

    .line 173
    .end local v0    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local v0    # "now":J
    :cond_1
    sget-wide v2, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->invail_date:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 163
    sput-wide v4, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->invail_date:J

    .line 165
    sget-object v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mMainCubes:Lcom/tsf/shell/widget/cubeclock/MainCubes;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->refreshAll(JZ)V

    goto :goto_0
.end method
