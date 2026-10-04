.class Landroid/view/View$TooltipInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TooltipInfo"
.end annotation


# instance fields
.field greylist-max-o mAnchorX:I

.field greylist-max-o mAnchorY:I

.field greylist-max-o mHideTooltipRunnable:Ljava/lang/Runnable;

.field greylist-max-o mHoverSlop:I

.field greylist-max-o mShowTooltipRunnable:Ljava/lang/Runnable;

.field greylist-max-o mTooltipFromLongClick:Z

.field greylist-max-o mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

.field greylist-max-o mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mclearAnchorPos(Landroid/view/View$TooltipInfo;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/View$TooltipInfo;->clearAnchorPos()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAnchorPos(Landroid/view/View$TooltipInfo;Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View$TooltipInfo;->updateAnchorPos(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 5297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/View$TooltipInfo;-><init>()V

    return-void
.end method

.method private greylist-max-o clearAnchorPos()V
    .registers 2

    .line 5355
    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    .line 5356
    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    .line 5357
    return-void
.end method

.method private greylist-max-o updateAnchorPos(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 5340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 5341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 5342
    iget v1, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/view/View$TooltipInfo;->mHoverSlop:I

    if-gt v1, v2, :cond_24

    iget v1, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    sub-int v1, p1, v1

    .line 5343
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/view/View$TooltipInfo;->mHoverSlop:I

    if-gt v1, v2, :cond_24

    .line 5344
    const/4 p1, 0x0

    return p1

    .line 5346
    :cond_24
    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    .line 5347
    iput p1, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    .line 5348
    const/4 p1, 0x1

    return p1
.end method
