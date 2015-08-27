.class public Lcom/tsf/shell/widget/cubeclock/ClockWidget;
.super Lcom/censivn/C3DEngine/api/core/VWidgetContainer;
.source "ClockWidget.java"


# static fields
.field public static AppWidgetId:I

.field public static EngineScale:F

.field public static HDScale:F

.field public static SD2HDScale:F

.field public static mAmpmTexture:Lcom/tsf/shell/widget/cubeclock/ampmTexture;

.field public static mClockWidget:Lcom/tsf/shell/widget/cubeclock/ClockWidget;

.field public static mColorSetting:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

.field public static mContext:Landroid/content/Context;

.field public static mMainCubes:Lcom/tsf/shell/widget/cubeclock/MainCubes;

.field public static mNumberTexture:Lcom/tsf/shell/widget/cubeclock/NumberTexture;

.field public static mObjectManager:Lcom/censivn/C3DEngine/api/core/VObjectManager;

.field public static mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

.field public static mShaderStandard:Lcom/tsf/shell/widget/cubeclock/shader/ShaderStandard;

.field public static mSingleColorTexture:Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;

.field public static mUpdateTimer:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

.field public static mVMessageQueueManager:Lcom/censivn/C3DEngine/api/message/VMessageQueueManager;

.field public static mVTextureManager:Lcom/censivn/C3DEngine/api/core/VTextureManager;

.field public static mWeekTexture:Lcom/tsf/shell/widget/cubeclock/WeekTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderStandard;

    invoke-direct {v0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderStandard;-><init>()V

    sput-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderStandard:Lcom/tsf/shell/widget/cubeclock/shader/ShaderStandard;

    .line 39
    new-instance v0, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    invoke-direct {v0}, Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;-><init>()V

    sput-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mShaderColorTexture:Lcom/tsf/shell/widget/cubeclock/shader/ShaderColorTexture;

    .line 57
    const v0, 0x3faaaaab

    sput v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->HDScale:F

    .line 58
    invoke-static {}, Lcom/censivn/C3DEngine/api/shell/VInformation;->Scale()F

    move-result v0

    sput v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->EngineScale:F

    .line 59
    sget v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->EngineScale:F

    sget v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->HDScale:F

    div-float/2addr v0, v1

    sput v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p2}, Lcom/censivn/C3DEngine/api/core/VWidgetContainer;-><init>(I)V

    .line 65
    sput-object p0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mClockWidget:Lcom/tsf/shell/widget/cubeclock/ClockWidget;

    .line 67
    sput p2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->AppWidgetId:I

    .line 69
    sput-object p1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->getTextureManager()Lcom/censivn/C3DEngine/api/core/VTextureManager;

    move-result-object v0

    sput-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVTextureManager:Lcom/censivn/C3DEngine/api/core/VTextureManager;

    .line 73
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->getObjectManager()Lcom/censivn/C3DEngine/api/core/VObjectManager;

    move-result-object v0

    sput-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mObjectManager:Lcom/censivn/C3DEngine/api/core/VObjectManager;

    .line 75
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mObjectManager:Lcom/censivn/C3DEngine/api/core/VObjectManager;

    invoke-virtual {v0, p0}, Lcom/censivn/C3DEngine/api/core/VObjectManager;->addObject(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 77
    new-instance v0, Lcom/censivn/C3DEngine/api/message/VMessageQueueManager;

    invoke-direct {v0, p2}, Lcom/censivn/C3DEngine/api/message/VMessageQueueManager;-><init>(I)V

    sput-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVMessageQueueManager:Lcom/censivn/C3DEngine/api/message/VMessageQueueManager;

    .line 79
    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->lockView(Z)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->setUserRotation(Z)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->interceptMouseEventVerticalScroll(Z)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->openAABB(Z)V

    .line 91
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->initDatabase()V

    .line 95
    new-instance v0, Lcom/tsf/shell/widget/cubeclock/NumberTexture;

    invoke-direct {v0}, Lcom/tsf/shell/widget/cubeclock/NumberTexture;-><init>()V

    sput-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mNumberTexture:Lcom/tsf/shell/widget/cubeclock/NumberTexture;

    .line 97
    new-instance v0, Lcom/tsf/shell/widget/cubeclock/ampmTexture;

    invoke-direct {v0}, Lcom/tsf/shell/widget/cubeclock/ampmTexture;-><init>()V

    sput-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mAmpmTexture:Lcom/tsf/shell/widget/cubeclock/ampmTexture;

    .line 99
    new-instance v0, Lcom/tsf/shell/widget/cubeclock/WeekTexture;

    invoke-direct {v0}, Lcom/tsf/shell/widget/cubeclock/WeekTexture;-><init>()V

    sput-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mWeekTexture:Lcom/tsf/shell/widget/cubeclock/WeekTexture;

    .line 101
    new-instance v0, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;

    invoke-direct {v0}, Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;-><init>()V

    sput-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mSingleColorTexture:Lcom/tsf/shell/widget/cubeclock/SingleColorTexture;

    .line 107
    new-instance v0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    invoke-direct {v0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;-><init>()V

    sput-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mColorSetting:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    .line 109
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mColorSetting:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    invoke-virtual {p0, v0}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->addChild(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 113
    new-instance v0, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    invoke-direct {v0}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;-><init>()V

    sput-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mUpdateTimer:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    .line 117
    new-instance v0, Lcom/tsf/shell/widget/cubeclock/MainCubes;

    invoke-direct {v0}, Lcom/tsf/shell/widget/cubeclock/MainCubes;-><init>()V

    sput-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mMainCubes:Lcom/tsf/shell/widget/cubeclock/MainCubes;

    .line 119
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mObjectManager:Lcom/censivn/C3DEngine/api/core/VObjectManager;

    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mColorSetting:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    invoke-virtual {v0, v1}, Lcom/censivn/C3DEngine/api/core/VObjectManager;->addObject(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 121
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mMainCubes:Lcom/tsf/shell/widget/cubeclock/MainCubes;

    invoke-virtual {p0, v0}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->addChild(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 125
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mUpdateTimer:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mMainCubes:Lcom/tsf/shell/widget/cubeclock/MainCubes;

    iget v0, v0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->CURRECT_MODE:I

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->setDelayTime(I)V

    .line 145
    return-void

    .line 125
    :cond_0
    const v0, 0xea60

    goto :goto_0
.end method

.method private initDatabase()V
    .locals 9

    .prologue
    .line 149
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/provider/SettingColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 151
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "widgetid = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->AppWidgetId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "selection":Ljava/lang/String;
    const-string v5, "modified DESC"

    .line 155
    .local v5, "sortOrder":Ljava/lang/String;
    const/4 v6, 0x0

    .line 159
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 161
    if-eqz v6, :cond_0

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v8, "mContentValues":Landroid/content/ContentValues;
    const-string v0, "widgetid"

    sget v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->AppWidgetId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v0, "color"

    const v2, -0xcccccd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v0, "mode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v8    # "mContentValues":Landroid/content/ContentValues;
    :cond_0
    if-eqz v6, :cond_1

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v7

    .line 181
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    if-eqz v6, :cond_1

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 183
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 185
    if-eqz v6, :cond_2

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_2
    throw v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mUpdateTimer:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->onDestroy()V

    .line 294
    return-void
.end method

.method public onDrawStart()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public onKillFocus()V
    .locals 1

    .prologue
    .line 299
    const-string v0, "onKillFocus"

    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 301
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mColorSetting:Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSetting;->closeIfOpen()V

    .line 303
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mUpdateTimer:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->onPause()V

    .line 276
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVMessageQueueManager:Lcom/censivn/C3DEngine/api/message/VMessageQueueManager;

    invoke-virtual {v0}, Lcom/censivn/C3DEngine/api/message/VMessageQueueManager;->pause()V

    .line 278
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mUpdateTimer:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    invoke-virtual {v0}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->onResume()V

    .line 285
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVMessageQueueManager:Lcom/censivn/C3DEngine/api/message/VMessageQueueManager;

    invoke-virtual {v0}, Lcom/censivn/C3DEngine/api/message/VMessageQueueManager;->resume()V

    .line 287
    return-void
.end method

.method public openAABB(Z)V
    .locals 7
    .param p1, "open"    # Z

    .prologue
    const/high16 v4, 0x438c0000

    const/high16 v5, 0x428c0000

    const/high16 v1, -0x3c740000

    const/4 v3, 0x0

    .line 197
    if-eqz p1, :cond_0

    .line 199
    sget v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float/2addr v1, v0

    const/high16 v0, -0x3c900000

    sget v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float/2addr v2, v0

    sget v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float/2addr v4, v0

    sget v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float/2addr v5, v0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->setAABBPX(FFFFFF)V

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    sget v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float/2addr v1, v0

    const/high16 v0, -0x3d740000

    sget v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float/2addr v2, v0

    sget v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float/2addr v4, v0

    sget v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    mul-float/2addr v5, v0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->setAABBPX(FFFFFF)V

    goto :goto_0
.end method
