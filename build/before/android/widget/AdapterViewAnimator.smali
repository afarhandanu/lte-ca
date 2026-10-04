.class public abstract Landroid/widget/AdapterViewAnimator;
.super Landroid/widget/AdapterView;
.source "AdapterViewAnimator.java"

# interfaces
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Landroid/widget/Advanceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterViewAnimator$ViewAndMetaData;,
        Landroid/widget/AdapterViewAnimator$CheckForTap;,
        Landroid/widget/AdapterViewAnimator$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/Adapter;",
        ">;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Landroid/widget/Advanceable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_ANIMATION_DURATION:I = 0xc8

.field static final greylist-max-o TOUCH_MODE_DOWN_IN_CURRENT_VIEW:I = 0x1

.field static final greylist-max-o TOUCH_MODE_HANDLED:I = 0x2

.field static final greylist-max-o TOUCH_MODE_NONE:I


# instance fields
.field greylist-max-o mActiveOffset:I

.field greylist-max-o mAdapter:Landroid/widget/Adapter;

.field greylist-max-o mAnimateFirstTime:Z

.field greylist-max-o mCurrentWindowEnd:I

.field greylist-max-o mCurrentWindowStart:I

.field greylist-max-o mCurrentWindowStartUnbounded:I

.field greylist-max-o mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "Landroid/widget/Adapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field greylist-max-o mDeferNotifyDataSetChanged:Z

.field greylist-max-o mFirstTime:Z

.field greylist-max-o mInAnimation:Landroid/animation/ObjectAnimator;

.field greylist-max-o mLoopViews:Z

.field greylist-max-o mMaxNumActiveViews:I

.field greylist-max-o mOutAnimation:Landroid/animation/ObjectAnimator;

.field private greylist-max-o mPendingCheckForTap:Ljava/lang/Runnable;

.field greylist-max-o mPreviousViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mReferenceChildHeight:I

.field greylist-max-o mReferenceChildWidth:I

.field greylist-max-o mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

.field private greylist-max-o mRestoreWhichChild:I

.field private final blacklist mTapTimeoutMillis:I

.field private greylist-max-o mTouchMode:I

.field greylist-max-o mViewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/AdapterViewAnimator$ViewAndMetaData;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mWhichChild:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTouchMode(Landroid/widget/AdapterViewAnimator;)I
    .registers 1

    iget p0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 177
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15

    .line 181
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 65
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    .line 71
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    .line 77
    iput v2, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    .line 82
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    .line 92
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 97
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 103
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 123
    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 128
    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mFirstTime:Z

    .line 134
    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 140
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    .line 141
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    .line 152
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 183
    sget-object v1, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 185
    sget-object v5, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/AdapterViewAnimator;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 188
    invoke-virtual {v7, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 190
    if-lez p1, :cond_43

    .line 191
    invoke-virtual {p0, v4, p1}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    goto :goto_4a

    .line 193
    :cond_43
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultInAnimation()Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    .line 196
    :goto_4a
    invoke-virtual {v7, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 197
    if-lez p1, :cond_54

    .line 198
    invoke-virtual {p0, v4, p1}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_5b

    .line 200
    :cond_54
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultOutAnimation()Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    .line 203
    :goto_5b
    const/4 p1, 0x2

    invoke-virtual {v7, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 205
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setAnimateFirstView(Z)V

    .line 207
    const/4 p1, 0x3

    invoke-virtual {v7, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v3, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 209
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result p1

    if-eqz p1, :cond_79

    .line 210
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getTapTimeoutMillis()I

    move-result p1

    goto :goto_7d

    .line 211
    :cond_79
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    :goto_7d
    iput p1, v3, Landroid/widget/AdapterViewAnimator;->mTapTimeoutMillis:I

    .line 213
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->initViewAnimator()V

    .line 216
    return-void
.end method

.method private greylist-max-o addChild(Landroid/view/View;)V
    .registers 4

    .line 591
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/AdapterViewAnimator;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 596
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v0, v1, :cond_10

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-ne v0, v1, :cond_24

    .line 597
    :cond_10
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 598
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 599
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    .line 600
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    .line 602
    :cond_24
    return-void
.end method

.method private greylist-max-o getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .registers 5

    .line 403
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 404
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    if-ne v2, p1, :cond_1b

    .line 405
    return-object v1

    .line 407
    :cond_1b
    goto :goto_a

    .line 408
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o initViewAnimator()V
    .registers 2

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    .line 223
    return-void
.end method

.method private greylist-max-o measureChildren()V
    .registers 8

    .line 694
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v0

    .line 695
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 696
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    sub-int/2addr v2, v3

    .line 698
    const/4 v3, 0x0

    :goto_19
    if-ge v3, v0, :cond_2f

    .line 699
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 700
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 701
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 700
    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    .line 698
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 703
    :cond_2f
    return-void
.end method

.method private greylist-max-o setDisplayedChild(IZ)V
    .registers 6

    .line 308
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_3d

    .line 309
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 310
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_1c

    .line 311
    iget-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz p1, :cond_14

    move p1, v1

    goto :goto_19

    :cond_14
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_19
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    goto :goto_2b

    .line 312
    :cond_1c
    if-gez p1, :cond_2b

    .line 313
    iget-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result p1

    sub-int/2addr p1, v2

    goto :goto_29

    :cond_28
    move p1, v1

    :goto_29
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 316
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_32

    move v1, v2

    .line 318
    :cond_32
    iget p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 319
    if-eqz v1, :cond_3d

    .line 321
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->requestFocus(I)Z

    .line 324
    :cond_3d
    return-void
.end method


# virtual methods
.method public whitelist advance()V
    .registers 1

    .line 1096
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 1097
    return-void
.end method

.method greylist-max-o applyTransformForChildAtIndex(Landroid/view/View;I)V
    .registers 3

    .line 334
    return-void
.end method

.method greylist-max-o cancelHandleClick()V
    .registers 2

    .line 613
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_9

    .line 615
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 617
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 618
    return-void
.end method

.method greylist-max-o checkForAndHandleDataChanged()V
    .registers 2

    .line 750
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    .line 751
    if-eqz v0, :cond_c

    .line 752
    new-instance v0, Landroid/widget/AdapterViewAnimator$2;

    invoke-direct {v0, p0}, Landroid/widget/AdapterViewAnimator$2;-><init>(Landroid/widget/AdapterViewAnimator;)V

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->post(Ljava/lang/Runnable;)Z

    .line 769
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    .line 770
    return-void
.end method

.method greylist-max-o configureViewAnimator(II)V
    .registers 3

    .line 253
    nop

    .line 256
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    .line 257
    iput p2, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    .line 258
    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 259
    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 260
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->removeAllViewsInLayout()V

    .line 261
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 262
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 263
    return-void
.end method

.method greylist-max-o createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 412
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 413
    if-eqz p1, :cond_7

    .line 414
    return-object p1

    .line 416
    :cond_7
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object p1
.end method

.method public whitelist deferNotifyDataSetChanged()V
    .registers 2

    .line 1052
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1053
    return-void
.end method

.method public whitelist fyiWillBeAdvancedByHostKThx()V
    .registers 1

    .line 1106
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1110
    const-class v0, Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 962
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public whitelist getBaseline()I
    .registers 2

    .line 957
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    goto :goto_13

    :cond_f
    invoke-super {p0}, Landroid/widget/AdapterView;->getBaseline()I

    move-result v0

    :goto_13
    return v0
.end method

.method public whitelist getCurrentView()Landroid/view/View;
    .registers 2

    .line 867
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getDefaultInAnimation()Landroid/animation/ObjectAnimator;
    .registers 4

    .line 286
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_14

    const/4 v1, 0x0

    const-string v2, "alpha"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 287
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 288
    return-object v0

    nop

    :array_14
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method greylist-max-o getDefaultOutAnimation()Landroid/animation/ObjectAnimator;
    .registers 4

    .line 292
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_14

    const/4 v1, 0x0

    const-string v2, "alpha"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 293
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 294
    return-object v0

    nop

    :array_14
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public whitelist getDisplayedChild()I
    .registers 2

    .line 340
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    return v0
.end method

.method greylist-max-o getFrameForChild()Landroid/widget/FrameLayout;
    .registers 3

    .line 457
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public whitelist getInAnimation()Landroid/animation/ObjectAnimator;
    .registers 2

    .line 879
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method greylist-max-o getNumActiveViews()I
    .registers 3

    .line 382
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_11

    .line 383
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 385
    :cond_11
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    return v0
.end method

.method public whitelist getOutAnimation()Landroid/animation/ObjectAnimator;
    .registers 2

    .line 903
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public whitelist getSelectedView()Landroid/view/View;
    .registers 2

    .line 1044
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getViewAtRelativeIndex(I)Landroid/view/View;
    .registers 4

    .line 372
    if-ltz p1, :cond_34

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_34

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_34

    .line 373
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result p1

    .line 374
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 375
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object p1, p1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    return-object p1

    .line 378
    :cond_34
    const/4 p1, 0x0

    return-object p1
.end method

.method greylist-max-o getWindowSize()I
    .registers 3

    .line 390
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_17

    .line 391
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    .line 392
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    if-gt v0, v1, :cond_16

    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_16

    .line 393
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    mul-int/2addr v0, v1

    return v0

    .line 395
    :cond_16
    return v0

    .line 398
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o hideTapFeedback(Landroid/view/View;)V
    .registers 3

    .line 609
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 610
    return-void
.end method

.method greylist-max-o modulo(II)I
    .registers 3

    .line 358
    if-lez p2, :cond_6

    .line 359
    rem-int/2addr p1, p2

    add-int/2addr p1, p2

    rem-int/2addr p1, p2

    return p1

    .line 361
    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8

    .line 774
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V

    .line 776
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result p1

    .line 777
    const/4 p2, 0x0

    :goto_8
    if-ge p2, p1, :cond_26

    .line 778
    invoke-virtual {p0, p2}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 780
    iget p4, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    .line 781
    iget p5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    .line 783
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {p3, v0, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 777
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 785
    :cond_26
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 11

    .line 707
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 708
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 709
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 710
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 712
    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1c

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-eq v2, v4, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    move v2, v3

    .line 717
    :goto_1d
    const/high16 v4, 0x1000000

    const/high16 v5, -0x80000000

    if-nez p2, :cond_30

    .line 718
    if-eqz v2, :cond_2e

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v1, v6

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int/2addr v1, v6

    goto :goto_2f

    .line 719
    :cond_2e
    move v1, v3

    :goto_2f
    goto :goto_41

    .line 720
    :cond_30
    if-ne p2, v5, :cond_41

    .line 721
    if-eqz v2, :cond_41

    .line 722
    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int/2addr v6, v7

    .line 723
    if-le v6, v1, :cond_40

    .line 724
    or-int/2addr v1, v4

    goto :goto_41

    .line 726
    :cond_40
    move v1, v6

    .line 731
    :cond_41
    :goto_41
    if-nez p1, :cond_51

    .line 732
    if-eqz v2, :cond_4f

    iget p1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget p2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int/2addr p1, p2

    move v0, p1

    goto :goto_50

    .line 733
    :cond_4f
    move v0, v3

    :goto_50
    goto :goto_62

    .line 734
    :cond_51
    if-ne p2, v5, :cond_62

    .line 735
    if-eqz v2, :cond_62

    .line 736
    iget p1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget p2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int/2addr p1, p2

    .line 737
    if-le p1, v0, :cond_61

    .line 738
    or-int/2addr v0, v4

    goto :goto_62

    .line 740
    :cond_61
    move v0, p1

    .line 745
    :cond_62
    :goto_62
    invoke-virtual {p0, v0, v1}, Landroid/widget/AdapterViewAnimator;->setMeasuredDimension(II)V

    .line 746
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->measureChildren()V

    .line 747
    return-void
.end method

.method public whitelist onRemoteAdapterConnected()Z
    .registers 4

    .line 1059
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_24

    .line 1060
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 1062
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_17

    .line 1063
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 1064
    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1068
    :cond_17
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_23

    .line 1069
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    invoke-direct {p0, v0, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 1070
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 1072
    :cond_23
    return v2

    .line 1073
    :cond_24
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_2f

    .line 1074
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 1075
    const/4 v0, 0x1

    return v0

    .line 1077
    :cond_2f
    return v2
.end method

.method public whitelist onRemoteAdapterDisconnected()V
    .registers 1

    .line 1089
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 840
    check-cast p1, Landroid/widget/AdapterViewAnimator$SavedState;

    .line 841
    invoke-virtual {p1}, Landroid/widget/AdapterViewAnimator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 846
    iget p1, p1, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 852
    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez p1, :cond_1a

    .line 853
    iget p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    goto :goto_20

    .line 855
    :cond_1a
    iget p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 857
    :goto_20
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 831
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 832
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_d

    .line 833
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 835
    :cond_d
    new-instance v1, Landroid/widget/AdapterViewAnimator$SavedState;

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-direct {v1, v0, v2}, Landroid/widget/AdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 632
    nop

    .line 633
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_84

    :pswitch_b
    goto/16 :goto_82

    .line 648
    :pswitch_d
    goto/16 :goto_82

    .line 683
    :pswitch_f
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object p1

    .line 684
    if-eqz p1, :cond_18

    .line 685
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 687
    :cond_18
    iput v3, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    goto :goto_82

    .line 647
    :pswitch_1b
    goto :goto_82

    .line 650
    :pswitch_1c
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    if-ne v0, v2, :cond_54

    .line 651
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 652
    invoke-direct {p0, v0}, Landroid/widget/AdapterViewAnimator;->getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-result-object v4

    .line 653
    if-eqz v0, :cond_54

    .line 654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v5, p1, v0, v1}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 655
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 656
    if-eqz p1, :cond_43

    .line 657
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 659
    :cond_43
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    .line 660
    new-instance p1, Landroid/widget/AdapterViewAnimator$1;

    invoke-direct {p1, p0, v0, v4}, Landroid/widget/AdapterViewAnimator$1;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V

    .line 674
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    int-to-long v0, v0

    .line 660
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 675
    goto :goto_55

    .line 679
    :cond_54
    move v2, v3

    :goto_55
    iput v3, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 680
    move v3, v2

    goto :goto_82

    .line 635
    :pswitch_59
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 636
    if-eqz v0, :cond_82

    .line 637
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v4, p1, v0, v1}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_82

    .line 638
    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez p1, :cond_78

    .line 639
    new-instance p1, Landroid/widget/AdapterViewAnimator$CheckForTap;

    invoke-direct {p1, p0}, Landroid/widget/AdapterViewAnimator$CheckForTap;-><init>(Landroid/widget/AdapterViewAnimator;)V

    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 641
    :cond_78
    iput v2, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 642
    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mTapTimeoutMillis:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 690
    :cond_82
    :goto_82
    return v3

    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_59
        :pswitch_1c
        :pswitch_1b
        :pswitch_f
        :pswitch_b
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method greylist-max-o refreshChildren()V
    .registers 7

    .line 420
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    .line 421
    :goto_a
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    :goto_c
    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-gt v1, v2, :cond_58

    .line 422
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v2

    .line 425
    const/4 v3, 0x0

    if-ge v1, v0, :cond_30

    .line 427
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0, v1, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v5

    invoke-interface {v4, v5, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 429
    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_31

    .line 431
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_31

    .line 434
    :cond_30
    nop

    .line 437
    :cond_31
    :goto_31
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 438
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    .line 440
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 441
    if-eqz v3, :cond_55

    .line 443
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 421
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 447
    :cond_58
    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/Adapter;)V
    .registers 4

    .line 967
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v0, :cond_f

    .line 968
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 971
    :cond_f
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    .line 972
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkFocus()V

    .line 974
    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz p1, :cond_2e

    .line 975
    new-instance p1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {p1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 976
    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 977
    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mItemCount:I

    .line 979
    :cond_2e
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setFocusable(Z)V

    .line 980
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 981
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 982
    return-void
.end method

.method public whitelist setAnimateFirstView(Z)V
    .registers 2

    .line 952
    iput-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    .line 953
    return-void
.end method

.method public whitelist setDisplayedChild(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 304
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 305
    return-void
.end method

.method public whitelist setInAnimation(Landroid/animation/ObjectAnimator;)V
    .registers 2

    .line 891
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    .line 892
    return-void
.end method

.method public whitelist setInAnimation(Landroid/content/Context;I)V
    .registers 3

    .line 928
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    .line 929
    return-void
.end method

.method public whitelist setOutAnimation(Landroid/animation/ObjectAnimator;)V
    .registers 2

    .line 915
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    .line 916
    return-void
.end method

.method public whitelist setOutAnimation(Landroid/content/Context;I)V
    .registers 3

    .line 941
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    .line 942
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 993
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 994
    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .registers 6

    .line 1006
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_1b

    .line 1007
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1008
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 1009
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1010
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1011
    return-void

    .line 1014
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1016
    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 1017
    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p1}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 1018
    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 1020
    :cond_36
    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .registers 3

    .line 998
    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public blacklist setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3

    .line 1032
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_9

    .line 1033
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 1035
    :cond_9
    return-void
.end method

.method public whitelist setSelection(I)V
    .registers 2

    .line 1039
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 1040
    return-void
.end method

.method public whitelist showNext()V
    .registers 2

    .line 347
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 348
    return-void
.end method

.method greylist-max-o showOnly(IZ)V
    .registers 20

    .line 471
    move-object/from16 v1, p0

    move/from16 v7, p2

    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_9

    return-void

    .line 472
    :cond_9
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v8

    .line 473
    if-nez v8, :cond_10

    return-void

    .line 475
    :cond_10
    const/4 v9, 0x0

    move v0, v9

    :goto_12
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, -0x1

    if-ge v0, v2, :cond_4c

    .line 476
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 477
    iget-object v3, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    iget-object v4, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 479
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_43

    .line 480
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .line 481
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 485
    :cond_43
    invoke-virtual {v1, v2, v10}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 487
    invoke-virtual {v1, v2}, Landroid/widget/AdapterViewAnimator;->removeViewInLayout(Landroid/view/View;)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 489
    :cond_4c
    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 490
    iget v0, v1, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    sub-int v11, p1, v0

    .line 491
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v0

    add-int/2addr v0, v11

    const/4 v12, 0x1

    sub-int/2addr v0, v12

    .line 492
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 493
    add-int/lit8 v3, v8, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 495
    iget-boolean v4, v1, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v4, :cond_6e

    .line 496
    nop

    .line 497
    move v13, v0

    move v14, v11

    goto :goto_70

    .line 495
    :cond_6e
    move v14, v2

    move v13, v3

    .line 499
    :goto_70
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    invoke-virtual {v1, v14, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v0

    .line 500
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    invoke-virtual {v1, v13, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v2

    .line 502
    nop

    .line 503
    if-le v0, v2, :cond_85

    .line 504
    move v3, v12

    goto :goto_86

    .line 503
    :cond_85
    move v3, v9

    .line 511
    :goto_86
    iget-object v4, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_90
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_de

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 512
    nop

    .line 513
    if-nez v3, :cond_ad

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v0, :cond_ab

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v2, :cond_ad

    .line 514
    :cond_ab
    move v6, v12

    goto :goto_be

    .line 515
    :cond_ad
    if-eqz v3, :cond_bd

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v2, :cond_bd

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v0, :cond_bd

    .line 516
    move v6, v12

    goto :goto_be

    .line 519
    :cond_bd
    move v6, v9

    :goto_be
    if-eqz v6, :cond_dc

    .line 520
    iget-object v6, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v6, v6, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 521
    iget-object v15, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v15, v15, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 523
    iget-object v9, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-virtual {v1, v15, v10, v6, v7}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 526
    :cond_dc
    const/4 v9, 0x0

    goto :goto_90

    .line 529
    :cond_de
    iget v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    if-ne v14, v0, :cond_ea

    iget v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-ne v13, v0, :cond_ea

    iget v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    if-eq v11, v0, :cond_1bc

    .line 532
    :cond_ea
    move v9, v14

    :goto_eb
    if-gt v9, v13, :cond_1a1

    .line 534
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    invoke-virtual {v1, v9, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v15

    .line 536
    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 537
    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    goto :goto_111

    .line 539
    :cond_110
    move v0, v10

    .line 541
    :goto_111
    sub-int v3, v9, v11

    .line 546
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12d

    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12d

    move v2, v12

    goto :goto_12e

    :cond_12d
    const/4 v2, 0x0

    .line 548
    :goto_12e
    if-eqz v2, :cond_154

    .line 549
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 550
    iget-object v4, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iput v3, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 551
    invoke-virtual {v1, v2, v3}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 552
    invoke-virtual {v1, v0, v3, v2, v7}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 555
    move v0, v10

    goto :goto_18a

    .line 557
    :cond_154
    invoke-virtual {v1, v9, v8}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v4

    .line 558
    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 559
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    .line 563
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getFrameForChild()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 566
    if-eqz v0, :cond_16e

    .line 567
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 569
    :cond_16e
    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v16, v0

    new-instance v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-object/from16 v10, v16

    invoke-direct/range {v0 .. v6}, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V

    invoke-virtual {v10, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    invoke-direct {v1, v2}, Landroid/widget/AdapterViewAnimator;->addChild(Landroid/view/View;)V

    .line 572
    invoke-virtual {v1, v2, v3}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 573
    const/4 v0, -0x1

    invoke-virtual {v1, v0, v3, v2, v7}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 575
    :goto_18a
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 532
    add-int/lit8 v9, v9, 0x1

    move v10, v0

    const/4 v12, 0x1

    goto/16 :goto_eb

    .line 577
    :cond_1a1
    iput v14, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 578
    iput v13, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 579
    iput v11, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 580
    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_1bc

    .line 581
    iget v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    invoke-virtual {v1, v0, v8}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v0

    .line 582
    iget v2, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    invoke-virtual {v1, v2, v8}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v2

    .line 583
    iget-object v3, v1, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v3, v0, v2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 586
    :cond_1bc
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->requestLayout()V

    .line 587
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->invalidate()V

    .line 588
    return-void
.end method

.method public whitelist showPrevious()V
    .registers 2

    .line 354
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 355
    return-void
.end method

.method greylist-max-o showTapFeedback(Landroid/view/View;)V
    .registers 3

    .line 605
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 606
    return-void
.end method

.method greylist-max-o transformViewForTransition(IILandroid/view/View;Z)V
    .registers 5

    .line 276
    const/4 p4, -0x1

    if-ne p1, p4, :cond_e

    .line 277
    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 278
    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1a

    .line 279
    :cond_e
    if-ne p2, p4, :cond_1a

    .line 280
    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 281
    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 283
    :cond_1a
    :goto_1a
    return-void
.end method
