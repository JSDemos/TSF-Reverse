.class Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;
.super Ljava/lang/Thread;
.source "UpdateTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tsf/shell/widget/cubeclock/UpdateTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimerThread"
.end annotation


# instance fields
.field private destoryMe:Z

.field final synthetic this$0:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;


# direct methods
.method constructor <init>(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;->this$0:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;->destoryMe:Z

    return-void
.end method


# virtual methods
.method public destoryTimer()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;->destoryMe:Z

    .line 99
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 105
    :goto_0
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;->this$0:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    # getter for: Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Locker:Ljava/lang/Object;
    invoke-static {v1}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->access$0(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;->this$0:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    # invokes: Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->refreshTime()V
    invoke-static {v1}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->access$1(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)V

    .line 109
    iget-boolean v1, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;->destoryMe:Z

    if-eqz v1, :cond_0

    .line 111
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    return-void

    .line 116
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;->this$0:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    # getter for: Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Pause:Z
    invoke-static {v1}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->access$2(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;->this$0:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    # getter for: Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Locker:Ljava/lang/Object;
    invoke-static {v1}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->access$0(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 122
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;->this$0:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    # getter for: Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Locker:Ljava/lang/Object;
    invoke-static {v1}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->access$0(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;->this$0:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    # getter for: Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->mDelayTime:I
    invoke-static {v3}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->access$3(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
