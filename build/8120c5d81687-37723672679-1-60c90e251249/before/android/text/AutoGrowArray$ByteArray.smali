.class public Landroid/text/AutoGrowArray$ByteArray;
.super Ljava/lang/Object;
.source "AutoGrowArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/AutoGrowArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteArray"
.end annotation


# instance fields
.field private greylist-max-o mSize:I

.field private greylist-max-o mValues:[B


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 61
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$ByteArray;-><init>(I)V

    .line 62
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_a

    .line 69
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object p1, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    goto :goto_10

    .line 71
    :cond_a
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    .line 73
    :goto_10
    const/4 p1, 0x0

    iput p1, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    .line 74
    return-void
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 5

    .line 99
    iget v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    add-int/2addr v0, p1

    .line 100
    iget-object p1, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    array-length p1, p1

    if-lt v0, p1, :cond_1c

    .line 101
    iget p1, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    invoke-static {p1, v0}, Landroid/text/AutoGrowArray;->-$$Nest$smcomputeNewCapacity(II)I

    move-result p1

    .line 102
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object p1

    .line 103
    iget-object v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    iget v1, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iput-object p1, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    .line 106
    :cond_1c
    return-void
.end method


# virtual methods
.method public greylist-max-o append(B)V
    .registers 5

    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$ByteArray;->ensureCapacity(I)V

    .line 92
    iget-object v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    iget v1, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    aput-byte p1, v0, v1

    .line 93
    return-void
.end method

.method public greylist-max-o clear()V
    .registers 2

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    .line 113
    return-void
.end method

.method public greylist-max-o clearWithReleasingLargeArray()V
    .registers 3

    .line 120
    invoke-virtual {p0}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 121
    iget-object v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    array-length v0, v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_e

    .line 122
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    .line 124
    :cond_e
    return-void
.end method

.method public greylist-max-o get(I)B
    .registers 3

    .line 130
    iget-object v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public greylist-max-o getRawArray()[B
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    return-object v0
.end method

.method public greylist-max-o resize(I)V
    .registers 3

    .line 81
    iget-object v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    array-length v0, v0

    if-le p1, v0, :cond_c

    .line 82
    iget v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$ByteArray;->ensureCapacity(I)V

    .line 84
    :cond_c
    iput p1, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    .line 85
    return-void
.end method

.method public greylist-max-o set(IB)V
    .registers 4

    .line 137
    iget-object v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    aput-byte p2, v0, p1

    .line 138
    return-void
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    return v0
.end method
