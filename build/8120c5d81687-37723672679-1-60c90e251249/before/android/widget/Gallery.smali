.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$FlingRunnable;,
        Landroid/widget/Gallery$LayoutParams;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Gallery"

.field private static final greylist-max-o localLOGV:Z = false


# instance fields
.field private greylist-max-o mAnimationDuration:I

.field private greylist-max-o mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private greylist-max-o mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private greylist mDownTouchPosition:I

.field private greylist mDownTouchView:Landroid/view/View;

.field private greylist mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

.field private greylist-max-p mGestureDetector:Landroid/view/GestureDetector;

.field private greylist-max-o mGravity:I

.field private greylist-max-o mIsFirstScroll:Z

.field private greylist-max-o mIsRtl:Z

.field private greylist-max-o mLeftMost:I

.field private greylist-max-o mReceivedInvokeKeyDown:Z

.field private greylist-max-o mRightMost:I

.field private greylist-max-o mSelectedCenterOffset:I

.field private greylist-max-p mSelectedChild:Landroid/view/View;

.field private greylist-max-o mShouldCallbackDuringFling:Z

.field private greylist-max-o mShouldCallbackOnUnselectedItemClick:Z

.field private greylist-max-o mShouldStopFling:Z

.field private greylist mSpacing:I

.field private greylist-max-o mSuppressSelectionChanged:Z

.field private greylist-max-o mUnselectedAlpha:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimationDuration(Landroid/widget/Gallery;)I
    .registers 1

    iget p0, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRtl(Landroid/widget/Gallery;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldStopFling(Landroid/widget/Gallery;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDownTouchPosition(Landroid/widget/Gallery;I)V
    .registers 2

    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShouldStopFling(Landroid/widget/Gallery;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSuppressSelectionChanged(Landroid/widget/Gallery;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchUnpress(Landroid/widget/Gallery;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscrollIntoSlots(Landroid/widget/Gallery;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 201
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 204
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 205
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 209
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15

    .line 212
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 87
    const/16 v1, 0x190

    iput v1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 127
    new-instance v1, Landroid/widget/Gallery$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    iput-object v1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 134
    new-instance v1, Landroid/widget/Gallery$1;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    iput-object v1, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 160
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 165
    iput-boolean v1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 191
    iput-boolean v1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 214
    sget-object v2, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 216
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/Gallery;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 219
    const/4 p1, -0x1

    invoke-virtual {v7, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 220
    if-ltz p2, :cond_39

    .line 221
    invoke-virtual {p0, p2}, Landroid/widget/Gallery;->setGravity(I)V

    .line 224
    :cond_39
    nop

    .line 225
    invoke-virtual {v7, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 226
    if-lez p1, :cond_43

    .line 227
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    .line 230
    :cond_43
    nop

    .line 231
    const/4 p1, 0x2

    invoke-virtual {v7, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 232
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 234
    const/4 p1, 0x3

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {v7, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 236
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 238
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    iget p1, v3, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v3, Landroid/widget/Gallery;->mGroupFlags:I

    .line 244
    iget p1, v3, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 p1, p1, 0x800

    iput p1, v3, Landroid/widget/Gallery;->mGroupFlags:I

    .line 245
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/Gallery;)I
    .registers 1

    .line 65
    iget p0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return p0
.end method

.method static synthetic blacklist access$100(Landroid/widget/Gallery;)I
    .registers 1

    .line 65
    iget p0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return p0
.end method

.method static synthetic blacklist access$200(Landroid/widget/Gallery;)I
    .registers 1

    .line 65
    iget p0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return p0
.end method

.method static synthetic blacklist access$300(Landroid/widget/Gallery;)I
    .registers 1

    .line 65
    iget p0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return p0
.end method

.method private greylist-max-o calculateTop(Landroid/view/View;Z)I
    .registers 4

    .line 961
    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/widget/Gallery;->getMeasuredHeight()I

    move-result v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/widget/Gallery;->getHeight()I

    move-result v0

    .line 962
    :goto_b
    if-eqz p2, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 964
    :goto_16
    nop

    .line 966
    iget p2, p0, Landroid/widget/Gallery;->mGravity:I

    sparse-switch p2, :sswitch_data_3e

    const/4 v0, 0x0

    goto :goto_3d

    .line 976
    :sswitch_1e
    iget-object p2, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    goto :goto_3d

    .line 968
    :sswitch_25
    iget-object p1, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 969
    goto :goto_3d

    .line 971
    :sswitch_2a
    iget-object p2, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iget-object p2, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    .line 973
    iget-object p1, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    .line 974
    nop

    .line 979
    :goto_3d
    return v0

    :sswitch_data_3e
    .sparse-switch
        0x10 -> :sswitch_2a
        0x30 -> :sswitch_25
        0x50 -> :sswitch_1e
    .end sparse-switch
.end method

.method private greylist-max-o detachOffScreenChildren(Z)V
    .registers 12

    .line 507
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    .line 508
    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 509
    nop

    .line 510
    nop

    .line 512
    const/4 v2, 0x0

    if-eqz p1, :cond_3b

    .line 513
    iget v3, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 514
    move v4, v2

    move v5, v4

    move v6, v5

    :goto_10
    if-ge v4, v0, :cond_34

    .line 515
    iget-boolean v7, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v7, :cond_1a

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v4

    goto :goto_1b

    :cond_1a
    move v7, v4

    .line 516
    :goto_1b
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 517
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v3, :cond_26

    .line 518
    goto :goto_34

    .line 520
    :cond_26
    nop

    .line 521
    add-int/lit8 v5, v5, 0x1

    .line 522
    iget-object v6, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v1, v7

    invoke-virtual {v6, v9, v8}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 514
    add-int/lit8 v4, v4, 0x1

    move v6, v7

    goto :goto_10

    .line 525
    :cond_34
    :goto_34
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-nez v0, :cond_39

    .line 526
    goto :goto_3a

    .line 525
    :cond_39
    move v2, v6

    .line 528
    :goto_3a
    goto :goto_70

    .line 529
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 530
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v5, v2

    move v6, v5

    :goto_47
    if-ltz v4, :cond_6a

    .line 531
    iget-boolean v7, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v7, :cond_50

    sub-int v7, v0, v4

    goto :goto_51

    :cond_50
    move v7, v4

    .line 532
    :goto_51
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 533
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v3, :cond_5c

    .line 534
    goto :goto_6a

    .line 536
    :cond_5c
    nop

    .line 537
    add-int/lit8 v5, v5, 0x1

    .line 538
    iget-object v6, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v1, v7

    invoke-virtual {v6, v9, v8}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 530
    add-int/lit8 v4, v4, -0x1

    move v6, v7

    goto :goto_47

    .line 541
    :cond_6a
    :goto_6a
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_6f

    .line 542
    goto :goto_70

    .line 541
    :cond_6f
    move v2, v6

    .line 546
    :goto_70
    invoke-virtual {p0, v2, v5}, Landroid/widget/Gallery;->detachViewsFromParent(II)V

    .line 548
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v0, :cond_7c

    .line 549
    iget p1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr p1, v5

    iput p1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 551
    :cond_7c
    return-void
.end method

.method private greylist-max-o dispatchLongPress(Landroid/view/View;IJFFZ)Z
    .registers 16

    .line 1224
    nop

    .line 1226
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1227
    iget-object v2, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v4, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v5, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    move-object v3, p0

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p3

    goto :goto_16

    .line 1226
    :cond_13
    move-object v3, p0

    move-wide v6, p3

    move p3, v1

    .line 1231
    :goto_16
    if-nez p3, :cond_2a

    .line 1232
    new-instance p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {p3, p1, p2, v6, v7}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object p3, v3, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1234
    if-eqz p7, :cond_26

    .line 1235
    invoke-super {p0, p1, p5, p6}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result p3

    goto :goto_2a

    .line 1237
    :cond_26
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p3

    .line 1241
    :cond_2a
    :goto_2a
    if-eqz p3, :cond_2f

    .line 1242
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 1245
    :cond_2f
    return p3
.end method

.method private greylist-max-o dispatchPress(Landroid/view/View;)V
    .registers 3

    .line 1139
    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 1140
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1143
    :cond_6
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1144
    return-void
.end method

.method private greylist-max-o dispatchUnpress()V
    .registers 4

    .line 1148
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    const/4 v1, 0x0

    if-ltz v0, :cond_13

    .line 1149
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1148
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1152
    :cond_13
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1153
    return-void
.end method

.method private greylist fillToGalleryLeft()V
    .registers 2

    .line 715
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_8

    .line 716
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftRtl()V

    goto :goto_b

    .line 718
    :cond_8
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftLtr()V

    .line 720
    :goto_b
    return-void
.end method

.method private greylist-max-o fillToGalleryLeftLtr()V
    .registers 7

    .line 754
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 755
    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 758
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 762
    const/4 v4, 0x1

    if-eqz v3, :cond_15

    .line 763
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v5, v4

    .line 764
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    goto :goto_21

    .line 767
    :cond_15
    nop

    .line 768
    iget v3, p0, Landroid/widget/Gallery;->mRight:I

    iget v5, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v3, v5

    iget v5, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v3, v5

    .line 769
    iput-boolean v4, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    move v5, v2

    .line 772
    :goto_21
    if-le v3, v1, :cond_37

    if-ltz v5, :cond_37

    .line 773
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v4, v5, v4

    invoke-direct {p0, v5, v4, v3, v2}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 777
    iput v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 780
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    .line 781
    add-int/lit8 v5, v5, -0x1

    goto :goto_21

    .line 783
    :cond_37
    return-void
.end method

.method private greylist-max-o fillToGalleryLeftRtl()V
    .registers 7

    .line 723
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 724
    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 725
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v2

    .line 726
    iget v3, p0, Landroid/widget/Gallery;->mItemCount:I

    .line 729
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 733
    if-eqz v3, :cond_1b

    .line 734
    iget v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v4, v2

    .line 735
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    goto :goto_2c

    .line 738
    :cond_1b
    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    const/4 v3, 0x1

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 739
    iget v2, p0, Landroid/widget/Gallery;->mRight:I

    iget v5, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v2, v5

    iget v5, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v2, v5

    .line 740
    iput-boolean v3, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    .line 743
    :goto_2c
    if-le v2, v1, :cond_43

    iget v3, p0, Landroid/widget/Gallery;->mItemCount:I

    if-ge v4, v3, :cond_43

    .line 744
    iget v3, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v3, v4, v3

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v2, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 748
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    .line 749
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 751
    :cond_43
    return-void
.end method

.method private greylist fillToGalleryRight()V
    .registers 2

    .line 787
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_8

    .line 788
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightRtl()V

    goto :goto_b

    .line 790
    :cond_8
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightLtr()V

    .line 792
    :goto_b
    return-void
.end method

.method private greylist-max-o fillToGalleryRightLtr()V
    .registers 8

    .line 826
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 827
    iget v1, p0, Landroid/widget/Gallery;->mRight:I

    iget v2, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 828
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v2

    .line 829
    iget v3, p0, Landroid/widget/Gallery;->mItemCount:I

    .line 832
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 836
    const/4 v5, 0x1

    if-eqz v4, :cond_22

    .line 837
    iget v6, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v6, v2

    .line 838
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_2c

    .line 840
    :cond_22
    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v6, v2, -0x1

    iput v6, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 841
    iget v2, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 842
    iput-boolean v5, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    .line 845
    :goto_2c
    if-ge v2, v1, :cond_40

    if-ge v6, v3, :cond_40

    .line 846
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v4, v6, v4

    invoke-direct {p0, v6, v4, v2, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 850
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    .line 851
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 853
    :cond_40
    return-void
.end method

.method private greylist-max-o fillToGalleryRightRtl()V
    .registers 7

    .line 795
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 796
    iget v1, p0, Landroid/widget/Gallery;->mRight:I

    iget v2, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 799
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 803
    const/4 v4, 0x1

    if-eqz v3, :cond_1b

    .line 804
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v2, v4

    .line 805
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_20

    .line 807
    :cond_1b
    nop

    .line 808
    iget v3, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 809
    iput-boolean v4, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    .line 812
    :goto_20
    if-ge v3, v1, :cond_36

    if-ltz v2, :cond_36

    .line 813
    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v5, v2, v5

    invoke-direct {p0, v2, v5, v3, v4}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 817
    iput v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 820
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    .line 821
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .line 823
    :cond_36
    return-void
.end method

.method private greylist-max-p getCenterOfGallery()I
    .registers 3

    .line 489
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static greylist-max-p getCenterOfView(Landroid/view/View;)I
    .registers 2

    .line 497
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private greylist makeAndAddView(IIIZ)Landroid/view/View;
    .registers 8

    .line 874
    iget-boolean v0, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-nez v0, :cond_29

    .line 875
    iget-object v0, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_29

    .line 878
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 881
    iget v1, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 882
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    .line 881
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 883
    iget v1, p0, Landroid/widget/Gallery;->mLeftMost:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 886
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 888
    return-object v0

    .line 893
    :cond_29
    iget-object v0, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 896
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 898
    return-object p1
.end method

.method private greylist-max-o offsetChildrenLeftAndRight(I)V
    .registers 4

    .line 479
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    .line 480
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 479
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 482
    :cond_12
    return-void
.end method

.method private greylist-max-o onFinishedMovement()V
    .registers 3

    .line 573
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 574
    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 577
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 579
    :cond_a
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 580
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 581
    return-void
.end method

.method private greylist-max-o scrollIntoSlots()V
    .registers 3

    .line 559
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_b

    goto :goto_22

    .line 561
    :cond_b
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 562
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v1

    .line 564
    sub-int/2addr v1, v0

    .line 565
    if-eqz v1, :cond_1e

    .line 566
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_21

    .line 568
    :cond_1e
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    .line 570
    :goto_21
    return-void

    .line 559
    :cond_22
    :goto_22
    return-void
.end method

.method private greylist-max-o scrollToChild(I)Z
    .registers 3

    .line 1323
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1325
    if-eqz p1, :cond_16

    .line 1326
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v0

    invoke-static {p1}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    .line 1327
    iget-object p1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {p1, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 1328
    const/4 p1, 0x1

    return p1

    .line 1331
    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o setSelectionToCenterChild()V
    .registers 7

    .line 596
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 597
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v1, :cond_7

    return-void

    .line 599
    :cond_7
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v1

    .line 602
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt v2, v1, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    if-lt v0, v1, :cond_18

    .line 603
    return-void

    .line 607
    :cond_18
    nop

    .line 608
    nop

    .line 609
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_24
    if-ltz v0, :cond_56

    .line 611
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 613
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-gt v5, v1, :cond_38

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    if-lt v5, v1, :cond_38

    .line 615
    nop

    .line 616
    goto :goto_57

    .line 619
    :cond_38
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 620
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 619
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 621
    if-ge v4, v2, :cond_53

    .line 622
    nop

    .line 623
    move v3, v0

    move v2, v4

    .line 609
    :cond_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_56
    move v0, v3

    .line 627
    :goto_57
    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v1, v0

    .line 629
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-eq v1, v0, :cond_67

    .line 630
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 631
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 632
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    .line 634
    :cond_67
    return-void
.end method

.method private greylist-max-o setUpChild(Landroid/view/View;IIZ)V
    .registers 10

    .line 917
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery$LayoutParams;

    .line 918
    if-nez v0, :cond_e

    .line 919
    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery$LayoutParams;

    .line 922
    :cond_e
    iget-boolean v1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    const/4 v2, 0x0

    if-eq p4, v1, :cond_15

    const/4 v1, -0x1

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v0, v3}, Landroid/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 924
    if-nez p2, :cond_1d

    move v2, v3

    :cond_1d
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 927
    iget p2, p0, Landroid/widget/Gallery;->mHeightMeasureSpec:I

    iget-object v1, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/Gallery$LayoutParams;->height:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 929
    iget v1, p0, Landroid/widget/Gallery;->mWidthMeasureSpec:I

    iget-object v2, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    iget v0, v0, Landroid/widget/Gallery$LayoutParams;->width:I

    invoke-static {v1, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 933
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 939
    invoke-direct {p0, p1, v3}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result p2

    .line 940
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 942
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 943
    if-eqz p4, :cond_57

    .line 944
    nop

    .line 945
    add-int/2addr v1, p3

    goto :goto_5b

    .line 947
    :cond_57
    sub-int p4, p3, v1

    .line 948
    move v1, p3

    move p3, p4

    .line 951
    :goto_5b
    invoke-virtual {p1, p3, p2, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 952
    return-void
.end method

.method private greylist-max-o showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .registers 13

    .line 1193
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1194
    if-gez v2, :cond_8

    .line 1195
    const/4 p1, 0x0

    return p1

    .line 1198
    :cond_8
    iget-object v0, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1199
    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    move-result p1

    return p1
.end method

.method private greylist-max-o showContextMenuInternal(FFZ)Z
    .registers 13

    .line 1213
    invoke-virtual {p0}, Landroid/widget/Gallery;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ltz v0, :cond_20

    .line 1214
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 1215
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1216
    iget v3, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/Gallery;->mSelectedRowId:J

    move-object v1, p0

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v1 .. v8}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    move-result p1

    return p1

    .line 1219
    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o updateSelectedItemMetadata()V
    .registers 4

    .line 1344
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1346
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1347
    if-nez v1, :cond_10

    .line 1348
    return-void

    .line 1351
    :cond_10
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1352
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 1354
    invoke-virtual {p0}, Landroid/widget/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1355
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1360
    :cond_20
    if-eqz v0, :cond_2b

    if-eq v0, v1, :cond_2b

    .line 1363
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1367
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1370
    :cond_2b
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 347
    instance-of p1, p1, Landroid/widget/Gallery$LayoutParams;

    return p1
.end method

.method protected whitelist computeHorizontalScrollExtent()I
    .registers 2

    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist computeHorizontalScrollOffset()I
    .registers 2

    .line 336
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    return v0
.end method

.method protected whitelist computeHorizontalScrollRange()I
    .registers 2

    .line 342
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    return v0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1251
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected whitelist dispatchSetPressed(Z)V
    .registers 3

    .line 1168
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1169
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1171
    :cond_9
    return-void
.end method

.method public whitelist dispatchSetSelected(Z)V
    .registers 2

    .line 1162
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 365
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 357
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 352
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1423
    const-class v0, Landroid/widget/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .registers 5

    .line 1388
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 1391
    if-gez v0, :cond_8

    return p2

    .line 1393
    :cond_8
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_d

    .line 1395
    return v0

    .line 1396
    :cond_d
    if-lt p2, v0, :cond_12

    .line 1398
    add-int/lit8 p2, p2, 0x1

    return p2

    .line 1401
    :cond_12
    return p2
.end method

.method greylist-max-o getChildHeight(Landroid/view/View;)I
    .registers 2

    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method protected whitelist getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4

    .line 321
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 322
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_a

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_a
    iget p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    :goto_c
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 324
    const/4 p1, 0x1

    return p1
.end method

.method protected whitelist getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .line 1175
    iget-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method greylist-max-o getLimitedMotionScrollAmount(ZI)I
    .registers 6

    .line 441
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_a
    move v0, v1

    .line 442
    :goto_b
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 444
    if-nez v0, :cond_15

    .line 445
    return p2

    .line 448
    :cond_15
    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 449
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    .line 451
    if-eqz p1, :cond_22

    .line 452
    if-gt v0, v2, :cond_25

    .line 455
    return v1

    .line 458
    :cond_22
    if-lt v0, v2, :cond_25

    .line 461
    return v1

    .line 465
    :cond_25
    sub-int/2addr v2, v0

    .line 467
    if-eqz p1, :cond_2d

    .line 468
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_31

    .line 469
    :cond_2d
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 467
    :goto_31
    return p1
.end method

.method greylist-max-o layout(IZ)V
    .registers 6

    .line 649
    invoke-virtual {p0}, Landroid/widget/Gallery;->isLayoutRtl()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 651
    iget-object p1, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 652
    iget p2, p0, Landroid/widget/Gallery;->mRight:I

    iget v0, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v0

    .line 654
    iget-boolean v0, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-eqz v0, :cond_20

    .line 655
    invoke-virtual {p0}, Landroid/widget/Gallery;->handleDataChanged()V

    .line 659
    :cond_20
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-nez v0, :cond_28

    .line 660
    invoke-virtual {p0}, Landroid/widget/Gallery;->resetList()V

    .line 661
    return-void

    .line 665
    :cond_28
    iget v0, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    if-ltz v0, :cond_31

    .line 666
    iget v0, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 670
    :cond_31
    invoke-virtual {p0}, Landroid/widget/Gallery;->recycleAllViews()V

    .line 674
    invoke-virtual {p0}, Landroid/widget/Gallery;->detachAllViewsFromParent()V

    .line 680
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 681
    iput v0, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 689
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 690
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v0, v2}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v1

    .line 693
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget p2, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    add-int/2addr p1, p2

    .line 695
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 697
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 698
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 701
    iget-object p1, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {p1}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 703
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 704
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    .line 706
    iput-boolean v0, p0, Landroid/widget/Gallery;->mDataChanged:Z

    .line 707
    iput-boolean v0, p0, Landroid/widget/Gallery;->mNeedSync:Z

    .line 708
    iget p1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 710
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 711
    return-void
.end method

.method greylist moveDirection(I)Z
    .registers 3

    .line 1311
    invoke-virtual {p0}, Landroid/widget/Gallery;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_7

    neg-int p1, p1

    .line 1312
    :cond_7
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    add-int/2addr v0, p1

    .line 1314
    iget p1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez p1, :cond_1c

    if-ltz v0, :cond_1c

    iget p1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-ge v0, p1, :cond_1c

    .line 1315
    iget p1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 1316
    const/4 p1, 0x1

    return p1

    .line 1318
    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 3

    .line 249
    invoke-super {p0}, Landroid/widget/AbsSpinner;->onAttachedToWindow()V

    .line 251
    iget-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_18

    .line 252
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 253
    iget-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 255
    :cond_18
    return-void
.end method

.method greylist-max-o onCancel()V
    .registers 1

    .line 1114
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 1115
    return-void
.end method

.method public whitelist onDown(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1081
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 1084
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/Gallery;->pointToPosition(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 1086
    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    const/4 v0, 0x1

    if-ltz p1, :cond_2b

    .line 1087
    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1088
    iget-object p1, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1092
    :cond_2b
    iput-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 1095
    return v0
.end method

.method public whitelist onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 1022
    iget-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    const/4 p2, 0x1

    if-nez p1, :cond_10

    .line 1026
    iget-object p1, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1029
    iget-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez p1, :cond_10

    iput-boolean p2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1033
    :cond_10
    iget-object p1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    neg-float p3, p3

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 1035
    return p2
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    .line 1407
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1414
    if-eqz p1, :cond_14

    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz p1, :cond_14

    .line 1415
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1416
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 1419
    :cond_14
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 1429
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1430
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1431
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1432
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_24

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_24

    .line 1433
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1435
    :cond_24
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_37

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v0, :cond_37

    .line 1436
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1439
    :cond_37
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1260
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_24

    goto :goto_1e

    .line 1276
    :sswitch_5
    iput-boolean v0, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    goto :goto_1e

    .line 1269
    :sswitch_8
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->moveDirection(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1270
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->playSoundEffect(I)V

    .line 1271
    return v0

    .line 1263
    :sswitch_13
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->moveDirection(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1264
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->playSoundEffect(I)V

    .line 1265
    return v0

    .line 1280
    :cond_1e
    :goto_1e
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_24
    .sparse-switch
        0x15 -> :sswitch_13
        0x16 -> :sswitch_8
        0x17 -> :sswitch_5
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1285
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1286
    iget-boolean p1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz p1, :cond_36

    .line 1287
    iget p1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez p1, :cond_36

    .line 1288
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, p1}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 1289
    new-instance p1, Landroid/widget/Gallery$2;

    invoke-direct {p1, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    .line 1294
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p2

    int-to-long v0, p2

    .line 1289
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1296
    iget p1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget p2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr p1, p2

    .line 1297
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-object v0, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    .line 1298
    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1297
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1303
    :cond_36
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 1304
    const/4 p1, 0x1

    return p1

    .line 1306
    :cond_3b
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 6

    .line 371
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 377
    move-object p1, p0

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/widget/Gallery;->mInLayout:Z

    .line 378
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2}, Landroid/widget/Gallery;->layout(IZ)V

    .line 379
    iput-boolean p2, p1, Landroid/widget/Gallery;->mInLayout:Z

    .line 380
    return-void
.end method

.method public whitelist onLongPress(Landroid/view/MotionEvent;)V
    .registers 11

    .line 1119
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-gez v0, :cond_5

    .line 1120
    return-void

    .line 1123
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 1125
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 1126
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    .line 1127
    return-void
.end method

.method public whitelist onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    .line 1052
    iget-object p1, p0, Landroid/widget/Gallery;->mParent:Landroid/view/ViewParent;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1056
    iget-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    const/4 p4, 0x0

    if-nez p1, :cond_1d

    .line 1057
    iget-boolean p1, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz p1, :cond_23

    .line 1063
    iget-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez p1, :cond_15

    iput-boolean p2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1064
    :cond_15
    iget-object p1, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_23

    .line 1067
    :cond_1d
    iget-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz p1, :cond_23

    iput-boolean p4, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1071
    :cond_23
    :goto_23
    float-to-int p1, p3

    mul-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 1073
    iput-boolean p4, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 1074
    return p2
.end method

.method public whitelist onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    .line 1133
    return-void
.end method

.method public whitelist onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1002
    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz p1, :cond_27

    .line 1005
    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 1008
    iget-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez p1, :cond_16

    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ne p1, v0, :cond_25

    .line 1009
    :cond_16
    iget-object p1, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget-object v1, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 1010
    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1009
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1013
    :cond_25
    const/4 p1, 0x1

    return p1

    .line 1016
    :cond_27
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 986
    iget-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 989
    const/4 v1, 0x1

    if-ne p1, v1, :cond_11

    .line 991
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    goto :goto_17

    .line 992
    :cond_11
    const/4 v1, 0x3

    if-ne p1, v1, :cond_17

    .line 993
    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    .line 996
    :cond_17
    :goto_17
    return v0
.end method

.method greylist-max-o onUp()V
    .registers 2

    .line 1103
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1104
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    .line 1107
    :cond_f
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    .line 1108
    return-void
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 5

    .line 1444
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 1445
    return v0

    .line 1447
    :cond_8
    const/4 p2, 0x0

    sparse-switch p1, :sswitch_data_44

    .line 1461
    return p2

    .line 1455
    :sswitch_d
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_26

    iget p1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez p1, :cond_26

    iget p1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez p1, :cond_26

    .line 1456
    iget p1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget p2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr p1, p2

    .line 1457
    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result p1

    return p1

    .line 1459
    :cond_26
    return p2

    .line 1449
    :sswitch_27
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_43

    iget p1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez p1, :cond_43

    iget p1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_43

    .line 1450
    iget p1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget p2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr p1, p2

    .line 1451
    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result p1

    return p1

    .line 1453
    :cond_43
    return p2

    :sswitch_data_44
    .sparse-switch
        0x1000 -> :sswitch_27
        0x2000 -> :sswitch_d
    .end sparse-switch
.end method

.method greylist-max-o selectionChanged()V
    .registers 2

    .line 585
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_7

    .line 586
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 588
    :cond_7
    return-void
.end method

.method public whitelist setAnimationDuration(I)V
    .registers 2

    .line 293
    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 294
    return-void
.end method

.method public whitelist setCallbackDuringFling(Z)V
    .registers 2

    .line 267
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 268
    return-void
.end method

.method public greylist-max-o setCallbackOnUnselectedItemClick(Z)V
    .registers 2

    .line 280
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 281
    return-void
.end method

.method public whitelist setGravity(I)V
    .registers 3

    .line 1380
    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_9

    .line 1381
    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    .line 1382
    invoke-virtual {p0}, Landroid/widget/Gallery;->requestLayout()V

    .line 1384
    :cond_9
    return-void
.end method

.method greylist-max-o setSelectedPositionInt(I)V
    .registers 2

    .line 1336
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1339
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 1340
    return-void
.end method

.method public whitelist setSpacing(I)V
    .registers 2

    .line 304
    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 305
    return-void
.end method

.method public whitelist setUnselectedAlpha(F)V
    .registers 2

    .line 315
    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    .line 316
    return-void
.end method

.method public whitelist showContextMenu()Z
    .registers 3

    .line 1204
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Landroid/widget/Gallery;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenu(FF)Z
    .registers 4

    .line 1209
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;->showContextMenuInternal(FFZ)Z

    move-result p1

    return p1
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .registers 4

    .line 1180
    invoke-virtual {p0}, Landroid/widget/Gallery;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1181
    return v1

    .line 1183
    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/Gallery;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 5

    .line 1188
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method greylist trackMotionScroll(I)V
    .registers 5

    .line 396
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 397
    return-void

    .line 400
    :cond_7
    const/4 v0, 0x0

    if-gez p1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    move v1, v0

    .line 402
    :goto_d
    invoke-virtual {p0, v1, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v2

    .line 403
    if-eq v2, p1, :cond_1b

    .line 405
    iget-object p1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-static {p1, v0}, Landroid/widget/Gallery$FlingRunnable;->-$$Nest$mendFling(Landroid/widget/Gallery$FlingRunnable;Z)V

    .line 406
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    .line 409
    :cond_1b
    invoke-direct {p0, v2}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 411
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 413
    if-eqz v1, :cond_27

    .line 415
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    goto :goto_2a

    .line 418
    :cond_27
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 422
    :goto_2a
    iget-object p1, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {p1}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 424
    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    .line 426
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 427
    if-eqz p1, :cond_4a

    .line 428
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 429
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 430
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 431
    add-int/2addr v1, p1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 435
    :cond_4a
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/Gallery;->onScrollChanged(IIII)V

    .line 437
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 438
    return-void
.end method
