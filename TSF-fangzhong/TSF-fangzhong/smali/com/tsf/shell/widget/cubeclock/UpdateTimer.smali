.class public Lcom/tsf/shell/widget/cubeclock/UpdateTimer;
.super Ljava/lang/Object;
.source "UpdateTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;
    }
.end annotation


# static fields
.field public static invail_date:J


# instance fields
.field private Locker:Ljava/lang/Object;

.field private Pause:Z

.field private mDelayTime:I

.field private mTimerThread:Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->invail_date:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Locker:Ljava/lang/Object;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Pause:Z

    .line 16
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->mDelayTime:I

    .line 22
    new-instance v0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;

    invoke-direct {v0, p0}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;-><init>(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)V

    iput-object v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->mTimerThread:Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;

    .line 24
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->mTimerThread:Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;->start()V

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Locker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->refreshTime()V

    return-void
.end method

.method static synthetic access$2(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Pause:Z

    return v0
.end method

.method static synthetic access$3(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->mDelayTime:I

    return v0
.end method

.method public static delayTimer()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0xbb8

    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->delayTimer(I)V

    .line 56
    return-void
.end method

.method public static delayTimer(I)V
    .locals 6
    .param p0, "delay"    # I

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p0

    add-long v0, v2, v4

    .line 62
    .local v0, "new_date":J
    sget-wide v2, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->invail_date:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 64
    sput-wide v0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->invail_date:J

    .line 68
    :cond_0
    return-void
.end method

.method public static earlyTimer(I)V
    .locals 6
    .param p0, "time"    # I

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p0

    add-long v0, v2, v4

    .line 74
    .local v0, "new_date":J
    sput-wide v0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->invail_date:J

    .line 76
    return-void
.end method

.method private refreshTime()V
    .locals 3

    .prologue
    .line 142
    new-instance v0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$1;

    invoke-direct {v0, p0}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$1;-><init>(Lcom/tsf/shell/widget/cubeclock/UpdateTimer;)V

    .line 177
    .local v0, "r":Ljava/lang/Runnable;
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVMessageQueueManager:Lcom/censivn/C3DEngine/api/message/VMessageQueueManager;

    sget v2, Lcom/censivn/C3DEngine/api/message/VMessageQueueManager;->TYPE_GL_THREAD:I

    invoke-virtual {v1, v0, v2}, Lcom/censivn/C3DEngine/api/message/VMessageQueueManager;->post(Ljava/lang/Runnable;I)V

    .line 179
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->mTimerThread:Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer$TimerThread;->destoryTimer()V

    .line 50
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Pause:Z

    .line 32
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Pause:Z

    .line 38
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Locker:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Locker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 38
    monitor-exit v1

    .line 44
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDelayTime(I)V
    .locals 2
    .param p1, "delay"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->mDelayTime:I

    .line 82
    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Locker:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->Locker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 82
    monitor-exit v1

    .line 87
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
