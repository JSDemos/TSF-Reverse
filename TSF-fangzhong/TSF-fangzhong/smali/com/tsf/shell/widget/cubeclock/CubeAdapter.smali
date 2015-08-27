.class public abstract Lcom/tsf/shell/widget/cubeclock/CubeAdapter;
.super Ljava/lang/Object;
.source "CubeAdapter.java"


# instance fields
.field CurrentIndex:I

.field mCubeContainer:Lcom/tsf/shell/widget/cubeclock/CubeContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;->CurrentIndex:I

    .line 11
    return-void
.end method


# virtual methods
.method public ItemOnClick(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 19
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
    .line 23
    return-void
.end method

.method public onItemSelect(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 27
    return-void
.end method

.method public setCubeContainer(Lcom/tsf/shell/widget/cubeclock/CubeContainer;)V
    .locals 0
    .param p1, "cube"    # Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;->mCubeContainer:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    .line 33
    return-void
.end method

.method public setCubeIndex(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "time"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;->mCubeContainer:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-virtual {v0, p1, p2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->setCubeIndex(II)V

    .line 39
    return-void
.end method
