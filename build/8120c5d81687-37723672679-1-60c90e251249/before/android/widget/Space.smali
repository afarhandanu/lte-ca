.class public final Landroid/widget/Space;
.super Landroid/view/View;
.source "Space.java"


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/Space;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d

    .line 35
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/Space;->setVisibility(I)V

    .line 37
    :cond_d
    return-void
.end method

.method private static greylist-max-o getDefaultSize2(II)I
    .registers 3

    .line 76
    nop

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 78
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 80
    sparse-switch v0, :sswitch_data_18

    goto :goto_16

    .line 88
    :sswitch_d
    move p0, p1

    goto :goto_16

    .line 82
    :sswitch_f
    nop

    .line 83
    goto :goto_16

    .line 85
    :sswitch_11
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 86
    nop

    .line 91
    :goto_16
    return p0

    nop

    :sswitch_data_18
    .sparse-switch
        -0x80000000 -> :sswitch_11
        0x0 -> :sswitch_f
        0x40000000 -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 68
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 4

    .line 96
    nop

    .line 97
    invoke-virtual {p0}, Landroid/widget/Space;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/widget/Space;->getDefaultSize2(II)I

    move-result p1

    .line 98
    invoke-virtual {p0}, Landroid/widget/Space;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/widget/Space;->getDefaultSize2(II)I

    move-result p2

    .line 96
    invoke-virtual {p0, p1, p2}, Landroid/widget/Space;->setMeasuredDimension(II)V

    .line 99
    return-void
.end method
