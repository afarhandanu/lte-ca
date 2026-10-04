.class Landroid/widget/TextView$CharWrapper;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/GraphicsOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharWrapper"
.end annotation


# instance fields
.field private greylist-max-o mChars:[C

.field private greylist-max-o mLength:I

.field private greylist-max-o mStart:I


# direct methods
.method constructor greylist-max-o <init>([CII)V
    .registers 4

    .line 16356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16357
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 16358
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 16359
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    .line 16360
    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 4

    .line 16373
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p1, v1

    aget-char p1, v0, p1

    return p1
.end method

.method public greylist-max-o drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V
    .registers 9

    .line 16400
    move-object v0, p1

    iget-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p2

    sub-int/2addr p3, p2

    move-object p0, v0

    move p2, v1

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 16401
    return-void
.end method

.method public greylist-max-o drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V
    .registers 12

    .line 16406
    sub-int/2addr p3, p2

    .line 16407
    sub-int/2addr p5, p4

    .line 16408
    move-object v0, p1

    iget-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p2, v1

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p4, v1

    move-object p0, v0

    invoke-virtual/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 16410
    return-void
.end method

.method public whitelist getChars(II[CI)V
    .registers 7

    .line 16390
    if-ltz p1, :cond_16

    if-ltz p2, :cond_16

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_16

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p2, v0, :cond_16

    .line 16394
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int/2addr p2, p1

    invoke-static {v0, v1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16395
    return-void

    .line 16391
    :cond_16
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, ", "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public greylist-max-o getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .registers 11

    .line 16423
    sub-int/2addr p2, p1

    .line 16424
    sub-int/2addr p4, p3

    .line 16425
    move v0, p1

    iget-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p3, v1

    move-object p0, p8

    move p8, p7

    move-object p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, v0

    invoke-virtual/range {p0 .. p8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result p1

    return p1
.end method

.method public blacklist getTextRunCursor(IIZIILandroid/graphics/Paint;)I
    .registers 9

    .line 16432
    sub-int/2addr p2, p1

    .line 16433
    move v0, p1

    iget-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p4, v1

    move-object p0, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, v0

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result p1

    return p1
.end method

.method public greylist-max-o getTextWidths(II[FLandroid/graphics/Paint;)I
    .registers 7

    .line 16417
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int/2addr p2, p1

    invoke-virtual {p4, v0, v1, p2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p1

    return p1
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 16369
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return v0
.end method

.method public greylist-max-o measureText(IILandroid/graphics/Paint;)F
    .registers 6

    .line 16413
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int/2addr p2, p1

    invoke-virtual {p3, v0, v1, p2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    return p1
.end method

.method greylist-max-o set([CII)V
    .registers 4

    .line 16363
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 16364
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 16365
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    .line 16366
    return-void
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 6

    .line 16382
    if-ltz p1, :cond_18

    if-ltz p2, :cond_18

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_18

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p2, v0, :cond_18

    .line 16386
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v2, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, v2, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 16383
    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 16378
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    iget v3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
