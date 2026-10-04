.class public Landroid/widget/FrameLayout;
.super Landroid/view/ViewGroup;
.source "FrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_CHILD_GRAVITY:I = 0x800033


# instance fields
.field private greylist mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private greylist mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private greylist mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private greylist mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private final greylist-max-o mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field greylist mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 85
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 66
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 70
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 74
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 78
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 66
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 70
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 74
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 78
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 101
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 103
    sget-object v5, Lcom/android/internal/R$styleable;->FrameLayout:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/FrameLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 106
    invoke-virtual {v7, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 107
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 110
    :cond_2f
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-void
.end method

.method private greylist-max-o getPaddingBottomWithForeground()I
    .registers 3

    .line 174
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 175
    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    .line 174
    :goto_14
    return v0
.end method

.method private greylist-max-o getPaddingTopWithForeground()I
    .registers 3

    .line 169
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 170
    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    .line 169
    :goto_14
    return v0
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 390
    instance-of p1, p1, Landroid/widget/FrameLayout$LayoutParams;

    return p1
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    .line 413
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 415
    const-string/jumbo v0, "measurement:measureAllChildren"

    iget-boolean v1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 416
    const-string/jumbo v0, "padding:foregroundPaddingLeft"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 417
    const-string/jumbo v0, "padding:foregroundPaddingTop"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 418
    const-string/jumbo v0, "padding:foregroundPaddingRight"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 419
    const-string/jumbo v0, "padding:foregroundPaddingBottom"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 420
    return-void
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .line 155
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 395
    sget-boolean v0, Landroid/widget/FrameLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1c

    .line 396
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_10

    .line 397
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0

    .line 398
    :cond_10
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1c

    .line 399
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 402
    :cond_1c
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4

    .line 380
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 407
    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConsiderGoneChildrenWhenMeasuring()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    move-result v0

    return v0
.end method

.method public whitelist getMeasureAllChildren()Z
    .registers 2

    .line 375
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method greylist-max-o getPaddingLeftWithForeground()I
    .registers 3

    .line 159
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 160
    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    .line 159
    :goto_14
    return v0
.end method

.method greylist-max-o getPaddingRightWithForeground()I
    .registers 3

    .line 164
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 165
    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    .line 164
    :goto_14
    return v0
.end method

.method greylist-max-o layoutChildren(IIIIZ)V
    .registers 15

    .line 274
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 276
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v1

    .line 277
    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result p1

    sub-int/2addr p3, p1

    .line 279
    invoke-direct {p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result p1

    .line 280
    sub-int/2addr p4, p2

    invoke-direct {p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result p2

    sub-int/2addr p4, p2

    .line 282
    const/4 p2, 0x0

    :goto_19
    if-ge p2, v0, :cond_8d

    .line 283
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_8a

    .line 285
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 287
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 288
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 293
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 294
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3d

    .line 295
    const v6, 0x800033

    .line 298
    :cond_3d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v7

    .line 299
    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    .line 300
    and-int/lit8 v6, v6, 0x70

    .line 302
    and-int/lit8 v7, v7, 0x7

    sparse-switch v7, :sswitch_data_8e

    goto :goto_62

    .line 308
    :sswitch_4d
    if-nez p5, :cond_62

    .line 309
    sub-int v7, p3, v4

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    .line 310
    goto :goto_65

    .line 304
    :sswitch_55
    sub-int v7, p3, v1

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v1

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    .line 306
    goto :goto_65

    .line 314
    :cond_62
    :goto_62
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v1

    .line 317
    :goto_65
    sparse-switch v6, :sswitch_data_98

    .line 329
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, p1, v3

    goto :goto_85

    .line 326
    :sswitch_6d
    sub-int v6, p4, v5

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v3

    .line 327
    goto :goto_85

    .line 319
    :sswitch_73
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, p1, v3

    .line 320
    goto :goto_85

    .line 322
    :sswitch_78
    sub-int v6, p4, p1

    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p1

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v3

    .line 324
    nop

    .line 332
    :goto_85
    add-int/2addr v4, v7

    add-int/2addr v5, v6

    invoke-virtual {v2, v7, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 282
    :cond_8a
    add-int/lit8 p2, p2, 0x1

    goto :goto_19

    .line 335
    :cond_8d
    return-void

    :sswitch_data_8e
    .sparse-switch
        0x1 -> :sswitch_55
        0x5 -> :sswitch_4d
    .end sparse-switch

    :sswitch_data_98
    .sparse-switch
        0x10 -> :sswitch_78
        0x30 -> :sswitch_73
        0x50 -> :sswitch_6d
    .end sparse-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 12

    .line 270
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->layoutChildren(IIIIZ)V

    .line 271
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 19

    .line 180
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    .line 182
    nop

    .line 183
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v1, v9, :cond_1a

    .line 184
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v9, :cond_18

    goto :goto_1a

    :cond_18
    move v10, v8

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v10, v7

    .line 185
    :goto_1b
    iget-object v1, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 187
    nop

    .line 188
    nop

    .line 189
    nop

    .line 191
    move v11, v8

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_27
    const/4 v15, -0x1

    if-ge v11, v6, :cond_89

    .line 192
    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 193
    iget-boolean v2, v0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    if-nez v2, :cond_40

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3b

    goto :goto_40

    :cond_3b
    move/from16 v2, p1

    move/from16 v4, p2

    goto :goto_84

    .line 194
    :cond_40
    :goto_40
    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 196
    nop

    .line 197
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v9

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v9

    .line 196
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 198
    nop

    .line 199
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v9

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v9

    .line 198
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 200
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v14, v5}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v14

    .line 201
    if-eqz v10, :cond_84

    .line 202
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v5, v15, :cond_7f

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v15, :cond_84

    .line 204
    :cond_7f
    iget-object v3, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_84
    :goto_84
    add-int/lit8 v11, v11, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_27

    .line 211
    :cond_89
    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v12, v1

    .line 212
    invoke-direct {v0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v1

    invoke-direct {v0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v13, v1

    .line 215
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 216
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 219
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 220
    if-eqz v5, :cond_c7

    .line 221
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 222
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 225
    :cond_c7
    invoke-static {v3, v2, v14}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v5, v14, 0x10

    .line 226
    invoke-static {v1, v4, v5}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v1

    .line 225
    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 229
    iget-object v1, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 230
    if-le v1, v7, :cond_167

    .line 231
    move v3, v8

    :goto_dd
    if-ge v3, v1, :cond_167

    .line 232
    iget-object v5, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 233
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 236
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v7, v15, :cond_110

    .line 237
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    .line 238
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v9

    sub-int/2addr v7, v9

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v7, v9

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v7, v9

    .line 237
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 240
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 242
    goto :goto_126

    .line 243
    :cond_110
    nop

    .line 244
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v9

    add-int/2addr v7, v9

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v9

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v9

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 243
    invoke-static {v2, v7, v9}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v7

    .line 250
    :goto_126
    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v9, v15, :cond_149

    .line 251
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    .line 252
    invoke-direct {v0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-direct {v0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v9, v10

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v9, v6

    .line 251
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 254
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 256
    goto :goto_160

    .line 257
    :cond_149
    const/high16 v9, 0x40000000    # 2.0f

    .line 258
    invoke-direct {v0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v10

    invoke-direct {v0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 257
    invoke-static {v4, v10, v6}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v6

    .line 263
    :goto_160
    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_dd

    .line 266
    :cond_167
    return-void
.end method

.method public whitelist setForegroundGravity(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v0

    if-eq v0, p1, :cond_3f

    .line 125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setForegroundGravity(I)V

    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v0

    const/16 v1, 0x77

    if-ne v0, v1, :cond_33

    if-eqz p1, :cond_33

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 131
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 132
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 133
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 134
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 135
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 137
    :cond_32
    goto :goto_3c

    .line 138
    :cond_33
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 139
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 140
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 141
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 144
    :goto_3c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 146
    :cond_3f
    return-void
.end method

.method public whitelist setMeasureAllChildren(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 348
    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 349
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 385
    const/4 v0, 0x0

    return v0
.end method
