.class public final Landroid/util/SequenceUtils;
.super Ljava/lang/Object;
.source "SequenceUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static blacklist getInitSeq()I
    .registers 1

    .line 59
    const/high16 v0, -0x80000000

    return v0
.end method

.method public static blacklist getNextSeq(I)I
    .registers 2

    .line 64
    const v0, 0x7fffffff

    if-ne p0, v0, :cond_c

    .line 67
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_e

    .line 68
    :cond_c
    add-int/lit8 p0, p0, 0x1

    .line 64
    :goto_e
    return p0
.end method

.method public static blacklist isIncomingSeqStale(II)Z
    .registers 6

    .line 43
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_8

    .line 48
    return v1

    .line 51
    :cond_8
    int-to-long v2, p1

    int-to-long p0, p0

    sub-long/2addr v2, p0

    .line 54
    const-wide/16 p0, 0x0

    cmp-long p0, v2, p0

    if-gez p0, :cond_18

    const-wide/32 p0, -0x80000000

    cmp-long p0, v2, p0

    if-gtz p0, :cond_1f

    :cond_18
    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v2, p0

    if-lez p0, :cond_20

    :cond_1f
    const/4 v1, 0x1

    :cond_20
    return v1
.end method
