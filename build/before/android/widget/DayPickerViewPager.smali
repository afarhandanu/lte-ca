.class Landroid/widget/DayPickerViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "DayPickerViewPager.java"


# instance fields
.field private final blacklist mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method protected blacklist findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 142
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    return-object p0

    .line 147
    :cond_7
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/DayPickerPagerAdapter;

    .line 148
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/DayPickerPagerAdapter;->getView(Ljava/lang/Object;)Landroid/widget/SimpleMonthView;

    move-result-object v0

    .line 149
    if-eq v0, p2, :cond_20

    if-eqz v0, :cond_20

    .line 150
    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_20

    .line 152
    return-object v1

    .line 156
    :cond_20
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    move-result v1

    .line 157
    const/4 v2, 0x0

    :goto_25
    if-ge v2, v1, :cond_39

    .line 158
    invoke-virtual {p0, v2}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 160
    if-eq v3, p2, :cond_36

    if-eq v3, v0, :cond_36

    .line 161
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    .line 163
    if-eqz v3, :cond_36

    .line 164
    return-object v3

    .line 157
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 169
    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method

.method protected whitelist onMeasure(II)V
    .registers 16

    .line 54
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->populate()V

    .line 57
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    move-result v0

    .line 59
    nop

    .line 60
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_1b

    .line 61
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v4, :cond_19

    goto :goto_1b

    :cond_19
    move v1, v3

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v1, v2

    .line 63
    :goto_1c
    nop

    .line 64
    nop

    .line 65
    nop

    .line 67
    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_23
    const/4 v9, -0x1

    if-ge v5, v0, :cond_65

    .line 68
    invoke-virtual {p0, v5}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 69
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_62

    .line 70
    invoke-virtual {p0, v10, p1, p2}, Landroid/widget/DayPickerViewPager;->measureChild(Landroid/view/View;II)V

    .line 71
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 72
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 73
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 74
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v8, v12}, Landroid/widget/DayPickerViewPager;->combineMeasuredStates(II)I

    move-result v8

    .line 75
    if-eqz v1, :cond_62

    .line 76
    iget v12, v11, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    if-eq v12, v9, :cond_5d

    iget v11, v11, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    if-ne v11, v9, :cond_62

    .line 78
    :cond_5d
    iget-object v9, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 85
    :cond_65
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 86
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 89
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 90
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 93
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 94
    if-eqz v5, :cond_9f

    .line 95
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 96
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 99
    :cond_9f
    invoke-static {v1, p1, v8}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v5, v8, 0x10

    .line 100
    invoke-static {v0, p2, v5}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v0

    .line 99
    invoke-virtual {p0, v1, v0}, Landroid/widget/DayPickerViewPager;->setMeasuredDimension(II)V

    .line 103
    iget-object v0, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 104
    if-le v0, v2, :cond_11b

    .line 105
    nop

    :goto_b5
    if-ge v3, v0, :cond_11b

    .line 106
    iget-object v1, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 112
    iget v5, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    if-ne v5, v9, :cond_dd

    .line 113
    nop

    .line 114
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 113
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_ed

    .line 117
    :cond_dd
    nop

    .line 118
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    .line 117
    invoke-static {p1, v5, v6}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v5

    .line 122
    :goto_ed
    iget v6, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    if-ne v6, v9, :cond_105

    .line 123
    nop

    .line 124
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v2, v6

    .line 123
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_115

    .line 127
    :cond_105
    nop

    .line 128
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iget v2, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    .line 127
    invoke-static {p2, v6, v2}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v2

    .line 132
    :goto_115
    invoke-virtual {v1, v5, v2}, Landroid/view/View;->measure(II)V

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_b5

    .line 136
    :cond_11b
    iget-object p1, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 137
    return-void
.end method
