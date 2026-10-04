.class public Landroid/text/SegmentFinder$PrescribedSegmentFinder;
.super Landroid/text/SegmentFinder;
.source "SegmentFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/SegmentFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrescribedSegmentFinder"
.end annotation


# instance fields
.field private final blacklist mSegments:[I


# direct methods
.method public constructor whitelist <init>([I)V
    .registers 2

    .line 91
    invoke-direct {p0}, Landroid/text/SegmentFinder;-><init>()V

    .line 92
    invoke-static {p1}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->checkSegmentsValid([I)V

    .line 93
    iput-object p1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    .line 94
    return-void
.end method

.method private static blacklist checkSegmentsValid([I)V
    .registers 5

    .line 198
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    const-string/jumbo v2, "the length of segments must be even"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 201
    array-length v0, p0

    if-nez v0, :cond_16

    return-void

    .line 202
    :cond_16
    nop

    .line 203
    const/high16 v0, -0x80000000

    :goto_19
    array-length v2, p0

    if-ge v1, v2, :cond_3f

    .line 204
    aget v2, p0, v1

    if-lt v2, v0, :cond_36

    .line 207
    aget v0, p0, v1

    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v2

    if-ge v0, v3, :cond_2d

    .line 210
    aget v0, p0, v2

    .line 203
    add-int/lit8 v1, v1, 0x2

    goto :goto_19

    .line 208
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "the segment range can\'t be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 205
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "segments can\'t overlap"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_3f
    return-void
.end method

.method private blacklist findNext(IZ)I
    .registers 9

    .line 121
    const/4 v0, -0x1

    if-gez p1, :cond_4

    return v0

    .line 122
    :cond_4
    iget-object v1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5d

    iget-object v1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    iget-object v3, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    aget v1, v1, v3

    if-le p1, v1, :cond_15

    goto :goto_5d

    .line 124
    :cond_15
    iget-object v1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    if-ge p1, v1, :cond_26

    .line 125
    iget-object p1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    if-eqz p2, :cond_23

    aget p1, p1, v3

    goto :goto_25

    :cond_23
    aget p1, p1, v2

    :goto_25
    return p1

    .line 128
    :cond_26
    iget-object v1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    .line 129
    if-ltz v1, :cond_3e

    .line 133
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v5, v5

    if-ge v4, v5, :cond_3c

    iget-object v5, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    aget v5, v5, v4

    if-ne v5, p1, :cond_3c

    .line 134
    move v1, v4

    .line 137
    :cond_3c
    add-int/2addr v1, v2

    goto :goto_40

    .line 141
    :cond_3e
    add-int/2addr v1, v2

    neg-int v1, v1

    .line 143
    :goto_40
    iget-object p1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length p1, p1

    if-lt v1, p1, :cond_46

    return v0

    .line 152
    :cond_46
    rem-int/lit8 p1, v1, 0x2

    if-nez p1, :cond_4b

    move v3, v2

    .line 153
    :cond_4b
    if-eq p2, v3, :cond_58

    .line 154
    add-int/2addr v1, v2

    iget-object p1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length p1, p1

    if-ge v1, p1, :cond_57

    iget-object p1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    aget v0, p1, v1

    :cond_57
    return v0

    .line 156
    :cond_58
    iget-object p1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    aget p1, p1, v1

    return p1

    .line 122
    :cond_5d
    :goto_5d
    return v0
.end method

.method private blacklist findPrevious(IZ)I
    .registers 9

    .line 160
    iget-object v0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v0, v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_5c

    iget-object v0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    if-ge p1, v0, :cond_f

    goto :goto_5c

    .line 162
    :cond_f
    iget-object v0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    iget-object v4, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v4, v4

    sub-int/2addr v4, v2

    aget v0, v0, v4

    if-le p1, v0, :cond_2c

    .line 163
    iget-object p1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    if-eqz p2, :cond_25

    iget-object p2, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length p2, p2

    add-int/lit8 p2, p2, -0x2

    aget p1, p1, p2

    goto :goto_2b

    :cond_25
    iget-object p2, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length p2, p2

    sub-int/2addr p2, v2

    aget p1, p1, p2

    :goto_2b
    return p1

    .line 166
    :cond_2c
    iget-object v0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 167
    if-ltz v0, :cond_41

    .line 171
    if-lez v0, :cond_3f

    iget-object v4, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    if-ne v4, p1, :cond_3f

    .line 172
    move v0, v5

    .line 175
    :cond_3f
    add-int/2addr v0, v1

    goto :goto_45

    .line 179
    :cond_41
    add-int/2addr v0, v2

    neg-int p1, v0

    add-int/lit8 v0, p1, -0x1

    .line 181
    :goto_45
    if-gez v0, :cond_48

    return v1

    .line 190
    :cond_48
    rem-int/lit8 p1, v0, 0x2

    if-nez p1, :cond_4d

    move v3, v2

    .line 191
    :cond_4d
    if-eq p2, v3, :cond_57

    .line 192
    if-lez v0, :cond_56

    iget-object p1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    sub-int/2addr v0, v2

    aget v1, p1, v0

    :cond_56
    return v1

    .line 194
    :cond_57
    iget-object p1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    aget p1, p1, v0

    return p1

    .line 160
    :cond_5c
    :goto_5c
    return v1
.end method


# virtual methods
.method public whitelist nextEndBoundary(I)I
    .registers 3

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findNext(IZ)I

    move-result p1

    return p1
.end method

.method public whitelist nextStartBoundary(I)I
    .registers 3

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findNext(IZ)I

    move-result p1

    return p1
.end method

.method public whitelist previousEndBoundary(I)I
    .registers 3

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findPrevious(IZ)I

    move-result p1

    return p1
.end method

.method public whitelist previousStartBoundary(I)I
    .registers 3

    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findPrevious(IZ)I

    move-result p1

    return p1
.end method
