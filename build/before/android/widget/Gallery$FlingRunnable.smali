.class Landroid/widget/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private greylist-max-o mLastFlingX:I

.field private greylist-max-o mScroller:Landroid/widget/Scroller;

.field final synthetic blacklist this$0:Landroid/widget/Gallery;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScroller(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;
    .registers 1

    iget-object p0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mendFling(Landroid/widget/Gallery$FlingRunnable;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/Gallery;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1480
    iput-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1481
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1482
    return-void
.end method

.method private greylist-max-o endFling(Z)V
    .registers 4

    .line 1522
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1524
    if-eqz p1, :cond_d

    iget-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {p1}, Landroid/widget/Gallery;->-$$Nest$mscrollIntoSlots(Landroid/widget/Gallery;)V

    .line 1525
    :cond_d
    return-void
.end method

.method private greylist-max-o startCommon()V
    .registers 2

    .line 1486
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1487
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 1530
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v0, v0, Landroid/widget/Gallery;->mItemCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 1531
    invoke-direct {p0, v1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1532
    return-void

    .line 1535
    :cond_b
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/widget/Gallery;->-$$Nest$fputmShouldStopFling(Landroid/widget/Gallery;Z)V

    .line 1537
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1538
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 1539
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 1543
    iget v3, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    sub-int/2addr v3, v0

    .line 1546
    if-lez v3, :cond_58

    .line 1548
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v5}, Landroid/widget/Gallery;->-$$Nest$fgetmIsRtl(Landroid/widget/Gallery;)Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/Gallery;->mFirstPosition:I

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v6}, Landroid/widget/Gallery;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    goto :goto_3b

    .line 1549
    :cond_37
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/Gallery;->mFirstPosition:I

    :goto_3b
    invoke-static {v4, v5}, Landroid/widget/Gallery;->-$$Nest$fputmDownTouchPosition(Landroid/widget/Gallery;I)V

    .line 1552
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v4}, Landroid/widget/Gallery;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mPaddingLeft:I
    invoke-static {v5}, Landroid/widget/Gallery;->access$000(Landroid/widget/Gallery;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mPaddingRight:I
    invoke-static {v5}, Landroid/widget/Gallery;->access$100(Landroid/widget/Gallery;)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_95

    .line 1555
    :cond_58
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v4}, Landroid/widget/Gallery;->getChildCount()I

    .line 1556
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v5}, Landroid/widget/Gallery;->-$$Nest$fgetmIsRtl(Landroid/widget/Gallery;)Z

    move-result v5

    if-eqz v5, :cond_6c

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/Gallery;->mFirstPosition:I

    goto :goto_78

    .line 1557
    :cond_6c
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/Gallery;->mFirstPosition:I

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v6}, Landroid/widget/Gallery;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    :goto_78
    invoke-static {v4, v5}, Landroid/widget/Gallery;->-$$Nest$fputmDownTouchPosition(Landroid/widget/Gallery;I)V

    .line 1560
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v4}, Landroid/widget/Gallery;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mPaddingRight:I
    invoke-static {v5}, Landroid/widget/Gallery;->access$200(Landroid/widget/Gallery;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mPaddingLeft:I
    invoke-static {v5}, Landroid/widget/Gallery;->access$300(Landroid/widget/Gallery;)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    neg-int v4, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1563
    :goto_95
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v4, v3}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 1565
    if-eqz v2, :cond_ac

    iget-object v2, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v2}, Landroid/widget/Gallery;->-$$Nest$fgetmShouldStopFling(Landroid/widget/Gallery;)Z

    move-result v2

    if-nez v2, :cond_ac

    .line 1566
    iput v0, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1567
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_af

    .line 1569
    :cond_ac
    invoke-direct {p0, v1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1571
    :goto_af
    return-void
.end method

.method public greylist-max-o startUsingDistance(I)V
    .registers 9

    .line 1503
    if-nez p1, :cond_3

    return-void

    .line 1505
    :cond_3
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1507
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1508
    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v4, p1

    iget-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {p1}, Landroid/widget/Gallery;->-$$Nest$fgetmAnimationDuration(Landroid/widget/Gallery;)I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1509
    iget-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {p1, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    .line 1510
    return-void
.end method

.method public greylist startUsingVelocity(I)V
    .registers 12

    .line 1491
    if-nez p1, :cond_3

    return-void

    .line 1493
    :cond_3
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1495
    if-gez p1, :cond_c

    const v0, 0x7fffffff

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    move v2, v0

    .line 1496
    iput v2, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1497
    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1499
    iget-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {p1, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    .line 1500
    return-void
.end method

.method public greylist-max-o stop(Z)V
    .registers 3

    .line 1513
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1514
    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1515
    return-void
.end method
