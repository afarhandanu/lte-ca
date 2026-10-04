.class public Landroid/widget/StackView;
.super Landroid/widget/AdapterViewAnimator;
.source "StackView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/StackView$LayoutParams;,
        Landroid/widget/StackView$StackSlider;,
        Landroid/widget/StackView$HolographicHelper;,
        Landroid/widget/StackView$StackFrame;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_ANIMATION_DURATION:I = 0x190

.field private static final greylist-max-o FRAME_PADDING:I = 0x4

.field private static final greylist-max-o GESTURE_NONE:I = 0x0

.field private static final greylist-max-o GESTURE_SLIDE_DOWN:I = 0x2

.field private static final greylist-max-o GESTURE_SLIDE_UP:I = 0x1

.field private static final greylist-max-o INVALID_POINTER:I = -0x1

.field private static final greylist-max-o ITEMS_SLIDE_DOWN:I = 0x1

.field private static final greylist-max-o ITEMS_SLIDE_UP:I = 0x0

.field private static final greylist-max-o MINIMUM_ANIMATION_DURATION:I = 0x32

.field private static final greylist-max-o MIN_TIME_BETWEEN_INTERACTION_AND_AUTOADVANCE:I = 0x1388

.field private static final greylist-max-o MIN_TIME_BETWEEN_SCROLLS:J = 0x64L

.field private static final greylist-max-o NUM_ACTIVE_VIEWS:I = 0x5

.field private static final greylist-max-o PERSPECTIVE_SCALE_FACTOR:F = 0.0f

.field private static final greylist-max-o PERSPECTIVE_SHIFT_FACTOR_X:F = 0.1f

.field private static final greylist-max-o PERSPECTIVE_SHIFT_FACTOR_Y:F = 0.1f

.field private static final greylist-max-o SLIDE_UP_RATIO:F = 0.7f

.field private static final greylist-max-o STACK_RELAYOUT_DURATION:I = 0x64

.field private static final greylist-max-o SWIPE_THRESHOLD_RATIO:F = 0.2f

.field private static greylist-max-o sHolographicHelper:Landroid/widget/StackView$HolographicHelper;


# instance fields
.field private final greylist-max-o TAG:Ljava/lang/String;

.field private greylist-max-o mActivePointerId:I

.field private greylist-max-o mClickColor:I

.field private greylist-max-o mClickFeedback:Landroid/widget/ImageView;

.field private greylist-max-o mClickFeedbackIsValid:Z

.field private greylist-max-o mFirstLayoutHappened:Z

.field private greylist-max-o mFramePadding:I

.field private greylist-max-o mHighlight:Landroid/widget/ImageView;

.field private greylist-max-o mInitialX:F

.field private greylist-max-o mInitialY:F

.field private greylist-max-o mLastInteractionTime:J

.field private greylist-max-o mLastScrollTime:J

.field private greylist-max-o mMaximumVelocity:I

.field private greylist-max-o mNewPerspectiveShiftX:F

.field private greylist-max-o mNewPerspectiveShiftY:F

.field private greylist-max-o mPerspectiveShiftX:F

.field private greylist-max-o mPerspectiveShiftY:F

.field private greylist-max-o mResOutColor:I

.field private greylist-max-o mSlideAmount:I

.field private greylist-max-o mStackMode:I

.field private greylist-max-o mStackSlider:Landroid/widget/StackView$StackSlider;

.field private greylist-max-o mSwipeGestureType:I

.field private greylist-max-o mSwipeThreshold:I

.field private final greylist-max-o mTouchRect:Landroid/graphics/Rect;

.field private greylist-max-o mTouchSlop:I

.field private greylist-max-o mTransitionIsSetup:Z

.field private greylist-max-o mVelocityTracker:Landroid/view/VelocityTracker;

.field private greylist-max-o mYVelocity:I

.field private final greylist-max-o stackInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I
    .registers 1

    iget p0, p0, Landroid/widget/StackView;->mSlideAmount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStackMode(Landroid/widget/StackView;)I
    .registers 1

    iget p0, p0, Landroid/widget/StackView;->mStackMode:I

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 164
    const v0, 0x101043e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 172
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14

    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    const-string v0, "StackView"

    iput-object v0, p0, Landroid/widget/StackView;->TAG:Ljava/lang/String;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 131
    iput v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 137
    iput-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 144
    iput-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 146
    iput-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 147
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 151
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    .line 179
    sget-object v1, Lcom/android/internal/R$styleable;->StackView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 181
    sget-object v4, Lcom/android/internal/R$styleable;->StackView:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/widget/StackView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 184
    const/4 p1, 0x1

    invoke-virtual {v6, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, v2, Landroid/widget/StackView;->mResOutColor:I

    .line 186
    invoke-virtual {v6, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, v2, Landroid/widget/StackView;->mClickColor:I

    .line 189
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    invoke-direct {p0}, Landroid/widget/StackView;->initStackView()V

    .line 191
    return-void
.end method

.method private greylist-max-o beginGestureIfNeeded(F)V
    .registers 11

    .line 661
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/widget/StackView;->mTouchSlop:I

    if-le v0, v1, :cond_97

    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v0, :cond_97

    .line 662
    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-gez p1, :cond_16

    move p1, v1

    goto :goto_17

    :cond_16
    move p1, v0

    .line 663
    :goto_17
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelLongPress()V

    .line 664
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->requestDisallowInterceptTouchEvent(Z)V

    .line 666
    iget-object v2, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v2, :cond_22

    return-void

    .line 667
    :cond_22
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v2

    .line 670
    iget v3, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v4, 0x0

    if-nez v3, :cond_31

    .line 671
    if-ne p1, v0, :cond_2f

    move v3, v4

    goto :goto_36

    :cond_2f
    move v3, v1

    goto :goto_36

    .line 673
    :cond_31
    if-ne p1, v0, :cond_35

    move v3, v1

    goto :goto_36

    :cond_35
    move v3, v4

    .line 676
    :goto_36
    iget-boolean v5, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v5, :cond_4a

    if-ne v2, v1, :cond_4a

    iget v5, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v5, :cond_42

    if-eq p1, v1, :cond_48

    :cond_42
    iget v5, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v5, v1, :cond_4a

    if-ne p1, v0, :cond_4a

    :cond_48
    move v5, v1

    goto :goto_4b

    :cond_4a
    move v5, v4

    .line 679
    :goto_4b
    iget-boolean v6, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v6, :cond_5f

    if-ne v2, v1, :cond_5f

    iget v6, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v6, v1, :cond_57

    if-eq p1, v1, :cond_5d

    :cond_57
    iget v6, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v6, :cond_5f

    if-ne p1, v0, :cond_5f

    :cond_5d
    move v6, v1

    goto :goto_60

    :cond_5f
    move v6, v4

    .line 684
    :goto_60
    iget-boolean v7, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v7, :cond_6a

    if-nez v6, :cond_6a

    if-nez v5, :cond_6a

    .line 685
    move v0, v4

    goto :goto_82

    .line 686
    :cond_6a
    iget v7, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v7, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7f

    if-eqz v6, :cond_73

    goto :goto_7f

    .line 689
    :cond_73
    iget v6, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v6, v3

    sub-int/2addr v2, v1

    if-eq v6, v2, :cond_7e

    if-eqz v5, :cond_7c

    goto :goto_7e

    .line 692
    :cond_7c
    move v0, v4

    goto :goto_82

    .line 690
    :cond_7e
    :goto_7e
    goto :goto_82

    .line 687
    :cond_7f
    :goto_7f
    add-int/lit8 v3, v3, 0x1

    .line 688
    move v0, v1

    .line 695
    :goto_82
    if-nez v0, :cond_85

    goto :goto_86

    :cond_85
    move v1, v4

    :goto_86
    iput-boolean v1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 697
    invoke-virtual {p0, v3}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 698
    if-nez v1, :cond_8f

    return-void

    .line 700
    :cond_8f
    invoke-direct {p0, v1, v0}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 703
    iput p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 704
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelHandleClick()V

    .line 706
    :cond_97
    return-void
.end method

.method private blacklist goBackward()Z
    .registers 2

    .line 1273
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_b

    .line 1274
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 1275
    const/4 v0, 0x1

    return v0

    .line 1277
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist goForward()Z
    .registers 4

    .line 1265
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_10

    .line 1266
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 1267
    return v2

    .line 1269
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o handlePointerUp(Landroid/view/MotionEvent;)V
    .registers 11

    .line 814
    iget v0, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 815
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 816
    iget v0, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 817
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 819
    iget-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2d

    .line 820
    iget-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 821
    iget-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 824
    :cond_2d
    iget-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_39

    .line 825
    iget-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 829
    :cond_39
    iget v0, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-le p1, v0, :cond_5d

    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v0, v1, :cond_5d

    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v0, v0, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v0, :cond_5d

    .line 833
    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 836
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez p1, :cond_53

    .line 837
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_56

    .line 839
    :cond_53
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 841
    :goto_56
    iget-object p1, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    goto/16 :goto_136

    .line 842
    :cond_5d
    iget v0, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    neg-int v0, v0

    const/4 v3, 0x1

    if-ge p1, v0, :cond_81

    iget p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne p1, v3, :cond_81

    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget p1, p1, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez p1, :cond_81

    .line 846
    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 849
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez p1, :cond_77

    .line 850
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_7a

    .line 852
    :cond_77
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 855
    :goto_7a
    iget-object p1, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    goto/16 :goto_136

    .line 856
    :cond_81
    iget p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const-string v0, "XProgress"

    const-string v4, "YProgress"

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-ne p1, v3, :cond_e3

    .line 859
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne p1, v3, :cond_91

    goto :goto_92

    :cond_91
    move v5, v6

    .line 860
    :goto_92
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-eqz p1, :cond_a8

    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget p1, p1, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz p1, :cond_9d

    goto :goto_a8

    .line 863
    :cond_9d
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_b2

    .line 861
    :cond_a8
    :goto_a8
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 866
    :goto_b2
    new-instance v7, Landroid/widget/StackView$StackSlider;

    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v7, p0, v8}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 867
    new-array v8, v3, [F

    aput v5, v8, v2

    invoke-static {v4, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 868
    new-array v5, v3, [F

    aput v6, v5, v2

    invoke-static {v0, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 869
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v2

    aput-object v4, v1, v3

    invoke-static {v7, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 871
    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 872
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 873
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_135

    .line 874
    :cond_e3
    iget p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne p1, v1, :cond_135

    .line 876
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne p1, v3, :cond_ec

    move v5, v6

    .line 878
    :cond_ec
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-eq p1, v3, :cond_102

    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget p1, p1, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz p1, :cond_f7

    goto :goto_102

    .line 881
    :cond_f7
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_10c

    .line 879
    :cond_102
    :goto_102
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 884
    :goto_10c
    new-instance v7, Landroid/widget/StackView$StackSlider;

    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v7, p0, v8}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 885
    new-array v8, v3, [F

    aput v5, v8, v2

    .line 886
    invoke-static {v4, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 887
    new-array v5, v3, [F

    aput v6, v5, v2

    invoke-static {v0, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 888
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v2

    aput-object v4, v1, v3

    invoke-static {v7, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 890
    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 891
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_136

    .line 874
    :cond_135
    :goto_135
    nop

    .line 894
    :goto_136
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 895
    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 896
    return-void
.end method

.method private greylist-max-o initStackView()V
    .registers 6

    .line 194
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/StackView;->configureViewAnimator(II)V

    .line 195
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->setStaticTransformationsEnabled(Z)V

    .line 196
    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mTouchSlop:I

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 201
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    .line 202
    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v0, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 205
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    .line 206
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v0, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 208
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    new-instance v2, Landroid/widget/StackView$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;)V

    iput-object v2, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    .line 212
    sget-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    if-nez v2, :cond_7f

    .line 213
    new-instance v2, Landroid/widget/StackView$HolographicHelper;

    iget-object v3, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/StackView$HolographicHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    .line 215
    :cond_7f
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/StackView;->setClipChildren(Z)V

    .line 216
    invoke-virtual {p0, v2}, Landroid/widget/StackView;->setClipToPadding(Z)V

    .line 221
    iput v1, p0, Landroid/widget/StackView;->mStackMode:I

    .line 224
    iput v0, p0, Landroid/widget/StackView;->mWhichChild:I

    .line 228
    iget-object v0, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 229
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Landroid/widget/StackView;->mFramePadding:I

    .line 230
    return-void
.end method

.method private greylist-max-o measureChildren()V
    .registers 14

    .line 1139
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    .line 1141
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v1

    .line 1142
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v2

    .line 1144
    int-to-float v3, v1

    const v4, 0x3f666666    # 0.9f

    mul-float v5, v3, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Landroid/widget/StackView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/StackView;->mPaddingRight:I

    sub-int/2addr v5, v6

    .line 1146
    int-to-float v6, v2

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v7, p0, Landroid/widget/StackView;->mPaddingTop:I

    sub-int/2addr v4, v7

    iget v7, p0, Landroid/widget/StackView;->mPaddingBottom:I

    sub-int/2addr v4, v7

    .line 1149
    nop

    .line 1150
    nop

    .line 1152
    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_2d
    if-ge v7, v0, :cond_59

    .line 1153
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1154
    const/high16 v11, -0x80000000

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1155
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1154
    invoke-virtual {v10, v12, v11}, Landroid/view/View;->measure(II)V

    .line 1157
    iget-object v11, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eq v10, v11, :cond_56

    iget-object v11, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    if-eq v10, v11, :cond_56

    .line 1158
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1159
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1160
    if-le v11, v8, :cond_53

    .line 1161
    move v8, v11

    .line 1163
    :cond_53
    if-le v10, v9, :cond_56

    .line 1164
    move v9, v10

    .line 1152
    :cond_56
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 1169
    :cond_59
    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v7

    iput v3, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 1170
    mul-float/2addr v6, v7

    iput v6, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    .line 1173
    if-lez v8, :cond_6c

    if-lez v0, :cond_6c

    if-ge v8, v5, :cond_6c

    .line 1174
    sub-int/2addr v1, v8

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 1177
    :cond_6c
    if-lez v9, :cond_76

    if-lez v0, :cond_76

    if-ge v9, v4, :cond_76

    .line 1178
    sub-int/2addr v2, v9

    int-to-float v0, v2

    iput v0, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    .line 1180
    :cond_76
    return-void
.end method

.method private greylist-max-o onLayout()V
    .registers 3

    .line 566
    iget-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    if-nez v0, :cond_a

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 568
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    .line 571
    :cond_a
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 572
    iget v1, p0, Landroid/widget/StackView;->mSlideAmount:I

    if-eq v1, v0, :cond_28

    .line 573
    iput v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    .line 574
    const v1, 0x3e4ccccd    # 0.2f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    .line 577
    :cond_28
    iget v0, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3c

    iget v0, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 578
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_47

    .line 580
    :cond_3c
    iget v0, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    iput v0, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 581
    iget v0, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    iput v0, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 582
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    .line 584
    :cond_47
    return-void
.end method

.method private greylist-max-o onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 12

    .line 770
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 771
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 772
    iget v2, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v1, v2, :cond_7c

    .line 774
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    const/4 v1, 0x1

    .line 776
    :goto_15
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 777
    if-nez v1, :cond_1c

    return-void

    .line 783
    :cond_1c
    nop

    :goto_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v3, v2, :cond_79

    .line 784
    if-eq v3, v0, :cond_76

    .line 786
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 787
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 789
    iget-object v5, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 790
    iget-object v5, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 791
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 792
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 795
    iget v5, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float/2addr v4, v0

    add-float/2addr v5, v4

    iput v5, p0, Landroid/widget/StackView;->mInitialY:F

    .line 796
    iget v0, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/StackView;->mInitialX:F

    .line 798
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 799
    iget-object p1, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_75

    .line 800
    iget-object p1, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 803
    :cond_75
    return-void

    .line 783
    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 809
    :cond_79
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    .line 811
    :cond_7c
    return-void
.end method

.method private greylist-max-o pacedScroll(Z)V
    .registers 6

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/StackView;->mLastScrollTime:J

    sub-long/2addr v0, v2

    .line 608
    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 609
    if-eqz p1, :cond_13

    .line 610
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_16

    .line 612
    :cond_13
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 614
    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/StackView;->mLastScrollTime:J

    .line 616
    :cond_1c
    return-void
.end method

.method private greylist-max-o setupStackSlider(Landroid/view/View;I)V
    .registers 5

    .line 376
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p2}, Landroid/widget/StackView$StackSlider;->setMode(I)V

    .line 377
    if-eqz p1, :cond_40

    .line 378
    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v1, p0, Landroid/widget/StackView;->mResOutColor:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/StackView$HolographicHelper;->createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 380
    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 381
    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 382
    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->bringToFront()V

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 384
    iget-object p2, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p2, p1}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 386
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_40
    return-void
.end method

.method private greylist-max-o transformViewAtIndex(ILandroid/view/View;Z)V
    .registers 14

    .line 323
    iget v0, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 324
    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 326
    iget v2, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 327
    iget v2, p0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, v3

    .line 328
    iget p1, p0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    sub-int/2addr p1, v3

    if-ne v2, p1, :cond_1b

    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 330
    :cond_15
    add-int/lit8 v2, p1, -0x1

    .line 331
    if-gez v2, :cond_1b

    add-int/lit8 v2, v2, 0x1

    .line 334
    :cond_1b
    :goto_1b
    int-to-float p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    iget v4, p0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr p1, v4

    .line 336
    sub-float v4, v2, p1

    const/4 v6, 0x0

    mul-float/2addr v6, v4

    sub-float v6, v2, v6

    .line 338
    mul-float/2addr p1, v0

    .line 339
    sub-float v0, v6, v2

    .line 340
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    mul-float/2addr v0, v7

    .line 341
    add-float/2addr p1, v0

    .line 343
    mul-float/2addr v4, v1

    .line 344
    sub-float/2addr v2, v6

    .line 345
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    div-float/2addr v0, v9

    mul-float/2addr v2, v0

    .line 346
    add-float/2addr v4, v2

    .line 350
    instance-of v0, p2, Landroid/widget/StackView$StackFrame;

    if-eqz v0, :cond_51

    .line 351
    move-object v1, p2

    check-cast v1, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v1}, Landroid/widget/StackView$StackFrame;->cancelTransformAnimator()Z

    .line 354
    :cond_51
    if-eqz p3, :cond_a0

    .line 355
    new-array p3, v3, [F

    const/4 v1, 0x0

    aput v4, p3, v1

    const-string/jumbo v2, "translationX"

    invoke-static {v2, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 356
    new-array v2, v3, [F

    aput p1, v2, v1

    const-string/jumbo p1, "translationY"

    invoke-static {p1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 357
    new-array v2, v3, [F

    aput v6, v2, v1

    const-string/jumbo v4, "scaleX"

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 358
    new-array v4, v3, [F

    aput v6, v4, v1

    const-string/jumbo v6, "scaleY"

    invoke-static {v6, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 360
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v6, v1

    aput-object v4, v6, v3

    aput-object p1, v6, v5

    const/4 p1, 0x3

    aput-object p3, v6, p1

    invoke-static {p2, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 362
    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 363
    if-eqz v0, :cond_9c

    .line 364
    check-cast p2, Landroid/widget/StackView$StackFrame;

    invoke-virtual {p2, p1}, Landroid/widget/StackView$StackFrame;->setTransformAnimator(Landroid/animation/ObjectAnimator;)V

    .line 366
    :cond_9c
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 367
    goto :goto_ac

    .line 368
    :cond_a0
    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 369
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 370
    invoke-virtual {p2, v6}, Landroid/view/View;->setScaleX(F)V

    .line 371
    invoke-virtual {p2, v6}, Landroid/view/View;->setScaleY(F)V

    .line 373
    :goto_ac
    return-void
.end method

.method private greylist-max-o updateChildTransforms()V
    .registers 4

    .line 474
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 475
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v2

    .line 476
    if-eqz v2, :cond_11

    .line 477
    invoke-direct {p0, v1, v2, v0}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 474
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 480
    :cond_14
    return-void
.end method


# virtual methods
.method public whitelist advance()V
    .registers 5

    .line 1126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    sub-long/2addr v0, v2

    .line 1128
    iget-object v2, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v2, :cond_c

    return-void

    .line 1129
    :cond_c
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v2

    .line 1130
    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    iget-boolean v2, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v2, :cond_18

    return-void

    .line 1132
    :cond_18
    iget v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v2, :cond_25

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 1134
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 1136
    :cond_25
    return-void
.end method

.method greylist-max-o applyTransformForChildAtIndex(Landroid/view/View;I)V
    .registers 3

    .line 532
    return-void
.end method

.method bridge synthetic blacklist createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/StackView;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;
    .registers 4

    .line 1093
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1094
    instance-of v1, v0, Landroid/widget/StackView$LayoutParams;

    if-eqz v1, :cond_16

    .line 1095
    check-cast v0, Landroid/widget/StackView$LayoutParams;

    .line 1096
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1097
    invoke-virtual {v0, p1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1098
    iput p1, v0, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1099
    iput p1, v0, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1100
    return-object v0

    .line 1102
    :cond_16
    new-instance v0, Landroid/widget/StackView$LayoutParams;

    invoke-direct {v0, p0, p1}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    return-object v0
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 536
    nop

    .line 538
    iget-object v0, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 539
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    .line 540
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v1, v0, :cond_46

    .line 541
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 542
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/StackView$LayoutParams;

    .line 543
    iget v5, v4, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    if-nez v5, :cond_20

    iget v5, v4, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    if-eqz v5, :cond_2f

    .line 544
    :cond_20
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2f

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_32

    .line 545
    :cond_2f
    invoke-virtual {v4}, Landroid/widget/StackView$LayoutParams;->resetInvalidateRect()V

    .line 547
    :cond_32
    invoke-virtual {v4}, Landroid/widget/StackView$LayoutParams;->getInvalidateRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 548
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_43

    .line 549
    nop

    .line 550
    iget-object v2, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    .line 540
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 555
    :cond_46
    if-eqz v2, :cond_57

    .line 556
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 557
    iget-object v0, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRectUnion(Landroid/graphics/Rect;)Z

    .line 558
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 559
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5a

    .line 561
    :cond_57
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 563
    :goto_5a
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1236
    const-class v0, Landroid/widget/StackView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getFrameForChild()Landroid/widget/FrameLayout;
    .registers 6

    .line 523
    new-instance v0, Landroid/widget/StackView$StackFrame;

    iget-object v1, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/StackView$StackFrame;-><init>(Landroid/content/Context;)V

    .line 524
    iget v1, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v2, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v3, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v4, p0, Landroid/widget/StackView;->mFramePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/StackView$StackFrame;->setPadding(IIII)V

    .line 525
    return-object v0
.end method

.method greylist-max-o hideTapFeedback(Landroid/view/View;)V
    .registers 3

    .line 469
    iget-object p1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    .line 471
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 588
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_29

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    goto :goto_29

    .line 591
    :pswitch_10
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 592
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x1

    if-gez v2, :cond_21

    .line 593
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/StackView;->pacedScroll(Z)V

    .line 594
    return v3

    .line 595
    :cond_21
    cmpl-float v0, v0, v1

    if-lez v0, :cond_29

    .line 596
    invoke-direct {p0, v3}, Landroid/widget/StackView;->pacedScroll(Z)V

    .line 597
    return v3

    .line 602
    :cond_29
    :goto_29
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_2e
    .packed-switch 0x8
        :pswitch_10
    .end packed-switch
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 1242
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1243
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1244
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1245
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_35

    .line 1246
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1247
    iget v0, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v0, :cond_30

    .line 1248
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_35

    .line 1250
    :cond_30
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1253
    :cond_35
    :goto_35
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_4f

    .line 1254
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1255
    iget v0, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v0, :cond_4a

    .line 1256
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_4f

    .line 1258
    :cond_4a
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1262
    :cond_4f
    :goto_4f
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 623
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 624
    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_4c

    :pswitch_b
    goto :goto_46

    .line 647
    :pswitch_c
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 648
    goto :goto_46

    .line 634
    :pswitch_10
    iget v0, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 635
    if-ne v0, v1, :cond_20

    .line 637
    const-string p1, "StackView"

    const-string v0, "Error: No data for our primary pointer."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return v2

    .line 640
    :cond_20
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 641
    iget v0, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float/2addr p1, v0

    .line 643
    invoke-direct {p0, p1}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    .line 644
    goto :goto_46

    .line 652
    :pswitch_2b
    iput v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 653
    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_46

    .line 626
    :pswitch_30
    iget v0, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v0, v1, :cond_46

    .line 627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/StackView;->mInitialX:F

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/StackView;->mInitialY:F

    .line 629
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 657
    :cond_46
    :goto_46
    iget p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz p1, :cond_4b

    const/4 v2, 0x1

    :cond_4b
    return v2

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2b
        :pswitch_10
        :pswitch_2b
        :pswitch_b
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 10

    .line 1107
    invoke-virtual {p0}, Landroid/widget/StackView;->checkForAndHandleDataChanged()V

    .line 1109
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result p1

    .line 1110
    const/4 p2, 0x0

    :goto_8
    if-ge p2, p1, :cond_38

    .line 1111
    invoke-virtual {p0, p2}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1113
    iget p4, p0, Landroid/widget/StackView;->mPaddingLeft:I

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    .line 1114
    iget p5, p0, Landroid/widget/StackView;->mPaddingTop:I

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    .line 1115
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    .line 1117
    iget v1, p0, Landroid/widget/StackView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/StackView;->mPaddingTop:I

    iget v3, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr p4, v3

    iget v0, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr p5, v0

    invoke-virtual {p3, v1, v2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 1110
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 1121
    :cond_38
    invoke-direct {p0}, Landroid/widget/StackView;->onLayout()V

    .line 1122
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 12

    .line 1184
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1185
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1186
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1187
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 1189
    iget v2, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1c

    iget v2, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    if-eq v2, v4, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    move v2, v3

    .line 1193
    :goto_1d
    nop

    .line 1194
    const/high16 v4, 0x1000000

    const/high16 v5, -0x80000000

    const v6, 0x40071c72

    if-nez p2, :cond_3a

    .line 1195
    if-eqz v2, :cond_38

    .line 1197
    iget v1, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    .line 1196
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v7, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v1, v7

    iget v7, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int/2addr v1, v7

    goto :goto_39

    .line 1197
    :cond_38
    move v1, v3

    :goto_39
    goto :goto_53

    .line 1198
    :cond_3a
    if-ne p2, v5, :cond_53

    .line 1199
    if-eqz v2, :cond_52

    .line 1200
    iget v7, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int/2addr v7, v8

    .line 1202
    if-gt v7, v1, :cond_50

    .line 1203
    move v1, v7

    goto :goto_51

    .line 1205
    :cond_50
    or-int/2addr v1, v4

    .line 1208
    :goto_51
    goto :goto_53

    .line 1209
    :cond_52
    move v1, v3

    .line 1213
    :cond_53
    :goto_53
    nop

    .line 1214
    if-nez p1, :cond_6a

    .line 1215
    if-eqz v2, :cond_68

    .line 1217
    iget p1, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    int-to-float p1, p1

    mul-float/2addr p1, v6

    .line 1216
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int/2addr p1, p2

    move v0, p1

    goto :goto_69

    .line 1217
    :cond_68
    move v0, v3

    :goto_69
    goto :goto_7f

    .line 1218
    :cond_6a
    if-ne p2, v5, :cond_7f

    .line 1219
    if-eqz v2, :cond_7e

    .line 1220
    iget p1, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    iget p2, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int/2addr p1, p2

    .line 1221
    if-gt p1, v0, :cond_7a

    .line 1222
    move v0, p1

    goto :goto_7d

    .line 1224
    :cond_7a
    or-int p1, v0, v4

    move v0, p1

    .line 1226
    :goto_7d
    goto :goto_7f

    .line 1227
    :cond_7e
    move v0, v3

    .line 1230
    :cond_7f
    :goto_7f
    invoke-virtual {p0, v0, v1}, Landroid/widget/StackView;->setMeasuredDimension(II)V

    .line 1231
    invoke-direct {p0}, Landroid/widget/StackView;->measureChildren()V

    .line 1232
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 713
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 715
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 716
    iget v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 717
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_19

    .line 719
    const-string p1, "StackView"

    const-string v0, "Error: No data for our primary pointer."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return v2

    .line 723
    :cond_19
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 724
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 725
    iget v5, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float/2addr v4, v5

    .line 726
    iget v5, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float/2addr v1, v5

    .line 727
    iget-object v5, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_31

    .line 728
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 730
    :cond_31
    iget-object v5, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 732
    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_96

    :pswitch_3c
    goto :goto_95

    .line 757
    :pswitch_3d
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 758
    goto :goto_95

    .line 761
    :pswitch_41
    iput v3, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 762
    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_95

    .line 734
    :pswitch_46
    invoke-direct {p0, v4}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    .line 736
    iget p1, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    div-float/2addr v1, p1

    .line 737
    iget p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_71

    .line 738
    iget p1, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    sub-float/2addr v4, p1

    iget p1, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float p1, p1

    div-float/2addr v4, p1

    mul-float/2addr v4, v0

    .line 739
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne p1, v5, :cond_65

    sub-float v4, v0, v4

    .line 740
    :cond_65
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    sub-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 741
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1, v1}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 742
    return v5

    .line 743
    :cond_71
    iget p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne p1, v5, :cond_95

    .line 744
    iget p1, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr v4, p1

    neg-float p1, v4

    iget v2, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    mul-float/2addr p1, v0

    .line 745
    iget v2, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v2, v5, :cond_86

    sub-float p1, v0, p1

    .line 746
    :cond_86
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p1}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 747
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1, v1}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 748
    return v5

    .line 753
    :pswitch_91
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    .line 754
    nop

    .line 766
    :cond_95
    :goto_95
    return v5

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_91
        :pswitch_46
        :pswitch_41
        :pswitch_3c
        :pswitch_3c
        :pswitch_3d
    .end packed-switch
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 4

    .line 1283
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1284
    const/4 p1, 0x1

    return p1

    .line 1286
    :cond_8
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_10

    .line 1287
    return v0

    .line 1289
    :cond_10
    sparse-switch p1, :sswitch_data_3a

    .line 1311
    return v0

    .line 1304
    :sswitch_14
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez p1, :cond_1d

    .line 1305
    invoke-direct {p0}, Landroid/widget/StackView;->goForward()Z

    move-result p1

    return p1

    .line 1307
    :cond_1d
    invoke-direct {p0}, Landroid/widget/StackView;->goBackward()Z

    move-result p1

    return p1

    .line 1297
    :sswitch_22
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez p1, :cond_2b

    .line 1298
    invoke-direct {p0}, Landroid/widget/StackView;->goBackward()Z

    move-result p1

    return p1

    .line 1300
    :cond_2b
    invoke-direct {p0}, Landroid/widget/StackView;->goForward()Z

    move-result p1

    return p1

    .line 1294
    :sswitch_30
    invoke-direct {p0}, Landroid/widget/StackView;->goBackward()Z

    move-result p1

    return p1

    .line 1291
    :sswitch_35
    invoke-direct {p0}, Landroid/widget/StackView;->goForward()Z

    move-result p1

    return p1

    :sswitch_data_3a
    .sparse-switch
        0x1000 -> :sswitch_35
        0x2000 -> :sswitch_30
        0x1020046 -> :sswitch_22
        0x1020047 -> :sswitch_14
    .end sparse-switch
.end method

.method public whitelist showNext()V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 396
    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v0, :cond_5

    return-void

    .line 397
    :cond_5
    iget-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v0, :cond_1f

    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_1f

    .line 400
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 401
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 402
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 405
    :cond_1f
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 406
    return-void
.end method

.method greylist-max-o showOnly(IZ)V
    .registers 5

    .line 428
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 431
    iget p1, p0, Landroid/widget/StackView;->mCurrentWindowEnd:I

    :goto_5
    iget p2, p0, Landroid/widget/StackView;->mCurrentWindowStart:I

    if-lt p1, p2, :cond_35

    .line 432
    invoke-virtual {p0}, Landroid/widget/StackView;->getWindowSize()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/StackView;->modulo(II)I

    move-result p2

    .line 433
    iget-object v0, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 434
    if-eqz v0, :cond_32

    .line 435
    iget-object v0, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object p2, p2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 436
    if-eqz p2, :cond_32

    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    .line 431
    :cond_32
    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    .line 439
    :cond_35
    iget-object p1, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eqz p1, :cond_3e

    .line 440
    iget-object p1, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    .line 442
    :cond_3e
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 443
    iput-boolean p1, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 444
    return-void
.end method

.method public whitelist showPrevious()V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 414
    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v0, :cond_5

    return-void

    .line 415
    :cond_5
    iget-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v0, :cond_20

    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 417
    if-eqz v1, :cond_20

    .line 418
    invoke-direct {p0, v1, v0}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 419
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 420
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 423
    :cond_20
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    .line 424
    return-void
.end method

.method greylist-max-o showTapFeedback(Landroid/view/View;)V
    .registers 3

    .line 461
    invoke-virtual {p0}, Landroid/widget/StackView;->updateClickFeedback()V

    .line 462
    iget-object p1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    iget-object p1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    .line 464
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    .line 465
    return-void
.end method

.method greylist-max-o transformViewForTransition(IILandroid/view/View;Z)V
    .registers 16

    .line 236
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_19

    .line 237
    move-object v2, p3

    check-cast v2, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v2}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 238
    invoke-virtual {p3, v0}, Landroid/view/View;->setRotationX(F)V

    .line 239
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/StackView$LayoutParams;

    .line 240
    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 241
    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 244
    :cond_19
    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-ne p1, v2, :cond_31

    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne p2, v5, :cond_31

    .line 245
    invoke-direct {p0, p2, p3, v1}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 246
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_129

    .line 248
    :cond_31
    const/4 v5, 0x2

    const-string v6, "XProgress"

    const-string v7, "YProgress"

    if-nez p1, :cond_91

    if-ne p2, v4, :cond_91

    .line 250
    move-object p1, p3

    check-cast p1, Landroid/widget/StackView$StackFrame;

    invoke-virtual {p1}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 251
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v8, p0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 254
    new-instance v8, Landroid/widget/StackView$StackSlider;

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v8, p0, v9}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 255
    invoke-virtual {v8, p3}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 257
    if-eqz p4, :cond_89

    .line 258
    new-array v9, v4, [F

    aput v0, v9, v1

    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 259
    new-array v9, v4, [F

    aput v0, v9, v1

    invoke-static {v6, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 260
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v1

    aput-object v7, v5, v4

    invoke-static {v8, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 262
    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 263
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    invoke-virtual {p1, v0}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 265
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 266
    goto :goto_8f

    .line 267
    :cond_89
    invoke-virtual {v8, v0}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 268
    invoke-virtual {v8, v0}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 270
    :goto_8f
    goto/16 :goto_129

    :cond_91
    if-ne p1, v4, :cond_e8

    if-nez p2, :cond_e8

    .line 272
    move-object p1, p3

    check-cast p1, Landroid/widget/StackView$StackFrame;

    invoke-virtual {p1}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 273
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, p0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 275
    new-instance v9, Landroid/widget/StackView$StackSlider;

    iget-object v10, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v9, p0, v10}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 276
    invoke-virtual {v9, p3}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 277
    if-eqz p4, :cond_e1

    .line 278
    new-array v10, v4, [F

    aput v3, v10, v1

    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 279
    new-array v7, v4, [F

    aput v0, v7, v1

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 280
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v1

    aput-object v3, v5, v4

    invoke-static {v9, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 282
    int-to-long v3, v8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 283
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    invoke-virtual {p1, v0}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 285
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 286
    goto :goto_e7

    .line 287
    :cond_e1
    invoke-virtual {v9, v3}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 288
    invoke-virtual {v9, v0}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 290
    :goto_e7
    goto :goto_129

    :cond_e8
    if-nez p2, :cond_f2

    .line 292
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 293
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_129

    .line 294
    :cond_f2
    if-eqz p1, :cond_f6

    if-ne p1, v4, :cond_10e

    :cond_f6
    if-le p2, v4, :cond_10e

    .line 295
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 297
    invoke-virtual {p3, v0}, Landroid/view/View;->setRotationX(F)V

    .line 298
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/StackView$LayoutParams;

    .line 299
    invoke-virtual {p1, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 300
    invoke-virtual {p1, v1}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 301
    goto :goto_129

    :cond_10e
    if-ne p1, v2, :cond_117

    .line 302
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 303
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_129

    .line 304
    :cond_117
    if-ne p2, v2, :cond_129

    .line 305
    if-eqz p4, :cond_126

    .line 306
    new-instance p1, Landroid/widget/StackView$1;

    invoke-direct {p1, p0, p3}, Landroid/widget/StackView$1;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/StackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_129

    .line 312
    :cond_126
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 317
    :cond_129
    :goto_129
    if-eq p2, v2, :cond_12e

    .line 318
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 320
    :cond_12e
    return-void
.end method

.method greylist-max-o updateClickFeedback()V
    .registers 6

    .line 447
    iget-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    if-nez v0, :cond_2c

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_2a

    .line 450
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v4, p0, Landroid/widget/StackView;->mClickColor:I

    .line 451
    invoke-virtual {v3, v1, v4}, Landroid/widget/StackView$HolographicHelper;->createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 450
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 452
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 453
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 455
    :cond_2a
    iput-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 457
    :cond_2c
    return-void
.end method
