.class public Landroid/widget/TableRow;
.super Landroid/widget/LinearLayout;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableRow$ChildrenTracker;,
        Landroid/widget/TableRow$LayoutParams;
    }
.end annotation


# instance fields
.field private greylist-max-o mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

.field private greylist-max-o mColumnToChildIndex:Landroid/util/SparseIntArray;

.field private greylist-max-o mColumnWidths:[I

.field private greylist-max-o mConstrainedColumnWidths:[I

.field private greylist-max-o mNumColumns:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmColumnToChildIndex(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 62
    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 74
    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    .line 75
    return-void
.end method

.method private greylist-max-o initTableRow()V
    .registers 4

    .line 78
    iget-object v0, p0, Landroid/widget/TableRow;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 79
    new-instance v1, Landroid/widget/TableRow$ChildrenTracker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/TableRow$ChildrenTracker;-><init>(Landroid/widget/TableRow;Landroid/widget/TableRow-IA;)V

    iput-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    .line 80
    if-eqz v0, :cond_11

    .line 81
    iget-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {v1, v0}, Landroid/widget/TableRow$ChildrenTracker;->-$$Nest$msetOnHierarchyChangeListener(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 83
    :cond_11
    iget-object v0, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 84
    return-void
.end method

.method private greylist-max-o mapIndexAndColumns()V
    .registers 9

    .line 155
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_3a

    .line 156
    nop

    .line 157
    invoke-virtual {p0}, Landroid/widget/TableRow;->getChildCount()I

    move-result v0

    .line 159
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    .line 160
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    .line 162
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_15
    if-ge v3, v0, :cond_38

    .line 163
    invoke-virtual {p0, v3}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 164
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow$LayoutParams;

    .line 166
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    if-lt v6, v4, :cond_27

    .line 167
    iget v4, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 170
    :cond_27
    move v6, v2

    :goto_28
    iget v7, v5, Landroid/widget/TableRow$LayoutParams;->span:I

    if-ge v6, v7, :cond_35

    .line 171
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_28

    .line 162
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 175
    :cond_38
    iput v4, p0, Landroid/widget/TableRow;->mNumColumns:I

    .line 177
    :cond_3a
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 373
    instance-of p1, p1, Landroid/widget/TableRow$LayoutParams;

    return p1
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 47
    invoke-virtual {p0}, Landroid/widget/TableRow;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 365
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

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

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

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

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

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

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .line 381
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;
    .registers 4

    .line 355
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 386
    const-class v0, Landroid/widget/TableRow;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getChildrenSkipCount(Landroid/view/View;I)I
    .registers 3

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow$LayoutParams;

    .line 260
    iget p1, p1, Landroid/widget/TableRow$LayoutParams;->span:I

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method greylist-max-o getColumnsWidths(II)[I
    .registers 11

    .line 289
    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    move-result v0

    .line 290
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    array-length v1, v1

    if-eq v0, v1, :cond_11

    .line 291
    :cond_d
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    .line 294
    :cond_11
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    .line 296
    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v0, :cond_66

    .line 297
    invoke-virtual {p0, v3}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 298
    if-eqz v4, :cond_61

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_61

    .line 299
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow$LayoutParams;

    .line 300
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->span:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5e

    .line 302
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->width:I

    packed-switch v6, :pswitch_data_68

    .line 312
    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->width:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_4e

    .line 307
    :pswitch_3e
    nop

    .line 308
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 307
    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v6

    .line 310
    goto :goto_4e

    .line 304
    :pswitch_48
    const/4 v6, -0x2

    invoke-static {p1, v2, v6}, Landroid/widget/TableRow;->getChildMeasureSpec(III)I

    move-result v6

    .line 305
    nop

    .line 314
    :goto_4e
    invoke-virtual {v4, v6, v6}, Landroid/view/View;->measure(II)V

    .line 316
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    add-int/2addr v4, v6

    iget v5, v5, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 318
    aput v4, v1, v3

    .line 319
    goto :goto_60

    .line 320
    :cond_5e
    aput v2, v1, v3

    .line 322
    :goto_60
    goto :goto_63

    .line 323
    :cond_61
    aput v2, v1, v3

    .line 296
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 327
    :cond_66
    return-object v1

    nop

    :pswitch_data_68
    .packed-switch -0x2
        :pswitch_48
        :pswitch_3e
    .end packed-switch
.end method

.method greylist-max-o getLocationOffset(Landroid/view/View;)I
    .registers 3

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow$LayoutParams;

    invoke-static {p1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method greylist-max-o getNextLocationOffset(Landroid/view/View;)I
    .registers 3

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow$LayoutParams;

    invoke-static {p1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p1

    const/4 v0, 0x1

    aget p1, p1, v0

    return p1
.end method

.method public whitelist getVirtualChildAt(I)Landroid/view/View;
    .registers 4

    .line 131
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_7

    .line 132
    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    .line 135
    :cond_7
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 136
    if-eq p1, v1, :cond_15

    .line 137
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 140
    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getVirtualChildCount()I
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_7

    .line 149
    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    .line 151
    :cond_7
    iget v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    return v0
.end method

.method greylist-max-o measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 16

    .line 194
    iget-object v0, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    if-eqz v0, :cond_94

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/TableRow$LayoutParams;

    .line 197
    nop

    .line 198
    nop

    .line 200
    iget p4, p3, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 201
    iget-object v0, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    .line 202
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_13
    if-ge v2, p4, :cond_1d

    .line 203
    add-int v4, p2, v2

    aget v4, v0, v4

    add-int/2addr v3, v4

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 206
    :cond_1d
    iget p2, p3, Landroid/widget/TableRow$LayoutParams;->gravity:I

    .line 207
    invoke-static {p2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result p4

    .line 209
    if-eqz p4, :cond_28

    .line 210
    const/high16 v0, -0x80000000

    goto :goto_2a

    .line 209
    :cond_28
    const/high16 v0, 0x40000000    # 2.0f

    .line 216
    :goto_2a
    iget v2, p3, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    sub-int v2, v3, v2

    iget v4, p3, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v4

    .line 217
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 216
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 219
    iget v2, p0, Landroid/widget/TableRow;->mPaddingTop:I

    iget v4, p0, Landroid/widget/TableRow;->mPaddingBottom:I

    add-int/2addr v2, v4

    iget v4, p3, Landroid/widget/TableRow$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, p3, Landroid/widget/TableRow$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    add-int/2addr v2, p6

    iget p6, p3, Landroid/widget/TableRow$LayoutParams;->height:I

    invoke-static {p5, v2, p6}, Landroid/widget/TableRow;->getChildMeasureSpec(III)I

    move-result p5

    .line 223
    invoke-virtual {p1, v0, p5}, Landroid/view/View;->measure(II)V

    .line 225
    const/4 p5, 0x1

    if-eqz p4, :cond_87

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 227
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p4

    sub-int/2addr v3, p1

    aput v3, p4, p5

    .line 229
    invoke-virtual {p0}, Landroid/widget/TableRow;->getLayoutDirection()I

    move-result p1

    .line 230
    invoke-static {p2, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    .line 231
    and-int/lit8 p1, p1, 0x7

    packed-switch p1, :pswitch_data_a0

    :pswitch_69
    goto :goto_86

    .line 236
    :pswitch_6a
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p1

    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p2

    aget p2, p2, p5

    aput p2, p1, v1

    .line 237
    goto :goto_86

    .line 234
    :pswitch_77
    goto :goto_86

    .line 239
    :pswitch_78
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p1

    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p2

    aget p2, p2, p5

    div-int/lit8 p2, p2, 0x2

    aput p2, p1, v1

    .line 242
    :goto_86
    goto :goto_93

    .line 243
    :cond_87
    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p1

    invoke-static {p3}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object p2

    aput v1, p2, p5

    aput v1, p1, v1

    .line 245
    :goto_93
    goto :goto_9e

    .line 247
    :cond_94
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-super/range {v2 .. v8}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 250
    :goto_9e
    return-void

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_78
        :pswitch_69
        :pswitch_77
        :pswitch_69
        :pswitch_6a
    .end packed-switch
.end method

.method greylist-max-o measureNullChild(I)I
    .registers 3

    .line 184
    iget-object v0, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    aget p1, v0, p1

    return p1
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 6

    .line 123
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/TableRow;->layoutHorizontal(IIII)V

    .line 124
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 3

    .line 114
    invoke-virtual {p0, p1, p2}, Landroid/widget/TableRow;->measureHorizontal(II)V

    .line 115
    return-void
.end method

.method greylist-max-o setColumnCollapsed(IZ)V
    .registers 3

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 103
    if-eqz p1, :cond_f

    .line 104
    if-eqz p2, :cond_b

    const/16 p2, 0x8

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_f
    return-void
.end method

.method greylist-max-o setColumnsWidthConstraints([I)V
    .registers 4

    .line 342
    if-eqz p1, :cond_c

    array-length v0, p1

    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 347
    iput-object p1, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    .line 348
    return-void

    .line 343
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "columnWidths should be >= getVirtualChildCount()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 3

    .line 91
    iget-object v0, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {v0, p1}, Landroid/widget/TableRow$ChildrenTracker;->-$$Nest$msetOnHierarchyChangeListener(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 92
    return-void
.end method
