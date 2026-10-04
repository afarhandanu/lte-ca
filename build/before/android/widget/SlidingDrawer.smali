.class public Landroid/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingDrawer$DrawerToggler;,
        Landroid/widget/SlidingDrawer$OnDrawerScrollListener;,
        Landroid/widget/SlidingDrawer$OnDrawerCloseListener;,
        Landroid/widget/SlidingDrawer$OnDrawerOpenListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o ANIMATION_FRAME_DURATION:I = 0x10

.field private static final greylist-max-o COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final greylist-max-o EXPANDED_FULL_OPEN:I = -0x2711

.field private static final greylist-max-o MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final greylist-max-o MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final greylist-max-o MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final greylist-max-o MAXIMUM_TAP_VELOCITY:F = 100.0f

.field public static final whitelist ORIENTATION_HORIZONTAL:I = 0x0

.field public static final whitelist ORIENTATION_VERTICAL:I = 0x1

.field private static final greylist-max-o TAP_THRESHOLD:I = 0x6

.field private static final greylist-max-o VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private greylist-max-o mAllowSingleTap:Z

.field private greylist-max-o mAnimateOnClick:Z

.field private greylist-max-o mAnimatedAcceleration:F

.field private greylist-max-o mAnimatedVelocity:F

.field private greylist-max-o mAnimating:Z

.field private greylist-max-o mAnimationLastTime:J

.field private greylist-max-o mAnimationPosition:F

.field private greylist-max-o mBottomOffset:I

.field private greylist-max-o mContent:Landroid/view/View;

.field private final greylist-max-o mContentId:I

.field private greylist-max-o mCurrentAnimationTime:J

.field private greylist-max-o mExpanded:Z

.field private final greylist-max-o mFrame:Landroid/graphics/Rect;

.field private greylist-max-o mHandle:Landroid/view/View;

.field private greylist-max-o mHandleHeight:I

.field private final greylist-max-o mHandleId:I

.field private greylist-max-o mHandleWidth:I

.field private final greylist-max-o mInvalidate:Landroid/graphics/Rect;

.field private greylist-max-o mLocked:Z

.field private final greylist-max-o mMaximumAcceleration:I

.field private final greylist-max-o mMaximumMajorVelocity:I

.field private final greylist-max-o mMaximumMinorVelocity:I

.field private final greylist-max-o mMaximumTapVelocity:I

.field private greylist-max-o mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private greylist-max-o mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private greylist-max-o mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

.field private final greylist-max-o mSlidingRunnable:Ljava/lang/Runnable;

.field private final greylist-max-o mTapThreshold:I

.field private greylist mTopOffset:I

.field private greylist mTouchDelta:I

.field private greylist mTracking:Z

.field private greylist mVelocityTracker:Landroid/view/VelocityTracker;

.field private final greylist-max-o mVelocityUnits:I

.field private greylist-max-o mVertical:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimateOnClick(Landroid/widget/SlidingDrawer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocked(Landroid/widget/SlidingDrawer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoAnimation(Landroid/widget/SlidingDrawer;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->doAnimation()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 201
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    .line 217
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 982
    new-instance v0, Landroid/widget/SlidingDrawer$1;

    invoke-direct {v0, p0}, Landroid/widget/SlidingDrawer$1;-><init>(Landroid/widget/SlidingDrawer;)V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    .line 219
    sget-object v0, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 221
    sget-object v3, Landroid/R$styleable;->SlidingDrawer:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/SlidingDrawer;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 224
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 225
    if-ne p3, p2, :cond_32

    move p3, p2

    goto :goto_33

    :cond_32
    move p3, p1

    :goto_33
    iput-boolean p3, v1, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 226
    const/4 p3, 0x0

    invoke-virtual {v5, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    float-to-int p4, p4

    iput p4, v1, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 227
    const/4 p4, 0x2

    invoke-virtual {v5, p4, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, v1, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 228
    const/4 p3, 0x3

    invoke-virtual {v5, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, v1, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    .line 229
    const/4 p3, 0x6

    invoke-virtual {v5, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v1, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    .line 231
    const/4 p2, 0x4

    invoke-virtual {v5, p2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 232
    if-eqz p2, :cond_b4

    .line 237
    const/4 p3, 0x5

    invoke-virtual {v5, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 238
    if-eqz p3, :cond_ac

    .line 243
    if-eq p2, p3, :cond_a4

    .line 248
    iput p2, v1, Landroid/widget/SlidingDrawer;->mHandleId:I

    .line 249
    iput p3, v1, Landroid/widget/SlidingDrawer;->mContentId:I

    .line 251
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 252
    const/high16 p3, 0x40c00000    # 6.0f

    mul-float/2addr p3, p2

    const/high16 p4, 0x3f000000    # 0.5f

    add-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, v1, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    .line 253
    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p3, p2

    add-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, v1, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    .line 254
    const/high16 p3, 0x43160000    # 150.0f

    mul-float/2addr p3, p2

    add-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, v1, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    .line 255
    const/high16 p3, 0x43480000    # 200.0f

    mul-float/2addr p3, p2

    add-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, v1, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    .line 256
    const/high16 p3, 0x44fa0000    # 2000.0f

    mul-float/2addr p3, p2

    add-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, v1, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    .line 257
    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float/2addr p2, p3

    add-float/2addr p2, p4

    float-to-int p2, p2

    iput p2, v1, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    .line 259
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    invoke-virtual {p0, p1}, Landroid/widget/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 262
    return-void

    .line 244
    :cond_a4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The content and handle attributes must refer to different children."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 239
    :cond_ac
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The content attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_b4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The handle attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o animateClose(IZ)V
    .registers 5

    .line 506
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 507
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    .line 508
    return-void
.end method

.method private greylist-max-o animateOpen(IZ)V
    .registers 5

    .line 511
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 512
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    .line 513
    return-void
.end method

.method private greylist-max-o closeDrawer()V
    .registers 3

    .line 850
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 851
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 854
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_16

    .line 855
    return-void

    .line 858
    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 859
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_22

    .line 860
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    .line 862
    :cond_22
    return-void
.end method

.method private greylist-max-o doAnimation()V
    .registers 5

    .line 707
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_48

    .line 708
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->incrementAnimation()V

    .line 709
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v2

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v2

    :goto_18
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_27

    .line 710
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 711
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    goto :goto_48

    .line 712
    :cond_27
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_36

    .line 713
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 714
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_48

    .line 716
    :cond_36
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 717
    iget-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 718
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 721
    :cond_48
    :goto_48
    return-void
.end method

.method private greylist-max-o incrementAnimation()V
    .registers 8

    .line 724
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 725
    iget-wide v2, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 726
    iget v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 727
    iget v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 728
    iget v5, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 729
    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 730
    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 731
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 732
    return-void
.end method

.method private greylist-max-o moveHandle(I)V
    .registers 9

    .line 592
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 594
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    const/16 v3, -0x2712

    const/16 v4, -0x2711

    if-eqz v1, :cond_93

    .line 595
    if-ne p1, v4, :cond_1c

    .line 596
    iget p1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 597
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_117

    .line 598
    :cond_1c
    if-ne p1, v3, :cond_36

    .line 599
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr p1, v1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr p1, v1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr p1, v1

    .line 600
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    .line 599
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 601
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_117

    .line 603
    :cond_36
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 604
    sub-int v3, p1, v1

    .line 605
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v4, :cond_45

    .line 606
    iget p1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, p1, v1

    goto :goto_60

    .line 607
    :cond_45
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr p1, v4

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr p1, v4

    iget v4, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr p1, v4

    sub-int/2addr p1, v1

    if-le v3, p1, :cond_60

    .line 608
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v3, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr p1, v3

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr p1, v3

    iget v3, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr p1, v3

    sub-int v3, p1, v1

    .line 610
    :cond_60
    :goto_60
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 612
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 613
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 615
    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 616
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 618
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 619
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 620
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr p1, v3

    .line 619
    invoke-virtual {v1, v2, v0, v4, p1}, Landroid/graphics/Rect;->union(IIII)V

    .line 622
    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    .line 623
    goto/16 :goto_117

    .line 625
    :cond_93
    if-ne p1, v4, :cond_a3

    .line 626
    iget p1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 627
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto :goto_117

    .line 628
    :cond_a3
    if-ne p1, v3, :cond_bc

    .line 629
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v1, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr p1, v1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr p1, v1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr p1, v1

    .line 630
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    .line 629
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 631
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto :goto_117

    .line 633
    :cond_bc
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 634
    sub-int v3, p1, v1

    .line 635
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v4, :cond_cb

    .line 636
    iget p1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, p1, v1

    goto :goto_e6

    .line 637
    :cond_cb
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v4, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr p1, v4

    iget v4, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr p1, v4

    iget v4, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr p1, v4

    sub-int/2addr p1, v1

    if-le v3, p1, :cond_e6

    .line 638
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v3, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr p1, v3

    iget v3, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr p1, v3

    iget v3, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr p1, v3

    sub-int v3, p1, v1

    .line 640
    :cond_e6
    :goto_e6
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 642
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 643
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 645
    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 646
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 648
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 649
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v3

    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 650
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v3

    .line 649
    invoke-virtual {v1, v0, v2, p1, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 652
    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    .line 655
    :goto_117
    return-void
.end method

.method private greylist-max-o openDrawer()V
    .registers 3

    .line 865
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 866
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 868
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_10

    .line 869
    return-void

    .line 872
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 874
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_1c

    .line 875
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    .line 877
    :cond_1c
    return-void
.end method

.method private greylist-max-o performFling(IFZZ)V
    .registers 7

    .line 517
    int-to-float v0, p1

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 518
    iput p2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 520
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 521
    if-nez p3, :cond_37

    iget p3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float p3, p3

    cmpl-float p3, p2, p3

    if-gtz p3, :cond_37

    iget p3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 522
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_1c

    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    goto :goto_1e

    :cond_1c
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    :goto_1e
    add-int/2addr p3, v0

    if-le p1, p3, :cond_2a

    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2a

    goto :goto_37

    .line 532
    :cond_2a
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 533
    cmpl-float p1, p2, v1

    if-lez p1, :cond_7d

    .line 534
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_7d

    .line 526
    :cond_37
    :goto_37
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 527
    cmpg-float p1, p2, v1

    if-gez p1, :cond_7d

    .line 528
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_7d

    .line 538
    :cond_43
    if-nez p3, :cond_71

    iget p3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float p3, p3

    cmpl-float p3, p2, p3

    if-gtz p3, :cond_65

    .line 539
    iget-boolean p3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz p3, :cond_55

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result p3

    goto :goto_59

    :cond_55
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result p3

    :goto_59
    div-int/lit8 p3, p3, 0x2

    if-le p1, p3, :cond_71

    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_71

    .line 542
    :cond_65
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 543
    cmpg-float p1, p2, v1

    if-gez p1, :cond_7d

    .line 544
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_7d

    .line 549
    :cond_71
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 550
    cmpl-float p1, p2, v1

    if-lez p1, :cond_7d

    .line 551
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 556
    :cond_7d
    :goto_7d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 557
    iput-wide p1, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 558
    const-wide/16 v0, 0x10

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 559
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 560
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 561
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 562
    invoke-direct {p0, p4}, Landroid/widget/SlidingDrawer;->stopTracking(Z)V

    .line 563
    return-void
.end method

.method private greylist prepareContent()V
    .registers 8

    .line 659
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_5

    .line 660
    return-void

    .line 665
    :cond_5
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 666
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 667
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_42

    .line 668
    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 669
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    .line 670
    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    iget v6, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 671
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 670
    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    .line 672
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    .line 673
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v5, v1

    .line 672
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 674
    goto :goto_73

    .line 675
    :cond_42
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 676
    iget v4, p0, Landroid/widget/SlidingDrawer;->mRight:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    .line 677
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v5, v6

    .line 678
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 677
    invoke-virtual {v0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 679
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v4, v1

    .line 680
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v4, v1

    .line 681
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 679
    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 686
    :cond_73
    :goto_73
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 687
    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_83

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 689
    :cond_83
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 690
    return-void
.end method

.method private greylist prepareTracking(I)V
    .registers 7

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 568
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 569
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 570
    if-nez v1, :cond_4a

    .line 571
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 572
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 573
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 574
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    goto :goto_2a

    :cond_24
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    :goto_2a
    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 575
    iget p1, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int p1, p1

    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 576
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 577
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 578
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 579
    iput-wide v1, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 580
    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 581
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 582
    goto :goto_59

    .line 583
    :cond_4a
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_56

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 585
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 587
    :cond_56
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 589
    :goto_59
    return-void
.end method

.method private greylist-max-o stopTracking(Z)V
    .registers 4

    .line 693
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 694
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 696
    if-eqz p1, :cond_13

    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz p1, :cond_13

    .line 697
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {p1}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 700
    :cond_13
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1f

    .line 701
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 702
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 704
    :cond_1f
    return-void
.end method


# virtual methods
.method public whitelist animateClose()V
    .registers 4

    .line 808
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 809
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 810
    if-eqz v0, :cond_a

    .line 811
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 813
    :cond_a
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_1b

    :cond_15
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_1b
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/SlidingDrawer;->animateClose(IZ)V

    .line 815
    if-eqz v0, :cond_24

    .line 816
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 818
    :cond_24
    return-void
.end method

.method public whitelist animateOpen()V
    .registers 4

    .line 830
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 831
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 832
    if-eqz v0, :cond_a

    .line 833
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 835
    :cond_a
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_1b

    :cond_15
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_1b
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/SlidingDrawer;->animateOpen(IZ)V

    .line 837
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    .line 839
    if-eqz v0, :cond_29

    .line 840
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 842
    :cond_29
    return-void
.end method

.method public whitelist animateToggle()V
    .registers 2

    .line 763
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_8

    .line 764
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    goto :goto_b

    .line 766
    :cond_8
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateClose()V

    .line 768
    :goto_b
    return-void
.end method

.method public whitelist close()V
    .registers 1

    .line 793
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 794
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 795
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    .line 796
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 311
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getDrawingTime()J

    move-result-wide v0

    .line 312
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 313
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 315
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 317
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v4, :cond_1f

    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_14

    goto :goto_1f

    .line 332
    :cond_14
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_1e

    .line 333
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_62

    .line 332
    :cond_1e
    :goto_1e
    goto :goto_62

    .line 318
    :cond_1f
    :goto_1f
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 319
    const/4 v5, 0x0

    if-eqz v4, :cond_3d

    .line 320
    const/4 v0, 0x0

    if-eqz v3, :cond_34

    .line 321
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v4, v5, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1e

    .line 323
    :cond_34
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v4, v1, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1e

    .line 326
    :cond_3d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 327
    if-eqz v3, :cond_44

    move v4, v5

    goto :goto_4c

    :cond_44
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    .line 328
    :goto_4c
    if-eqz v3, :cond_56

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v2, v3

    int-to-float v5, v2

    .line 327
    :cond_56
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 329
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 330
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1e

    .line 335
    :goto_62
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 846
    const-class v0, Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getContent()Landroid/view/View;
    .registers 2

    .line 926
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getHandle()Landroid/view/View;
    .registers 2

    .line 916
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public whitelist isMoving()Z
    .registers 2

    .line 962
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public whitelist isOpened()Z
    .registers 2

    .line 953
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public whitelist lock()V
    .registers 2

    .line 944
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    .line 945
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 4

    .line 266
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 267
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_33

    .line 271
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Landroid/widget/SlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer-IA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget v0, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 274
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 278
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    return-void

    .line 275
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 378
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 379
    return v1

    .line 382
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 387
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 388
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 390
    invoke-virtual {v5, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 391
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v6, :cond_26

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_26

    .line 392
    return v1

    .line 395
    :cond_26
    const/4 v1, 0x1

    if-nez v0, :cond_5e

    .line 396
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 398
    invoke-virtual {v5, v1}, Landroid/view/View;->setPressed(Z)V

    .line 400
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 403
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_3a

    .line 404
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 407
    :cond_3a
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_4c

    .line 408
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 409
    float-to-int v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 410
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 411
    goto :goto_59

    .line 412
    :cond_4c
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 413
    float-to-int v2, v2

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 414
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 416
    :goto_59
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 419
    :cond_5e
    return v1
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 12

    .line 339
    iget-boolean p1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-eqz p1, :cond_5

    .line 340
    return-void

    .line 343
    :cond_5
    sub-int/2addr p4, p2

    .line 344
    sub-int/2addr p5, p3

    .line 346
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 354
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 356
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    .line 357
    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    .line 358
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v1, :cond_22

    iget p5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_26

    :cond_22
    sub-int/2addr p5, p3

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr p5, v1

    .line 360
    :goto_26
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v1, p3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v4, p3

    .line 361
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 360
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_59

    .line 363
    :cond_39
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v1, :cond_40

    iget p4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_44

    :cond_40
    sub-int/2addr p4, p2

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr p4, v1

    .line 364
    :goto_44
    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    .line 366
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v1, p2

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v3, p2

    .line 367
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 368
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 366
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 371
    :goto_59
    add-int/2addr p2, p4

    add-int/2addr p3, p5

    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    iput p2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    .line 374
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 7

    .line 283
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 284
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 286
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 287
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 289
    if-eqz v0, :cond_50

    if-eqz v2, :cond_50

    .line 293
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 294
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 296
    iget-boolean p1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_36

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int p1, v3, p1

    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr p1, v0

    .line 298
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 299
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 298
    invoke-virtual {v0, v2, p1}, Landroid/view/View;->measure(II)V

    .line 300
    goto :goto_4c

    .line 301
    :cond_36
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int p1, v1, p1

    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr p1, v0

    .line 302
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 303
    invoke-static {v3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 302
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 306
    :goto_4c
    invoke-virtual {p0, v1, v3}, Landroid/widget/SlidingDrawer;->setMeasuredDimension(II)V

    .line 307
    return-void

    .line 290
    :cond_50
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 424
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 425
    return v1

    .line 428
    :cond_6
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_102

    .line 429
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 431
    packed-switch v0, :pswitch_data_114

    goto/16 :goto_102

    .line 433
    :pswitch_19
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_26

    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_26
    float-to-int v0, v0

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 434
    goto/16 :goto_102

    .line 437
    :pswitch_2f
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 438
    iget v3, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 440
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 441
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 444
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 445
    const/4 v5, 0x0

    if-eqz v4, :cond_5a

    .line 446
    cmpg-float v6, v3, v5

    if-gez v6, :cond_49

    move v6, v1

    goto :goto_4a

    :cond_49
    move v6, v2

    .line 447
    :goto_4a
    cmpg-float v5, v0, v5

    if-gez v5, :cond_4f

    .line 448
    neg-float v0, v0

    .line 450
    :cond_4f
    iget v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_70

    .line 451
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v0, v0

    goto :goto_70

    .line 454
    :cond_5a
    cmpg-float v6, v0, v5

    if-gez v6, :cond_60

    move v6, v1

    goto :goto_61

    :cond_60
    move v6, v2

    .line 455
    :goto_61
    cmpg-float v5, v3, v5

    if-gez v5, :cond_66

    .line 456
    neg-float v3, v3

    .line 458
    :cond_66
    iget v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_70

    .line 459
    iget v3, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v3, v3

    .line 463
    :cond_70
    :goto_70
    float-to-double v7, v0

    float-to-double v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v0, v7

    .line 464
    if-eqz v6, :cond_7a

    .line 465
    neg-float v0, v0

    .line 468
    :cond_7a
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 469
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 471
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_fb

    .line 472
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v4, :cond_b3

    if-eqz v6, :cond_9e

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v7

    if-lt v3, v6, :cond_d0

    :cond_9e
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v6, :cond_f3

    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v6, v7

    if-le v3, v6, :cond_f3

    goto :goto_d0

    :cond_b3
    if-eqz v6, :cond_bc

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v7

    if-lt v5, v6, :cond_d0

    :cond_bc
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v6, :cond_f3

    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v7, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_f3

    .line 479
    :cond_d0
    :goto_d0
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    if-eqz v6, :cond_eb

    .line 480
    invoke-virtual {p0, v2}, Landroid/widget/SlidingDrawer;->playSoundEffect(I)V

    .line 482
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_e3

    .line 483
    if-eqz v4, :cond_de

    goto :goto_df

    :cond_de
    move v3, v5

    :goto_df
    invoke-direct {p0, v3, v1}, Landroid/widget/SlidingDrawer;->animateClose(IZ)V

    goto :goto_102

    .line 485
    :cond_e3
    if-eqz v4, :cond_e6

    goto :goto_e7

    :cond_e6
    move v3, v5

    :goto_e7
    invoke-direct {p0, v3, v1}, Landroid/widget/SlidingDrawer;->animateOpen(IZ)V

    goto :goto_102

    .line 488
    :cond_eb
    if-eqz v4, :cond_ee

    goto :goto_ef

    :cond_ee
    move v3, v5

    :goto_ef
    invoke-direct {p0, v3, v0, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    goto :goto_102

    .line 492
    :cond_f3
    if-eqz v4, :cond_f6

    goto :goto_f7

    :cond_f6
    move v3, v5

    :goto_f7
    invoke-direct {p0, v3, v0, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    goto :goto_102

    .line 495
    :cond_fb
    if-eqz v4, :cond_fe

    goto :goto_ff

    :cond_fe
    move v3, v5

    :goto_ff
    invoke-direct {p0, v3, v0, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    .line 502
    :cond_102
    :goto_102
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_112

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-nez v0, :cond_112

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_111

    goto :goto_112

    :cond_111
    move v1, v2

    :cond_112
    :goto_112
    return v1

    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_19
        :pswitch_2f
    .end packed-switch
.end method

.method public whitelist open()V
    .registers 2

    .line 778
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    .line 779
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 780
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    .line 782
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    .line 783
    return-void
.end method

.method public whitelist setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .registers 2

    .line 894
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    .line 895
    return-void
.end method

.method public whitelist setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .registers 2

    .line 885
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    .line 886
    return-void
.end method

.method public whitelist setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .registers 2

    .line 906
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 907
    return-void
.end method

.method public whitelist toggle()V
    .registers 2

    .line 744
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_8

    .line 745
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_b

    .line 747
    :cond_8
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 749
    :goto_b
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 750
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    .line 751
    return-void
.end method

.method public whitelist unlock()V
    .registers 2

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    .line 936
    return-void
.end method
