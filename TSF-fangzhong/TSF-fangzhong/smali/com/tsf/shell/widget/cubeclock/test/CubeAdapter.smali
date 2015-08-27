.class public abstract Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;
.super Ljava/lang/Object;
.source "CubeAdapter.java"


# instance fields
.field CurrentIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/test/CubeAdapter;->CurrentIndex:I

    .line 9
    return-void
.end method


# virtual methods
.method public ItemOnClick(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 17
    return-void
.end method

.method public abstract getCount()I
.end method

.method public abstract getFaceTexCoord(I)[F
.end method

.method public onItemRelease(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 21
    return-void
.end method
