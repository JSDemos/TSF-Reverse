.class public Lcom/tsf/shell/widget/cubeclock/ampmAdapter;
.super Lcom/tsf/shell/widget/cubeclock/CubeAdapter;
.source "ampmAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/CubeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public ItemOnClick(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 21
    packed-switch p1, :pswitch_data_0

    .line 45
    :goto_0
    :pswitch_0
    return-void

    .line 25
    :pswitch_1
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mColorSetting:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->open()V

    .line 27
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mClockWidget:Lcom/tsf/shell/widget/cubeclock/ClockWidget;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->setZOrderOnTop()V

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x5

    return v0
.end method

.method public getFaceTexCoord(I)[F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 15
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mAmpmTexture:Lcom/tsf/shell/widget/cubeclock/ampmTexture;

    invoke-virtual {v0, p1}, Lcom/tsf/shell/widget/cubeclock/ampmTexture;->getNumber(I)[F

    move-result-object v0

    return-object v0
.end method

.method public onItemRelease(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 49
    packed-switch p1, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 53
    :pswitch_0
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mColorSetting:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->closeIfOpen()V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onItemSelect(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onItemSelect:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 69
    :pswitch_0
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mColorSetting:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->toggle()V

    .line 71
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mClockWidget:Lcom/tsf/shell/widget/cubeclock/ClockWidget;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->setZOrderOnTop()V

    goto :goto_0

    .line 77
    :pswitch_1
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mMainCubes:Lcom/tsf/shell/widget/cubeclock/MainCubes;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->selectMode(I)V

    goto :goto_0

    .line 83
    :pswitch_2
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mMainCubes:Lcom/tsf/shell/widget/cubeclock/MainCubes;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->selectMode(I)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
