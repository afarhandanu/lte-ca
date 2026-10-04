.class Landroid/text/TextUtils$Reverser;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reverser"
.end annotation


# instance fields
.field private greylist-max-o mEnd:I

.field private greylist-max-o mSource:Ljava/lang/CharSequence;

.field private greylist-max-o mStart:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;II)V
    .registers 4

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput-object p1, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    .line 688
    iput p2, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    .line 689
    iput p3, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    .line 690
    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 4

    .line 709
    iget-object v0, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result p1

    int-to-char p1, p1

    return p1
.end method

.method public whitelist getChars(II[CI)V
    .registers 10

    .line 714
    iget-object v0, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 716
    sub-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-static {p3, p1, p2}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    .line 718
    nop

    .line 719
    div-int/lit8 v0, p2, 0x2

    .line 720
    nop

    :goto_14
    if-ge p1, v0, :cond_28

    .line 721
    add-int v1, p4, p1

    aget-char v2, p3, v1

    .line 723
    add-int v3, p4, p2

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-char v4, p3, v3

    aput-char v4, p3, v1

    .line 724
    aput-char v2, p3, v3

    .line 720
    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    .line 726
    :cond_28
    return-void
.end method

.method public whitelist test-api length()I
    .registers 3

    .line 693
    iget v0, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    iget v1, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 5

    .line 697
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 699
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/TextUtils$Reverser;->getChars(II[CI)V

    .line 700
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 705
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/TextUtils$Reverser;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/text/TextUtils$Reverser;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
