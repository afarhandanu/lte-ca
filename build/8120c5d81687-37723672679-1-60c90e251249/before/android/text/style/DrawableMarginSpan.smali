.class public Landroid/text/style/DrawableMarginSpan;
.super Ljava/lang/Object;
.source "DrawableMarginSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/style/LineHeightSpan;


# static fields
.field private static final greylist-max-o STANDARD_PAD_WIDTH:I


# instance fields
.field private final greylist-max-o mDrawable:Landroid/graphics/drawable/Drawable;

.field private final greylist-max-o mPad:I


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/style/DrawableMarginSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    iput p2, p0, Landroid/text/style/DrawableMarginSpan;->mPad:I

    .line 74
    return-void
.end method


# virtual methods
.method public whitelist chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 7

    .line 102
    check-cast p1, Landroid/text/Spanned;

    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    if-ne p3, p1, :cond_2d

    .line 103
    iget-object p1, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 105
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p2, p5

    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, p3

    sub-int/2addr p2, p4

    sub-int p2, p1, p2

    .line 106
    if-lez p2, :cond_1e

    .line 107
    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p3, p2

    iput p3, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 110
    :cond_1e
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p5, p2

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p5, p2

    sub-int/2addr p5, p4

    sub-int/2addr p1, p5

    .line 111
    if-lez p1, :cond_2d

    .line 112
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p2, p1

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 115
    :cond_2d
    return-void
.end method

.method public whitelist drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .registers 13

    .line 86
    check-cast p8, Landroid/text/Spanned;

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    .line 87
    nop

    .line 88
    invoke-virtual {p12, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p2

    invoke-virtual {p12, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p2

    .line 90
    iget-object p4, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    .line 91
    iget-object p5, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    .line 94
    iget-object p6, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr p4, p3

    add-int/2addr p5, p2

    invoke-virtual {p6, p3, p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    iget-object p2, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    return-void
.end method

.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getLeadingMargin(Z)I
    .registers 3

    .line 78
    iget-object p1, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget v0, p0, Landroid/text/style/DrawableMarginSpan;->mPad:I

    add-int/2addr p1, v0

    return p1
.end method

.method public whitelist getPadding()I
    .registers 2

    .line 135
    iget v0, p0, Landroid/text/style/DrawableMarginSpan;->mPad:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawableMarginSpan{drawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/style/DrawableMarginSpan;->mPad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
