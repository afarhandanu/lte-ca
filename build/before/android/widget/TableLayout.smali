.class public Landroid/widget/TableLayout;
.super Landroid/widget/LinearLayout;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;,
        Landroid/widget/TableLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private greylist-max-o mCollapsedColumns:Landroid/util/SparseBooleanArray;

.field private greylist-max-o mInitialized:Z

.field private greylist-max-o mMaxWidths:[I

.field private greylist-max-o mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

.field private greylist-max-o mShrinkAllColumns:Z

.field private greylist-max-o mShrinkableColumns:Landroid/util/SparseBooleanArray;

.field private greylist-max-o mStretchAllColumns:Z

.field private greylist-max-o mStretchableColumns:Landroid/util/SparseBooleanArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtrackCollapsedColumns(Landroid/widget/TableLayout;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->trackCollapsedColumns(Landroid/view/View;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    .line 93
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    sget-object v0, Lcom/android/internal/R$styleable;->TableLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 107
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    const/16 v1, 0x2a

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_1c

    .line 110
    iput-boolean v2, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    goto :goto_22

    .line 112
    :cond_1c
    invoke-static {v0}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    .line 116
    :cond_22
    :goto_22
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_37

    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v1, :cond_31

    .line 119
    iput-boolean v2, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    goto :goto_37

    .line 121
    :cond_31
    invoke-static {v0}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    .line 125
    :cond_37
    :goto_37
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 126
    if-eqz p2, :cond_44

    .line 127
    invoke-static {p2}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 130
    :cond_44
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    .line 132
    return-void
.end method

.method private greylist-max-o findLargestCells(II)V
    .registers 14

    .line 484
    nop

    .line 493
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 494
    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v0, :cond_72

    .line 495
    invoke-virtual {p0, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 496
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_17

    .line 497
    goto :goto_6f

    .line 500
    :cond_17
    instance-of v5, v4, Landroid/widget/TableRow;

    if-eqz v5, :cond_6f

    .line 501
    check-cast v4, Landroid/widget/TableRow;

    .line 503
    invoke-virtual {v4}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 504
    const/4 v6, -0x2

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 506
    invoke-virtual {v4, p1, p2}, Landroid/widget/TableRow;->getColumnsWidths(II)[I

    move-result-object v4

    .line 507
    array-length v5, v4

    .line 509
    if-eqz v1, :cond_3f

    .line 510
    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    if-eqz v1, :cond_34

    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    array-length v1, v1

    if-eq v1, v5, :cond_38

    .line 511
    :cond_34
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 513
    :cond_38
    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    invoke-static {v4, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    move v1, v2

    goto :goto_6f

    .line 516
    :cond_3f
    iget-object v6, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    array-length v6, v6

    .line 517
    sub-int v7, v5, v6

    .line 520
    if-lez v7, :cond_59

    .line 521
    iget-object v8, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 522
    new-array v9, v5, [I

    iput-object v9, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 523
    iget-object v9, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    array-length v10, v8

    invoke-static {v8, v2, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    array-length v9, v8

    iget-object v10, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    array-length v8, v8

    invoke-static {v4, v9, v10, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    :cond_59
    iget-object v7, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 534
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 535
    move v6, v2

    :goto_60
    if-ge v6, v5, :cond_6f

    .line 536
    aget v8, v7, v6

    aget v9, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v6

    .line 535
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 494
    :cond_6f
    :goto_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 541
    :cond_72
    return-void
.end method

.method private greylist-max-o initTableLayout()V
    .registers 4

    .line 175
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 176
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 178
    :cond_b
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_16

    .line 179
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    .line 181
    :cond_16
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_21

    .line 182
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    .line 187
    :cond_21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setOrientation(I)V

    .line 189
    new-instance v1, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/TableLayout;Landroid/widget/TableLayout-IA;)V

    iput-object v1, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    .line 192
    iget-object v1, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 194
    iput-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    .line 195
    return-void
.end method

.method private greylist-max-o mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V
    .registers 12

    .line 580
    nop

    .line 581
    iget-object v0, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 582
    array-length v1, v0

    .line 583
    if-eqz p2, :cond_8

    move v2, v1

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 584
    :goto_c
    sub-int/2addr p3, p4

    .line 585
    div-int/2addr p3, v2

    .line 589
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result p4

    .line 590
    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, p4, :cond_24

    .line 591
    invoke-virtual {p0, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 592
    instance-of v6, v5, Landroid/widget/TableRow;

    if-eqz v6, :cond_21

    .line 593
    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 590
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 597
    :cond_24
    if-nez p2, :cond_68

    .line 598
    move p2, v3

    move p4, p2

    :goto_28
    if-ge p2, v2, :cond_41

    .line 599
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 600
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 601
    if-ge v4, v1, :cond_3c

    .line 602
    aget v5, v0, v4

    add-int/2addr v5, p3

    aput v5, v0, v4

    goto :goto_3e

    .line 604
    :cond_3c
    add-int/lit8 p4, p4, 0x1

    .line 598
    :cond_3e
    :goto_3e
    add-int/lit8 p2, p2, 0x1

    goto :goto_28

    .line 617
    :cond_41
    if-lez p4, :cond_67

    if-ge p4, v2, :cond_67

    .line 619
    mul-int/2addr p3, p4

    sub-int p2, v2, p4

    div-int/2addr p3, p2

    .line 620
    move p2, v3

    :goto_4a
    if-ge p2, v2, :cond_67

    .line 621
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p4

    .line 622
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_64

    if-ge p4, v1, :cond_64

    .line 623
    aget v4, v0, p4

    if-le p3, v4, :cond_5f

    .line 624
    aput v3, v0, p4

    goto :goto_64

    .line 626
    :cond_5f
    aget v4, v0, p4

    add-int/2addr v4, p3

    aput v4, v0, p4

    .line 620
    :cond_64
    :goto_64
    add-int/lit8 p2, p2, 0x1

    goto :goto_4a

    .line 631
    :cond_67
    return-void

    .line 609
    :cond_68
    nop

    :goto_69
    if-ge v3, v2, :cond_73

    .line 610
    aget p1, v0, v3

    add-int/2addr p1, p3

    aput p1, v0, v3

    .line 609
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 614
    :cond_73
    return-void
.end method

.method private static greylist-max-o parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;
    .registers 6

    .line 149
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 150
    const-string v1, "\\s*,\\s*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 151
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    .line 153
    array-length v1, p0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_24

    aget-object v3, p0, v2

    .line 155
    :try_start_15
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 157
    if-ltz v3, :cond_1f

    .line 160
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1f} :catch_20

    .line 164
    :cond_1f
    goto :goto_21

    .line 162
    :catch_20
    move-exception v3

    .line 153
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 167
    :cond_24
    return-object v0
.end method

.method private greylist-max-o requestRowsLayout()V
    .registers 4

    .line 208
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v0, :cond_15

    .line 209
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 210
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_15

    .line 211
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 214
    :cond_15
    return-void
.end method

.method private greylist-max-o shrinkAndStretchColumns(I)V
    .registers 7

    .line 555
    iget-object v0, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    if-nez v0, :cond_5

    .line 556
    return-void

    .line 560
    :cond_5
    nop

    .line 561
    iget-object v0, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v2, v1, :cond_13

    aget v4, v0, v2

    .line 562
    add-int/2addr v3, v4

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 565
    :cond_13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Landroid/widget/TableLayout;->mPaddingLeft:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/widget/TableLayout;->mPaddingRight:I

    sub-int/2addr p1, v0

    .line 567
    if-le v3, p1, :cond_33

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 570
    :cond_2b
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v1, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    invoke-direct {p0, v0, v1, p1, v3}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    goto :goto_48

    .line 571
    :cond_33
    if-ge v3, p1, :cond_48

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v0, :cond_41

    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 574
    :cond_41
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v1, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    invoke-direct {p0, v0, v1, p1, v3}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    .line 576
    :cond_48
    :goto_48
    return-void
.end method

.method private greylist-max-o trackCollapsedColumns(Landroid/view/View;)V
    .registers 7

    .line 378
    instance-of v0, p1, Landroid/widget/TableRow;

    if-eqz v0, :cond_1f

    .line 379
    check-cast p1, Landroid/widget/TableRow;

    .line 380
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 381
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 382
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1f

    .line 383
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 384
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 388
    if-eqz v4, :cond_1c

    .line 389
    invoke-virtual {p1, v3, v4}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    .line 382
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 393
    :cond_1f
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .registers 2

    .line 400
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 402
    return-void
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .registers 3

    .line 409
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 410
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 411
    return-void
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 427
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 428
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 429
    return-void
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 418
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 420
    return-void
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 656
    instance-of p1, p1, Landroid/widget/TableLayout$LayoutParams;

    return p1
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 72
    invoke-virtual {p0}, Landroid/widget/TableLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 648
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

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

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .line 664
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;
    .registers 4

    .line 638
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 669
    const-class v0, Landroid/widget/TableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isColumnCollapsed(I)Z
    .registers 3

    .line 310
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public whitelist isColumnShrinkable(I)Z
    .registers 3

    .line 364
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public whitelist isColumnStretchable(I)Z
    .registers 3

    .line 337
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public whitelist isShrinkAllColumns()Z
    .registers 2

    .line 239
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    return v0
.end method

.method public whitelist isStretchAllColumns()Z
    .registers 2

    .line 261
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    return v0
.end method

.method greylist-max-o measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 9

    .line 458
    instance-of v0, p1, Landroid/widget/TableRow;

    if-eqz v0, :cond_c

    .line 459
    move-object v0, p1

    check-cast v0, Landroid/widget/TableRow;

    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setColumnsWidthConstraints([I)V

    .line 462
    :cond_c
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 464
    return-void
.end method

.method greylist-max-o measureVertical(II)V
    .registers 3

    .line 471
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;->findLargestCells(II)V

    .line 472
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->shrinkAndStretchColumns(I)V

    .line 474
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 475
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 6

    .line 446
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/TableLayout;->layoutVertical(IIII)V

    .line 447
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 3

    .line 437
    invoke-virtual {p0, p1, p2}, Landroid/widget/TableLayout;->measureVertical(II)V

    .line 438
    return-void
.end method

.method public whitelist requestLayout()V
    .registers 4

    .line 221
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v0, :cond_15

    .line 222
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 223
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_15

    .line 224
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 228
    :cond_15
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 229
    return-void
.end method

.method public whitelist setColumnCollapsed(IZ)V
    .registers 7

    .line 290
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 292
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 293
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1c

    .line 294
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 295
    instance-of v3, v2, Landroid/widget/TableRow;

    if-eqz v3, :cond_19

    .line 296
    check-cast v2, Landroid/widget/TableRow;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    .line 293
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 300
    :cond_1c
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 301
    return-void
.end method

.method public whitelist setColumnShrinkable(IZ)V
    .registers 4

    .line 353
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 354
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 355
    return-void
.end method

.method public whitelist setColumnStretchable(IZ)V
    .registers 4

    .line 326
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 327
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 328
    return-void
.end method

.method public whitelist setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 3

    .line 204
    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->-$$Nest$fputmOnHierarchyChangeListener(Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 205
    return-void
.end method

.method public whitelist setShrinkAllColumns(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    .line 251
    return-void
.end method

.method public whitelist setStretchAllColumns(Z)V
    .registers 2

    .line 272
    iput-boolean p1, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    .line 273
    return-void
.end method
