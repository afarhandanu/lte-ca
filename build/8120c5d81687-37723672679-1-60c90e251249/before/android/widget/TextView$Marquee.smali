.class final Landroid/widget/TextView$Marquee;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Marquee"
.end annotation


# static fields
.field private static final greylist-max-o MARQUEE_DELAY:I = 0x4b0

.field private static final greylist-max-o MARQUEE_DELTA_MAX:F = 0.07f

.field private static final greylist-max-o MARQUEE_DP_PER_SECOND:I = 0x1e

.field private static final greylist-max-o MARQUEE_RUNNING:B = 0x2t

.field private static final greylist-max-o MARQUEE_STARTING:B = 0x1t

.field private static final greylist-max-o MARQUEE_STOPPED:B


# instance fields
.field private final greylist-max-o mChoreographer:Landroid/view/Choreographer;

.field private greylist-max-o mFadeStop:F

.field private greylist-max-o mGhostOffset:F

.field private greylist-max-o mGhostStart:F

.field private greylist-max-o mLastAnimationMs:J

.field private greylist-max-o mMaxFadeScroll:F

.field private greylist-max-o mMaxScroll:F

.field private final greylist-max-o mPixelsPerMs:F

.field private greylist-max-o mRepeatLimit:I

.field private greylist-max-o mRestartCallback:Landroid/view/Choreographer$FrameCallback;

.field private greylist-max-o mScroll:F

.field private greylist-max-o mStartCallback:Landroid/view/Choreographer$FrameCallback;

.field private greylist-max-o mStatus:B

.field private greylist-max-o mTickCallback:Landroid/view/Choreographer$FrameCallback;

.field private final greylist-max-o mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChoreographer(Landroid/widget/TextView$Marquee;)Landroid/view/Choreographer;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepeatLimit(Landroid/widget/TextView$Marquee;)I
    .registers 1

    iget p0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatus(Landroid/widget/TextView$Marquee;)B
    .registers 1

    iget-byte p0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastAnimationMs(Landroid/widget/TextView$Marquee;J)V
    .registers 3

    iput-wide p1, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRepeatLimit(Landroid/widget/TextView$Marquee;I)V
    .registers 2

    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStatus(Landroid/widget/TextView$Marquee;B)V
    .registers 2

    iput-byte p1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/widget/TextView;)V
    .registers 4

    .line 16463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16451
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 16470
    new-instance v0, Landroid/widget/TextView$Marquee$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee$1;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    .line 16477
    new-instance v0, Landroid/widget/TextView$Marquee$2;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee$2;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 16486
    new-instance v0, Landroid/widget/TextView$Marquee$3;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee$3;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 16464
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 16465
    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView$Marquee;->mPixelsPerMs:F

    .line 16466
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    .line 16467
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    .line 16468
    return-void
.end method

.method private greylist-max-o resetScroll()V
    .registers 2

    .line 16532
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 16533
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 16534
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 16535
    :cond_10
    return-void
.end method


# virtual methods
.method greylist-max-o getGhostOffset()F
    .registers 2

    .line 16563
    iget v0, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    return v0
.end method

.method greylist-max-o getMaxFadeScroll()F
    .registers 2

    .line 16571
    iget v0, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    return v0
.end method

.method greylist-max-o getScroll()F
    .registers 2

    .line 16567
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    return v0
.end method

.method greylist-max-o isRunning()Z
    .registers 3

    .line 16583
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method greylist-max-o isStopped()Z
    .registers 2

    .line 16587
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method greylist-max-o shouldDrawGhost()Z
    .registers 3

    .line 16579
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v1, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method greylist-max-o shouldDrawLeftFade()Z
    .registers 3

    .line 16575
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v1, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method greylist-max-o start(I)V
    .registers 6

    .line 16538
    if-nez p1, :cond_6

    .line 16539
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 16540
    return-void

    .line 16542
    :cond_6
    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    .line 16543
    iget-object p1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 16544
    if-eqz p1, :cond_5d

    invoke-static {p1}, Landroid/widget/TextView;->-$$Nest$fgetmLayout(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 16545
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 16546
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 16547
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 16548
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 16549
    invoke-static {p1}, Landroid/widget/TextView;->-$$Nest$fgetmLayout(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 16550
    int-to-float v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v0, v2

    .line 16551
    sub-float v3, v1, v0

    add-float/2addr v3, v2

    iput v3, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    .line 16552
    iget v3, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    add-float/2addr v3, v0

    iput v3, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    .line 16553
    add-float/2addr v2, v1

    iput v2, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    .line 16554
    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    .line 16555
    iget v0, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    add-float/2addr v0, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    .line 16557
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 16558
    iget-object p1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16560
    :cond_5d
    return-void
.end method

.method greylist-max-o stop()V
    .registers 3

    .line 16524
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 16525
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16526
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16527
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16528
    invoke-direct {p0}, Landroid/widget/TextView$Marquee;->resetScroll()V

    .line 16529
    return-void
.end method

.method greylist-max-o tick()V
    .registers 6

    .line 16499
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 16500
    return-void

    .line 16503
    :cond_6
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16505
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 16506
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/widget/TextView;->isAggregatedVisible()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 16507
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 16508
    :cond_29
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v1

    .line 16509
    iget-wide v3, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    sub-long v3, v1, v3

    .line 16510
    iput-wide v1, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    .line 16511
    long-to-float v1, v3

    iget v2, p0, Landroid/widget/TextView$Marquee;->mPixelsPerMs:F

    mul-float/2addr v1, v2

    .line 16512
    iget v2, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    add-float/2addr v2, v1

    iput v2, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 16513
    iget v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v2, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_54

    .line 16514
    iget v1, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    iput v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 16515
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    const-wide/16 v3, 0x4b0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    goto :goto_5b

    .line 16517
    :cond_54
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16519
    :goto_5b
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 16521
    :cond_5e
    return-void
.end method
