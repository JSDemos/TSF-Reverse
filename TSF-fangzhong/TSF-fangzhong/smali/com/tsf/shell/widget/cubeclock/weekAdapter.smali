.class public Lcom/tsf/shell/widget/cubeclock/weekAdapter;
.super Lcom/tsf/shell/widget/cubeclock/CubeAdapter;
.source "weekAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x7

    return v0
.end method

.method public getFaceTexCoord(I)[F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 16
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mWeekTexture:Lcom/tsf/shell/widget/cubeclock/WeekTexture;

    invoke-virtual {v0, p1}, Lcom/tsf/shell/widget/cubeclock/WeekTexture;->getNumber(I)[F

    move-result-object v0

    return-object v0
.end method
