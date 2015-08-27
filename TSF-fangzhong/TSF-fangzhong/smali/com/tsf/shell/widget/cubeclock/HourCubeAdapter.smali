.class public Lcom/tsf/shell/widget/cubeclock/HourCubeAdapter;
.super Lcom/tsf/shell/widget/cubeclock/CubeAdapter;
.source "HourCubeAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    const/16 v0, 0x18

    .line 14
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public getFaceTexCoord(I)[F
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "INDEX:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 25
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    if-nez p1, :cond_0

    .line 31
    const/16 p1, 0xc

    .line 36
    :cond_0
    div-int/lit8 v2, p1, 0xa

    .line 38
    .local v2, "ten":I
    rem-int/lit8 v0, p1, 0xa

    .line 40
    .local v0, "one":I
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mNumberTexture:Lcom/tsf/shell/widget/cubeclock/NumberTexture;

    invoke-virtual {v3, v2, v0}, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->getNumber(II)[F

    move-result-object v1

    .line 42
    .local v1, "result":[F
    return-object v1
.end method
