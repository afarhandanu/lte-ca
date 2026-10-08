.class public final Landroid/util/proto/EncodedBuffer;
.super Ljava/lang/Object;
.source "EncodedBuffer.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "EncodedBuffer"


# instance fields
.field private greylist-max-o mBufferCount:I

.field private final greylist-max-o mBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mChunkSize:I

.field private greylist-max-o mReadBufIndex:I

.field private greylist-max-o mReadBuffer:[B

.field private greylist-max-o mReadIndex:I

.field private greylist-max-o mReadLimit:I

.field private greylist-max-o mReadableSize:I

.field private greylist-max-o mWriteBufIndex:I

.field private greylist-max-o mWriteBuffer:[B

.field private greylist-max-o mWriteIndex:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/proto/EncodedBuffer;-><init>(I)V

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    .line 93
    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    .line 106
    if-gtz p1, :cond_13

    .line 107
    const/16 p1, 0x2000

    .line 109
    :cond_13
    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 110
    iget p1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 111
    iget-object p1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const/4 p1, 0x1

    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    .line 113
    return-void
.end method

.method private static greylist-max-o dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I
    .registers 10

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    array-length v1, p3

    .line 656
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_63

    .line 657
    rem-int/lit8 v3, v2, 0x10

    const/16 v4, 0x20

    if-nez v3, :cond_33

    .line 658
    if-eqz v2, :cond_1d

    .line 659
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    :cond_1d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    add-int v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 665
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 668
    :cond_33
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    :goto_36
    aget-byte v3, p3, v2

    .line 671
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    .line 672
    const/16 v5, 0xa

    if-ge v4, v5, :cond_48

    .line 673
    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 675
    :cond_48
    add-int/lit8 v4, v4, 0x57

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 677
    :goto_4e
    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    .line 678
    if-ge v3, v5, :cond_5a

    .line 679
    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 681
    :cond_5a
    add-int/lit8 v3, v3, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 684
    :cond_63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return v1
.end method

.method public static blacklist dumpByteString(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4

    .line 645
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/util/proto/EncodedBuffer;->dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I

    .line 646
    return-void
.end method

.method public static blacklist getRawVarint32Size(I)I
    .registers 2

    .line 283
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 284
    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    .line 285
    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    .line 286
    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    .line 287
    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static blacklist getRawVarint64Size(J)I
    .registers 6

    .line 327
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 p0, 0x1

    return p0

    .line 328
    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 p0, 0x2

    return p0

    .line 329
    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 p0, 0x3

    return p0

    .line 330
    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 p0, 0x4

    return p0

    .line 331
    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 p0, 0x5

    return p0

    .line 332
    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 p0, 0x6

    return p0

    .line 333
    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 p0, 0x7

    return p0

    .line 334
    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 p0, 0x8

    return p0

    .line 335
    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_5d

    const/16 p0, 0x9

    return p0

    .line 336
    :cond_5d
    const/16 p0, 0xa

    return p0
.end method

.method public static blacklist getRawZigZag32Size(I)I
    .registers 1

    .line 311
    invoke-static {p0}, Landroid/util/proto/EncodedBuffer;->zigZag32(I)I

    move-result p0

    invoke-static {p0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static blacklist getRawZigZag64Size(J)I
    .registers 2

    .line 358
    invoke-static {p0, p1}, Landroid/util/proto/EncodedBuffer;->zigZag64(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method private greylist-max-o nextWriteBuffer()V
    .registers 3

    .line 258
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 259
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    if-lt v0, v1, :cond_20

    .line 260
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 261
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    goto :goto_2c

    .line 264
    :cond_20
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 266
    :goto_2c
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 267
    return-void
.end method

.method private static greylist-max-o zigZag32(I)I
    .registers 2

    .line 554
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method private static greylist-max-o zigZag64(J)J
    .registers 5

    .line 561
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public blacklist dumpBuffers(Ljava/lang/String;)V
    .registers 7

    .line 634
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 635
    nop

    .line 636
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_36

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {p1, v3, v2, v4}, Landroid/util/proto/EncodedBuffer;->dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 639
    :cond_36
    return-void
.end method

.method public blacklist editRawFixed32(II)V
    .registers 6

    .line 540
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v1, p1, v1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 541
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v1, v2

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 542
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x2

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v1, v2

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 543
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, 0x3

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr p1, v1

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    .line 544
    return-void
.end method

.method public blacklist getBytes(I)[B
    .registers 9

    .line 576
    new-array v0, p1, [B

    .line 578
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    .line 580
    nop

    .line 582
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_a
    if-ge v3, v1, :cond_1d

    .line 583
    iget-object v5, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget v6, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    iget v5, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    add-int/2addr v4, v5

    .line 582
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 587
    :cond_1d
    iget v5, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v1, v5

    sub-int/2addr p1, v1

    .line 588
    if-lez p1, :cond_2c

    .line 589
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    :cond_2c
    return-object v0
.end method

.method public blacklist getChunkCount()I
    .registers 2

    .line 600
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getDebugString()Ljava/lang/String;
    .registers 3

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncodedBuffer( mChunkSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBuffers.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBufferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWriteIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWriteBufIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReadBufIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReadIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReadableSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReadLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRawFixed32At(I)I
    .registers 6

    .line 528
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v1, p1, v1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v3, v2, v3

    .line 529
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x2

    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v3, v2, v3

    .line 530
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, 0x3

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v2, p1, v2

    .line 531
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr p1, v2

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    .line 528
    return p1
.end method

.method public blacklist getReadPos()I
    .registers 3

    .line 167
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getReadableSize()I
    .registers 2

    .line 148
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    return v0
.end method

.method public blacklist getSize()I
    .registers 3

    .line 156
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getWriteBufIndex()I
    .registers 2

    .line 616
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    return v0
.end method

.method public blacklist getWriteIndex()I
    .registers 2

    .line 608
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    return v0
.end method

.method public blacklist getWritePos()I
    .registers 3

    .line 501
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist readRawByte()B
    .registers 4

    .line 202
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    if-gt v0, v1, :cond_3a

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_14

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    if-ge v0, v1, :cond_3a

    .line 208
    :cond_14
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v0, v1, :cond_2f

    .line 209
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 210
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 213
    :cond_2f
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    aget-byte v0, v0, v1

    return v0

    .line 204
    :cond_3a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to read too much data mReadBufIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBufferCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReadIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReadLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readRawFixed32()I
    .registers 3

    .line 239
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 240
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 241
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 242
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 239
    return v0
.end method

.method public blacklist readRawUnsigned()J
    .registers 7

    .line 220
    nop

    .line 221
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 223
    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v3

    .line 224
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    .line 225
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_12

    .line 226
    return-wide v1

    .line 228
    :cond_12
    add-int/lit8 v0, v0, 0x7

    .line 229
    const/16 v3, 0x40

    if-gt v0, v3, :cond_19

    .line 232
    goto :goto_4

    .line 230
    :cond_19
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Varint too long -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist rewindRead()V
    .registers 3

    .line 139
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 140
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 141
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 142
    return-void
.end method

.method public blacklist rewindWriteTo(I)V
    .registers 5

    .line 508
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v0

    if-gt p1, v0, :cond_30

    .line 511
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v0, p1, v0

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 512
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr p1, v0

    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 513
    iget p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    if-nez p1, :cond_23

    iget p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    if-eqz p1, :cond_23

    .line 516
    iget p1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 517
    iget p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 519
    :cond_23
    iget-object p1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 520
    return-void

    .line 509
    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rewindWriteTo only can go backwards"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist skipRead(I)V
    .registers 5

    .line 174
    if-ltz p1, :cond_46

    .line 177
    if-nez p1, :cond_5

    .line 178
    return-void

    .line 180
    :cond_5
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_12

    .line 181
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    goto :goto_45

    .line 183
    :cond_12
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 184
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v0, p1, v0

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 185
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    if-nez v0, :cond_2f

    .line 186
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 187
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    goto :goto_39

    .line 189
    :cond_2f
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 191
    :goto_39
    iget-object p1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 193
    :goto_45
    return-void

    .line 175
    :cond_46
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skipRead with negative amount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startEditing()V
    .registers 3

    .line 123
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    .line 124
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    .line 126
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 127
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 128
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 130
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 131
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 132
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 133
    return-void
.end method

.method public blacklist writeFromThisBuffer(II)V
    .registers 9

    .line 432
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    if-ltz v0, :cond_109

    .line 435
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v0

    const-string v1, " "

    const-string v2, " size="

    if-lt p1, v0, :cond_dc

    .line 439
    add-int v0, p1, p2

    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    if-gt v0, v3, :cond_af

    .line 443
    if-nez p2, :cond_17

    .line 444
    return-void

    .line 446
    :cond_17
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_63

    .line 450
    iget p1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr p1, v0

    if-gt p2, p1, :cond_2f

    .line 451
    iget p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    goto/16 :goto_ae

    .line 453
    :cond_2f
    iget p1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr p1, v0

    sub-int/2addr p2, p1

    .line 454
    iget p1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int p1, p2, p1

    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 455
    iget p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    if-nez p1, :cond_4c

    .line 459
    iget p1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 460
    iget p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr p2, v0

    add-int/2addr p1, p2

    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    goto :goto_56

    .line 462
    :cond_4c
    iget p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 464
    :goto_56
    iget-object p1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget p2, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    goto :goto_ae

    .line 470
    :cond_63
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v0, p1, v0

    .line 471
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 472
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr p1, v2

    .line 473
    :goto_72
    if-lez p2, :cond_ae

    .line 474
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v2, v3, :cond_7d

    .line 475
    invoke-direct {p0}, Landroid/util/proto/EncodedBuffer;->nextWriteBuffer()V

    .line 477
    :cond_7d
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt p1, v2, :cond_8f

    .line 478
    add-int/lit8 v0, v0, 0x1

    .line 479
    iget-object p1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 480
    const/4 v1, 0x0

    move v5, v1

    move-object v1, p1

    move p1, v5

    .line 482
    :cond_8f
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr v2, v3

    .line 483
    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    sub-int/2addr v3, p1

    .line 484
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 485
    iget-object v3, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v4, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-static {v1, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 487
    add-int/2addr p1, v2

    .line 488
    sub-int/2addr p2, v2

    .line 489
    goto :goto_72

    .line 491
    :cond_ae
    :goto_ae
    return-void

    .line 440
    :cond_af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to move more data than there is -- srcOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 441
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_dc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can only move forward in the buffer -- srcOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 437
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_109
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "writeFromThisBuffer before startEditing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist writeRawBuffer([B)V
    .registers 4

    .line 396
    if-eqz p1, :cond_a

    array-length v0, p1

    if-lez v0, :cond_a

    .line 397
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([BII)V

    .line 399
    :cond_a
    return-void
.end method

.method public blacklist writeRawBuffer([BII)V
    .registers 7

    .line 405
    if-nez p1, :cond_3

    .line 406
    return-void

    .line 409
    :cond_3
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_c

    move v0, p3

    goto :goto_11

    :cond_c
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr v0, v1

    .line 410
    :goto_11
    if-lez v0, :cond_21

    .line 411
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 413
    sub-int/2addr p3, v0

    .line 414
    add-int/2addr p2, v0

    .line 416
    :cond_21
    :goto_21
    if-lez p3, :cond_3d

    .line 418
    invoke-direct {p0}, Landroid/util/proto/EncodedBuffer;->nextWriteBuffer()V

    .line 419
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-ge p3, v0, :cond_2c

    move v0, p3

    goto :goto_2e

    :cond_2c
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 420
    :goto_2e
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 422
    sub-int/2addr p3, v0

    .line 423
    add-int/2addr p2, v0

    goto :goto_21

    .line 425
    :cond_3d
    return-void
.end method

.method public blacklist writeRawByte(B)V
    .registers 5

    .line 273
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v0, v1, :cond_9

    .line 274
    invoke-direct {p0}, Landroid/util/proto/EncodedBuffer;->nextWriteBuffer()V

    .line 276
    :cond_9
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    aput-byte p1, v0, v1

    .line 277
    return-void
.end method

.method public blacklist writeRawFixed32(I)V
    .registers 3

    .line 372
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 373
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 374
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 375
    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 376
    return-void
.end method

.method public blacklist writeRawFixed64(J)V
    .registers 5

    .line 382
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 383
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 384
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 385
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 386
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 387
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 388
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 389
    const/16 v0, 0x38

    shr-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 390
    return-void
.end method

.method public blacklist writeRawVarint32(I)V
    .registers 3

    .line 297
    nop

    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_a

    .line 298
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 299
    return-void

    .line 301
    :cond_a
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 302
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method public blacklist writeRawVarint64(J)V
    .registers 7

    .line 344
    nop

    :goto_1
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 345
    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 346
    return-void

    .line 348
    :cond_10
    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 349
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_1
.end method

.method public blacklist writeRawZigZag32(I)V
    .registers 2

    .line 320
    invoke-static {p1}, Landroid/util/proto/EncodedBuffer;->zigZag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 321
    return-void
.end method

.method public blacklist writeRawZigZag64(J)V
    .registers 3

    .line 365
    invoke-static {p1, p2}, Landroid/util/proto/EncodedBuffer;->zigZag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 366
    return-void
.end method
