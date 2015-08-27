.class public Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;
.super Landroid/app/Activity;
.source "ShellSummaryActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private initScreenH:F

.field private initScreenW:F

.field private mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 179
    iput v0, p0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->initScreenW:F

    .line 180
    iput v0, p0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->initScreenH:F

    .line 35
    return-void
.end method

.method private gotoLauncher()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const/high16 v1, 0x13200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 162
    const-string v1, "com.tsf.shell"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v0}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->finish()V

    .line 168
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->gotoLauncher()V

    .line 177
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->gotoLauncher()V

    .line 242
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0, v3}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->requestWindowFeature(I)Z

    .line 47
    invoke-virtual {p0}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 49
    .local v8, "w":Landroid/view/Window;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 51
    const/high16 v1, 0x8000000

    invoke-virtual {v8, v1}, Landroid/view/Window;->addFlags(I)V

    .line 53
    const/high16 v1, 0x4000000

    invoke-virtual {v8, v1}, Landroid/view/Window;->addFlags(I)V

    .line 88
    :goto_0
    invoke-virtual {p0, v3}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->setRequestedOrientation(I)V

    .line 90
    sget v1, Lcom/tsf/shell/plugin/summary/R$layout;->activity_main_shell_summary:I

    invoke-virtual {p0, v1}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->setContentView(I)V

    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    sget v1, Lcom/tsf/shell/plugin/summary/R$id;->imageView4:I

    invoke-virtual {p0, v1}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/tsf/shell/plugin/summary/R$drawable;->launcher_text_summary_cn:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    :cond_0
    sget v1, Lcom/tsf/shell/plugin/summary/R$id;->relativeLayout1:I

    invoke-virtual {p0, v1}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget v1, Lcom/tsf/shell/plugin/summary/R$id;->linearlayer1:I

    invoke-virtual {p0, v1}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget v1, Lcom/tsf/shell/plugin/summary/R$id;->AbsoluteLayout1:I

    invoke-virtual {p0, v1}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout;

    iput-object v1, p0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    .line 112
    iget-object v1, p0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 118
    sget v1, Lcom/tsf/shell/plugin/summary/R$id;->videoView1:I

    invoke-virtual {p0, v1}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->mVideoView:Landroid/widget/VideoView;

    .line 122
    iget-object v1, p0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "android.resource://"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/raw/preview_color_hd"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 128
    iget-object v1, p0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 130
    iget-object v1, p0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->mVideoView:Landroid/widget/VideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 132
    iget-object v1, p0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 136
    sget v1, Lcom/tsf/shell/plugin/summary/R$id;->imageView2:I

    invoke-virtual {p0, v1}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 138
    .local v7, "iv":Landroid/widget/ImageView;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 140
    .local v0, "am":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 142
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 144
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 146
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 148
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 150
    return-void

    .line 59
    .end local v0    # "am":Landroid/view/animation/Animation;
    .end local v7    # "iv":Landroid/widget/ImageView;
    :cond_1
    const/16 v1, 0x200

    invoke-virtual {v8, v1}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0
.end method

.method public onGlobalLayout()V
    .locals 21

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsoluteLayout;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 186
    .local v16, "viewW":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsoluteLayout;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v15, v0

    .line 188
    .local v15, "viewH":F
    const/high16 v14, 0x43b40000

    .line 189
    .local v14, "videoW":F
    const/high16 v13, 0x44200000

    .line 191
    .local v13, "videoH":F
    div-float v11, v16, v14

    .line 192
    .local v11, "scaleW":F
    div-float v9, v15, v13

    .line 193
    .local v9, "scaleH":F
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 197
    .local v8, "scale":F
    const-string v17, ""

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "viewW:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "   viewH:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tsf/shell/plugin/summary/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->initScreenW:F

    move/from16 v17, v0

    cmpl-float v17, v17, v16

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->initScreenH:F

    move/from16 v17, v0

    cmpl-float v17, v17, v15

    if-eqz v17, :cond_1

    .line 201
    :cond_0
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->initScreenW:F

    .line 202
    move-object/from16 v0, p0

    iput v15, v0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->initScreenH:F

    .line 204
    mul-float v17, v14, v8

    move/from16 v0, v17

    float-to-int v12, v0

    .line 205
    .local v12, "scaleWidth":I
    mul-float v17, v13, v8

    move/from16 v0, v17

    float-to-int v10, v0

    .line 207
    .local v10, "scaleHeight":I
    int-to-float v0, v12

    move/from16 v17, v0

    sub-float v17, v17, v16

    const/high16 v18, 0x40000000

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v4, v0

    .line 208
    .local v4, "Left":I
    int-to-float v0, v10

    move/from16 v17, v0

    sub-float v17, v17, v15

    const/high16 v18, 0x40000000

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v5, v0

    .line 210
    .local v5, "Top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->mVideoView:Landroid/widget/VideoView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/AbsoluteLayout$LayoutParams;

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v10, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    sget v17, Lcom/tsf/shell/plugin/summary/R$id;->framelayout1:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tsf/shell/plugin/summary/ShellSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 216
    .local v6, "bg":Landroid/view/View;
    new-instance v7, Landroid/widget/AbsoluteLayout$LayoutParams;

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v17, v0

    float-to-int v0, v15

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 218
    .local v7, "layoutParam":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    .end local v4    # "Left":I
    .end local v5    # "Top":I
    .end local v6    # "bg":Landroid/view/View;
    .end local v7    # "layoutParam":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v10    # "scaleHeight":I
    .end local v12    # "scaleWidth":I
    :cond_1
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 234
    return-void
.end method
