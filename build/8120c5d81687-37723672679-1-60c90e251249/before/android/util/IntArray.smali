.class public Landroid/util/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final greylist-max-o MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private greylist-max-o mSize:I

.field private greylist-max-o mValues:[I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/IntArray;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_a

    .line 53
    sget-object p1, Landroid/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    goto :goto_10

    .line 55
    :cond_a
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    .line 57
    :goto_10
    const/4 p1, 0x0

    iput p1, p0, Landroid/util/IntArray;->mSize:I

    .line 58
    return-void
.end method

.method private constructor greylist-max-o <init>([II)V
    .registers 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    .line 38
    array-length p1, p1

    const-string/jumbo v0, "size"

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/util/IntArray;->mSize:I

    .line 39
    return-void
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 5

    .line 160
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    .line 161
    add-int/2addr p1, v0

    .line 162
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    array-length v1, v1

    if-lt p1, v1, :cond_20

    .line 163
    const/4 v1, 0x6

    if-ge v0, v1, :cond_e

    .line 164
    const/16 v1, 0xc

    goto :goto_10

    :cond_e
    shr-int/lit8 v1, v0, 0x1

    :goto_10
    add-int/2addr v1, v0

    .line 165
    if-le v1, p1, :cond_14

    move p1, v1

    .line 166
    :cond_14
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    .line 167
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    .line 170
    :cond_20
    return-void
.end method

.method public static greylist-max-o fromArray([II)Landroid/util/IntArray;
    .registers 2

    .line 71
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-static {p0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o wrap([I)Landroid/util/IntArray;
    .registers 3

    .line 64
    new-instance v0, Landroid/util/IntArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Landroid/util/IntArray;-><init>([II)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(I)V
    .registers 3

    .line 93
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-virtual {p0, v0, p1}, Landroid/util/IntArray;->add(II)V

    .line 94
    return-void
.end method

.method public greylist-max-o add(II)V
    .registers 7

    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 104
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    sub-int/2addr v1, p1

    .line 105
    iget v2, p0, Landroid/util/IntArray;->mSize:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/util/IntArray;->mSize:I

    .line 106
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 108
    if-eqz v1, :cond_1c

    .line 110
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, p1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    :cond_1c
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aput p2, v0, p1

    .line 114
    return-void
.end method

.method public greylist-max-o addAll(Landroid/util/IntArray;)V
    .registers 6

    .line 138
    iget v0, p1, Landroid/util/IntArray;->mSize:I

    .line 139
    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 141
    iget-object p1, p1, Landroid/util/IntArray;->mValues:[I

    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    iget v2, p0, Landroid/util/IntArray;->mSize:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget p1, p0, Landroid/util/IntArray;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/util/IntArray;->mSize:I

    .line 143
    return-void
.end method

.method public blacklist addAll([I)V
    .registers 6

    .line 149
    array-length v0, p1

    .line 150
    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 152
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    iget v2, p0, Landroid/util/IntArray;->mSize:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget p1, p0, Landroid/util/IntArray;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/util/IntArray;->mSize:I

    .line 154
    return-void
.end method

.method public greylist-max-o binarySearch(I)I
    .registers 4

    .line 131
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result p1

    return p1
.end method

.method public greylist-max-o clear()V
    .registers 2

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    .line 177
    return-void
.end method

.method public blacklist clone()Landroid/util/IntArray;
    .registers 4

    .line 181
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget v2, p0, Landroid/util/IntArray;->mSize:I

    invoke-direct {v0, v1, v2}, Landroid/util/IntArray;-><init>([II)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist contains(I)Z
    .registers 3

    .line 216
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public greylist-max-o get(I)I
    .registers 3

    .line 188
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 189
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aget p1, v0, p1

    return p1
.end method

.method public greylist-max-o indexOf(I)I
    .registers 5

    .line 205
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    .line 206
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_f

    .line 207
    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_c

    .line 208
    return v1

    .line 206
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 211
    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public greylist-max-o remove(I)V
    .registers 6

    .line 223
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 224
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    iget v3, p0, Landroid/util/IntArray;->mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget p1, p0, Landroid/util/IntArray;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/util/IntArray;->mSize:I

    .line 226
    return-void
.end method

.method public greylist-max-o resize(I)V
    .registers 5

    .line 80
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 81
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    array-length v0, v0

    if-gt p1, v0, :cond_12

    .line 82
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_19

    .line 84
    :cond_12
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 86
    :goto_19
    iput p1, p0, Landroid/util/IntArray;->mSize:I

    .line 87
    return-void
.end method

.method public greylist-max-o set(II)V
    .registers 4

    .line 196
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 197
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aput p2, v0, p1

    .line 198
    return-void
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 232
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    return v0
.end method

.method public greylist-max-o toArray()[I
    .registers 3

    .line 239
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 246
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    .line 247
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 248
    const-string v0, "[]"

    return-object v0

    .line 250
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    const/4 v2, 0x0

    .line 253
    :goto_15
    iget-object v3, p0, Landroid/util/IntArray;->mValues:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    if-ne v2, v0, :cond_29

    .line 255
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :cond_29
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_15
.end method
