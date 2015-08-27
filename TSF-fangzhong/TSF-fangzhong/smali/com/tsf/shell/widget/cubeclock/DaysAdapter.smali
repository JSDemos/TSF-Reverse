.class public Lcom/tsf/shell/widget/cubeclock/DaysAdapter;
.super Lcom/tsf/shell/widget/cubeclock/CubeAdapter;
.source "DaysAdapter.java"


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
    const/16 v0, 0x1f

    return v0
.end method

.method public getFaceTexCoord(I)[F
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 15
    add-int/lit8 p1, p1, 0x1

    .line 17
    div-int/lit8 v2, p1, 0xa

    .line 19
    .local v2, "ten":I
    rem-int/lit8 v0, p1, 0xa

    .line 21
    .local v0, "one":I
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mNumberTexture:Lcom/tsf/shell/widget/cubeclock/NumberTexture;

    invoke-virtual {v3, v2, v0}, Lcom/tsf/shell/widget/cubeclock/NumberTexture;->getNumber(II)[F

    move-result-object v1

    .line 23
    .local v1, "result":[F
    return-object v1
.end method
