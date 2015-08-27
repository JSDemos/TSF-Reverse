.class Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;
.super Ljava/lang/Object;
.source "ColorSlider.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorPlane"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;",
        ">;"
    }
.end annotation


# instance fields
.field public colorCode:I

.field public index:I

.field public scale:F

.field public targetScale:F

.field final synthetic this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;


# direct methods
.method public constructor <init>(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;I)V
    .locals 1
    .param p2, "_index"    # I

    .prologue
    const/high16 v0, 0x3f800000

    .line 449
    iput-object p1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->this$0:Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->targetScale:F

    .line 443
    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->scale:F

    .line 445
    const/4 v0, -0x1

    iput v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->colorCode:I

    .line 451
    iput p2, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->index:I

    .line 453
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;)I
    .locals 2
    .param p1, "another"    # Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;

    .prologue
    .line 458
    iget v0, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->scale:F

    iget v1, p1, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->scale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 460
    iget v0, p1, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->scale:F

    iget v1, p0, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->scale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x1

    .line 464
    :goto_0
    return v0

    .line 460
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 464
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;

    invoke-virtual {p0, p1}, Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;->compareTo(Lcom/tsf/shell/widget/cubeclock/setting/ColorSlider$ColorPlane;)I

    move-result v0

    return v0
.end method
