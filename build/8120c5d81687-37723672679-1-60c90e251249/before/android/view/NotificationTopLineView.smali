.class public Landroid/view/NotificationTopLineView;
.super Landroid/view/ViewGroup;
.source "NotificationTopLineView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NotificationTopLineView$OverflowAdjuster;,
        Landroid/view/NotificationTopLineView$HeaderTouchListener;
    }
.end annotation


# instance fields
.field private blacklist mAppName:Landroid/view/View;

.field private final blacklist mChildHideWidth:I

.field private final blacklist mChildMinWidth:I

.field private blacklist mFeedbackIcon:Landroid/view/View;

.field private blacklist mFeedbackListener:Landroid/view/View$OnClickListener;

.field private final blacklist mGravityY:I

.field private blacklist mHeaderText:Landroid/view/View;

.field private blacklist mHeaderTextDivider:Landroid/view/View;

.field private blacklist mHeaderTextMarginEnd:I

.field private blacklist mMaxAscent:I

.field private blacklist mMaxDescent:I

.field private final blacklist mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

.field private blacklist mSecondaryHeaderText:Landroid/view/View;

.field private blacklist mSecondaryHeaderTextDivider:Landroid/view/View;

.field private blacklist mTitle:Landroid/view/View;

.field private blacklist mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

.field private blacklist mViewsToDisappear:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChildHideWidth(Landroid/view/NotificationTopLineView;)I
    .registers 1

    iget p0, p0, Landroid/view/NotificationTopLineView;->mChildHideWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeedbackIcon(Landroid/view/NotificationTopLineView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewsToDisappear(Landroid/view/NotificationTopLineView;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFirstChildNotGone(Landroid/view/NotificationTopLineView;)Landroid/view/View;
    .registers 1

    invoke-direct {p0}, Landroid/view/NotificationTopLineView;->getFirstChildNotGone()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    new-instance v0, Landroid/view/NotificationTopLineView$OverflowAdjuster;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;-><init>(Landroid/view/NotificationTopLineView;Landroid/view/NotificationTopLineView-IA;)V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

    .line 54
    new-instance v0, Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-direct {v0, p0}, Landroid/view/NotificationTopLineView$HeaderTouchListener;-><init>(Landroid/view/NotificationTopLineView;)V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    .line 79
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    const v1, 0x10502da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    .line 81
    const v1, 0x10502d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/NotificationTopLineView;->mChildHideWidth:I

    .line 85
    const v0, 0x10100af

    filled-new-array {v0}, [I

    move-result-object v0

    .line 86
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 87
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    and-int/lit8 p1, p2, 0x50

    const/16 p3, 0x50

    if-ne p1, p3, :cond_4b

    .line 90
    iput p3, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    goto :goto_57

    .line 91
    :cond_4b
    const/16 p1, 0x30

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_53

    .line 92
    iput p1, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    goto :goto_57

    .line 94
    :cond_53
    const/16 p1, 0x10

    iput p1, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    .line 96
    :goto_57
    return-void
.end method

.method private blacklist getFirstChildNotGone()Landroid/view/View;
    .registers 5

    .line 381
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 382
    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 383
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_14

    .line 384
    return-object v1

    .line 381
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 387
    :cond_17
    return-object p0
.end method

.method private blacklist updateTouchListener()V
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_9

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    return-void

    .line 260
    :cond_9
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 261
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-virtual {v0}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->bindTouchRects()V

    .line 262
    return-void
.end method


# virtual methods
.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 252
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist getHeaderTextMarginEnd()I
    .registers 2

    .line 291
    iget v0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    return v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .registers 2

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInTouchRect(FF)Z
    .registers 4

    .line 406
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_6

    .line 407
    const/4 p1, 0x0

    return p1

    .line 409
    :cond_6
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-static {v0, p1, p2}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->-$$Nest$misInside(Landroid/view/NotificationTopLineView$HeaderTouchListener;FF)Z

    move-result p1

    return p1
.end method

.method public blacklist isTitlePresent()Z
    .registers 2

    .line 399
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected whitelist onFinishInflate()V
    .registers 2

    .line 100
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 101
    const v0, 0x1020216

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mAppName:Landroid/view/View;

    .line 102
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    .line 103
    const v0, 0x102034d

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    .line 104
    const v0, 0x102034e

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    .line 105
    const v0, 0x102034f

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderText:Landroid/view/View;

    .line 106
    const v0, 0x1020350

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderTextDivider:Landroid/view/View;

    .line 107
    const v0, 0x10202fd

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    .line 108
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 22

    .line 175
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getLayoutDirection()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b

    move v1, v3

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 176
    :goto_c
    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getWidth()I

    move-result v4

    .line 177
    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getPaddingStart()I

    move-result v5

    .line 178
    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v6

    .line 179
    sub-int v7, p5, p3

    .line 180
    iget v8, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    sub-int v8, v7, v8

    iget v9, v0, Landroid/view/NotificationTopLineView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    .line 184
    iget v9, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    iget v10, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    iget v11, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    add-int/2addr v10, v11

    sub-int v10, v8, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget v10, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    add-int/2addr v9, v10

    .line 186
    nop

    .line 187
    const/4 v10, 0x0

    :goto_32
    if-ge v10, v6, :cond_d1

    .line 188
    invoke-virtual {v0, v10}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 189
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_42

    .line 190
    goto/16 :goto_cd

    .line 193
    :cond_42
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 194
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 198
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 199
    iget v15, v0, Landroid/view/NotificationTopLineView;->mGravityY:I

    sparse-switch v15, :sswitch_data_d6

    .line 228
    iget v15, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    goto :goto_97

    .line 220
    :sswitch_58
    iget v15, v0, Landroid/view/NotificationTopLineView;->mPaddingBottom:I

    sub-int v15, v7, v15

    .line 221
    sub-int/2addr v15, v12

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v15, v2

    .line 222
    const/4 v2, -0x1

    if-eq v14, v2, :cond_97

    .line 223
    sub-int v2, v12, v14

    .line 224
    iget v14, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    sub-int/2addr v14, v2

    sub-int/2addr v15, v14

    .line 225
    goto :goto_97

    .line 201
    :sswitch_6a
    iget v2, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v2

    .line 202
    const/4 v2, -0x1

    if-eq v14, v2, :cond_97

    .line 203
    iget v2, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    sub-int/2addr v2, v14

    add-int/2addr v15, v2

    goto :goto_97

    .line 207
    :sswitch_77
    const/4 v2, -0x1

    if-eq v14, v2, :cond_88

    .line 209
    sub-int v2, v8, v12

    if-lez v2, :cond_81

    .line 210
    sub-int v15, v9, v14

    goto :goto_97

    .line 212
    :cond_81
    iget v14, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    div-int/lit8 v2, v2, 0x2

    add-int v15, v14, v2

    goto :goto_97

    .line 215
    :cond_88
    iget v2, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    sub-int v14, v8, v12

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v2, v14

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v15, v2, v14

    .line 218
    nop

    .line 230
    :cond_97
    :goto_97
    iget-object v2, v0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 231
    add-int/2addr v12, v15

    invoke-virtual {v11, v5, v15, v5, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_cc

    .line 236
    :cond_a4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationTopLineMarginFix()Z

    move-result v2

    if-eqz v2, :cond_ac

    if-nez v3, :cond_b1

    .line 237
    :cond_ac
    invoke-virtual {v13}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    add-int/2addr v5, v2

    .line 239
    :cond_b1
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v5

    .line 240
    if-eqz v1, :cond_bb

    sub-int v3, v4, v2

    goto :goto_bc

    :cond_bb
    move v3, v5

    .line 241
    :goto_bc
    if-eqz v1, :cond_c1

    sub-int v5, v4, v5

    goto :goto_c2

    :cond_c1
    move v5, v2

    .line 242
    :goto_c2
    invoke-virtual {v13}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v13

    add-int/2addr v2, v13

    .line 243
    add-int/2addr v12, v15

    invoke-virtual {v11, v3, v15, v5, v12}, Landroid/view/View;->layout(IIII)V

    move v5, v2

    .line 245
    :goto_cc
    const/4 v3, 0x0

    .line 187
    :goto_cd
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_32

    .line 247
    :cond_d1
    invoke-direct {v0}, Landroid/view/NotificationTopLineView;->updateTouchListener()V

    .line 248
    return-void

    nop

    :sswitch_data_d6
    .sparse-switch
        0x10 -> :sswitch_77
        0x30 -> :sswitch_6a
        0x50 -> :sswitch_58
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .registers 16

    .line 112
    const-string v0, "NotificationTopLineView#onMeasure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 113
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 114
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 115
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_18

    const/4 p2, 0x1

    goto :goto_19

    :cond_18
    move p2, v1

    .line 116
    :goto_19
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 117
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 118
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_2c

    .line 119
    :cond_28
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 120
    :goto_2c
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingStart()I

    move-result v4

    .line 121
    nop

    .line 122
    const/4 v5, -0x1

    iput v5, p0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    .line 123
    iput v5, p0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    .line 124
    move v6, v1

    move v7, v5

    :goto_38
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_98

    .line 125
    invoke-virtual {p0, v6}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 126
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4b

    .line 128
    goto :goto_95

    .line 130
    :cond_4b
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 131
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v3, v10, v11}, Landroid/view/NotificationTopLineView;->getChildMeasureSpec(III)I

    move-result v10

    .line 133
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v2, v11, v12}, Landroid/view/NotificationTopLineView;->getChildMeasureSpec(III)I

    move-result v11

    .line 135
    invoke-virtual {v8, v10, v11}, Landroid/view/View;->measure(II)V

    .line 136
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v10, v9

    add-int/2addr v4, v10

    .line 137
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 138
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 139
    if-eq v9, v5, :cond_91

    .line 140
    iget v10, p0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    .line 141
    iget v10, p0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    sub-int v9, v8, v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    .line 143
    :cond_91
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 124
    :goto_95
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 146
    :cond_98
    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 148
    iget v3, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingEnd()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 149
    sub-int v5, p1, v3

    if-le v4, v5, :cond_e7

    .line 150
    sub-int/2addr v4, p1

    add-int/2addr v4, v3

    .line 152
    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

    invoke-virtual {v3, v4, v2}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->resetForOverflow(II)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v2

    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mAppName:Landroid/view/View;

    iget v4, p0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    .line 154
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v2

    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    iget-object v4, p0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    iget v6, p0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    .line 157
    invoke-virtual {v2, v3, v4, v6}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v2

    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderText:Landroid/view/View;

    iget-object v4, p0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderTextDivider:Landroid/view/View;

    .line 159
    invoke-virtual {v2, v3, v4, v1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v2

    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    iget v4, p0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    .line 161
    invoke-virtual {v2, v3, v5, v4}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v2

    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    iget-object v4, p0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    .line 163
    invoke-virtual {v2, v3, v4, v1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v2

    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    .line 165
    invoke-virtual {v2, v3, v5, v1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->finish()V

    .line 169
    :cond_e7
    if-eqz p2, :cond_ea

    move v0, v7

    :cond_ea
    invoke-virtual {p0, p1, v0}, Landroid/view/NotificationTopLineView;->setMeasuredDimension(II)V

    .line 170
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 171
    return-void
.end method

.method public blacklist onTouchUp(FFFF)Z
    .registers 6

    .line 416
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_6

    .line 417
    const/4 p1, 0x0

    return p1

    .line 419
    :cond_6
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->-$$Nest$monTouchUp(Landroid/view/NotificationTopLineView$HeaderTouchListener;FFFF)Z

    move-result p1

    return p1
.end method

.method public blacklist setFeedbackOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 268
    iput-object p1, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    .line 269
    iget-object p1, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-direct {p0}, Landroid/view/NotificationTopLineView;->updateTouchListener()V

    .line 271
    return-void
.end method

.method public blacklist setHeaderTextMarginEnd(I)V
    .registers 3

    .line 279
    iget v0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    if-eq v0, p1, :cond_9

    .line 280
    iput p1, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    .line 281
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->requestLayout()V

    .line 283
    :cond_9
    return-void
.end method

.method public blacklist setPaddingStart(I)V
    .registers 5

    .line 298
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/NotificationTopLineView;->setPaddingRelative(IIII)V

    .line 299
    return-void
.end method
