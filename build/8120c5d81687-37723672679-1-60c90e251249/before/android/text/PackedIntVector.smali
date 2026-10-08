.class public Landroid/text/PackedIntVector;
.super Ljava/lang/Object;
.source "PackedIntVector.java"


# instance fields
.field private final greylist-max-o mColumns:I

.field private greylist-max-o mRowGapLength:I

.field private greylist-max-o mRowGapStart:I

.field private greylist-max-o mRows:I

.field private greylist-max-o mValueGap:[I

.field private greylist-max-o mValues:[I


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 53
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 54
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 57
    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 58
    return-void
.end method

.method private final greylist-max-o growBuffer()V
    .registers 11

    .line 260
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 261
    nop

    .line 262
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 261
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    .line 263
    array-length v2, v1

    div-int/2addr v2, v0

    .line 265
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 266
    iget v4, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 268
    iget v5, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v6, v4

    sub-int/2addr v5, v6

    .line 270
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    const/4 v7, 0x0

    if-eqz v6, :cond_35

    .line 271
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int v8, v0, v4

    invoke-static {v6, v7, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int/2addr v8, v5

    mul-int/2addr v8, v0

    sub-int v9, v2, v5

    mul-int/2addr v9, v0

    mul-int/2addr v5, v0

    invoke-static {v6, v8, v1, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    :cond_35
    nop

    :goto_36
    if-ge v7, v0, :cond_4e

    .line 278
    aget v5, v3, v7

    if-lt v5, v4, :cond_4b

    .line 279
    aget v5, v3, v7

    iget v6, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v6, v2, v6

    add-int/2addr v5, v6

    aput v5, v3, v7

    .line 281
    aget v5, v3, v7

    if-ge v5, v4, :cond_4b

    .line 282
    aput v4, v3, v7

    .line 277
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 287
    :cond_4e
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    iget v3, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v3, v2, v3

    add-int/2addr v0, v3

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 288
    iput v2, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 289
    iput-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 290
    return-void
.end method

.method private final greylist-max-o moveRowGapTo(I)V
    .registers 13

    .line 320
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-ne p1, v0, :cond_5

    .line 321
    return-void

    .line 322
    :cond_5
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    const/4 v1, 0x0

    if-le p1, v0, :cond_4e

    .line 323
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v0, p1

    iget v2, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v3, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 324
    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 325
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 326
    iget-object v4, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 327
    iget v5, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v5, v6

    .line 329
    move v6, v5

    :goto_1f
    add-int v7, v5, v0

    if-ge v6, v7, :cond_4d

    .line 330
    sub-int v7, v6, v5

    iget v8, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int/2addr v7, v8

    .line 332
    move v8, v1

    :goto_29
    if-ge v8, v2, :cond_4a

    .line 333
    mul-int v9, v6, v2

    add-int/2addr v9, v8

    aget v9, v4, v9

    .line 335
    aget v10, v3, v8

    if-lt v6, v10, :cond_39

    .line 336
    add-int v10, v8, v2

    aget v10, v3, v10

    add-int/2addr v9, v10

    .line 339
    :cond_39
    aget v10, v3, v8

    if-lt v7, v10, :cond_42

    .line 340
    add-int v10, v8, v2

    aget v10, v3, v10

    sub-int/2addr v9, v10

    .line 343
    :cond_42
    mul-int v10, v7, v2

    add-int/2addr v10, v8

    aput v9, v4, v10

    .line 332
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 329
    :cond_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 346
    :cond_4d
    goto :goto_8b

    .line 347
    :cond_4e
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    sub-int/2addr v0, p1

    .line 348
    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 349
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 350
    iget-object v4, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 351
    iget v5, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v5, v6

    .line 353
    add-int v6, p1, v0

    add-int/lit8 v6, v6, -0x1

    :goto_60
    if-lt v6, p1, :cond_8b

    .line 354
    sub-int v7, v6, p1

    add-int/2addr v7, v5

    sub-int/2addr v7, v0

    .line 356
    move v8, v1

    :goto_67
    if-ge v8, v2, :cond_88

    .line 357
    mul-int v9, v6, v2

    add-int/2addr v9, v8

    aget v9, v4, v9

    .line 359
    aget v10, v3, v8

    if-lt v6, v10, :cond_77

    .line 360
    add-int v10, v8, v2

    aget v10, v3, v10

    add-int/2addr v9, v10

    .line 363
    :cond_77
    aget v10, v3, v8

    if-lt v7, v10, :cond_80

    .line 364
    add-int v10, v8, v2

    aget v10, v3, v10

    sub-int/2addr v9, v10

    .line 367
    :cond_80
    mul-int v10, v7, v2

    add-int/2addr v10, v8

    aput v9, v4, v10

    .line 356
    add-int/lit8 v8, v8, 0x1

    goto :goto_67

    .line 353
    :cond_88
    add-int/lit8 v6, v6, -0x1

    goto :goto_60

    .line 372
    :cond_8b
    :goto_8b
    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 373
    return-void
.end method

.method private final greylist-max-o moveValueGapTo(II)V
    .registers 10

    .line 297
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 298
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 299
    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 301
    aget v3, v0, p1

    if-ne p2, v3, :cond_b

    .line 302
    return-void

    .line 303
    :cond_b
    aget v3, v0, p1

    if-le p2, v3, :cond_22

    .line 304
    aget v3, v0, p1

    :goto_11
    if-ge v3, p2, :cond_36

    .line 305
    mul-int v4, v3, v2

    add-int/2addr v4, p1

    aget v5, v1, v4

    add-int v6, p1, v2

    aget v6, v0, v6

    add-int/2addr v5, v6

    aput v5, v1, v4

    .line 304
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 308
    :cond_22
    move v3, p2

    :goto_23
    aget v4, v0, p1

    if-ge v3, v4, :cond_36

    .line 309
    mul-int v4, v3, v2

    add-int/2addr v4, p1

    aget v5, v1, v4

    add-int v6, p1, v2

    aget v6, v0, v6

    sub-int/2addr v5, v6

    aput v5, v1, v4

    .line 308
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 313
    :cond_36
    aput p2, v0, p1

    .line 314
    return-void
.end method

.method private greylist-max-o setValueInternal(III)V
    .registers 6

    .line 129
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_7

    .line 130
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 133
    :cond_7
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 134
    aget v1, v0, p2

    if-lt p1, v1, :cond_13

    .line 135
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v0, v0, v1

    sub-int/2addr p3, v0

    .line 138
    :cond_13
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aput p3, v0, p1

    .line 139
    return-void
.end method


# virtual methods
.method public greylist-max-o adjustValuesBelow(III)V
    .registers 5

    .line 155
    or-int v0, p1, p2

    if-ltz v0, :cond_25

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-gt p1, v0, :cond_25

    .line 156
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v0

    if-ge p2, v0, :cond_25

    .line 160
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_17

    .line 161
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 164
    :cond_17
    invoke-direct {p0, p2, p1}, Landroid/text/PackedIntVector;->moveValueGapTo(II)V

    .line 165
    iget-object p1, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr p2, v0

    aget v0, p1, p2

    add-int/2addr v0, p3

    aput v0, p1, p2

    .line 166
    return-void

    .line 157
    :cond_25
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public greylist-max-o deleteAt(II)V
    .registers 5

    .line 222
    or-int v0, p1, p2

    if-ltz v0, :cond_1a

    add-int v0, p1, p2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-gt v0, v1, :cond_1a

    .line 226
    invoke-direct {p0, v0}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 228
    iget p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 229
    iget p1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 233
    return-void

    .line 223
    :cond_1a
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

.method public greylist-max-o getValue(II)I
    .registers 7

    .line 73
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 75
    or-int v1, p1, p2

    if-ltz v1, :cond_27

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-ge p1, v1, :cond_27

    if-ge p2, v0, :cond_27

    .line 79
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v1, :cond_15

    .line 80
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v1

    .line 83
    :cond_15
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int v2, p1, v0

    add-int/2addr v2, p2

    aget v1, v1, v2

    .line 85
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 86
    aget v3, v2, p2

    if-lt p1, v3, :cond_26

    .line 87
    add-int/2addr p2, v0

    aget p1, v2, p2

    add-int/2addr v1, p1

    .line 90
    :cond_26
    return v1

    .line 76
    :cond_27
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

.method public greylist-max-o insertAt(I[I)V
    .registers 5

    .line 182
    if-ltz p1, :cond_61

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-gt p1, v0, :cond_61

    .line 186
    if-eqz p2, :cond_2d

    array-length v0, p2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v1

    if-lt v0, v1, :cond_12

    goto :goto_2d

    .line 187
    :cond_12
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "value count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_2d
    :goto_2d
    invoke-direct {p0, p1}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 192
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    if-nez v0, :cond_37

    .line 193
    invoke-direct {p0}, Landroid/text/PackedIntVector;->growBuffer()V

    .line 196
    :cond_37
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 197
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 199
    if-nez p2, :cond_52

    .line 200
    iget p2, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 p2, p2, -0x1

    :goto_49
    if-ltz p2, :cond_60

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    .line 200
    add-int/lit8 p2, p2, -0x1

    goto :goto_49

    .line 204
    :cond_52
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    :goto_56
    if-ltz v0, :cond_60

    .line 205
    aget v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    .line 204
    add-int/lit8 v0, v0, -0x1

    goto :goto_56

    .line 208
    :cond_60
    return-void

    .line 183
    :cond_61
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "row "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public greylist-max-o setValue(III)V
    .registers 6

    .line 104
    or-int v0, p1, p2

    if-ltz v0, :cond_2a

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-ge p1, v0, :cond_2a

    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    if-ge p2, v0, :cond_2a

    .line 108
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_15

    .line 109
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 112
    :cond_15
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 113
    aget v1, v0, p2

    if-lt p1, v1, :cond_21

    .line 114
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v0, v0, v1

    sub-int/2addr p3, v0

    .line 117
    :cond_21
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aput p3, v0, p1

    .line 118
    return-void

    .line 105
    :cond_2a
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public greylist-max-o size()I
    .registers 3

    .line 242
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o width()I
    .registers 2

    .line 252
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    return v0
.end method
