.class public Landroid/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/LongSparseArray$StringParcelling;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DELETED:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mGarbage:Z

.field private greylist-max-o mKeys:[J

.field private greylist-max-o mSize:I

.field private greylist-max-o mValues:[Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmKeys(Landroid/util/LongSparseArray;)[J
    .registers 1

    iget-object p0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSize(Landroid/util/LongSparseArray;)I
    .registers 1

    iget p0, p0, Landroid/util/LongSparseArray;->mSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValues(Landroid/util/LongSparseArray;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeys(Landroid/util/LongSparseArray;[J)V
    .registers 2

    iput-object p1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSize(Landroid/util/LongSparseArray;I)V
    .registers 2

    iput p1, p0, Landroid/util/LongSparseArray;->mSize:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmValues(Landroid/util/LongSparseArray;[Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 71
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 72
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 82
    if-nez p1, :cond_11

    .line 83
    sget-object p1, Landroid/util/EmptyArray;->LONG:[J

    iput-object p1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 84
    sget-object p1, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_1d

    .line 86
    :cond_11
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 87
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 89
    :goto_1d
    iput v0, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 90
    return-void
.end method

.method private greylist-max-o gc()V
    .registers 10

    .line 185
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 186
    nop

    .line 187
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 188
    iget-object v2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 190
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_a
    if-ge v4, v0, :cond_22

    .line 191
    aget-object v6, v2, v4

    .line 193
    sget-object v7, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1f

    .line 194
    if-eq v4, v5, :cond_1d

    .line 195
    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    .line 196
    aput-object v6, v2, v5

    .line 197
    const/4 v6, 0x0

    aput-object v6, v2, v4

    .line 200
    :cond_1d
    add-int/lit8 v5, v5, 0x1

    .line 190
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 204
    :cond_22
    iput-boolean v3, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 205
    iput v5, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 208
    return-void
.end method


# virtual methods
.method public whitelist append(JLjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 451
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_14

    .line 452
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 453
    return-void

    .line 456
    :cond_14
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_22

    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_22

    .line 457
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 460
    :cond_22
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 461
    iget-object p1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget p2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 462
    iget p1, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 463
    return-void
.end method

.method public whitelist clear()V
    .registers 6

    .line 435
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 436
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 438
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_e

    .line 439
    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 442
    :cond_e
    iput v2, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 443
    iput-boolean v2, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 444
    return-void
.end method

.method public whitelist clone()Landroid/util/LongSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 95
    nop

    .line 97
    const/4 v0, 0x0

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;
    :try_end_8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_8} :catch_20

    .line 98
    :try_start_8
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, v1, Landroid/util/LongSparseArray;->mKeys:[J

    .line 99
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v1, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_8 .. :try_end_1c} :catch_1d

    .line 102
    goto :goto_22

    .line 100
    :catch_1d
    move-exception v0

    move-object v0, v1

    goto :goto_21

    :catch_20
    move-exception v1

    :goto_21
    move-object v1, v0

    .line 103
    :goto_22
    return-object v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist delete(J)V
    .registers 5

    .line 133
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result p1

    .line 135
    if-ltz p1, :cond_1b

    .line 136
    iget-object p2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p2, p2, p1

    sget-object v0, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq p2, v0, :cond_1b

    .line 137
    iget-object p2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v0, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v0, p2, p1

    .line 138
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 141
    :cond_1b
    return-void
.end method

.method public blacklist firstIndexOnOrAfter(J)I
    .registers 6

    .line 219
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 220
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 222
    :cond_7
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    invoke-static {v0, v1, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result p1

    .line 223
    if-ltz p1, :cond_15

    goto :goto_18

    :cond_15
    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_18
    return p1
.end method

.method public whitelist get(J)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist get(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result p1

    .line 122
    if-ltz p1, :cond_18

    iget-object p2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p2, p2, p1

    sget-object v0, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne p2, v0, :cond_13

    goto :goto_18

    .line 125
    :cond_13
    iget-object p2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1

    .line 123
    :cond_18
    :goto_18
    return-object p3
.end method

.method public whitelist indexOfKey(J)I
    .registers 5

    .line 374
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 375
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 378
    :cond_7
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result p1

    return p1
.end method

.method public whitelist indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 390
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 391
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 394
    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_16

    .line 395
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    .line 396
    return v0

    .line 394
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 399
    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method public greylist-max-o indexOfValueByValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 413
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 414
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 417
    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_23

    .line 418
    if-nez p1, :cond_15

    .line 419
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_20

    .line 420
    return v0

    .line 423
    :cond_15
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 424
    return v0

    .line 417
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 428
    :cond_23
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist keyAt(I)J
    .registers 4

    .line 303
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 306
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 308
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 309
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 312
    :cond_16
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public blacklist lastIndexOnOrBefore(J)I
    .registers 6

    .line 235
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 237
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    invoke-virtual {p0, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    cmp-long p1, v1, p1

    if-nez p1, :cond_13

    .line 238
    return v0

    .line 240
    :cond_13
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist put(JLjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 251
    if-ltz v0, :cond_f

    .line 252
    iget-object p1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, p1, v0

    goto :goto_56

    .line 254
    :cond_f
    not-int v0, v0

    .line 256
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_25

    .line 257
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 258
    iget-object p1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, p1, v0

    .line 259
    return-void

    .line 262
    :cond_25
    iget-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_3c

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3c

    .line 263
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 266
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    not-int v0, v0

    .line 269
    :cond_3c
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v0, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 270
    iget-object p1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget p2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {p1, p2, v0, p3}, Lcom/android/internal/util/GrowingArrayUtils;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 271
    iget p1, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 273
    :goto_56
    return-void
.end method

.method public whitelist remove(J)V
    .registers 3

    .line 147
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 148
    return-void
.end method

.method public whitelist removeAt(I)V
    .registers 4

    .line 171
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 174
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 176
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_20

    .line 177
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 178
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 180
    :cond_20
    return-void
.end method

.method public blacklist removeIf(Lcom/android/internal/util/function/LongObjPredicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/function/LongObjPredicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 153
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_2a

    .line 155
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_27

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aget-wide v1, v1, v0

    iget-object v3, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v1, v2, v3}, Lcom/android/internal/util/function/LongObjPredicate;->test(JLjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 156
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 154
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 160
    :cond_2a
    return-void
.end method

.method public whitelist setValueAt(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 356
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 359
    :cond_9
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2

    .line 361
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 362
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 365
    :cond_16
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 366
    return-void
.end method

.method public whitelist size()I
    .registers 2

    .line 280
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 281
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 284
    :cond_7
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 474
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    .line 475
    const-string/jumbo v0, "{}"

    return-object v0

    .line 478
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 479
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    const/4 v1, 0x0

    :goto_19
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v1, v2, :cond_42

    .line 481
    if-lez v1, :cond_24

    .line 482
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_24
    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 485
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 486
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 488
    if-eq v2, p0, :cond_3a

    .line 489
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 491
    :cond_3a
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 494
    :cond_42
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 333
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 336
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 338
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 339
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 342
    :cond_16
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
