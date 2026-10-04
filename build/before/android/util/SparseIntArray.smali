.class public Landroid/util/SparseIntArray;
.super Ljava/lang/Object;
.source "SparseIntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private greylist-max-p mKeys:[I

.field private greylist-max-p mSize:I

.field private greylist-max-p mValues:[I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 61
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p1, :cond_e

    .line 72
    sget-object p1, Landroid/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 73
    sget-object p1, Landroid/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/util/SparseIntArray;->mValues:[I

    goto :goto_1b

    .line 75
    :cond_e
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 76
    iget-object p1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 78
    :goto_1b
    const/4 p1, 0x0

    iput p1, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist append(II)V
    .registers 5

    .line 266
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_12

    .line 267
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 268
    return-void

    .line 271
    :cond_12
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object p1

    iput-object p1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 272
    iget-object p1, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object p1

    iput-object p1, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 273
    iget p1, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 274
    return-void
.end method

.method public whitelist clear()V
    .registers 2

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 259
    return-void
.end method

.method public whitelist clone()Landroid/util/SparseIntArray;
    .registers 3

    .line 83
    nop

    .line 85
    const/4 v0, 0x0

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;
    :try_end_8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_8} :catch_20

    .line 86
    :try_start_8
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Landroid/util/SparseIntArray;->mKeys:[I

    .line 87
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Landroid/util/SparseIntArray;->mValues:[I
    :try_end_1c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_8 .. :try_end_1c} :catch_1d

    .line 90
    goto :goto_22

    .line 88
    :catch_1d
    move-exception v0

    move-object v0, v1

    goto :goto_21

    :catch_20
    move-exception v1

    :goto_21
    move-object v1, v0

    .line 91
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

    .line 47
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o copyKeys()[I
    .registers 3

    .line 282
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 283
    const/4 v0, 0x0

    return-object v0

    .line 285
    :cond_8
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist delete(I)V
    .registers 4

    .line 120
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result p1

    .line 122
    if-ltz p1, :cond_d

    .line 123
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 125
    :cond_d
    return-void
.end method

.method public whitelist get(I)I
    .registers 3

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public whitelist get(II)I
    .registers 5

    .line 107
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result p1

    .line 109
    if-gez p1, :cond_b

    .line 110
    return p2

    .line 112
    :cond_b
    iget-object p2, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget p1, p2, p1

    return p1
.end method

.method public whitelist indexOfKey(I)I
    .registers 4

    .line 235
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result p1

    return p1
.end method

.method public whitelist indexOfValue(I)I
    .registers 4

    .line 247
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    if-ge v0, v1, :cond_f

    .line 248
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    .line 249
    return v0

    .line 247
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist keyAt(I)I
    .registers 3

    .line 179
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 182
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 184
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public whitelist put(II)V
    .registers 6

    .line 142
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 144
    if-ltz v0, :cond_f

    .line 145
    iget-object p1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, p1, v0

    goto :goto_2a

    .line 147
    :cond_f
    not-int v0, v0

    .line 149
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object p1

    iput-object p1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 150
    iget-object p1, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {p1, v1, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object p1

    iput-object p1, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 151
    iget p1, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 153
    :goto_2a
    return-void
.end method

.method public whitelist removeAt(I)V
    .registers 6

    .line 131
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget-object v2, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget p1, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 134
    return-void
.end method

.method public whitelist setValueAt(II)V
    .registers 4

    .line 221
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 224
    :cond_9
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2

    .line 226
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v0, p1

    .line 227
    return-void
.end method

.method public whitelist size()I
    .registers 2

    .line 160
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 295
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    .line 296
    const-string/jumbo v0, "{}"

    return-object v0

    .line 299
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 300
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    const/4 v1, 0x0

    :goto_19
    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    if-ge v1, v2, :cond_3a

    .line 302
    if-lez v1, :cond_24

    .line 303
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_24
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 306
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 311
    :cond_3a
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist valueAt(I)I
    .registers 3

    .line 204
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 207
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 209
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget p1, v0, p1

    return p1
.end method
