.class public Landroid/text/AutoGrowArray$IntArray;
.super Ljava/lang/Object;
.source "AutoGrowArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/AutoGrowArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntArray"
.end annotation


# instance fields
.field private greylist-max-o mSize:I

.field private greylist-max-o mValues:[I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 170
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    .line 171
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    if-nez p1, :cond_a

    .line 178
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    goto :goto_10

    .line 180
    :cond_a
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    .line 182
    :goto_10
    const/4 p1, 0x0

    iput p1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    .line 183
    return-void
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 5

    .line 208
    iget v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    add-int/2addr v0, p1

    .line 209
    iget-object p1, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    array-length p1, p1

    if-lt v0, p1, :cond_1c

    .line 210
    iget p1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    invoke-static {p1, v0}, Landroid/text/AutoGrowArray;->-$$Nest$smcomputeNewCapacity(II)I

    move-result p1

    .line 211
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    .line 212
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    iget v1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iput-object p1, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    .line 215
    :cond_1c
    return-void
.end method


# virtual methods
.method public greylist-max-o append(I)V
    .registers 5

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$IntArray;->ensureCapacity(I)V

    .line 201
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    iget v1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    aput p1, v0, v1

    .line 202
    return-void
.end method

.method public greylist-max-o clear()V
    .registers 2

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    .line 222
    return-void
.end method

.method public greylist-max-o clearWithReleasingLargeArray()V
    .registers 3

    .line 229
    invoke-virtual {p0}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 230
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    array-length v0, v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_e

    .line 231
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    .line 233
    :cond_e
    return-void
.end method

.method public greylist-max-o get(I)I
    .registers 3

    .line 239
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    aget p1, v0, p1

    return p1
.end method

.method public greylist-max-o getRawArray()[I
    .registers 2

    .line 263
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    return-object v0
.end method

.method public greylist-max-o resize(I)V
    .registers 3

    .line 190
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    array-length v0, v0

    if-le p1, v0, :cond_c

    .line 191
    iget v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$IntArray;->ensureCapacity(I)V

    .line 193
    :cond_c
    iput p1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    .line 194
    return-void
.end method

.method public greylist-max-o set(II)V
    .registers 4

    .line 246
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    aput p2, v0, p1

    .line 247
    return-void
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 253
    iget v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    return v0
.end method
