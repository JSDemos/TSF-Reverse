.class public Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;
.super Landroid/app/Activity;
.source "WidgetSummaryActivity.java"

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

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 169
    iput v0, p0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->initScreenW:F

    .line 170
    iput v0, p0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->initScreenH:F

    .line 32
    return-void
.end method

.method private checkShellExist(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tsf.shell"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 157
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private gotoFacebook()V
    .locals 3

    .prologue
    .line 258
    const-string v2, "http://www.facebook.com/tsfapp"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 264
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->startActivity(Landroid/content/Intent;)V

    .line 268
    return-void
.end method

.method private gotoMarket()V
    .locals 3

    .prologue
    .line 272
    const-string v2, "market://details?id=com.tsf.shell"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 278
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->startActivity(Landroid/content/Intent;)V

    .line 282
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 232
    .local v0, "id":I
    sget v1, Lcom/tsf/shell/plugin/summary/R$id;->imageView1:I

    if-ne v0, v1, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->gotoMarket()V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    sget v1, Lcom/tsf/shell/plugin/summary/R$id;->imageView2:I

    if-ne v0, v1, :cond_2

    .line 238
    invoke-direct {p0}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->gotoMarket()V

    goto :goto_0

    .line 240
    :cond_2
    sget v1, Lcom/tsf/shell/plugin/summary/R$id;->imageView3:I

    if-ne v0, v1, :cond_3

    .line 242
    invoke-direct {p0}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->gotoMarket()V

    goto :goto_0

    .line 244
    :cond_3
    sget v1, Lcom/tsf/shell/plugin/summary/R$id;->imageView4:I

    if-ne v0, v1, :cond_4

    .line 246
    invoke-direct {p0}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->gotoMarket()V

    goto :goto_0

    .line 248
    :cond_4
    sget v1, Lcom/tsf/shell/plugin/summary/R$id;->imageView5:I

    if-ne v0, v1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->gotoFacebook()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0, v4}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->requestWindowFeature(I)Z

    .line 44
    invoke-virtual {p0}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 46
    .local v1, "w":Landroid/view/Window;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 48
    const/high16 v2, 0x8000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 50
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 63
    :goto_0
    invoke-direct {p0, p0}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->checkShellExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/high16 v2, 0x13200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    const-string v2, "com.tsf.shell"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->finish()V

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 56
    :cond_0
    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, v4}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->setRequestedOrientation(I)V

    .line 87
    sget v2, Lcom/tsf/shell/plugin/summary/R$layout;->activity_main_widget_summary:I

    invoke-virtual {p0, v2}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->setContentView(I)V

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    sget v2, Lcom/tsf/shell/plugin/summary/R$id;->imageView3:I

    invoke-virtual {p0, v2}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/tsf/shell/plugin/summary/R$drawable;->launcher_text_summary_cn:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    :cond_2
    sget v2, Lcom/tsf/shell/plugin/summary/R$id;->AbsoluteLayout1:I

    invoke-virtual {p0, v2}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsoluteLayout;

    iput-object v2, p0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    .line 103
    iget-object v2, p0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2}, Landroid/widget/AbsoluteLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 109
    sget v2, Lcom/tsf/shell/plugin/summary/R$id;->videoView1:I

    invoke-virtual {p0, v2}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->mVideoView:Landroid/widget/VideoView;

    .line 113
    iget-object v2, p0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android.resource://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/raw/preview_color_hd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 119
    iget-object v2, p0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 121
    iget-object v2, p0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->mVideoView:Landroid/widget/VideoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 123
    iget-object v2, p0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 143
    sget v2, Lcom/tsf/shell/plugin/summary/R$id;->imageView1:I

    invoke-virtual {p0, v2}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget v2, Lcom/tsf/shell/plugin/summary/R$id;->imageView2:I

    invoke-virtual {p0, v2}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget v2, Lcom/tsf/shell/plugin/summary/R$id;->imageView3:I

    invoke-virtual {p0, v2}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    sget v2, Lcom/tsf/shell/plugin/summary/R$id;->imageView4:I

    invoke-virtual {p0, v2}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget v2, Lcom/tsf/shell/plugin/summary/R$id;->imageView5:I

    invoke-virtual {p0, v2}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method public onGlobalLayout()V
    .locals 21

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsoluteLayout;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 176
    .local v16, "viewW":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->mAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsoluteLayout;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v15, v0

    .line 178
    .local v15, "viewH":F
    const/high16 v14, 0x43b30000

    .line 179
    .local v14, "videoW":F
    const v13, 0x441f8000

    .line 181
    .local v13, "videoH":F
    div-float v11, v16, v14

    .line 182
    .local v11, "scaleW":F
    div-float v9, v15, v13

    .line 183
    .local v9, "scaleH":F
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 187
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

    .line 189
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->initScreenW:F

    move/from16 v17, v0

    cmpl-float v17, v17, v16

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->initScreenH:F

    move/from16 v17, v0

    cmpl-float v17, v17, v15

    if-eqz v17, :cond_1

    .line 191
    :cond_0
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->initScreenW:F

    .line 192
    move-object/from16 v0, p0

    iput v15, v0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->initScreenH:F

    .line 194
    mul-float v17, v14, v8

    move/from16 v0, v17

    float-to-int v12, v0

    .line 195
    .local v12, "scaleWidth":I
    mul-float v17, v13, v8

    move/from16 v0, v17

    float-to-int v10, v0

    .line 197
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

    .line 198
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

    .line 200
    .local v5, "Top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->mVideoView:Landroid/widget/VideoView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/AbsoluteLayout$LayoutParams;

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v10, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    sget v17, Lcom/tsf/shell/plugin/summary/R$id;->framelayout1:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tsf/shell/plugin/summary/WidgetSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 206
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

    .line 208
    .local v7, "layoutParam":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
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
    .line 220
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 224
    return-void
.end method
