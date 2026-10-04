.class public Landroid/text/AlteredCharSequence;
.super Ljava/lang/Object;
.source "AlteredCharSequence.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/AlteredCharSequence$AlteredSpanned;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mChars:[C

.field private greylist-max-o mEnd:I

.field private greylist-max-o mSource:Ljava/lang/CharSequence;

.field private greylist-max-o mStart:I


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/CharSequence;[CII)V
    .registers 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 48
    iput-object p2, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    .line 49
    iput p3, p0, Landroid/text/AlteredCharSequence;->mStart:I

    .line 50
    iput p4, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/AlteredCharSequence;-><init>(Ljava/lang/CharSequence;[CII)V

    return-void
.end method

.method public static whitelist make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;
    .registers 11

    .line 39
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_f

    .line 40
    new-instance v1, Landroid/text/AlteredCharSequence$AlteredSpanned;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/AlteredCharSequence$AlteredSpanned;-><init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence-IA;)V

    return-object v1

    .line 42
    :cond_f
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    new-instance p0, Landroid/text/AlteredCharSequence;

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/text/AlteredCharSequence;-><init>(Ljava/lang/CharSequence;[CII)V

    return-object p0
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 4

    .line 93
    iget v0, p0, Landroid/text/AlteredCharSequence;->mStart:I

    if-lt p1, v0, :cond_10

    iget v0, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    if-ge p1, v0, :cond_10

    .line 94
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iget v1, p0, Landroid/text/AlteredCharSequence;->mStart:I

    sub-int/2addr p1, v1

    aget-char p1, v0, p1

    return p1

    .line 96
    :cond_10
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1
.end method

.method public whitelist getChars(II[CI)V
    .registers 7

    .line 109
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 111
    iget v0, p0, Landroid/text/AlteredCharSequence;->mStart:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 112
    iget v0, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 114
    if-le p1, p2, :cond_1d

    .line 115
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iget v1, p0, Landroid/text/AlteredCharSequence;->mStart:I

    sub-int v1, p1, v1

    sub-int/2addr p2, p1

    invoke-static {v0, v1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    :cond_1d
    return-void
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 6

    .line 104
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iget v1, p0, Landroid/text/AlteredCharSequence;->mStart:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    sub-int/2addr v2, p1

    invoke-static {p2, v0, v1, v2}, Landroid/text/AlteredCharSequence;->make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 119
    invoke-virtual {p0}, Landroid/text/AlteredCharSequence;->length()I

    move-result v0

    .line 121
    new-array v1, v0, [C

    .line 122
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/text/AlteredCharSequence;->getChars(II[CI)V

    .line 123
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o update([CII)V
    .registers 4

    .line 54
    iput-object p1, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    .line 55
    iput p2, p0, Landroid/text/AlteredCharSequence;->mStart:I

    .line 56
    iput p3, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    .line 57
    return-void
.end method
