.class public Lcom/tsf/shell/widget/cubeclock/MainCubes;
.super Lcom/censivn/C3DEngine/api/core/VObject3dContainer;
.source "MainCubes.java"


# static fields
.field public static final MODE_CALENDAR:I = 0x1

.field public static final MODE_CLOCK:I


# instance fields
.field public CURRECT_MODE:I

.field private MMDD:Z

.field private cube:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

.field private cube2:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

.field private cube3:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

.field private cube4:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

.field private dat:I

.field private date:Ljava/util/Date;

.field private day:I

.field private hou:I

.field private hourAdapter:Lcom/tsf/shell/widget/cubeclock/HourCubeAdapter;

.field private iAM:I

.field private mAmpmAdapter:Lcom/tsf/shell/widget/cubeclock/ampmAdapter;

.field private mDaysAdapter:Lcom/tsf/shell/widget/cubeclock/DaysAdapter;

.field private mMonthAdapter:Lcom/tsf/shell/widget/cubeclock/MonthAdapter;

.field private mWeekAdapter:Lcom/tsf/shell/widget/cubeclock/weekAdapter;

.field private min:I

.field private minAdapter:Lcom/tsf/shell/widget/cubeclock/MinCubeAdapter;

.field private mon:I

.field private sec:I

.field private secAdapter:Lcom/tsf/shell/widget/cubeclock/MinCubeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/censivn/C3DEngine/api/core/VObject3dContainer;-><init>()V

    .line 33
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->MMDD:Z

    .line 278
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->date:Ljava/util/Date;

    .line 38
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mObjectManager:Lcom/censivn/C3DEngine/api/core/VObjectManager;

    invoke-virtual {v3, p0}, Lcom/censivn/C3DEngine/api/core/VObjectManager;->addObject(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 40
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->scale()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v3

    sget v4, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/Number3d;->x:F

    .line 41
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->scale()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v3

    sget v4, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/Number3d;->y:F

    .line 42
    invoke-virtual {p0}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->scale()Lcom/censivn/C3DEngine/api/element/Number3d;

    move-result-object v3

    sget v4, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->SD2HDScale:F

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/Number3d;->z:F

    .line 46
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->getSystemDateFormatMD()Z

    move-result v3

    iput-boolean v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->MMDD:Z

    .line 50
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    const v4, 0x7f020009

    invoke-static {v3, v4}, Lcom/tsf/shell/widget/cubeclock/Utils;->loadResourceFitSize(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, "b":Landroid/graphics/Bitmap;
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mVTextureManager:Lcom/censivn/C3DEngine/api/core/VTextureManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/censivn/C3DEngine/api/core/VTextureManager;->createTexture(Landroid/graphics/Bitmap;Z)Lcom/censivn/C3DEngine/api/element/TextureElement;

    move-result-object v2

    .line 54
    .local v2, "shadowTexture":Lcom/censivn/C3DEngine/api/element/TextureElement;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    new-instance v1, Lcom/censivn/C3DEngine/api/primitives/VRectangle;

    const/high16 v3, 0x44160000

    sget v4, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->EngineScale:F

    div-float/2addr v3, v4

    const/high16 v4, 0x43800000

    sget v5, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->EngineScale:F

    div-float/2addr v4, v5

    invoke-direct {v1, v3, v4}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;-><init>(FF)V

    .line 58
    .local v1, "shadow":Lcom/censivn/C3DEngine/api/primitives/VRectangle;
    invoke-virtual {v1}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    const/high16 v4, 0x41800000

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->x:F

    .line 59
    invoke-virtual {v1}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    const/high16 v4, -0x3e800000

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->y:F

    .line 60
    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->alpha(I)V

    .line 62
    invoke-virtual {v1}, Lcom/censivn/C3DEngine/api/primitives/VRectangle;->textures()Lcom/censivn/C3DEngine/api/core/VTextureList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/censivn/C3DEngine/api/core/VTextureList;->addElement(Lcom/censivn/C3DEngine/api/element/TextureElement;)Lcom/censivn/C3DEngine/api/element/TextureDescription;

    .line 64
    invoke-virtual {p0, v1}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->addChild(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 66
    new-instance v3, Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-direct {v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;-><init>()V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    .line 67
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-virtual {v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    const/high16 v4, -0x3cb40000

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->x:F

    .line 69
    new-instance v3, Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-direct {v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;-><init>()V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube2:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    .line 70
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube2:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-virtual {v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    const/high16 v4, -0x3d780000

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->x:F

    .line 72
    new-instance v3, Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-direct {v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;-><init>()V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube3:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    .line 73
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube3:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-virtual {v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    const/high16 v4, 0x42880000

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->x:F

    .line 75
    new-instance v3, Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-direct {v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;-><init>()V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube4:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    .line 76
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube4:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-virtual {v3}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->position()Lcom/censivn/C3DEngine/api/element/PositionNumber3d;

    move-result-object v3

    const/high16 v4, 0x434c0000

    iput v4, v3, Lcom/censivn/C3DEngine/api/element/PositionNumber3d;->x:F

    .line 78
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-virtual {p0, v3}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->addChild(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 79
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube4:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-virtual {p0, v3}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->addChild(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 81
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube2:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-virtual {p0, v3}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->addChild(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 82
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube3:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-virtual {p0, v3}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->addChild(Lcom/censivn/C3DEngine/api/core/VObject3d;)V

    .line 84
    new-instance v3, Lcom/tsf/shell/widget/cubeclock/HourCubeAdapter;

    invoke-direct {v3}, Lcom/tsf/shell/widget/cubeclock/HourCubeAdapter;-><init>()V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->hourAdapter:Lcom/tsf/shell/widget/cubeclock/HourCubeAdapter;

    .line 86
    new-instance v3, Lcom/tsf/shell/widget/cubeclock/MinCubeAdapter;

    invoke-direct {v3}, Lcom/tsf/shell/widget/cubeclock/MinCubeAdapter;-><init>()V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->minAdapter:Lcom/tsf/shell/widget/cubeclock/MinCubeAdapter;

    .line 88
    new-instance v3, Lcom/tsf/shell/widget/cubeclock/MinCubeAdapter;

    invoke-direct {v3}, Lcom/tsf/shell/widget/cubeclock/MinCubeAdapter;-><init>()V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->secAdapter:Lcom/tsf/shell/widget/cubeclock/MinCubeAdapter;

    .line 90
    new-instance v3, Lcom/tsf/shell/widget/cubeclock/DaysAdapter;

    invoke-direct {v3}, Lcom/tsf/shell/widget/cubeclock/DaysAdapter;-><init>()V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mDaysAdapter:Lcom/tsf/shell/widget/cubeclock/DaysAdapter;

    .line 92
    new-instance v3, Lcom/tsf/shell/widget/cubeclock/weekAdapter;

    invoke-direct {v3}, Lcom/tsf/shell/widget/cubeclock/weekAdapter;-><init>()V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mWeekAdapter:Lcom/tsf/shell/widget/cubeclock/weekAdapter;

    .line 94
    new-instance v3, Lcom/tsf/shell/widget/cubeclock/MonthAdapter;

    invoke-direct {v3}, Lcom/tsf/shell/widget/cubeclock/MonthAdapter;-><init>()V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mMonthAdapter:Lcom/tsf/shell/widget/cubeclock/MonthAdapter;

    .line 96
    new-instance v3, Lcom/tsf/shell/widget/cubeclock/ampmAdapter;

    invoke-direct {v3}, Lcom/tsf/shell/widget/cubeclock/ampmAdapter;-><init>()V

    iput-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mAmpmAdapter:Lcom/tsf/shell/widget/cubeclock/ampmAdapter;

    .line 98
    iget-object v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube4:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v4, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mAmpmAdapter:Lcom/tsf/shell/widget/cubeclock/ampmAdapter;

    sget-object v5, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mAmpmTexture:Lcom/tsf/shell/widget/cubeclock/ampmTexture;

    invoke-virtual {v3, v4, v5}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->setAdapter(Lcom/tsf/shell/widget/cubeclock/CubeAdapter;Lcom/tsf/shell/widget/cubeclock/CubeTexture;)V

    .line 100
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->getMode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->selectMode(I)V

    .line 102
    return-void
.end method

.method private getMode()I
    .locals 10

    .prologue
    .line 106
    sget-object v1, Lcom/tsf/shell/widget/cubeclock/provider/SettingColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 108
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "widgetid = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->AppWidgetId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "selection":Ljava/lang/String;
    const-string v5, "modified DESC"

    .line 112
    .local v5, "sortOrder":Ljava/lang/String;
    const/4 v9, 0x0

    .line 114
    .local v9, "mode":I
    const/4 v6, 0x0

    .line 118
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    if-eqz v6, :cond_0

    .line 122
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "mode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 126
    .local v8, "index":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "LoadMODE:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v8    # "index":I
    :cond_0
    if-eqz v6, :cond_1

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_1
    :goto_0
    return v9

    .line 134
    :catch_0
    move-exception v7

    .line 136
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    if-eqz v6, :cond_1

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 138
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 140
    if-eqz v6, :cond_2

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_2
    throw v0
.end method

.method private getSystemDateFormatMD()Z
    .locals 4

    .prologue
    .line 236
    sget-object v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "format":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const-string v2, "System format is Empty"

    invoke-static {v2}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 244
    sget-object v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 246
    .local v0, "dateFormat":Ljava/text/DateFormat;
    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v1

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pattern String:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 255
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSystemDateFormatMD :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 257
    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "M"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 259
    const/4 v2, 0x0

    .line 263
    :goto_1
    return v2

    .line 252
    :cond_0
    const-string v2, "System format not Empty"

    invoke-static {v2}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private saveMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 153
    sget-object v3, Lcom/tsf/shell/widget/cubeclock/provider/SettingColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 155
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "widgetid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->AppWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "selection":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v1, "mContentValues":Landroid/content/ContentValues;
    const-string v4, "mode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    sget-object v4, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1    # "mContentValues":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private selectCalendarMode()V
    .locals 3

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->getSystemDateFormatMD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->MMDD:Z

    .line 219
    iget-boolean v0, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->MMDD:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mMonthAdapter:Lcom/tsf/shell/widget/cubeclock/MonthAdapter;

    sget-object v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mNumberTexture:Lcom/tsf/shell/widget/cubeclock/NumberTexture;

    invoke-virtual {v0, v1, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->setAdapter(Lcom/tsf/shell/widget/cubeclock/CubeAdapter;Lcom/tsf/shell/widget/cubeclock/CubeTexture;)V

    .line 222
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube2:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mDaysAdapter:Lcom/tsf/shell/widget/cubeclock/DaysAdapter;

    sget-object v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mNumberTexture:Lcom/tsf/shell/widget/cubeclock/NumberTexture;

    invoke-virtual {v0, v1, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->setAdapter(Lcom/tsf/shell/widget/cubeclock/CubeAdapter;Lcom/tsf/shell/widget/cubeclock/CubeTexture;)V

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube3:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mWeekAdapter:Lcom/tsf/shell/widget/cubeclock/weekAdapter;

    sget-object v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mWeekTexture:Lcom/tsf/shell/widget/cubeclock/WeekTexture;

    invoke-virtual {v0, v1, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->setAdapter(Lcom/tsf/shell/widget/cubeclock/CubeAdapter;Lcom/tsf/shell/widget/cubeclock/CubeTexture;)V

    .line 232
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube2:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mMonthAdapter:Lcom/tsf/shell/widget/cubeclock/MonthAdapter;

    sget-object v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mNumberTexture:Lcom/tsf/shell/widget/cubeclock/NumberTexture;

    invoke-virtual {v0, v1, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->setAdapter(Lcom/tsf/shell/widget/cubeclock/CubeAdapter;Lcom/tsf/shell/widget/cubeclock/CubeTexture;)V

    .line 227
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mDaysAdapter:Lcom/tsf/shell/widget/cubeclock/DaysAdapter;

    sget-object v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mNumberTexture:Lcom/tsf/shell/widget/cubeclock/NumberTexture;

    invoke-virtual {v0, v1, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->setAdapter(Lcom/tsf/shell/widget/cubeclock/CubeAdapter;Lcom/tsf/shell/widget/cubeclock/CubeTexture;)V

    goto :goto_0
.end method

.method private selectClockMode()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->hourAdapter:Lcom/tsf/shell/widget/cubeclock/HourCubeAdapter;

    sget-object v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mNumberTexture:Lcom/tsf/shell/widget/cubeclock/NumberTexture;

    invoke-virtual {v0, v1, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->setAdapter(Lcom/tsf/shell/widget/cubeclock/CubeAdapter;Lcom/tsf/shell/widget/cubeclock/CubeTexture;)V

    .line 210
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube2:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->minAdapter:Lcom/tsf/shell/widget/cubeclock/MinCubeAdapter;

    sget-object v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mNumberTexture:Lcom/tsf/shell/widget/cubeclock/NumberTexture;

    invoke-virtual {v0, v1, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->setAdapter(Lcom/tsf/shell/widget/cubeclock/CubeAdapter;Lcom/tsf/shell/widget/cubeclock/CubeTexture;)V

    .line 211
    iget-object v0, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube3:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    iget-object v1, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->secAdapter:Lcom/tsf/shell/widget/cubeclock/MinCubeAdapter;

    sget-object v2, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mNumberTexture:Lcom/tsf/shell/widget/cubeclock/NumberTexture;

    invoke-virtual {v0, v1, v2}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->setAdapter(Lcom/tsf/shell/widget/cubeclock/CubeAdapter;Lcom/tsf/shell/widget/cubeclock/CubeTexture;)V

    .line 213
    return-void
.end method


# virtual methods
.method public refreshAll(JZ)V
    .locals 11
    .param p1, "now"    # J
    .param p3, "all"    # Z

    .prologue
    .line 282
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->date:Ljava/util/Date;

    invoke-virtual {v8, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 284
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->CURRECT_MODE:I

    packed-switch v8, :pswitch_data_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 288
    :pswitch_0
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->date:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getMinutes()I

    move-result v5

    .line 290
    .local v5, "n_min":I
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->date:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 292
    .local v3, "n_hou":I
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->date:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getSeconds()I

    move-result v7

    .line 296
    .local v7, "n_sec":I
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->min:I

    if-ne v8, v5, :cond_1

    if-eqz p3, :cond_2

    .line 298
    :cond_1
    iput v5, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->min:I

    .line 300
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->minAdapter:Lcom/tsf/shell/widget/cubeclock/MinCubeAdapter;

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->min:I

    const/16 v10, 0x320

    invoke-virtual {v8, v9, v10}, Lcom/tsf/shell/widget/cubeclock/MinCubeAdapter;->setCubeIndex(II)V

    .line 304
    :cond_2
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->sec:I

    if-ne v8, v7, :cond_3

    if-eqz p3, :cond_4

    .line 306
    :cond_3
    iput v7, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->sec:I

    .line 308
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->secAdapter:Lcom/tsf/shell/widget/cubeclock/MinCubeAdapter;

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->sec:I

    const/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10}, Lcom/tsf/shell/widget/cubeclock/MinCubeAdapter;->setCubeIndex(II)V

    .line 312
    :cond_4
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->hou:I

    if-ne v8, v3, :cond_5

    if-eqz p3, :cond_6

    .line 314
    :cond_5
    iput v3, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->hou:I

    .line 316
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->hourAdapter:Lcom/tsf/shell/widget/cubeclock/HourCubeAdapter;

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->hou:I

    const/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10}, Lcom/tsf/shell/widget/cubeclock/HourCubeAdapter;->setCubeIndex(II)V

    .line 320
    :cond_6
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->hou:I

    const/16 v9, 0xc

    if-lt v8, v9, :cond_8

    const/4 v4, 0x0

    .line 322
    .local v4, "n_iAM":I
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "==============hou:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->hou:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tsf/shell/widget/cubeclock/Log;->e(Ljava/lang/String;)V

    .line 324
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->iAM:I

    if-ne v8, v4, :cond_7

    if-eqz p3, :cond_0

    .line 326
    :cond_7
    iput v4, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->iAM:I

    .line 328
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mAmpmAdapter:Lcom/tsf/shell/widget/cubeclock/ampmAdapter;

    const/16 v9, 0x384

    invoke-virtual {v8, v4, v9}, Lcom/tsf/shell/widget/cubeclock/ampmAdapter;->setCubeIndex(II)V

    goto :goto_0

    .line 320
    .end local v4    # "n_iAM":I
    :cond_8
    const/4 v4, 0x1

    goto :goto_1

    .line 336
    .end local v3    # "n_hou":I
    .end local v5    # "n_min":I
    .end local v7    # "n_sec":I
    :pswitch_1
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->date:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getMonth()I

    move-result v6

    .line 338
    .local v6, "n_mon":I
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->date:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getDate()I

    move-result v1

    .line 340
    .local v1, "n_dat":I
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->date:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getDay()I

    move-result v2

    .line 346
    .local v2, "n_day":I
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mon:I

    if-ne v8, v6, :cond_9

    if-eqz p3, :cond_a

    .line 348
    :cond_9
    iput v6, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mon:I

    .line 350
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mMonthAdapter:Lcom/tsf/shell/widget/cubeclock/MonthAdapter;

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mon:I

    const/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10}, Lcom/tsf/shell/widget/cubeclock/MonthAdapter;->setCubeIndex(II)V

    .line 353
    :cond_a
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->dat:I

    if-ne v8, v1, :cond_b

    if-eqz p3, :cond_c

    .line 355
    :cond_b
    iput v1, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->dat:I

    .line 357
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mDaysAdapter:Lcom/tsf/shell/widget/cubeclock/DaysAdapter;

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->dat:I

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0x320

    invoke-virtual {v8, v9, v10}, Lcom/tsf/shell/widget/cubeclock/DaysAdapter;->setCubeIndex(II)V

    .line 360
    :cond_c
    iget v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->day:I

    if-ne v8, v2, :cond_d

    if-eqz p3, :cond_e

    .line 362
    :cond_d
    iput v2, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->day:I

    .line 364
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mWeekAdapter:Lcom/tsf/shell/widget/cubeclock/weekAdapter;

    iget v9, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->day:I

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10}, Lcom/tsf/shell/widget/cubeclock/weekAdapter;->setCubeIndex(II)V

    .line 368
    :cond_e
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->cube4:Lcom/tsf/shell/widget/cubeclock/CubeContainer;

    invoke-virtual {v8}, Lcom/tsf/shell/widget/cubeclock/CubeContainer;->getCubeIndex()I

    move-result v0

    .line 370
    .local v0, "index":I
    const/4 v8, 0x3

    if-ne v0, v8, :cond_f

    if-eqz p3, :cond_0

    .line 372
    :cond_f
    iget-object v8, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->mAmpmAdapter:Lcom/tsf/shell/widget/cubeclock/ampmAdapter;

    const/4 v9, 0x3

    const/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10}, Lcom/tsf/shell/widget/cubeclock/ampmAdapter;->setCubeIndex(II)V

    goto/16 :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public selectMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->CURRECT_MODE:I

    .line 181
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->CURRECT_MODE:I

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/MainCubes;->CURRECT_MODE:I

    invoke-direct {p0, v0}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->saveMode(I)V

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->refreshAll(JZ)V

    .line 205
    return-void

    .line 185
    :pswitch_0
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mUpdateTimer:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->setDelayTime(I)V

    .line 187
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->selectClockMode()V

    goto :goto_0

    .line 193
    :pswitch_1
    sget-object v0, Lcom/tsf/shell/widget/cubeclock/ClockWidget;->mUpdateTimer:Lcom/tsf/shell/widget/cubeclock/UpdateTimer;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/tsf/shell/widget/cubeclock/UpdateTimer;->setDelayTime(I)V

    .line 195
    invoke-direct {p0}, Lcom/tsf/shell/widget/cubeclock/MainCubes;->selectCalendarMode()V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
