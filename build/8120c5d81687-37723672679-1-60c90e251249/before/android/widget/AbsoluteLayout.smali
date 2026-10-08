.class public Landroid/widget/AbsoluteLayout;
.super Landroid/view/ViewGroup;
.source "AbsoluteLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsoluteLayout$LayoutParams;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 140
    instance-of p1, p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    return p1
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 107
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 134
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 145
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8

    .line 113
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result p1

    .line 115
    const/4 p2, 0x0

    :goto_5
    if-ge p2, p1, :cond_35

    .line 116
    invoke-virtual {p0, p2}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 117
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_32

    .line 119
    nop

    .line 120
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 122
    iget p5, p0, Landroid/widget/AbsoluteLayout;->mPaddingLeft:I

    iget v0, p4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    add-int/2addr p5, v0

    .line 123
    iget v0, p0, Landroid/widget/AbsoluteLayout;->mPaddingTop:I

    iget p4, p4, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    add-int/2addr v0, p4

    .line 124
    nop

    .line 125
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p5

    .line 126
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 124
    invoke-virtual {p3, p5, v0, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 115
    :cond_32
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 130
    :cond_35
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 12

    .line 61
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v0

    .line 63
    nop

    .line 64
    nop

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->measureChildren(II)V

    .line 70
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_d
    if-ge v2, v0, :cond_3b

    .line 71
    invoke-virtual {p0, v2}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 72
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_38

    .line 76
    nop

    .line 77
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 79
    iget v7, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 80
    iget v6, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v6, v5

    .line 82
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 83
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 70
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 88
    :cond_3b
    iget v0, p0, Landroid/widget/AbsoluteLayout;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/AbsoluteLayout;->mPaddingRight:I

    add-int/2addr v0, v2

    add-int/2addr v3, v0

    .line 89
    iget v0, p0, Landroid/widget/AbsoluteLayout;->mPaddingTop:I

    iget v2, p0, Landroid/widget/AbsoluteLayout;->mPaddingBottom:I

    add-int/2addr v0, v2

    add-int/2addr v4, v0

    .line 92
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 93
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 95
    invoke-static {v2, p1, v1}, Landroid/widget/AbsoluteLayout;->resolveSizeAndState(III)I

    move-result p1

    .line 96
    invoke-static {v0, p2, v1}, Landroid/widget/AbsoluteLayout;->resolveSizeAndState(III)I

    move-result p2

    .line 95
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->setMeasuredDimension(II)V

    .line 97
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method
