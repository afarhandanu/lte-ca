.class public Landroid/widget/TableLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 706
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 707
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3

    .line 690
    const/4 p1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 691
    return-void
.end method

.method public constructor whitelist <init>(IIF)V
    .registers 4

    .line 697
    const/4 p1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 698
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 683
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 684
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 713
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/TableLayout$LayoutParams;->width:I

    .line 715
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3

    .line 721
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 722
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TableLayout$LayoutParams;->width:I

    .line 723
    instance-of v0, p1, Landroid/widget/TableLayout$LayoutParams;

    if-eqz v0, :cond_10

    .line 724
    check-cast p1, Landroid/widget/TableLayout$LayoutParams;

    iget p1, p1, Landroid/widget/TableLayout$LayoutParams;->weight:F

    iput p1, p0, Landroid/widget/TableLayout$LayoutParams;->weight:F

    .line 726
    :cond_10
    return-void
.end method


# virtual methods
.method protected whitelist setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .registers 4

    .line 742
    const/4 p2, -0x1

    iput p2, p0, Landroid/widget/TableLayout$LayoutParams;->width:I

    .line 743
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 744
    const-string p2, "layout_height"

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/widget/TableLayout$LayoutParams;->height:I

    goto :goto_15

    .line 746
    :cond_12
    const/4 p1, -0x2

    iput p1, p0, Landroid/widget/TableLayout$LayoutParams;->height:I

    .line 748
    :goto_15
    return-void
.end method
