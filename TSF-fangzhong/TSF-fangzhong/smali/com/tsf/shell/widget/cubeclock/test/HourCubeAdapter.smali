.class public Lcom/tsf/shell/widget/cubeclock/test/HourCubeAdapter;
.super Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;
.source "HourCubeAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0xc

    return v0
.end method

.method public getFaceTexCoord(I)[F
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 15
    div-int/lit8 v2, p1, 0xa

    .line 17
    .local v2, "ten":I
    rem-int/lit8 v0, p1, 0xa

    .line 19
    .local v0, "one":I
    invoke-static {v2, v0}, Lcom/tsf/shell/widget/cubeclock/test/NumberTexture;->getNumber(II)[F

    move-result-object v1

    .line 21
    .local v1, "result":[F
    return-object v1
.end method
