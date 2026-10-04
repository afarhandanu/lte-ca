.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$OnGestureListener;,
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnContextClickListener;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o LONG_PRESS:I = 0x2

.field private static final greylist-max-o SHOW_PRESS:I = 0x1

.field private static final greylist-max-o TAP:I = 0x3


# instance fields
.field private greylist-max-o mAlwaysInBiggerTapRegion:Z

.field private greylist mAlwaysInTapRegion:Z

.field private blacklist mAmbiguousGestureMultiplier:F

.field private greylist-max-o mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

.field private greylist-max-o mCurrentDownEvent:Landroid/view/MotionEvent;

.field private blacklist mCurrentMotionEvent:Landroid/view/MotionEvent;

.field private greylist-max-o mDeferConfirmSingleTap:Z

.field private greylist-max-o mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private blacklist mDoubleTapMinTime:I

.field private greylist-max-o mDoubleTapSlopSquare:I

.field private blacklist mDoubleTapTimeout:I

.field private greylist-max-o mDoubleTapTouchSlopSquare:I

.field private greylist-max-o mDownFocusX:F

.field private greylist-max-o mDownFocusY:F

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private blacklist mHasRecordedClassification:Z

.field private greylist-max-o mIgnoreNextUpEvent:Z

.field private greylist-max-o mInContextClick:Z

.field private greylist-max-o mInLongPress:Z

.field private final greylist-max-o mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private greylist-max-o mIsDoubleTapping:Z

.field private greylist-max-o mIsLongpressEnabled:Z

.field private greylist-max-o mLastFocusX:F

.field private greylist-max-o mLastFocusY:F

.field private final greylist mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private greylist-max-o mMaximumFlingVelocity:I

.field private greylist mMinimumFlingVelocity:I

.field private greylist-max-o mPreviousUpEvent:Landroid/view/MotionEvent;

.field private greylist-max-o mStillDown:Z

.field private blacklist mTapTimeout:I

.field private greylist mTouchSlopSquare:I

.field private greylist-max-o mVelocityTracker:Landroid/view/VelocityTracker;

.field private final blacklist mVelocityTrackerStrategy:I

.field private blacklist mViewConfiguration:Landroid/view/ViewConfiguration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentDownEvent(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .registers 1

    iget-object p0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDoubleTapListener(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .registers 1

    iget-object p0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .registers 1

    iget-object p0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStillDown(Landroid/view/GestureDetector;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeferConfirmSingleTap(Landroid/view/GestureDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchLongPress(Landroid/view/GestureDetector;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrecordGestureClassification(Landroid/view/GestureDetector;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 4

    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 406
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 5

    .line 425
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;I)V

    .line 426
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;I)V
    .registers 7

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 308
    nop

    .line 309
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 310
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_15

    :cond_14
    nop

    :goto_15
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 450
    if-eqz p3, :cond_21

    .line 451
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_28

    .line 453
    :cond_21
    new-instance p3, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {p3, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object p3, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 455
    :goto_28
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 456
    instance-of p3, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz p3, :cond_34

    .line 457
    move-object p3, p2

    check-cast p3, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 459
    :cond_34
    instance-of p3, p2, Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz p3, :cond_3d

    .line 460
    check-cast p2, Landroid/view/GestureDetector$OnContextClickListener;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V

    .line 462
    :cond_3d
    iput p4, p0, Landroid/view/GestureDetector;->mVelocityTrackerStrategy:I

    .line 463
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    .line 464
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .registers 5

    .line 482
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 483
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 386
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 369
    return-void
.end method

.method private greylist-max-o cancel()V
    .registers 3

    .line 884
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 885
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 886
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 887
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1e

    .line 888
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 889
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 891
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 892
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 893
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 894
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 895
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 896
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 897
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 898
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 899
    return-void
.end method

.method private greylist-max-o cancelTaps()V
    .registers 3

    .line 902
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 903
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 904
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 906
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 907
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 908
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 909
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 910
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 911
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 912
    return-void
.end method

.method private greylist-max-o dispatchLongPress()V
    .registers 3

    .line 940
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 941
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 942
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 943
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 944
    return-void
.end method

.method private blacklist getLongPressTimeoutMillis()I
    .registers 2

    .line 915
    iget-object v0, p0, Landroid/view/GestureDetector;->mViewConfiguration:Landroid/view/ViewConfiguration;

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 916
    iget-object v0, p0, Landroid/view/GestureDetector;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getLongPressTimeoutMillis()I

    move-result v0

    goto :goto_15

    .line 917
    :cond_11
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    .line 915
    :goto_15
    return v0
.end method

.method private greylist-max-o init(Landroid/content/Context;)V
    .registers 5

    .line 486
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_a9

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 493
    if-nez p1, :cond_39

    .line 495
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p1

    .line 496
    nop

    .line 497
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v0

    .line 499
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 500
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 501
    invoke-static {}, Landroid/view/ViewConfiguration;->getAmbiguousGestureMultiplier()F

    move-result v1

    iput v1, p0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    .line 502
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, p0, Landroid/view/GestureDetector;->mTapTimeout:I

    .line 503
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    iput v1, p0, Landroid/view/GestureDetector;->mDoubleTapTimeout:I

    .line 504
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v1

    iput v1, p0, Landroid/view/GestureDetector;->mDoubleTapMinTime:I

    move v1, v0

    move v0, p1

    goto :goto_9f

    .line 506
    :cond_39
    const-string v0, "GestureDetector#init"

    invoke-static {p1, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    iput-object p1, p0, Landroid/view/GestureDetector;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 508
    iget-object p1, p0, Landroid/view/GestureDetector;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    .line 509
    iget-object v0, p0, Landroid/view/GestureDetector;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v0

    .line 510
    iget-object v1, p0, Landroid/view/GestureDetector;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 511
    iget-object v2, p0, Landroid/view/GestureDetector;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 512
    iget-object v2, p0, Landroid/view/GestureDetector;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 513
    iget-object v2, p0, Landroid/view/GestureDetector;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result v2

    iput v2, p0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    .line 514
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 515
    iget-object v2, p0, Landroid/view/GestureDetector;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getTapTimeoutMillis()I

    move-result v2

    iput v2, p0, Landroid/view/GestureDetector;->mTapTimeout:I

    .line 516
    iget-object v2, p0, Landroid/view/GestureDetector;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDoubleTapTimeoutMillis()I

    move-result v2

    iput v2, p0, Landroid/view/GestureDetector;->mDoubleTapTimeout:I

    .line 517
    iget-object v2, p0, Landroid/view/GestureDetector;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDoubleTapMinTimeMillis()I

    move-result v2

    iput v2, p0, Landroid/view/GestureDetector;->mDoubleTapMinTime:I

    goto :goto_9f

    .line 519
    :cond_8d
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    iput v2, p0, Landroid/view/GestureDetector;->mTapTimeout:I

    .line 520
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    iput v2, p0, Landroid/view/GestureDetector;->mDoubleTapTimeout:I

    .line 521
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v2

    iput v2, p0, Landroid/view/GestureDetector;->mDoubleTapMinTime:I

    .line 524
    :goto_9f
    mul-int/2addr p1, p1

    iput p1, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 525
    mul-int/2addr v0, v0

    iput v0, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 526
    mul-int/2addr v1, v1

    iput v1, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 527
    return-void

    .line 487
    :cond_a9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "OnGestureListener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 10

    .line 922
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 923
    return v1

    .line 926
    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 927
    iget p2, p0, Landroid/view/GestureDetector;->mDoubleTapTimeout:I

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-gtz p2, :cond_4e

    iget p2, p0, Landroid/view/GestureDetector;->mDoubleTapMinTime:I

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-gez p2, :cond_1e

    goto :goto_4e

    .line 931
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p2, v0

    .line 932
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    sub-int/2addr v0, p3

    .line 933
    nop

    .line 934
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    const/4 p3, 0x1

    if-eqz p1, :cond_40

    move p1, p3

    goto :goto_41

    :cond_40
    move p1, v1

    .line 935
    :goto_41
    if-eqz p1, :cond_45

    move p1, v1

    goto :goto_47

    :cond_45
    iget p1, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 936
    :goto_47
    mul-int/2addr p2, p2

    mul-int/2addr v0, v0

    add-int/2addr p2, v0

    if-ge p2, p1, :cond_4d

    move v1, p3

    :cond_4d
    return v1

    .line 928
    :cond_4e
    :goto_4e
    return v1
.end method

.method private blacklist recordGestureClassification(I)V
    .registers 3

    .line 947
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/GestureDetector;->recordGestureClassification(IF)V

    .line 948
    return-void
.end method

.method private blacklist recordGestureClassification(IF)V
    .registers 15

    .line 953
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    if-eq p1, v0, :cond_8

    .line 955
    return-void

    .line 957
    :cond_8
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_84

    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_12

    goto :goto_84

    .line 962
    :cond_12
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_44

    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_44

    .line 964
    iget-object p2, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v0, v0

    const/16 v2, 0x3e8

    invoke-virtual {p2, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 965
    iget-object p2, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    .line 966
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-double v2, v0

    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 967
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p2

    float-to-double v4, p2

    .line 966
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p2, v2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    move v7, p2

    goto :goto_45

    .line 969
    :cond_44
    move v7, p2

    :goto_45
    nop

    .line 971
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 973
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object p2, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v4, v8

    long-to-int v5, v4

    iget-object p2, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 974
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-double v8, p2

    iget-object p2, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 975
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-double v10, p2

    .line 974
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v6, v8

    .line 969
    const/16 v2, 0xb1

    move v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIFF)V

    .line 977
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 978
    return-void

    .line 959
    :cond_84
    :goto_84
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 960
    return-void
.end method


# virtual methods
.method public whitelist isLongpressEnabled()Z
    .registers 2

    .line 567
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 853
    iget-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 854
    iget-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 857
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 858
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_4e

    goto :goto_4d

    .line 873
    :pswitch_1a
    iget-boolean p1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz p1, :cond_4d

    if-eq v0, v3, :cond_22

    if-ne v0, v4, :cond_4d

    .line 875
    :cond_22
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 876
    iput-boolean v5, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    goto :goto_4d

    .line 860
    :pswitch_27
    iget-object v2, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v2, :cond_4d

    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-nez v2, :cond_4d

    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v2, :cond_4d

    if-eq v0, v3, :cond_37

    if-ne v0, v4, :cond_4d

    .line 863
    :cond_37
    iget-object v0, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnContextClickListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 864
    iput-boolean v5, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 865
    iget-object p1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 866
    iget-object p1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 867
    return v5

    .line 880
    :cond_4d
    :goto_4d
    return v1

    :pswitch_data_4e
    .packed-switch 0xb
        :pswitch_27
        :pswitch_1a
    .end packed-switch
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 22

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    .line 580
    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 583
    :cond_e
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 585
    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_1b

    .line 586
    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 588
    :cond_1b
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 590
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_2d

    .line 591
    iget v4, v0, Landroid/view/GestureDetector;->mVelocityTrackerStrategy:I

    invoke-static {v4}, Landroid/view/VelocityTracker;->obtain(I)Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 593
    :cond_2d
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 595
    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ne v2, v4, :cond_3a

    move v6, v5

    goto :goto_3b

    :cond_3a
    move v6, v3

    .line 597
    :goto_3b
    if-eqz v6, :cond_42

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    goto :goto_43

    :cond_42
    const/4 v7, -0x1

    .line 598
    :goto_43
    nop

    .line 599
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_4e

    move v8, v5

    goto :goto_4f

    :cond_4e
    move v8, v3

    .line 602
    :goto_4f
    nop

    .line 603
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 604
    const/4 v10, 0x0

    move v11, v3

    move v12, v10

    move v13, v12

    :goto_58
    if-ge v11, v9, :cond_6a

    .line 605
    if-ne v7, v11, :cond_5d

    goto :goto_67

    .line 606
    :cond_5d
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    add-float/2addr v12, v14

    .line 607
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    add-float/2addr v13, v14

    .line 604
    :goto_67
    add-int/lit8 v11, v11, 0x1

    goto :goto_58

    .line 609
    :cond_6a
    if-eqz v6, :cond_6f

    add-int/lit8 v6, v9, -0x1

    goto :goto_70

    :cond_6f
    move v6, v9

    .line 610
    :goto_70
    int-to-float v6, v6

    div-float/2addr v12, v6

    .line 611
    div-float/2addr v13, v6

    .line 613
    nop

    .line 615
    const/16 v6, 0x3e8

    const/4 v7, 0x3

    const/4 v11, 0x2

    packed-switch v2, :pswitch_data_34e

    :pswitch_7b
    goto/16 :goto_33f

    .line 624
    :pswitch_7d
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 625
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 629
    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v6, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 630
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 631
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 632
    iget-object v5, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    .line 633
    iget-object v6, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    .line 634
    move v6, v3

    :goto_a2
    if-ge v6, v9, :cond_c7

    .line 635
    if-ne v6, v2, :cond_a7

    goto :goto_c4

    .line 637
    :cond_a7
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 638
    iget-object v8, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    mul-float/2addr v8, v5

    .line 639
    iget-object v11, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    mul-float/2addr v7, v4

    .line 641
    add-float/2addr v8, v7

    .line 642
    cmpg-float v7, v8, v10

    if-gez v7, :cond_c4

    .line 643
    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 644
    goto :goto_c7

    .line 634
    :cond_c4
    :goto_c4
    add-int/lit8 v6, v6, 0x1

    goto :goto_a2

    .line 647
    :cond_c7
    :goto_c7
    goto/16 :goto_33f

    .line 617
    :pswitch_c9
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 618
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 620
    invoke-direct {v0}, Landroid/view/GestureDetector;->cancelTaps()V

    .line 621
    goto/16 :goto_33f

    .line 834
    :pswitch_d6
    invoke-direct {v0}, Landroid/view/GestureDetector;->cancel()V

    goto/16 :goto_33f

    .line 699
    :pswitch_db
    iget-boolean v2, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v2, :cond_33f

    iget-boolean v2, v0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v2, :cond_e5

    .line 700
    goto/16 :goto_33f

    .line 703
    :cond_e5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v2

    .line 704
    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    .line 706
    iget v6, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    sub-float/2addr v6, v12

    .line 707
    iget v9, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    sub-float/2addr v9, v13

    .line 708
    iget-boolean v10, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v10, :cond_107

    .line 710
    invoke-direct {v0, v11}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 712
    iget-object v6, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v6, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v6, v3

    move/from16 v19, v4

    goto/16 :goto_1be

    .line 713
    :cond_107
    iget-boolean v10, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v10, :cond_197

    .line 714
    iget v10, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    sub-float v10, v12, v10

    float-to-int v10, v10

    .line 715
    iget v15, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    sub-float v15, v13, v15

    float-to-int v15, v15

    .line 716
    mul-int/2addr v10, v10

    mul-int/2addr v15, v15

    add-int/2addr v10, v15

    .line 717
    if-eqz v8, :cond_11c

    move v15, v3

    goto :goto_11e

    :cond_11c
    iget v15, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 719
    :goto_11e
    if-ne v2, v5, :cond_123

    move/from16 v16, v5

    goto :goto_125

    :cond_123
    move/from16 v16, v3

    .line 721
    :goto_125
    if-eqz v4, :cond_12c

    if-eqz v16, :cond_12c

    move/from16 v16, v5

    goto :goto_12e

    :cond_12c
    move/from16 v16, v3

    .line 723
    :goto_12e
    if-eqz v16, :cond_15f

    .line 725
    if-le v10, v15, :cond_154

    .line 731
    iget-object v5, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 732
    iget-object v5, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v14, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 733
    invoke-virtual {v14, v11, v7, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    .line 737
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v17

    .line 738
    invoke-direct {v0}, Landroid/view/GestureDetector;->getLongPressTimeoutMillis()I

    move-result v11

    int-to-float v11, v11

    iget v7, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    mul-float/2addr v11, v7

    move/from16 v19, v4

    float-to-long v3, v11

    add-long v3, v17, v3

    .line 732
    invoke-virtual {v5, v14, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_156

    .line 725
    :cond_154
    move/from16 v19, v4

    .line 745
    :goto_156
    int-to-float v3, v15

    iget v4, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    iget v5, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    mul-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v15, v3

    goto :goto_161

    .line 723
    :cond_15f
    move/from16 v19, v4

    .line 748
    :goto_161
    if-le v10, v15, :cond_18a

    .line 749
    const/4 v3, 0x5

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 751
    iget-object v3, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v4, v1, v6, v9}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    .line 752
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 753
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 754
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 755
    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 756
    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 757
    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    move v6, v3

    goto :goto_18b

    .line 748
    :cond_18a
    const/4 v6, 0x0

    .line 759
    :goto_18b
    if-eqz v8, :cond_18f

    const/4 v3, 0x0

    goto :goto_191

    :cond_18f
    iget v3, v0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 760
    :goto_191
    if-le v10, v3, :cond_196

    .line 761
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 763
    :cond_196
    goto :goto_1be

    :cond_197
    move/from16 v19, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-gez v3, :cond_1ae

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1ac

    goto :goto_1ae

    :cond_1ac
    const/4 v6, 0x0

    goto :goto_1be

    .line 764
    :cond_1ae
    :goto_1ae
    const/4 v3, 0x5

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 765
    iget-object v3, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v4, v1, v6, v9}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v6

    .line 766
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 767
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 769
    :goto_1be
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1c4

    const/16 v16, 0x1

    goto :goto_1c6

    :cond_1c4
    const/16 v16, 0x0

    .line 771
    :goto_1c6
    if-eqz v16, :cond_1dc

    if-eqz v19, :cond_1dc

    .line 772
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 773
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 774
    const/4 v4, 0x4

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 773
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 838
    :cond_1dc
    move v2, v6

    goto/16 :goto_340

    .line 782
    :pswitch_1df
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 783
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 784
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v3, :cond_1f7

    .line 786
    const/4 v5, 0x2

    invoke-direct {v0, v5}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 788
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v3, v7

    goto/16 :goto_26a

    .line 789
    :cond_1f7
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v3, :cond_204

    .line 790
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 791
    iput-boolean v7, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_269

    .line 792
    :cond_204
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v3, :cond_224

    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v3, :cond_224

    .line 793
    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 795
    iget-object v3, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 796
    iget-boolean v4, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    if-eqz v4, :cond_26a

    iget-object v4, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v4, :cond_26a

    .line 797
    iget-object v4, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v4, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_26a

    .line 799
    :cond_224
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v3, :cond_269

    .line 801
    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 802
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 803
    iget v8, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v8, v8

    invoke-virtual {v3, v6, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 804
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    .line 805
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    .line 807
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v8, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v8, v8

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_253

    .line 808
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v8, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v8, v8

    cmpl-float v5, v5, v8

    if-lez v5, :cond_269

    .line 809
    :cond_253
    float-to-double v8, v3

    float-to-double v10, v6

    .line 811
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v5, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v5, v8

    .line 809
    invoke-direct {v0, v4, v5}, Landroid/view/GestureDetector;->recordGestureClassification(IF)V

    .line 812
    iget-object v4, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v5, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v4, v5, v1, v3, v6}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    goto :goto_26a

    .line 815
    :cond_269
    :goto_269
    const/4 v3, 0x0

    :cond_26a
    :goto_26a
    iget-object v4, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_273

    .line 816
    iget-object v4, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 819
    :cond_273
    iput-object v2, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 820
    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_281

    .line 823
    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 824
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 826
    :cond_281
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 827
    iput-boolean v7, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 828
    iput-boolean v7, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 829
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 830
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 831
    move v2, v3

    goto/16 :goto_340

    .line 650
    :pswitch_297
    iget-object v2, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v2, :cond_2df

    .line 651
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 652
    if-eqz v2, :cond_2a9

    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 653
    :cond_2a9
    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_2d6

    iget-object v3, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_2d6

    if-eqz v2, :cond_2d6

    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v3, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 655
    invoke-direct {v0, v2, v3, v1}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2d6

    .line 657
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 658
    const/4 v5, 0x2

    invoke-direct {v0, v5}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 661
    iget-object v2, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v7, 0x0

    or-int/2addr v2, v7

    .line 663
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_2e0

    .line 666
    :cond_2d6
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget v3, v0, Landroid/view/GestureDetector;->mDoubleTapTimeout:I

    int-to-long v3, v3

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 670
    :cond_2df
    const/4 v2, 0x0

    :goto_2e0
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 671
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 672
    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_2f1

    .line 673
    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 675
    :cond_2f1
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 676
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 677
    iput-boolean v5, v0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 678
    iput-boolean v5, v0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 679
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 680
    iput-boolean v7, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 681
    iput-boolean v7, v0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 683
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    if-eqz v3, :cond_327

    .line 684
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 685
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 686
    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v5, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 690
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    .line 691
    invoke-direct {v0}, Landroid/view/GestureDetector;->getLongPressTimeoutMillis()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v5, v8

    .line 685
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 693
    :cond_327
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 694
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iget v6, v0, Landroid/view/GestureDetector;->mTapTimeout:I

    int-to-long v8, v6

    add-long/2addr v4, v8

    .line 693
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 695
    iget-object v3, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 696
    goto :goto_340

    .line 838
    :cond_33f
    :goto_33f
    const/4 v2, 0x0

    :goto_340
    if-nez v2, :cond_34c

    iget-object v3, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_34c

    .line 839
    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 841
    :cond_34c
    return v2

    nop

    :pswitch_data_34e
    .packed-switch 0x0
        :pswitch_297
        :pswitch_1df
        :pswitch_db
        :pswitch_d6
        :pswitch_7b
        :pswitch_c9
        :pswitch_7d
    .end packed-switch
.end method

.method public whitelist setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V
    .registers 2

    .line 547
    iput-object p1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    .line 548
    return-void
.end method

.method public whitelist setIsLongpressEnabled(Z)V
    .registers 2

    .line 560
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 561
    return-void
.end method

.method public whitelist setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 2

    .line 537
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 538
    return-void
.end method
