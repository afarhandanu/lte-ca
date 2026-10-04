.class public Landroid/util/SparseArray;
.super Ljava/lang/Object;
.source "SparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
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

.field private greylist-max-p mKeys:[I

.field private greylist-max-p mSize:I

.field private greylist-max-p mValues:[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 74
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 84
    if-nez p1, :cond_11

    .line 85
    sget-object p1, Landroid/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 86
    sget-object p1, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_1e

    .line 88
    :cond_11
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 91
    :goto_1e
    iput v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 92
    return-void
.end method

.method private greylist-max-o gc()V
    .registers 9

    .line 220
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 221
    nop

    .line 222
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 223
    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 225
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_a
    if-ge v4, v0, :cond_22

    .line 226
    aget-object v6, v2, v4

    .line 228
    sget-object v7, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1f

    .line 229
    if-eq v4, v5, :cond_1d

    .line 230
    aget v7, v1, v4

    aput v7, v1, v5

    .line 231
    aput-object v6, v2, v5

    .line 232
    const/4 v6, 0x0

    aput-object v6, v2, v4

    .line 235
    :cond_1d
    add-int/lit8 v5, v5, 0x1

    .line 225
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 239
    :cond_22
    iput-boolean v3, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 240
    iput v5, p0, Landroid/util/SparseArray;->mSize:I

    .line 243
    return-void
.end method


# virtual methods
.method public whitelist append(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 464
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_12

    .line 465
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    return-void

    .line 469
    :cond_12
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_20

    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_20

    .line 470
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 473
    :cond_20
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object p1

    iput-object p1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 474
    iget-object p1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 475
    iget p1, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/util/SparseArray;->mSize:I

    .line 476
    return-void
.end method

.method public whitelist clear()V
    .registers 6

    .line 448
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 449
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 451
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_e

    .line 452
    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 451
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 455
    :cond_e
    iput v2, p0, Landroid/util/SparseArray;->mSize:I

    .line 456
    iput-boolean v2, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 457
    return-void
.end method

.method public whitelist clone()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 97
    nop

    .line 99
    const/4 v0, 0x0

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;
    :try_end_8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_8} :catch_20

    .line 100
    :try_start_8
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Landroid/util/SparseArray;->mKeys:[I

    .line 101
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v1, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_8 .. :try_end_1c} :catch_1d

    .line 104
    goto :goto_22

    .line 102
    :catch_1d
    move-exception v0

    move-object v0, v1

    goto :goto_21

    :catch_20
    move-exception v1

    :goto_21
    move-object v1, v0

    .line 105
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

    .line 57
    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist contains(I)Z
    .registers 2

    .line 116
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public whitelist contentEquals(Landroid/util/SparseArray;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;)Z"
        }
    .end annotation

    .line 518
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 519
    return v0

    .line 522
    :cond_4
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 523
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_f

    .line 524
    return v0

    .line 528
    :cond_f
    move v2, v0

    :goto_10
    if-ge v2, v1, :cond_2f

    .line 529
    iget-object v3, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v3, v3, v2

    iget-object v4, p1, Landroid/util/SparseArray;->mKeys:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, p1, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v2

    .line 530
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_2e

    .line 528
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 531
    :cond_2e
    :goto_2e
    return v0

    .line 535
    :cond_2f
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist contentHashCode()I
    .registers 6

    .line 546
    nop

    .line 547
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 549
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 550
    iget-object v3, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v3, v3, v1

    .line 551
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v1

    .line 552
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    .line 553
    mul-int/lit8 v2, v2, 0x1f

    invoke-static {v4}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 555
    :cond_1e
    return v2
.end method

.method public whitelist delete(I)V
    .registers 4

    .line 146
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result p1

    .line 148
    if-ltz p1, :cond_1b

    .line 149
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_1b

    .line 150
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 151
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 154
    :cond_1b
    return-void
.end method

.method public whitelist get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result p1

    .line 135
    if-ltz p1, :cond_18

    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    goto :goto_18

    .line 138
    :cond_13
    iget-object p2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1

    .line 136
    :cond_18
    :goto_18
    return-object p2
.end method

.method public whitelist indexOfKey(I)I
    .registers 4

    .line 384
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 385
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 388
    :cond_7
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

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

    .line 402
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 403
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 406
    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_16

    .line 407
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    .line 408
    return v0

    .line 406
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 412
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

    .line 426
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 427
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 430
    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_23

    .line 431
    if-nez p1, :cond_15

    .line 432
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_20

    .line 433
    return v0

    .line 436
    :cond_15
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 437
    return v0

    .line 430
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 441
    :cond_23
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist keyAt(I)I
    .registers 3

    .line 313
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 316
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 318
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 319
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 322
    :cond_16
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public whitelist put(ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 261
    if-ltz v0, :cond_f

    .line 262
    iget-object p1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    goto :goto_56

    .line 264
    :cond_f
    not-int v0, v0

    .line 266
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_25

    .line 267
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 268
    iget-object p1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 269
    return-void

    .line 272
    :cond_25
    iget-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_3c

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3c

    .line 273
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 276
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    not-int v0, v0

    .line 279
    :cond_3c
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object p1

    iput-object p1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 280
    iget-object p1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {p1, v1, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 281
    iget p1, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/util/SparseArray;->mSize:I

    .line 283
    :goto_56
    return-void
.end method

.method public whitelist remove(I)V
    .registers 2

    .line 178
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 179
    return-void
.end method

.method public whitelist removeAt(I)V
    .registers 4

    .line 190
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 193
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 195
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_20

    .line 196
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 197
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 199
    :cond_20
    return-void
.end method

.method public whitelist removeAtRange(II)V
    .registers 4

    .line 211
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    add-int/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 212
    nop

    :goto_8
    if-ge p1, p2, :cond_10

    .line 213
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 212
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 215
    :cond_10
    return-void
.end method

.method public greylist-max-o removeReturnOld(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result p1

    .line 163
    if-ltz p1, :cond_20

    .line 164
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_20

    .line 165
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 166
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, p1

    .line 167
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 168
    return-object v0

    .line 171
    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist set(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 250
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    return-void
.end method

.method public whitelist setValueAt(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 366
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 369
    :cond_9
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2

    .line 371
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 372
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 375
    :cond_16
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 376
    return-void
.end method

.method public whitelist size()I
    .registers 2

    .line 290
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 291
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 294
    :cond_7
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 487
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    .line 488
    const-string/jumbo v0, "{}"

    return-object v0

    .line 491
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 492
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    const/4 v1, 0x0

    :goto_19
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v1, v2, :cond_42

    .line 494
    if-lez v1, :cond_24

    .line 495
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_24
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 498
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 501
    if-eq v2, p0, :cond_3a

    .line 502
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 504
    :cond_3a
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 507
    :cond_42
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
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

    .line 343
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 346
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 348
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 349
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 352
    :cond_16
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
