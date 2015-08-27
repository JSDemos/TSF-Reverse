.class public final Lcom/tsf/shell/widget/cubeclock/provider/SettingColumns;
.super Ljava/lang/Object;
.source "SettingColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.tsf.shell.widget.cubeclock.provider"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATEDDATE:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "modified DESC"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final MODIFIEDDATE:Ljava/lang/String; = "modified"

.field public static final WIDGETID:Ljava/lang/String; = "widgetid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "content://com.tsf.shell.widget.cubeclock.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tsf/shell/widget/cubeclock/provider/SettingColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method
