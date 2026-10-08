.class public Landroid/util/LongArrayQueue;
.super Ljava/lang/Object;
.source "LongArrayQueue.java"


# instance fields
.field private blacklist mHead:I

.field private blacklist mSize:I

.field private blacklist mTail:I

.field private blacklist mValues:[J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/util/LongArrayQueue;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_a

    .line 46
    sget-object p1, Landroid/util/EmptyArray;->LONG:[J

    iput-object p1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    goto :goto_10

    .line 48
    :cond_a
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    .line 50
    :goto_10
    const/4 p1, 0x0

    iput p1, p0, Landroid/util/LongArrayQueue;->mSize:I

    .line 51
    iput p1, p0, Landroid/util/LongArrayQueue;->mTail:I

    iput p1, p0, Landroid/util/LongArrayQueue;->mHead:I

    .line 52
    return-void
.end method

.method private blacklist grow()V
    .registers 6

    .line 62
    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    iget-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length v1, v1

    if-lt v0, v1, :cond_2f

    .line 65
    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    invoke-static {v0}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    .line 66
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    .line 67
    iget-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length v1, v1

    iget v2, p0, Landroid/util/LongArrayQueue;->mHead:I

    sub-int/2addr v1, v2

    .line 68
    iget-object v2, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iget v3, p0, Landroid/util/LongArrayQueue;->mHead:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget-object v2, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iget v3, p0, Landroid/util/LongArrayQueue;->mHead:I

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iput-object v0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    .line 71
    iput v4, p0, Landroid/util/LongArrayQueue;->mHead:I

    .line 72
    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    iput v0, p0, Landroid/util/LongArrayQueue;->mTail:I

    .line 73
    return-void

    .line 63
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Queue not full yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addLast(J)V
    .registers 5

    .line 96
    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    iget-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length v1, v1

    if-ne v0, v1, :cond_a

    .line 97
    invoke-direct {p0}, Landroid/util/LongArrayQueue;->grow()V

    .line 99
    :cond_a
    iget-object v0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iget v1, p0, Landroid/util/LongArrayQueue;->mTail:I

    aput-wide p1, v0, v1

    .line 100
    iget p1, p0, Landroid/util/LongArrayQueue;->mTail:I

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Landroid/util/LongArrayQueue;->mTail:I

    .line 101
    iget p1, p0, Landroid/util/LongArrayQueue;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/util/LongArrayQueue;->mSize:I

    .line 102
    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    .line 87
    iput v0, p0, Landroid/util/LongArrayQueue;->mTail:I

    iput v0, p0, Landroid/util/LongArrayQueue;->mHead:I

    .line 88
    return-void
.end method

.method public blacklist get(I)J
    .registers 5

    .line 130
    if-ltz p1, :cond_12

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-ge p1, v0, :cond_12

    .line 134
    iget v0, p0, Landroid/util/LongArrayQueue;->mHead:I

    add-int/2addr v0, p1

    iget-object p1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length p1, p1

    rem-int/2addr v0, p1

    .line 135
    iget-object p1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    aget-wide v0, p1, v0

    return-wide v0

    .line 131
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not valid for a queue of size "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Landroid/util/LongArrayQueue;->mSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist peekFirst()J
    .registers 3

    .line 145
    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-eqz v0, :cond_b

    .line 148
    iget-object v0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iget v1, p0, Landroid/util/LongArrayQueue;->mHead:I

    aget-wide v0, v0, v1

    return-wide v0

    .line 146
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty!"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist peekLast()J
    .registers 3

    .line 158
    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-eqz v0, :cond_15

    .line 161
    iget v0, p0, Landroid/util/LongArrayQueue;->mTail:I

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length v0, v0

    goto :goto_e

    :cond_c
    iget v0, p0, Landroid/util/LongArrayQueue;->mTail:I

    :goto_e
    add-int/lit8 v0, v0, -0x1

    .line 162
    iget-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    aget-wide v0, v1, v0

    return-wide v0

    .line 159
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty!"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeFirst()J
    .registers 5

    .line 111
    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-eqz v0, :cond_1b

    .line 114
    iget-object v0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iget v1, p0, Landroid/util/LongArrayQueue;->mHead:I

    aget-wide v0, v0, v1

    .line 115
    iget v2, p0, Landroid/util/LongArrayQueue;->mHead:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Landroid/util/LongArrayQueue;->mHead:I

    .line 116
    iget v2, p0, Landroid/util/LongArrayQueue;->mSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/util/LongArrayQueue;->mSize:I

    .line 117
    return-wide v0

    .line 112
    :cond_1b
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty!"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist size()I
    .registers 2

    .line 79
    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 170
    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-gtz v0, :cond_8

    .line 171
    const-string/jumbo v0, "{}"

    return-object v0

    .line 174
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/LongArrayQueue;->mSize:I

    mul-int/lit8 v1, v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    const/4 v1, 0x1

    :goto_1f
    iget v2, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-ge v1, v2, :cond_32

    .line 178
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0, v1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 181
    :cond_32
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
