.class public Landroid/view/HandwritingInitiator;
.super Ljava/lang/Object;
.source "HandwritingInitiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HandwritingInitiator$HandwritingAreaTracker;,
        Landroid/view/HandwritingInitiator$State;,
        Landroid/view/HandwritingInitiator$DelegationCallback;,
        Landroid/view/HandwritingInitiator$HandwritableViewInfo;
    }
.end annotation


# instance fields
.field private blacklist mCachedHoverTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mConnectedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConnectionCount:I

.field public blacklist mFocusedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

.field private final blacklist mHandwritingSlop:I

.field private final blacklist mHandwritingTimeoutInMillis:J

.field private final blacklist mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final blacklist mInitiateWithoutConnection:Z

.field private blacklist mShowHoverIconForConnectedView:Z

.field private blacklist mState:Landroid/view/HandwritingInitiator$State;

.field private final blacklist mTempLocation:[I

.field private final blacklist mTempMatrix:Landroid/graphics/Matrix;

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTempRectF:Landroid/graphics/RectF;

.field private final blacklist mTempRegion:Landroid/graphics/Region;


# direct methods
.method public static synthetic blacklist $r8$lambda$pKzwG0a3-R8t3NgV5SM2ecFCDsg(Landroid/view/HandwritingInitiator;Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/HandwritingInitiator;->lambda$tryAcceptStylusHandwritingDelegation$0(Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImm(Landroid/view/HandwritingInitiator;)Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    iget-object p0, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisViewActive(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroid/view/HandwritingInitiator;->isViewActive(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/view/ViewConfiguration;Landroid/view/inputmethod/InputMethodManager;)V
    .registers 5

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    invoke-direct {v0}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;-><init>()V

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    .line 95
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    .line 102
    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    .line 108
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    .line 110
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempRect:Landroid/graphics/Rect;

    .line 112
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempRectF:Landroid/graphics/RectF;

    .line 114
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempRegion:Landroid/graphics/Region;

    .line 116
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    .line 124
    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 145
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->initiationWithoutInputConnection()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    .line 150
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledHandwritingSlop()I

    move-result v0

    iput v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingSlop:I

    .line 151
    nop

    .line 152
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 153
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getLongPressTimeoutMillis()I

    move-result p1

    int-to-long v0, p1

    goto :goto_56

    .line 154
    :cond_51
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    :goto_56
    iput-wide v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingTimeoutInMillis:J

    .line 155
    iput-object p2, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 156
    return-void
.end method

.method private blacklist clearConnectedView()V
    .registers 2

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    .line 295
    return-void
.end method

.method private static blacklist contains(Landroid/graphics/Rect;FFFFFF)Z
    .registers 8

    .line 843
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    cmpl-float p3, p1, v0

    if-ltz p3, :cond_22

    iget p3, p0, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    add-float/2addr p3, p5

    cmpg-float p1, p1, p3

    if-gez p1, :cond_22

    iget p1, p0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    sub-float/2addr p1, p4

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_22

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    add-float/2addr p0, p6

    cmpg-float p0, p2, p0

    if-gez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method private static blacklist distance(Landroid/graphics/Rect;FF)F
    .registers 10

    .line 716
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FFFFFF)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_f

    .line 717
    return p1

    .line 740
    :cond_f
    iget p0, v0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_1f

    iget p0, v0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_1f

    .line 741
    move p0, p1

    goto :goto_30

    .line 742
    :cond_1f
    iget p0, v0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_2b

    .line 743
    iget p0, v0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    sub-float/2addr p0, v1

    goto :goto_30

    .line 745
    :cond_2b
    iget p0, v0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    sub-float p0, v1, p0

    .line 749
    :goto_30
    iget p2, v0, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    cmpl-float p2, v2, p2

    if-ltz p2, :cond_3f

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    cmpg-float p2, v2, p2

    if-gez p2, :cond_3f

    .line 750
    goto :goto_50

    .line 751
    :cond_3f
    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_4b

    .line 752
    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    sub-float/2addr p1, v2

    goto :goto_50

    .line 754
    :cond_4b
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float p1, v2, p1

    .line 757
    :goto_50
    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method private blacklist findBestCandidateView(FFZ)Landroid/view/View;
    .registers 16

    .line 667
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedOrFocusedView()Landroid/view/View;

    move-result-object v4

    .line 668
    if-eqz v4, :cond_3a

    .line 669
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mTempRect:Landroid/graphics/Rect;

    .line 670
    invoke-static {v4, v1}, Landroid/view/HandwritingInitiator;->getViewHandwritingArea(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 671
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/HandwritingInitiator;->isInHandwritingArea(Landroid/graphics/Rect;FFLandroid/view/View;Z)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 672
    invoke-static {v4}, Landroid/view/HandwritingInitiator;->shouldTriggerHandwritingOrShowUnavailableMessageForView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 674
    if-nez v5, :cond_34

    iget-object p1, v0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz p1, :cond_34

    .line 675
    iget-object p1, v0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    .line 676
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-static/range {v5 .. v11}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FFFFFF)Z

    move-result p2

    invoke-static {p1, p2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmStylusDownWithinEditorBounds(Landroid/view/HandwritingInitiator$State;Z)V

    .line 678
    :cond_34
    return-object v4

    .line 670
    :cond_35
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    goto :goto_3e

    .line 668
    :cond_3a
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    .line 682
    :cond_3e
    :goto_3e
    nop

    .line 683
    nop

    .line 685
    iget-object p1, v0, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    .line 686
    invoke-virtual {p1}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->computeViewInfos()Ljava/util/List;

    move-result-object p1

    .line 687
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 p3, 0x0

    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/HandwritingInitiator$HandwritableViewInfo;

    .line 688
    invoke-virtual {v1}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getView()Landroid/view/View;

    move-result-object v9

    .line 689
    invoke-virtual {v1}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getHandwritingArea()Landroid/graphics/Rect;

    move-result-object v6

    .line 690
    move v7, v2

    move v8, v3

    move v10, v5

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/view/HandwritingInitiator;->isInHandwritingArea(Landroid/graphics/Rect;FFLandroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 691
    invoke-static {v9}, Landroid/view/HandwritingInitiator;->shouldTriggerHandwritingOrShowUnavailableMessageForView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 692
    goto :goto_93

    .line 695
    :cond_73
    invoke-static {v6, v2, v3}, Landroid/view/HandwritingInitiator;->distance(Landroid/graphics/Rect;FF)F

    move-result v0

    .line 696
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_89

    .line 697
    if-nez v10, :cond_88

    iget-object p1, v5, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz p1, :cond_88

    .line 698
    iget-object p1, v5, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmStylusDownWithinEditorBounds(Landroid/view/HandwritingInitiator$State;Z)V

    .line 700
    :cond_88
    return-object v9

    .line 702
    :cond_89
    cmpg-float v1, v0, p2

    if-gez v1, :cond_90

    .line 703
    nop

    .line 704
    move p2, v0

    move-object p3, v9

    .line 706
    :cond_90
    move-object v0, v5

    move v5, v10

    goto :goto_4e

    .line 687
    :cond_93
    :goto_93
    move-object v0, v5

    move v5, v10

    goto :goto_4e

    .line 707
    :cond_96
    return-object p3
.end method

.method private static blacklist findFirstTextViewDescendent(Landroid/view/View;)Landroid/widget/TextView;
    .registers 4

    .line 964
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_40

    check-cast p0, Landroid/view/ViewGroup;

    .line 966
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 967
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 968
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_18

    check-cast v1, Landroid/widget/TextView;

    .line 969
    goto :goto_20

    :cond_18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/view/HandwritingInitiator;->findFirstTextViewDescendent(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    .line 970
    :goto_20
    if-eqz v1, :cond_3d

    .line 971
    invoke-virtual {v1}, Landroid/widget/TextView;->isAggregatedVisible()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 972
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 973
    invoke-virtual {v1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 974
    :cond_3c
    return-object v1

    .line 966
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 978
    :cond_40
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist findHoverView(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 10

    .line 586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_68

    .line 590
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_20

    .line 591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1e

    goto :goto_20

    :cond_1e
    move-object v2, p0

    goto :goto_65

    .line 592
    :cond_20
    :goto_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 595
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getCachedHoverTarget()Landroid/view/View;

    move-result-object v6

    .line 596
    if-eqz v6, :cond_4f

    .line 597
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mTempRect:Landroid/graphics/Rect;

    .line 598
    invoke-static {v6, v3}, Landroid/view/HandwritingInitiator;->getViewHandwritingArea(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 599
    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/HandwritingInitiator;->isInHandwritingArea(Landroid/graphics/Rect;FFLandroid/view/View;Z)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 601
    invoke-static {v6}, Landroid/view/HandwritingInitiator;->shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 602
    return-object v6

    .line 598
    :cond_4d
    move-object v2, p0

    goto :goto_50

    .line 596
    :cond_4f
    move-object v2, p0

    .line 606
    :cond_50
    :goto_50
    const/4 p1, 0x1

    invoke-direct {p0, v4, v5, p1}, Landroid/view/HandwritingInitiator;->findBestCandidateView(FFZ)Landroid/view/View;

    move-result-object p1

    .line 608
    if-eqz p1, :cond_65

    .line 609
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->handwritingUnsupportedMessage()Z

    move-result v0

    if-nez v0, :cond_64

    .line 610
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v2, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    .line 612
    :cond_64
    return-object p1

    .line 616
    :cond_65
    :goto_65
    iput-object v1, v2, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    .line 617
    return-object v1

    .line 587
    :cond_68
    :goto_68
    return-object v1
.end method

.method private blacklist getCachedHoverTarget()Landroid/view/View;
    .registers 2

    .line 579
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    .line 580
    const/4 v0, 0x0

    return-object v0

    .line 582
    :cond_6
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private blacklist getConnectedOrFocusedView()Landroid/view/View;
    .registers 3

    .line 571
    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 572
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_a

    goto :goto_13

    :cond_a
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    :goto_13
    return-object v1

    .line 574
    :cond_14
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_19

    goto :goto_22

    :cond_19
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    :goto_22
    return-object v1
.end method

.method private blacklist getConnectedView()Landroid/view/View;
    .registers 2

    .line 288
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 289
    :cond_6
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private blacklist getCursorAnchorInfoForConnectionless(Landroid/view/View;)Landroid/view/inputmethod/CursorAnchorInfo;
    .registers 8

    .line 929
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    .line 932
    invoke-static {p1}, Landroid/view/HandwritingInitiator;->findFirstTextViewDescendent(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    .line 933
    if-eqz v1, :cond_33

    .line 934
    const/4 p1, 0x0

    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, v0, v2}, Landroid/widget/TextView;->getCursorAnchorInfo(ILandroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;

    .line 935
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    if-gez p1, :cond_5f

    .line 938
    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    invoke-virtual {v1}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float v3, p1

    .line 939
    nop

    .line 940
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result p1

    int-to-float p1, p1

    .line 941
    invoke-virtual {v1}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    int-to-float v2, v1

    .line 939
    const/4 v5, 0x0

    move v4, v3

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 945
    goto :goto_5f

    .line 949
    :cond_33
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 950
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 951
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 952
    nop

    .line 953
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    .line 955
    :goto_50
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v3, v2

    .line 956
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v4, p1

    .line 952
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 959
    :cond_5f
    :goto_5f
    invoke-virtual {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getFocusedView()Landroid/view/View;
    .registers 2

    .line 406
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 407
    :cond_6
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private static blacklist getViewHandwritingArea(Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 6

    .line 776
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 777
    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 778
    invoke-virtual {p0}, Landroid/view/View;->getHandwritingArea()Landroid/graphics/Rect;

    move-result-object v2

    .line 779
    if-eqz v2, :cond_1d

    .line 780
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_28

    .line 782
    :cond_1d
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 784
    :goto_28
    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    return p0

    .line 786
    :cond_2e
    return v1
.end method

.method private blacklist isInHandwritingArea(Landroid/graphics/Rect;FFLandroid/view/View;Z)Z
    .registers 14

    .line 795
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 797
    :cond_4
    nop

    .line 798
    invoke-virtual {p4}, Landroid/view/View;->getHandwritingBoundsOffsetLeft()F

    move-result v4

    .line 799
    invoke-virtual {p4}, Landroid/view/View;->getHandwritingBoundsOffsetTop()F

    move-result v5

    .line 800
    invoke-virtual {p4}, Landroid/view/View;->getHandwritingBoundsOffsetRight()F

    move-result v6

    .line 801
    invoke-virtual {p4}, Landroid/view/View;->getHandwritingBoundsOffsetBottom()F

    move-result v7

    .line 797
    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v7}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FFFFFF)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 802
    return v0

    .line 809
    :cond_1f
    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 810
    if-nez p1, :cond_27

    .line 811
    const/4 p1, 0x1

    return p1

    .line 814
    :cond_27
    move p2, v0

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mTempRegion:Landroid/graphics/Region;

    .line 815
    iget-object p3, p0, Landroid/view/HandwritingInitiator;->mTempRegion:Landroid/graphics/Region;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p3, p2, p2, v1, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 816
    iget-object p3, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    .line 817
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 818
    invoke-interface {p1, p4, v0, p3, p5}, Landroid/view/ViewParent;->getChildLocalHitRegion(Landroid/view/View;Landroid/graphics/Region;Landroid/graphics/Matrix;Z)Z

    move-result p1

    if-nez p1, :cond_43

    .line 819
    return p2

    .line 825
    :cond_43
    invoke-virtual {p4}, Landroid/view/View;->getHandwritingBoundsOffsetRight()F

    move-result p1

    sub-float p2, v2, p1

    .line 826
    invoke-virtual {p4}, Landroid/view/View;->getHandwritingBoundsOffsetBottom()F

    move-result p1

    sub-float p1, v3, p1

    .line 827
    invoke-virtual {p4}, Landroid/view/View;->getHandwritingBoundsOffsetLeft()F

    move-result p5

    add-float/2addr p5, v2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v2, p2, v1

    invoke-static {p5, v2}, Ljava/lang/Math;->max(FF)F

    move-result p5

    .line 828
    invoke-virtual {p4}, Landroid/view/View;->getHandwritingBoundsOffsetTop()F

    move-result p4

    add-float/2addr p4, v3

    add-float/2addr v1, p1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 829
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mTempRectF:Landroid/graphics/RectF;

    .line 830
    invoke-virtual {v1, p2, p1, p5, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 831
    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 833
    iget p1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, v1, Landroid/graphics/RectF;->top:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p2, v1, Landroid/graphics/RectF;->right:F

    .line 834
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget p2, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v4

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 833
    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-result p1

    return p1
.end method

.method private static blacklist isViewActive(Landroid/view/View;)Z
    .registers 2

    .line 924
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 925
    invoke-virtual {p0}, Landroid/view/View;->shouldTrackHandwritingArea()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    .line 924
    :goto_17
    return p0
.end method

.method private synthetic blacklist lambda$tryAcceptStylusHandwritingDelegation$0(Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)V
    .registers 3

    .line 491
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 492
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Landroid/view/HandwritingInitiator;->onDelegationAccepted(Landroid/view/View;)V

    .line 494
    :cond_f
    return-void
.end method

.method private blacklist largerThanTouchSlop(FFFF)Z
    .registers 5

    .line 848
    sub-float/2addr p1, p3

    .line 849
    sub-float/2addr p2, p4

    .line 850
    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    iget p2, p0, Landroid/view/HandwritingInitiator;->mHandwritingSlop:I

    iget p3, p0, Landroid/view/HandwritingInitiator;->mHandwritingSlop:I

    mul-int/2addr p2, p3

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method private blacklist onDelegationAccepted(Landroid/view/View;)V
    .registers 5

    .line 499
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 500
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmHandled(Landroid/view/HandwritingInitiator$State;Z)V

    .line 501
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    .line 503
    :cond_10
    if-nez p1, :cond_13

    .line 505
    return-void

    .line 507
    :cond_13
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    .line 508
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->hideHint()V

    .line 512
    :cond_1c
    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 513
    return-void
.end method

.method private blacklist prepareDelegation(Landroid/view/View;)V
    .registers 9

    .line 459
    invoke-virtual {p1}, Landroid/view/View;->getAllowedHandwritingDelegatePackageName()Ljava/lang/String;

    move-result-object v0

    .line 460
    if-nez v0, :cond_10

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_11

    .line 460
    :cond_10
    move-object v4, v0

    .line 463
    :goto_11
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isConnectionlessStylusHandwritingAvailable()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 467
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 468
    invoke-direct {p0, p1}, Landroid/view/HandwritingInitiator;->getCursorAnchorInfoForConnectionless(Landroid/view/View;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v3

    .line 469
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    new-instance v6, Landroid/view/HandwritingInitiator$DelegationCallback;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v4, v0}, Landroid/view/HandwritingInitiator$DelegationCallback;-><init>(Landroid/view/HandwritingInitiator;Landroid/view/View;Ljava/lang/String;Landroid/view/HandwritingInitiator-IA;)V

    .line 467
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingForDelegation(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    .line 470
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    goto :goto_50

    .line 472
    :cond_43
    move-object v2, p1

    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v2}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 475
    :goto_50
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmHandled(Landroid/view/HandwritingInitiator$State;Z)V

    .line 476
    return-void
.end method

.method private blacklist requestFocusWithoutReveal(Landroid/view/View;)V
    .registers 8

    .line 621
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->handwritingCursorPosition()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3b

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownWithinEditorBounds(Landroid/view/HandwritingInitiator$State;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 628
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 629
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v3

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    aget v4, v4, v1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v4}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v4

    iget-object v5, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    aget v5, v5, v2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/widget/EditText;->getOffsetForPosition(FF)I

    move-result v3

    .line 632
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 634
    :cond_3b
    invoke-virtual {p1}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 635
    invoke-virtual {p1, v1}, Landroid/view/View;->setRevealOnFocusHint(Z)V

    .line 636
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 637
    invoke-virtual {p1, v2}, Landroid/view/View;->setRevealOnFocusHint(Z)V

    goto :goto_4e

    .line 639
    :cond_4b
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 641
    :goto_4e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->handwritingCursorPosition()Z

    move-result v0

    if-eqz v0, :cond_8f

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_8f

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    .line 643
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 644
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {p1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result p1

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->getLineAtCoordinate(F)I

    move-result p1

    .line 645
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 646
    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p1

    .line 645
    const/16 v2, 0xa

    invoke-static {v1, v2, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p1

    .line 647
    if-gez p1, :cond_8c

    .line 648
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 650
    :cond_8c
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 652
    :cond_8f
    return-void
.end method

.method private static blacklist shouldShowHandwritingUnavailableMessageForView(Landroid/view/View;)Z
    .registers 2

    .line 536
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/view/HandwritingInitiator;->shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static blacklist shouldTriggerHandwritingOrShowUnavailableMessageForView(Landroid/view/View;)Z
    .registers 2

    .line 541
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_d

    invoke-static {p0}, Landroid/view/HandwritingInitiator;->shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private static blacklist shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z
    .registers 2

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->shouldInitiateHandwriting()Z

    move-result v0

    if-nez v0, :cond_8

    .line 525
    const/4 p0, 0x0

    return p0

    .line 532
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isStylusHandwritingAvailable()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist clearFocusedView(Landroid/view/View;)V
    .registers 3

    .line 415
    if-eqz p1, :cond_13

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_7

    goto :goto_13

    .line 418
    :cond_7
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 419
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    .line 421
    :cond_12
    return-void

    .line 416
    :cond_13
    :goto_13
    return-void
.end method

.method public blacklist onDelegateViewFocused(Landroid/view/View;)V
    .registers 3

    .line 302
    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-eqz v0, :cond_7

    .line 303
    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->onEditorFocused(Landroid/view/View;)V

    .line 305
    :cond_7
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_10

    .line 306
    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->tryAcceptStylusHandwritingDelegation(Landroid/view/View;)V

    .line 308
    :cond_10
    return-void
.end method

.method public blacklist onEditorFocused(Landroid/view/View;)V
    .registers 4

    .line 358
    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-nez v0, :cond_5

    .line 359
    return-void

    .line 362
    :cond_5
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getFocusedView()Landroid/view/View;

    move-result-object v0

    .line 364
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->handwritingTrackDisabled()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v1

    if-nez v1, :cond_19

    .line 365
    invoke-virtual {p0, v0}, Landroid/view/HandwritingInitiator;->clearFocusedView(Landroid/view/View;)V

    .line 366
    return-void

    .line 369
    :cond_19
    if-ne v0, p1, :cond_1c

    .line 370
    return-void

    .line 372
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->updateFocusedView(Landroid/view/View;)Z

    .line 374
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmPendingFocusedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmPendingFocusedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_46

    .line 376
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->handwritingTrackDisabled()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 377
    :cond_43
    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->startHandwriting(Landroid/view/View;)V

    .line 379
    :cond_46
    return-void
.end method

.method public blacklist onInputConnectionClosed(Landroid/view/View;)V
    .registers 3

    .line 388
    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->isHandwritingDelegate()Z

    move-result v0

    if-nez v0, :cond_b

    .line 389
    return-void

    .line 391
    :cond_b
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    .line 392
    if-nez v0, :cond_12

    return-void

    .line 393
    :cond_12
    if-ne v0, p1, :cond_22

    .line 394
    iget p1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    .line 395
    iget p1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    if-nez p1, :cond_25

    .line 396
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    goto :goto_25

    .line 400
    :cond_22
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    .line 402
    :cond_25
    :goto_25
    return-void
.end method

.method public blacklist onInputConnectionCreated(Landroid/view/View;)V
    .registers 4

    .line 318
    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->isHandwritingDelegate()Z

    move-result v0

    if-nez v0, :cond_b

    .line 320
    return-void

    .line 322
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 323
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    .line 324
    return-void

    .line 327
    :cond_15
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    .line 328
    const/4 v1, 0x1

    if-ne v0, p1, :cond_22

    .line 329
    iget p1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    goto :goto_59

    .line 331
    :cond_22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    .line 332
    iput v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    .line 334
    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->isHandwritingDelegate()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 336
    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->tryAcceptStylusHandwritingDelegation(Landroid/view/View;)V

    .line 341
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 342
    return-void

    .line 344
    :cond_3a
    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-nez v0, :cond_59

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v0, :cond_59

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmPendingConnectedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmPendingConnectedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_59

    .line 347
    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->startHandwriting(Landroid/view/View;)V

    .line 350
    :cond_59
    :goto_59
    return-void
.end method

.method public blacklist onResolvePointerIcon(Landroid/content/Context;Landroid/view/MotionEvent;)Landroid/view/PointerIcon;
    .registers 6

    .line 550
    invoke-direct {p0, p2}, Landroid/view/HandwritingInitiator;->findHoverView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p2

    .line 551
    const/4 v0, 0x0

    if-eqz p2, :cond_28

    invoke-static {p2}, Landroid/view/HandwritingInitiator;->shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_28

    .line 555
    :cond_e
    iget-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    const/16 v2, 0x3fe

    if-eqz v1, :cond_19

    .line 556
    invoke-static {p1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    .line 559
    :cond_19
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedOrFocusedView()Landroid/view/View;

    move-result-object v1

    if-eq p2, v1, :cond_27

    .line 563
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 564
    invoke-static {p1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    .line 566
    :cond_27
    return-object v0

    .line 552
    :cond_28
    :goto_28
    return-object v0
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 177
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_17a

    :pswitch_9
    goto/16 :goto_179

    .line 188
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 189
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusPointerId(Landroid/view/HandwritingInitiator$State;)I

    move-result v0

    if-eq p1, v0, :cond_153

    .line 191
    :cond_1f
    return v2

    .line 208
    :pswitch_20
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-nez v0, :cond_25

    .line 209
    return v2

    .line 214
    :cond_25
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;)Z

    move-result v0

    if-eqz v0, :cond_14c

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmExceedHandwritingSlop(Landroid/view/HandwritingInitiator$State;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto/16 :goto_14c

    .line 218
    :cond_37
    nop

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownTimeInMillis(Landroid/view/HandwritingInitiator$State;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 220
    iget-wide v5, p0, Landroid/view/HandwritingInitiator;->mHandwritingTimeoutInMillis:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_55

    .line 221
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {p1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    .line 222
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {p1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmHandled(Landroid/view/HandwritingInitiator$State;)Z

    move-result p1

    return p1

    .line 225
    :cond_55
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusPointerId(Landroid/view/HandwritingInitiator$State;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 228
    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v4}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v4

    iget-object v5, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v5}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v5

    invoke-direct {p0, v3, v0, v4, v5}, Landroid/view/HandwritingInitiator;->largerThanTouchSlop(FFFF)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 229
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmExceedHandwritingSlop(Landroid/view/HandwritingInitiator$State;Z)V

    .line 230
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v0

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v3

    invoke-direct {p0, v0, v3, v2}, Landroid/view/HandwritingInitiator;->findBestCandidateView(FFZ)Landroid/view/View;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_145

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_145

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    .line 234
    invoke-virtual {v0}, Landroid/view/View;->isStylusHandwritingAvailable()Z

    move-result v4

    if-nez v4, :cond_a6

    .line 235
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {p1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    .line 236
    return v2

    .line 237
    :cond_a6
    invoke-static {v0}, Landroid/view/HandwritingInitiator;->shouldShowHandwritingUnavailableMessageForView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_109

    .line 238
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_bd

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    .line 239
    invoke-virtual {v4}, Landroid/widget/TextView;->isAnyPasswordInputType()Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 240
    const v4, 0x10403b0

    goto :goto_c0

    .line 241
    :cond_bd
    const v4, 0x10403af

    .line 242
    :goto_c0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 243
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 244
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_d4

    .line 245
    invoke-direct {p0, v0}, Landroid/view/HandwritingInitiator;->requestFocusWithoutReveal(Landroid/view/View;)V

    .line 247
    :cond_d4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->handwritingUnsupportedShowSoftInputFix()Z

    move-result v4

    if-eqz v4, :cond_e5

    if-eqz v3, :cond_ea

    .line 248
    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    .line 249
    invoke-virtual {v3}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 250
    :cond_e5
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 252
    :cond_ea
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmHandled(Landroid/view/HandwritingInitiator$State;Z)V

    .line 253
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 257
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 258
    goto :goto_145

    :cond_109
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedOrFocusedView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_118

    .line 259
    if-nez v3, :cond_114

    .line 260
    invoke-direct {p0, v0}, Landroid/view/HandwritingInitiator;->requestFocusWithoutReveal(Landroid/view/View;)V

    .line 262
    :cond_114
    invoke-virtual {p0, v0}, Landroid/view/HandwritingInitiator;->startHandwriting(Landroid/view/View;)V

    goto :goto_145

    .line 263
    :cond_118
    invoke-virtual {v0}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_122

    .line 264
    invoke-direct {p0, v0}, Landroid/view/HandwritingInitiator;->prepareDelegation(Landroid/view/View;)V

    goto :goto_145

    .line 266
    :cond_122
    iget-boolean p1, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-eqz p1, :cond_136

    .line 267
    if-nez v3, :cond_145

    .line 269
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmPendingFocusedView(Landroid/view/HandwritingInitiator$State;Ljava/lang/ref/WeakReference;)V

    .line 270
    invoke-direct {p0, v0}, Landroid/view/HandwritingInitiator;->requestFocusWithoutReveal(Landroid/view/View;)V

    goto :goto_145

    .line 273
    :cond_136
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmPendingConnectedView(Landroid/view/HandwritingInitiator$State;Ljava/lang/ref/WeakReference;)V

    .line 274
    if-nez v3, :cond_145

    .line 275
    invoke-direct {p0, v0}, Landroid/view/HandwritingInitiator;->requestFocusWithoutReveal(Landroid/view/View;)V

    .line 281
    :cond_145
    :goto_145
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {p1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmHandled(Landroid/view/HandwritingInitiator$State;)Z

    move-result p1

    return p1

    .line 215
    :cond_14c
    :goto_14c
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {p1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmHandled(Landroid/view/HandwritingInitiator$State;)Z

    move-result p1

    return p1

    .line 198
    :cond_153
    :pswitch_153
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz p1, :cond_166

    .line 199
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {p1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    .line 200
    iget-object p1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {p1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmHandled(Landroid/view/HandwritingInitiator$State;)Z

    move-result p1

    if-nez p1, :cond_166

    .line 203
    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 206
    :cond_166
    return v2

    .line 180
    :pswitch_167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v1

    if-nez v1, :cond_171

    .line 183
    return v2

    .line 185
    :cond_171
    new-instance v1, Landroid/view/HandwritingInitiator$State;

    invoke-direct {v1, p1, v0}, Landroid/view/HandwritingInitiator$State;-><init>(Landroid/view/MotionEvent;Landroid/view/HandwritingInitiator-IA;)V

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    .line 186
    nop

    .line 283
    :goto_179
    return v2

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_167
        :pswitch_153
        :pswitch_20
        :pswitch_153
        :pswitch_9
        :pswitch_167
        :pswitch_b
    .end packed-switch
.end method

.method public blacklist startHandwriting(Landroid/view/View;)V
    .registers 4

    .line 449
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwriting(Landroid/view/View;)V

    .line 450
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmHandled(Landroid/view/HandwritingInitiator$State;Z)V

    .line 451
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    .line 452
    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 453
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    .line 454
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->hideHint()V

    .line 456
    :cond_1c
    return-void
.end method

.method public blacklist tryAcceptStylusHandwritingDelegation(Landroid/view/View;)V
    .registers 6

    .line 484
    nop

    .line 485
    invoke-virtual {p1}, Landroid/view/View;->getAllowedHandwritingDelegatorPackageName()Ljava/lang/String;

    move-result-object v0

    .line 486
    if-nez v0, :cond_f

    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 489
    :cond_f
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 490
    new-instance v2, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda1;-><init>(Landroid/view/HandwritingInitiator;Ljava/lang/ref/WeakReference;)V

    .line 495
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, p1, v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 496
    return-void
.end method

.method public blacklist updateFocusedView(Landroid/view/View;)Z
    .registers 4

    .line 429
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->handwritingTrackDisabled()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->shouldInitiateHandwriting()Z

    move-result v0

    if-nez v0, :cond_11

    .line 430
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    .line 431
    const/4 p1, 0x0

    return p1

    .line 434
    :cond_11
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getFocusedView()Landroid/view/View;

    move-result-object v0

    .line 435
    const/4 v1, 0x1

    if-eq v0, p1, :cond_2d

    .line 436
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    .line 437
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->handwritingTrackDisabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/view/View;->shouldInitiateHandwriting()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 439
    :cond_2b
    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    .line 443
    :cond_2d
    return v1
.end method

.method public blacklist updateHandwritingAreasForView(Landroid/view/View;)V
    .registers 3

    .line 520
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    invoke-virtual {v0, p1}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->updateHandwritingAreaForView(Landroid/view/View;)V

    .line 521
    return-void
.end method
