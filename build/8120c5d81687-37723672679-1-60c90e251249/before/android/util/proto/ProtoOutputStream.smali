.class public final Landroid/util/proto/ProtoOutputStream;
.super Landroid/util/proto/ProtoStream;
.source "ProtoOutputStream.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "ProtoOutputStream"


# instance fields
.field private greylist-max-o mBuffer:Landroid/util/proto/EncodedBuffer;

.field private greylist-max-o mCompacted:Z

.field private greylist-max-o mCopyBegin:I

.field private greylist-max-o mDepth:I

.field private greylist-max-o mExpectedObjectToken:J

.field private greylist-max-o mNextObjectId:I

.field private greylist-max-o mStream:Ljava/io/OutputStream;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 168
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3

    .line 175
    invoke-direct {p0}, Landroid/util/proto/ProtoStream;-><init>()V

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    .line 176
    new-instance v0, Landroid/util/proto/EncodedBuffer;

    invoke-direct {v0, p1}, Landroid/util/proto/EncodedBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 177
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 201
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 202
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 187
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 188
    iput-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    .line 189
    return-void
.end method

.method private greylist-max-o assertNotCompacted()V
    .registers 3

    .line 2309
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-nez v0, :cond_5

    .line 2312
    return-void

    .line 2310
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "write called after compact"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist checkFieldId(JJ)I
    .registers 22

    .line 2210
    move-wide/from16 v0, p0

    const-wide v2, 0xf0000000000L

    and-long v4, v0, v2

    .line 2211
    const-wide v6, 0xff00000000L

    and-long v8, v0, v6

    .line 2212
    and-long v2, p2, v2

    .line 2213
    and-long v6, p2, v6

    .line 2214
    long-to-int v10, v0

    if-eqz v10, :cond_e2

    .line 2218
    cmp-long v11, v8, v6

    const-wide v12, 0x50000000000L

    if-nez v11, :cond_33

    cmp-long v11, v4, v2

    if-eqz v11, :cond_32

    cmp-long v11, v4, v12

    if-nez v11, :cond_33

    const-wide v14, 0x20000000000L

    cmp-long v11, v2, v14

    if-eqz v11, :cond_32

    goto :goto_33

    .line 2266
    :cond_32
    return v10

    .line 2222
    :cond_33
    :goto_33
    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v11

    .line 2223
    invoke-static {v8, v9}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v14

    .line 2224
    const/16 v15, 0x2e

    move-wide/from16 p2, v12

    const-string/jumbo v12, "start"

    const-string/jumbo v13, "write"

    const-wide v16, 0xb00000000L

    if-eqz v14, :cond_a3

    if-eqz v11, :cond_a3

    .line 2225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2226
    cmp-long v1, v6, v16

    if-nez v1, :cond_5b

    .line 2227
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    .line 2229
    :cond_5b
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2231
    :goto_5e
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2233
    const-string v1, " called for field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2234
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2235
    const-string v1, " which should be used with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    cmp-long v1, v8, v16

    if-nez v1, :cond_81

    .line 2237
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_84

    .line 2239
    :cond_81
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2241
    :goto_84
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2243
    cmp-long v1, v4, p2

    if-nez v1, :cond_96

    .line 2244
    const-string v1, " or writeRepeated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    :cond_96
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2250
    :cond_a3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2251
    cmp-long v5, v6, v16

    if-nez v5, :cond_b0

    .line 2252
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 2254
    :cond_b0
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    :goto_b3
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2258
    const-string v2, " called with an invalid fieldId: 0x"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2259
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2260
    const-string v0, ". The proto field ID might be "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2261
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2262
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2215
    :cond_e2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid proto field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fieldId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2216
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o compactIfNecessary()V
    .registers 5

    .line 2332
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-nez v0, :cond_56

    .line 2333
    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-nez v0, :cond_35

    .line 2339
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    .line 2340
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v0

    .line 2343
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    .line 2349
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->rewindRead()V

    .line 2350
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    .line 2353
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    if-ge v1, v0, :cond_2c

    .line 2354
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    .line 2358
    :cond_2c
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    .line 2363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    goto :goto_56

    .line 2334
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to compact with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " missing calls to endObject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2365
    :cond_56
    :goto_56
    return-void
.end method

.method private greylist-max-o compactSizes(I)V
    .registers 6

    .line 2441
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    .line 2442
    add-int/2addr v0, p1

    .line 2444
    :goto_7
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result p1

    if-ge p1, v0, :cond_ba

    .line 2445
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v1

    .line 2450
    and-int/lit8 v2, v1, 0x7

    .line 2451
    packed-switch v2, :pswitch_data_bc

    .line 2485
    new-instance p1, Landroid/util/proto/ProtoParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compactSizes Bad tag tag=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2486
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wireType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 2487
    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2482
    :pswitch_4f
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2483
    goto :goto_b8

    .line 2480
    :pswitch_56
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groups not supported at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2460
    :pswitch_6f
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v2}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v2

    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    .line 2462
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result p1

    .line 2463
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v1

    .line 2464
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v2, v1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 2466
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v2}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v2

    iput v2, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    .line 2467
    if-ltz p1, :cond_a0

    .line 2470
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_b8

    .line 2472
    :cond_a0
    neg-int p1, p1

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    .line 2474
    goto :goto_b8

    .line 2456
    :pswitch_a5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2457
    goto :goto_b8

    .line 2453
    :goto_ad
    :pswitch_ad
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_b8

    goto :goto_ad

    .line 2489
    :cond_b8
    :goto_b8
    goto/16 :goto_7

    .line 2490
    :cond_ba
    return-void

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_a5
        :pswitch_6f
        :pswitch_56
        :pswitch_56
        :pswitch_4f
    .end packed-switch
.end method

.method private greylist-max-o editEncodedSize(I)I
    .registers 7

    .line 2372
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    .line 2373
    add-int/2addr v0, p1

    .line 2374
    const/4 p1, 0x0

    .line 2377
    :goto_8
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v1

    if-ge v1, v0, :cond_ed

    .line 2378
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v2

    .line 2379
    invoke-static {v2}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v3

    add-int/2addr p1, v3

    .line 2381
    and-int/lit8 v3, v2, 0x7

    .line 2382
    packed-switch v3, :pswitch_data_ee

    .line 2426
    new-instance p1, Landroid/util/proto/ProtoParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "editEncodedSize Bad tag tag=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2427
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wireType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 2428
    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2422
    :pswitch_55
    add-int/lit8 p1, p1, 0x4

    .line 2423
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2424
    goto/16 :goto_eb

    .line 2420
    :pswitch_5f
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groups not supported at index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2396
    :pswitch_78
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v1

    .line 2397
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v2}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v2

    .line 2398
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v3

    .line 2399
    if-ltz v1, :cond_c1

    .line 2401
    if-ne v3, v1, :cond_94

    .line 2408
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v2, v1}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_cb

    .line 2402
    :cond_94
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pre-computed size where the precomputed size and the raw size in the buffer don\'t match! childRawSize="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " childEncodedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " childEncodedSizePos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2411
    :cond_c1
    neg-int v1, v1

    invoke-direct {p0, v1}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    move-result v3

    .line 2412
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2414
    :goto_cb
    invoke-static {v3}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr p1, v1

    .line 2416
    goto :goto_eb

    .line 2390
    :pswitch_d2
    add-int/lit8 p1, p1, 0x8

    .line 2391
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2392
    goto :goto_eb

    .line 2384
    :pswitch_dc
    add-int/lit8 p1, p1, 0x1

    .line 2385
    :goto_de
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_eb

    .line 2386
    add-int/lit8 p1, p1, 0x1

    goto :goto_de

    .line 2430
    :cond_eb
    :goto_eb
    goto/16 :goto_8

    .line 2432
    :cond_ed
    return p1

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_d2
        :pswitch_78
        :pswitch_5f
        :pswitch_5f
        :pswitch_55
    .end packed-switch
.end method

.method private greylist-max-o endObjectImpl(JZ)V
    .registers 14

    .line 2095
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getDepthFromToken(J)I

    move-result v0

    .line 2096
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v1

    .line 2097
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getOffsetFromToken(J)I

    move-result v2

    .line 2098
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x8

    .line 2100
    if-eq p3, v1, :cond_29

    .line 2101
    if-eqz p3, :cond_21

    .line 2102
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endRepeatedObject called where endObject should have been"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2105
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endObject called where endRepeatedObject should have been"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2111
    :cond_29
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    and-int/lit16 v1, v1, 0x1ff

    if-ne v1, v0, :cond_7f

    iget-wide v0, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7f

    .line 2121
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, v2}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v5, v2, 0x4

    .line 2122
    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v4

    int-to-long v6, v4

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long/2addr v0, v6

    iput-wide v0, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2124
    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 2125
    if-lez v3, :cond_66

    .line 2126
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    neg-int p2, v3

    invoke-virtual {p1, v2, p2}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2127
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 p2, -0x1

    invoke-virtual {p1, v5, p2}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_7e

    .line 2128
    :cond_66
    if-eqz p3, :cond_74

    .line 2129
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2130
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, v5, p2}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_7e

    .line 2133
    :cond_74
    iget-object p3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getTagSizeFromToken(J)I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {p3, v2}, Landroid/util/proto/EncodedBuffer;->rewindWriteTo(I)V

    .line 2135
    :goto_7e
    return-void

    .line 2114
    :cond_7f
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mismatched startObject/endObject calls. Current depth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2116
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " expectedToken="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2117
    invoke-static {v0, v1}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private static greylist-max-o getTagSize(I)I
    .registers 1

    .line 2273
    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static whitelist makeFieldId(IJ)J
    .registers 7

    .line 2187
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long p0, p1, v0

    return-wide p0
.end method

.method private greylist-max-o readRawTag()I
    .registers 3

    .line 2527
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 2528
    const/4 v0, 0x0

    return v0

    .line 2530
    :cond_10
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->readRawUnsigned()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private greylist-max-o startObjectImpl(IZ)J
    .registers 8

    .line 2068
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 2069
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v0

    .line 2070
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 2071
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    .line 2076
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v2, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2077
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v2, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2079
    nop

    .line 2081
    invoke-static {p1}, Landroid/util/proto/ProtoOutputStream;->getTagSize(I)I

    move-result p1

    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    invoke-static {p1, p2, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->makeToken(IZIII)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2082
    iget-wide p1, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    return-wide p1
.end method

.method private greylist-max-o writeBoolImpl(IZ)V
    .registers 3

    .line 1770
    if-eqz p2, :cond_c

    .line 1771
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1773
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1775
    :cond_c
    return-void
.end method

.method private greylist-max-o writeBytesImpl(I[B)V
    .registers 4

    .line 1905
    if-eqz p2, :cond_e

    array-length v0, p2

    if-lez v0, :cond_e

    .line 1906
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1907
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 1909
    :cond_e
    return-void
.end method

.method private greylist-max-o writeDoubleImpl(ID)V
    .registers 6

    .line 906
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_13

    .line 907
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 908
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 910
    :cond_13
    return-void
.end method

.method private greylist-max-o writeEnumImpl(II)V
    .registers 4

    .line 1953
    if-eqz p2, :cond_9

    .line 1954
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1955
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1957
    :cond_9
    return-void
.end method

.method private greylist-max-o writeFixed32Impl(II)V
    .registers 4

    .line 1503
    if-eqz p2, :cond_b

    .line 1504
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1505
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1507
    :cond_b
    return-void
.end method

.method private greylist-max-o writeFixed64Impl(IJ)V
    .registers 6

    .line 1570
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    .line 1571
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1572
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1574
    :cond_f
    return-void
.end method

.method private greylist-max-o writeFloatImpl(IF)V
    .registers 4

    .line 973
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_12

    .line 974
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 975
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 977
    :cond_12
    return-void
.end method

.method private greylist-max-o writeInt32Impl(II)V
    .registers 4

    .line 1063
    if-eqz p2, :cond_9

    .line 1064
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1065
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1067
    :cond_9
    return-void
.end method

.method private greylist-max-o writeInt64Impl(IJ)V
    .registers 6

    .line 1144
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    .line 1145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1146
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1148
    :cond_f
    return-void
.end method

.method private greylist-max-o writeKnownLengthHeader(II)V
    .registers 4

    .line 2292
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 2295
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2296
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2297
    return-void
.end method

.method private greylist-max-o writeRepeatedBoolImpl(IZ)V
    .registers 4

    .line 1792
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1793
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1794
    return-void
.end method

.method private greylist-max-o writeRepeatedBytesImpl(I[B)V
    .registers 4

    .line 1926
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p2

    :goto_5
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1927
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 1928
    return-void
.end method

.method private greylist-max-o writeRepeatedDoubleImpl(ID)V
    .registers 5

    .line 927
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 928
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 929
    return-void
.end method

.method private greylist-max-o writeRepeatedEnumImpl(II)V
    .registers 4

    .line 1974
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1975
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1976
    return-void
.end method

.method private greylist-max-o writeRepeatedFixed32Impl(II)V
    .registers 4

    .line 1524
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1525
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1526
    return-void
.end method

.method private greylist-max-o writeRepeatedFixed64Impl(IJ)V
    .registers 5

    .line 1591
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1592
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1593
    return-void
.end method

.method private greylist-max-o writeRepeatedFloatImpl(IF)V
    .registers 4

    .line 994
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 995
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 996
    return-void
.end method

.method private greylist-max-o writeRepeatedInt32Impl(II)V
    .registers 4

    .line 1088
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1089
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1090
    return-void
.end method

.method private greylist-max-o writeRepeatedInt64Impl(IJ)V
    .registers 5

    .line 1165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1166
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1167
    return-void
.end method

.method private greylist-max-o writeRepeatedSFixed32Impl(II)V
    .registers 4

    .line 1657
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1658
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1659
    return-void
.end method

.method private greylist-max-o writeRepeatedSFixed64Impl(IJ)V
    .registers 5

    .line 1724
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1725
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1726
    return-void
.end method

.method private greylist-max-o writeRepeatedSInt32Impl(II)V
    .registers 4

    .line 1381
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1382
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1383
    return-void
.end method

.method private greylist-max-o writeRepeatedSInt64Impl(IJ)V
    .registers 5

    .line 1453
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1454
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1455
    return-void
.end method

.method private greylist-max-o writeRepeatedStringImpl(ILjava/lang/String;)V
    .registers 4

    .line 1862
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_d

    .line 1865
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    goto :goto_11

    .line 1863
    :cond_d
    :goto_d
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1867
    :goto_11
    return-void
.end method

.method private greylist-max-o writeRepeatedUInt32Impl(II)V
    .registers 4

    .line 1237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1238
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1239
    return-void
.end method

.method private greylist-max-o writeRepeatedUInt64Impl(IJ)V
    .registers 5

    .line 1309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1310
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1311
    return-void
.end method

.method private greylist-max-o writeSFixed32Impl(II)V
    .registers 4

    .line 1636
    if-eqz p2, :cond_b

    .line 1637
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1638
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1640
    :cond_b
    return-void
.end method

.method private greylist-max-o writeSFixed64Impl(IJ)V
    .registers 6

    .line 1703
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    .line 1704
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1705
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1707
    :cond_f
    return-void
.end method

.method private greylist-max-o writeSInt32Impl(II)V
    .registers 4

    .line 1360
    if-eqz p2, :cond_b

    .line 1361
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1362
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1364
    :cond_b
    return-void
.end method

.method private greylist-max-o writeSInt64Impl(IJ)V
    .registers 6

    .line 1432
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    .line 1433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1434
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1436
    :cond_f
    return-void
.end method

.method private greylist-max-o writeStringImpl(ILjava/lang/String;)V
    .registers 4

    .line 1842
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 1843
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    .line 1845
    :cond_b
    return-void
.end method

.method private greylist-max-o writeUInt32Impl(II)V
    .registers 4

    .line 1216
    if-eqz p2, :cond_b

    .line 1217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1218
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1220
    :cond_b
    return-void
.end method

.method private greylist-max-o writeUInt64Impl(IJ)V
    .registers 6

    .line 1288
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    .line 1289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1290
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1292
    :cond_f
    return-void
.end method

.method private greylist-max-o writeUnsignedVarintFromSignedInt(I)V
    .registers 5

    .line 1037
    if-ltz p1, :cond_8

    .line 1038
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    goto :goto_e

    .line 1040
    :cond_8
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1042
    :goto_e
    return-void
.end method

.method private greylist-max-o writeUtf8String(ILjava/lang/String;)V
    .registers 4

    .line 1875
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 1876
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1877
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_11

    .line 1880
    nop

    .line 1881
    return-void

    .line 1878
    :catch_11
    move-exception p1

    .line 1879
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "not possible"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist dump(Ljava/lang/String;)V
    .registers 3

    .line 2537
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->dumpBuffers(Ljava/lang/String;)V

    .line 2539
    return-void
.end method

.method public whitelist end(J)V
    .registers 4

    .line 881
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 882
    return-void
.end method

.method public blacklist endObject(J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2029
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2031
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 2032
    return-void
.end method

.method public blacklist endRepeatedObject(J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2059
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2061
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 2062
    return-void
.end method

.method public whitelist flush()V
    .registers 4

    .line 2501
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    if-nez v0, :cond_5

    .line 2502
    return-void

    .line 2504
    :cond_5
    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-eqz v0, :cond_a

    .line 2507
    return-void

    .line 2509
    :cond_a
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-eqz v0, :cond_f

    .line 2511
    return-void

    .line 2513
    :cond_f
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    .line 2514
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    .line 2516
    :try_start_1e
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2517
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_2a

    .line 2520
    nop

    .line 2521
    return-void

    .line 2518
    :catch_2a
    move-exception v0

    .line 2519
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error flushing proto to stream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getBytes()[B
    .registers 3

    .line 2322
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    .line 2324
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRawSize()I
    .registers 2

    .line 211
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-eqz v0, :cond_a

    .line 212
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0

    .line 214
    :cond_a
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getSize()I

    move-result v0

    return v0
.end method

.method public whitelist start(J)J
    .registers 8

    .line 860
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 861
    long-to-int v0, p1

    .line 863
    const-wide v1, 0xff00000000L

    and-long/2addr v1, p1

    const-wide v3, 0xb00000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_40

    .line 864
    const-wide v1, 0xf0000000000L

    and-long/2addr v1, p1

    .line 865
    const-wide v3, 0x10000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_28

    .line 866
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide p1

    return-wide p1

    .line 867
    :cond_28
    const-wide v3, 0x20000000000L

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3a

    const-wide v3, 0x50000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_40

    .line 868
    :cond_3a
    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide p1

    return-wide p1

    .line 871
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to call start(long) with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 872
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startObject(J)J
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2015
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2016
    const-wide v0, 0x10b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 2018
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public blacklist startRepeatedObject(J)J
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2045
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2046
    const-wide v0, 0x20b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 2048
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist write(JD)V
    .registers 11

    .line 229
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 230
    long-to-int v0, p1

    .line 232
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sparse-switch v1, :sswitch_data_d2

    .line 347
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempt to call write(long, double) with "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 348
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 295
    :sswitch_32
    double-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 296
    goto/16 :goto_d1

    .line 287
    :sswitch_38
    double-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 288
    goto/16 :goto_d1

    .line 327
    :sswitch_3e
    double-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 328
    goto/16 :goto_d1

    .line 319
    :sswitch_44
    double-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 320
    goto/16 :goto_d1

    .line 343
    :sswitch_4a
    double-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 344
    goto/16 :goto_d1

    .line 271
    :sswitch_50
    double-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 272
    goto/16 :goto_d1

    .line 335
    :sswitch_56
    cmpl-double p1, p3, v4

    if-eqz p1, :cond_5b

    goto :goto_5c

    :cond_5b
    move v2, v3

    :goto_5c
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 336
    goto/16 :goto_d1

    .line 303
    :sswitch_61
    double-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 304
    goto/16 :goto_d1

    .line 311
    :sswitch_67
    double-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 312
    goto/16 :goto_d1

    .line 255
    :sswitch_6d
    double-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 256
    goto/16 :goto_d1

    .line 279
    :sswitch_73
    double-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 280
    goto/16 :goto_d1

    .line 263
    :sswitch_79
    double-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 264
    goto :goto_d1

    .line 247
    :sswitch_7e
    double-to-float p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 248
    goto :goto_d1

    .line 239
    :sswitch_83
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 240
    goto :goto_d1

    .line 291
    :sswitch_87
    double-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 292
    goto :goto_d1

    .line 283
    :sswitch_8c
    double-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 284
    goto :goto_d1

    .line 323
    :sswitch_91
    double-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 324
    goto :goto_d1

    .line 315
    :sswitch_96
    double-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 316
    goto :goto_d1

    .line 339
    :sswitch_9b
    double-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 340
    goto :goto_d1

    .line 267
    :sswitch_a0
    double-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 268
    goto :goto_d1

    .line 331
    :sswitch_a5
    cmpl-double p1, p3, v4

    if-eqz p1, :cond_aa

    goto :goto_ab

    :cond_aa
    move v2, v3

    :goto_ab
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 332
    goto :goto_d1

    .line 299
    :sswitch_af
    double-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 300
    goto :goto_d1

    .line 307
    :sswitch_b4
    double-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 308
    goto :goto_d1

    .line 251
    :sswitch_b9
    double-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 252
    goto :goto_d1

    .line 275
    :sswitch_be
    double-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 276
    goto :goto_d1

    .line 259
    :sswitch_c3
    double-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 260
    goto :goto_d1

    .line 243
    :sswitch_c8
    double-to-float p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 244
    goto :goto_d1

    .line 235
    :sswitch_cd
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 236
    nop

    .line 351
    :goto_d1
    return-void

    :sswitch_data_d2
    .sparse-switch
        0x101 -> :sswitch_cd
        0x102 -> :sswitch_c8
        0x103 -> :sswitch_c3
        0x104 -> :sswitch_be
        0x105 -> :sswitch_b9
        0x106 -> :sswitch_b4
        0x107 -> :sswitch_af
        0x108 -> :sswitch_a5
        0x10d -> :sswitch_a0
        0x10e -> :sswitch_9b
        0x10f -> :sswitch_96
        0x110 -> :sswitch_91
        0x111 -> :sswitch_8c
        0x112 -> :sswitch_87
        0x201 -> :sswitch_83
        0x202 -> :sswitch_7e
        0x203 -> :sswitch_79
        0x204 -> :sswitch_73
        0x205 -> :sswitch_6d
        0x206 -> :sswitch_67
        0x207 -> :sswitch_61
        0x208 -> :sswitch_56
        0x20d -> :sswitch_50
        0x20e -> :sswitch_4a
        0x20f -> :sswitch_44
        0x210 -> :sswitch_3e
        0x211 -> :sswitch_38
        0x212 -> :sswitch_32
        0x501 -> :sswitch_83
        0x502 -> :sswitch_7e
        0x503 -> :sswitch_79
        0x504 -> :sswitch_73
        0x505 -> :sswitch_6d
        0x506 -> :sswitch_67
        0x507 -> :sswitch_61
        0x508 -> :sswitch_56
        0x50d -> :sswitch_50
        0x50e -> :sswitch_4a
        0x50f -> :sswitch_44
        0x510 -> :sswitch_3e
        0x511 -> :sswitch_38
        0x512 -> :sswitch_32
    .end sparse-switch
.end method

.method public whitelist write(JF)V
    .registers 9

    .line 364
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 365
    long-to-int v0, p1

    .line 367
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_d2

    .line 482
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to call write(long, float) with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 483
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 430
    :sswitch_31
    float-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 431
    goto/16 :goto_d0

    .line 422
    :sswitch_37
    float-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 423
    goto/16 :goto_d0

    .line 462
    :sswitch_3d
    float-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 463
    goto/16 :goto_d0

    .line 454
    :sswitch_43
    float-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 455
    goto/16 :goto_d0

    .line 478
    :sswitch_49
    float-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 479
    goto/16 :goto_d0

    .line 406
    :sswitch_4f
    float-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 407
    goto/16 :goto_d0

    .line 470
    :sswitch_55
    cmpl-float p1, p3, v4

    if-eqz p1, :cond_5a

    goto :goto_5b

    :cond_5a
    move v2, v3

    :goto_5b
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 471
    goto/16 :goto_d0

    .line 438
    :sswitch_60
    float-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 439
    goto/16 :goto_d0

    .line 446
    :sswitch_66
    float-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 447
    goto/16 :goto_d0

    .line 390
    :sswitch_6c
    float-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 391
    goto/16 :goto_d0

    .line 414
    :sswitch_72
    float-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 415
    goto/16 :goto_d0

    .line 398
    :sswitch_78
    float-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 399
    goto :goto_d0

    .line 382
    :sswitch_7d
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 383
    goto :goto_d0

    .line 374
    :sswitch_81
    float-to-double p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 375
    goto :goto_d0

    .line 426
    :sswitch_86
    float-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 427
    goto :goto_d0

    .line 418
    :sswitch_8b
    float-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 419
    goto :goto_d0

    .line 458
    :sswitch_90
    float-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 459
    goto :goto_d0

    .line 450
    :sswitch_95
    float-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 451
    goto :goto_d0

    .line 474
    :sswitch_9a
    float-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 475
    goto :goto_d0

    .line 402
    :sswitch_9f
    float-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 403
    goto :goto_d0

    .line 466
    :sswitch_a4
    cmpl-float p1, p3, v4

    if-eqz p1, :cond_a9

    goto :goto_aa

    :cond_a9
    move v2, v3

    :goto_aa
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 467
    goto :goto_d0

    .line 434
    :sswitch_ae
    float-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 435
    goto :goto_d0

    .line 442
    :sswitch_b3
    float-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 443
    goto :goto_d0

    .line 386
    :sswitch_b8
    float-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 387
    goto :goto_d0

    .line 410
    :sswitch_bd
    float-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 411
    goto :goto_d0

    .line 394
    :sswitch_c2
    float-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 395
    goto :goto_d0

    .line 378
    :sswitch_c7
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 379
    goto :goto_d0

    .line 370
    :sswitch_cb
    float-to-double p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 371
    nop

    .line 486
    :goto_d0
    return-void

    nop

    :sswitch_data_d2
    .sparse-switch
        0x101 -> :sswitch_cb
        0x102 -> :sswitch_c7
        0x103 -> :sswitch_c2
        0x104 -> :sswitch_bd
        0x105 -> :sswitch_b8
        0x106 -> :sswitch_b3
        0x107 -> :sswitch_ae
        0x108 -> :sswitch_a4
        0x10d -> :sswitch_9f
        0x10e -> :sswitch_9a
        0x10f -> :sswitch_95
        0x110 -> :sswitch_90
        0x111 -> :sswitch_8b
        0x112 -> :sswitch_86
        0x201 -> :sswitch_81
        0x202 -> :sswitch_7d
        0x203 -> :sswitch_78
        0x204 -> :sswitch_72
        0x205 -> :sswitch_6c
        0x206 -> :sswitch_66
        0x207 -> :sswitch_60
        0x208 -> :sswitch_55
        0x20d -> :sswitch_4f
        0x20e -> :sswitch_49
        0x20f -> :sswitch_43
        0x210 -> :sswitch_3d
        0x211 -> :sswitch_37
        0x212 -> :sswitch_31
        0x501 -> :sswitch_81
        0x502 -> :sswitch_7d
        0x503 -> :sswitch_78
        0x504 -> :sswitch_72
        0x505 -> :sswitch_6c
        0x506 -> :sswitch_66
        0x507 -> :sswitch_60
        0x508 -> :sswitch_55
        0x50d -> :sswitch_4f
        0x50e -> :sswitch_49
        0x50f -> :sswitch_43
        0x510 -> :sswitch_3d
        0x511 -> :sswitch_37
        0x512 -> :sswitch_31
    .end sparse-switch
.end method

.method public whitelist write(JI)V
    .registers 8

    .line 499
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 500
    long-to-int v0, p1

    .line 502
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_c2

    .line 617
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to call write(long, int) with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 618
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 565
    :sswitch_30
    int-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 566
    goto/16 :goto_c0

    .line 557
    :sswitch_36
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 558
    goto/16 :goto_c0

    .line 597
    :sswitch_3b
    int-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 598
    goto/16 :goto_c0

    .line 589
    :sswitch_41
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 590
    goto/16 :goto_c0

    .line 613
    :sswitch_46
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 614
    goto/16 :goto_c0

    .line 541
    :sswitch_4b
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 542
    goto/16 :goto_c0

    .line 605
    :sswitch_50
    if-eqz p3, :cond_53

    goto :goto_54

    :cond_53
    move v2, v3

    :goto_54
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 606
    goto/16 :goto_c0

    .line 573
    :sswitch_59
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 574
    goto/16 :goto_c0

    .line 581
    :sswitch_5e
    int-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 582
    goto/16 :goto_c0

    .line 525
    :sswitch_64
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 526
    goto/16 :goto_c0

    .line 549
    :sswitch_69
    int-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 550
    goto :goto_c0

    .line 533
    :sswitch_6e
    int-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 534
    goto :goto_c0

    .line 517
    :sswitch_73
    int-to-float p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 518
    goto :goto_c0

    .line 509
    :sswitch_78
    int-to-double p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 510
    goto :goto_c0

    .line 561
    :sswitch_7d
    int-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 562
    goto :goto_c0

    .line 553
    :sswitch_82
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 554
    goto :goto_c0

    .line 593
    :sswitch_86
    int-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 594
    goto :goto_c0

    .line 585
    :sswitch_8b
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 586
    goto :goto_c0

    .line 609
    :sswitch_8f
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 610
    goto :goto_c0

    .line 537
    :sswitch_93
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 538
    goto :goto_c0

    .line 601
    :sswitch_97
    if-eqz p3, :cond_9a

    goto :goto_9b

    :cond_9a
    move v2, v3

    :goto_9b
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 602
    goto :goto_c0

    .line 569
    :sswitch_9f
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 570
    goto :goto_c0

    .line 577
    :sswitch_a3
    int-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 578
    goto :goto_c0

    .line 521
    :sswitch_a8
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 522
    goto :goto_c0

    .line 545
    :sswitch_ac
    int-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 546
    goto :goto_c0

    .line 529
    :sswitch_b1
    int-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 530
    goto :goto_c0

    .line 513
    :sswitch_b6
    int-to-float p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 514
    goto :goto_c0

    .line 505
    :sswitch_bb
    int-to-double p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 506
    nop

    .line 621
    :goto_c0
    return-void

    nop

    :sswitch_data_c2
    .sparse-switch
        0x101 -> :sswitch_bb
        0x102 -> :sswitch_b6
        0x103 -> :sswitch_b1
        0x104 -> :sswitch_ac
        0x105 -> :sswitch_a8
        0x106 -> :sswitch_a3
        0x107 -> :sswitch_9f
        0x108 -> :sswitch_97
        0x10d -> :sswitch_93
        0x10e -> :sswitch_8f
        0x10f -> :sswitch_8b
        0x110 -> :sswitch_86
        0x111 -> :sswitch_82
        0x112 -> :sswitch_7d
        0x201 -> :sswitch_78
        0x202 -> :sswitch_73
        0x203 -> :sswitch_6e
        0x204 -> :sswitch_69
        0x205 -> :sswitch_64
        0x206 -> :sswitch_5e
        0x207 -> :sswitch_59
        0x208 -> :sswitch_50
        0x20d -> :sswitch_4b
        0x20e -> :sswitch_46
        0x20f -> :sswitch_41
        0x210 -> :sswitch_3b
        0x211 -> :sswitch_36
        0x212 -> :sswitch_30
        0x501 -> :sswitch_78
        0x502 -> :sswitch_73
        0x503 -> :sswitch_6e
        0x504 -> :sswitch_69
        0x505 -> :sswitch_64
        0x506 -> :sswitch_5e
        0x507 -> :sswitch_59
        0x508 -> :sswitch_50
        0x50d -> :sswitch_4b
        0x50e -> :sswitch_46
        0x50f -> :sswitch_41
        0x510 -> :sswitch_3b
        0x511 -> :sswitch_36
        0x512 -> :sswitch_30
    .end sparse-switch
.end method

.method public whitelist write(JJ)V
    .registers 11

    .line 634
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 635
    long-to-int v0, p1

    .line 637
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sparse-switch v1, :sswitch_data_ca

    .line 752
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempt to call write(long, long) with "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 753
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 700
    :sswitch_32
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 701
    goto/16 :goto_c8

    .line 692
    :sswitch_37
    long-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 693
    goto/16 :goto_c8

    .line 732
    :sswitch_3d
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 733
    goto/16 :goto_c8

    .line 724
    :sswitch_42
    long-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 725
    goto/16 :goto_c8

    .line 748
    :sswitch_48
    long-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 749
    goto/16 :goto_c8

    .line 676
    :sswitch_4e
    long-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 677
    goto/16 :goto_c8

    .line 740
    :sswitch_54
    cmp-long p1, p3, v4

    if-eqz p1, :cond_59

    goto :goto_5a

    :cond_59
    move v2, v3

    :goto_5a
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 741
    goto/16 :goto_c8

    .line 708
    :sswitch_5f
    long-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 709
    goto/16 :goto_c8

    .line 716
    :sswitch_65
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 717
    goto/16 :goto_c8

    .line 660
    :sswitch_6a
    long-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 661
    goto/16 :goto_c8

    .line 684
    :sswitch_70
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 685
    goto :goto_c8

    .line 668
    :sswitch_74
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 669
    goto :goto_c8

    .line 652
    :sswitch_78
    long-to-float p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 653
    goto :goto_c8

    .line 644
    :sswitch_7d
    long-to-double p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 645
    goto :goto_c8

    .line 696
    :sswitch_82
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 697
    goto :goto_c8

    .line 688
    :sswitch_86
    long-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 689
    goto :goto_c8

    .line 728
    :sswitch_8b
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 729
    goto :goto_c8

    .line 720
    :sswitch_8f
    long-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 721
    goto :goto_c8

    .line 744
    :sswitch_94
    long-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 745
    goto :goto_c8

    .line 672
    :sswitch_99
    long-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 673
    goto :goto_c8

    .line 736
    :sswitch_9e
    cmp-long p1, p3, v4

    if-eqz p1, :cond_a3

    goto :goto_a4

    :cond_a3
    move v2, v3

    :goto_a4
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 737
    goto :goto_c8

    .line 704
    :sswitch_a8
    long-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 705
    goto :goto_c8

    .line 712
    :sswitch_ad
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 713
    goto :goto_c8

    .line 656
    :sswitch_b1
    long-to-int p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 657
    goto :goto_c8

    .line 680
    :sswitch_b6
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 681
    goto :goto_c8

    .line 664
    :sswitch_ba
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 665
    goto :goto_c8

    .line 648
    :sswitch_be
    long-to-float p1, p3

    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 649
    goto :goto_c8

    .line 640
    :sswitch_c3
    long-to-double p1, p3

    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 641
    nop

    .line 756
    :goto_c8
    return-void

    nop

    :sswitch_data_ca
    .sparse-switch
        0x101 -> :sswitch_c3
        0x102 -> :sswitch_be
        0x103 -> :sswitch_ba
        0x104 -> :sswitch_b6
        0x105 -> :sswitch_b1
        0x106 -> :sswitch_ad
        0x107 -> :sswitch_a8
        0x108 -> :sswitch_9e
        0x10d -> :sswitch_99
        0x10e -> :sswitch_94
        0x10f -> :sswitch_8f
        0x110 -> :sswitch_8b
        0x111 -> :sswitch_86
        0x112 -> :sswitch_82
        0x201 -> :sswitch_7d
        0x202 -> :sswitch_78
        0x203 -> :sswitch_74
        0x204 -> :sswitch_70
        0x205 -> :sswitch_6a
        0x206 -> :sswitch_65
        0x207 -> :sswitch_5f
        0x208 -> :sswitch_54
        0x20d -> :sswitch_4e
        0x20e -> :sswitch_48
        0x20f -> :sswitch_42
        0x210 -> :sswitch_3d
        0x211 -> :sswitch_37
        0x212 -> :sswitch_32
        0x501 -> :sswitch_7d
        0x502 -> :sswitch_78
        0x503 -> :sswitch_74
        0x504 -> :sswitch_70
        0x505 -> :sswitch_6a
        0x506 -> :sswitch_65
        0x507 -> :sswitch_5f
        0x508 -> :sswitch_54
        0x50d -> :sswitch_4e
        0x50e -> :sswitch_48
        0x50f -> :sswitch_42
        0x510 -> :sswitch_3d
        0x511 -> :sswitch_37
        0x512 -> :sswitch_32
    .end sparse-switch
.end method

.method public whitelist write(JLjava/lang/String;)V
    .registers 8

    .line 796
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 797
    long-to-int v0, p1

    .line 799
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_38

    .line 810
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to call write(long, String) with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 811
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 806
    :sswitch_2e
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    .line 807
    goto :goto_36

    .line 802
    :sswitch_32
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    .line 803
    nop

    .line 814
    :goto_36
    return-void

    nop

    :sswitch_data_38
    .sparse-switch
        0x109 -> :sswitch_32
        0x209 -> :sswitch_2e
        0x509 -> :sswitch_2e
    .end sparse-switch
.end method

.method public whitelist write(JZ)V
    .registers 8

    .line 767
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 768
    long-to-int v0, p1

    .line 770
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_38

    .line 781
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to call write(long, boolean) with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 782
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 777
    :sswitch_2e
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 778
    goto :goto_36

    .line 773
    :sswitch_32
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 774
    nop

    .line 785
    :goto_36
    return-void

    nop

    :sswitch_data_38
    .sparse-switch
        0x108 -> :sswitch_32
        0x208 -> :sswitch_2e
        0x508 -> :sswitch_2e
    .end sparse-switch
.end method

.method public whitelist write(J[B)V
    .registers 8

    .line 825
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 826
    long-to-int v0, p1

    .line 828
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_40

    .line 847
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to call write(long, byte[]) with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 848
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 835
    :sswitch_2e
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    .line 836
    goto :goto_3e

    .line 843
    :sswitch_32
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    .line 844
    goto :goto_3e

    .line 831
    :sswitch_36
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    .line 832
    goto :goto_3e

    .line 839
    :sswitch_3a
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    .line 840
    nop

    .line 851
    :goto_3e
    return-void

    nop

    :sswitch_data_40
    .sparse-switch
        0x10b -> :sswitch_3a
        0x10c -> :sswitch_36
        0x20b -> :sswitch_32
        0x20c -> :sswitch_2e
        0x50b -> :sswitch_32
        0x50c -> :sswitch_2e
    .end sparse-switch
.end method

.method public blacklist writeBool(JZ)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1763
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1764
    const-wide v0, 0x10800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1766
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 1767
    return-void
.end method

.method public blacklist writeBytes(J[B)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1898
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1899
    const-wide v0, 0x10c00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1901
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    .line 1902
    return-void
.end method

.method public blacklist writeDouble(JD)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 899
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 900
    const-wide v0, 0x10100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 902
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 903
    return-void
.end method

.method public blacklist writeEnum(JI)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1946
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1947
    const-wide v0, 0x10e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1949
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 1950
    return-void
.end method

.method public blacklist writeFixed32(JI)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1496
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1497
    const-wide v0, 0x10700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1499
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 1500
    return-void
.end method

.method public blacklist writeFixed64(JJ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1563
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1564
    const-wide v0, 0x10600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1566
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 1567
    return-void
.end method

.method public blacklist writeFloat(JF)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 966
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 967
    const-wide v0, 0x10200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 969
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 970
    return-void
.end method

.method public blacklist writeInt32(JI)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1056
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1057
    const-wide v0, 0x10500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1059
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 1060
    return-void
.end method

.method public blacklist writeInt64(JJ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1137
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1138
    const-wide v0, 0x10300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1140
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 1141
    return-void
.end method

.method public blacklist writeObject(J[B)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2145
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2146
    const-wide v0, 0x10b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 2148
    invoke-virtual {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    .line 2149
    return-void
.end method

.method greylist-max-o writeObjectImpl(I[B)V
    .registers 4

    .line 2152
    if-eqz p2, :cond_e

    array-length v0, p2

    if-eqz v0, :cond_e

    .line 2153
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 2154
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 2156
    :cond_e
    return-void
.end method

.method public blacklist writePackedBool(J[Z)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1804
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1805
    const-wide v0, 0x50800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1807
    const/4 p2, 0x0

    if-eqz p3, :cond_11

    array-length v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1808
    :goto_12
    if-lez v0, :cond_25

    .line 1810
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1813
    nop

    :goto_18
    if-ge p2, v0, :cond_25

    .line 1815
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-boolean v1, p3, p2

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1813
    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    .line 1818
    :cond_25
    return-void
.end method

.method public blacklist writePackedDouble(J[D)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 939
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 940
    const-wide v0, 0x50100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 942
    const/4 p2, 0x0

    if-eqz p3, :cond_11

    array-length v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    .line 943
    :goto_12
    if-lez v0, :cond_2a

    .line 944
    mul-int/lit8 v1, v0, 0x8

    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 945
    nop

    :goto_1a
    if-ge p2, v0, :cond_2a

    .line 946
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v1, p3, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 945
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    .line 949
    :cond_2a
    return-void
.end method

.method public blacklist writePackedEnum(J[I)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1986
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1987
    const-wide v0, 0x50e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1989
    const/4 p2, 0x0

    if-eqz p3, :cond_11

    array-length v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1990
    :goto_12
    if-lez v0, :cond_36

    .line 1991
    nop

    .line 1992
    move v1, p2

    move v2, v1

    :goto_17
    if-ge v1, v0, :cond_28

    .line 1993
    aget v3, p3, v1

    .line 1994
    if-ltz v3, :cond_22

    invoke-static {v3}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v3

    goto :goto_24

    :cond_22
    const/16 v3, 0xa

    :goto_24
    add-int/2addr v2, v3

    .line 1992
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1996
    :cond_28
    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1997
    nop

    :goto_2c
    if-ge p2, v0, :cond_36

    .line 1998
    aget p1, p3, p2

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1997
    add-int/lit8 p2, p2, 0x1

    goto :goto_2c

    .line 2001
    :cond_36
    return-void
.end method

.method public blacklist writePackedFixed32(J[I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1536
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1537
    const-wide v0, 0x50700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1539
    const/4 p2, 0x0

    if-eqz p3, :cond_11

    array-length v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1540
    :goto_12
    if-lez v0, :cond_26

    .line 1541
    mul-int/lit8 v1, v0, 0x4

    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1542
    nop

    :goto_1a
    if-ge p2, v0, :cond_26

    .line 1543
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v1, p3, p2

    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1542
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    .line 1546
    :cond_26
    return-void
.end method

.method public blacklist writePackedFixed64(J[J)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1603
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1604
    const-wide v0, 0x50600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1606
    const/4 p2, 0x0

    if-eqz p3, :cond_11

    array-length v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1607
    :goto_12
    if-lez v0, :cond_26

    .line 1608
    mul-int/lit8 v1, v0, 0x8

    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1609
    nop

    :goto_1a
    if-ge p2, v0, :cond_26

    .line 1610
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v1, p3, p2

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1609
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    .line 1613
    :cond_26
    return-void
.end method

.method public blacklist writePackedFloat(J[F)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1006
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1007
    const-wide v0, 0x50200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1009
    const/4 p2, 0x0

    if-eqz p3, :cond_11

    array-length v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1010
    :goto_12
    if-lez v0, :cond_2a

    .line 1011
    mul-int/lit8 v1, v0, 0x4

    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1012
    nop

    :goto_1a
    if-ge p2, v0, :cond_2a

    .line 1013
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v1, p3, p2

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1012
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    .line 1016
    :cond_2a
    return-void
.end method

.method public blacklist writePackedInt32(J[I)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1104
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1105
    const-wide v0, 0x50500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1107
    const/4 p2, 0x0

    if-eqz p3, :cond_11

    array-length v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1108
    :goto_12
    if-lez v0, :cond_36

    .line 1109
    nop

    .line 1110
    move v1, p2

    move v2, v1

    :goto_17
    if-ge v1, v0, :cond_28

    .line 1111
    aget v3, p3, v1

    .line 1112
    if-ltz v3, :cond_22

    invoke-static {v3}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v3

    goto :goto_24

    :cond_22
    const/16 v3, 0xa

    :goto_24
    add-int/2addr v2, v3

    .line 1110
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1114
    :cond_28
    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1115
    nop

    :goto_2c
    if-ge p2, v0, :cond_36

    .line 1116
    aget p1, p3, p2

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1115
    add-int/lit8 p2, p2, 0x1

    goto :goto_2c

    .line 1119
    :cond_36
    return-void
.end method

.method public blacklist writePackedInt64(J[J)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1177
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1178
    const-wide v0, 0x50300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1180
    const/4 p2, 0x0

    if-eqz p3, :cond_11

    array-length v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1181
    :goto_12
    if-lez v0, :cond_33

    .line 1182
    nop

    .line 1183
    move v1, p2

    move v2, v1

    :goto_17
    if-ge v1, v0, :cond_23

    .line 1184
    aget-wide v3, p3, v1

    invoke-static {v3, v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 1183
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1186
    :cond_23
    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1187
    nop

    :goto_27
    if-ge p2, v0, :cond_33

    .line 1188
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v1, p3, p2

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1187
    add-int/lit8 p2, p2, 0x1

    goto :goto_27

    .line 1191
    :cond_33
    return-void
.end method

.method public blacklist writePackedSFixed32(J[I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1669
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1670
    const-wide v0, 0x50f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1672
    const/4 p2, 0x0

    if-eqz p3, :cond_11

    array-length v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1673
    :goto_12
    if-lez v0, :cond_26

    .line 1674
    mul-int/lit8 v1, v0, 0x4

    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1675
    nop

    :goto_1a
    if-ge p2, v0, :cond_26

    .line 1676
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v1, p3, p2

    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1675
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    .line 1679
    :cond_26
    return-void
.end method

.method public blacklist writePackedSFixed64(J[J)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1736
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1737
    const-wide v0, 0x51000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1739
    const/4 p2, 0x0

    if-eqz p3, :cond_11

    array-length v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1740
    :goto_12
    if-lez v0, :cond_26

    .line 1741
    mul-int/lit8 v1, v0, 0x8

    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1742
    nop

    :goto_1a
    if-ge p2, v0, :cond_26

    .line 1743
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v1, p3, p2

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1742
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    .line 1746
    :cond_26
    return-void
.end method

.method public blacklist writePackedSInt32(J[I)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1393
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1394
    const-wide v0, 0x51100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1396
    const/4 p2, 0x0

    if-eqz p3, :cond_11

    array-length v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1397
    :goto_12
    if-lez v0, :cond_33

    .line 1398
    nop

    .line 1399
    move v1, p2

    move v2, v1

    :goto_17
    if-ge v1, v0, :cond_23

    .line 1400
    aget v3, p3, v1

    invoke-static {v3}, Landroid/util/proto/EncodedBuffer;->getRawZigZag32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1399
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1402
    :cond_23
    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1403
    nop

    :goto_27
    if-ge p2, v0, :cond_33

    .line 1404
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v1, p3, p2

    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1403
    add-int/lit8 p2, p2, 0x1

    goto :goto_27

    .line 1407
    :cond_33
    return-void
.end method

.method public blacklist writePackedSInt64(J[J)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1465
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1466
    const-wide v0, 0x51200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1468
    const/4 p2, 0x0

    if-eqz p3, :cond_11

    array-length v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1469
    :goto_12
    if-lez v0, :cond_33

    .line 1470
    nop

    .line 1471
    move v1, p2

    move v2, v1

    :goto_17
    if-ge v1, v0, :cond_23

    .line 1472
    aget-wide v3, p3, v1

    invoke-static {v3, v4}, Landroid/util/proto/EncodedBuffer;->getRawZigZag64Size(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 1471
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1474
    :cond_23
    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1475
    nop

    :goto_27
    if-ge p2, v0, :cond_33

    .line 1476
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v1, p3, p2

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1475
    add-int/lit8 p2, p2, 0x1

    goto :goto_27

    .line 1479
    :cond_33
    return-void
.end method

.method public blacklist writePackedUInt32(J[I)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1249
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1250
    const-wide v0, 0x50d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1252
    const/4 p2, 0x0

    if-eqz p3, :cond_11

    array-length v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1253
    :goto_12
    if-lez v0, :cond_33

    .line 1254
    nop

    .line 1255
    move v1, p2

    move v2, v1

    :goto_17
    if-ge v1, v0, :cond_23

    .line 1256
    aget v3, p3, v1

    invoke-static {v3}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1255
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1258
    :cond_23
    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1259
    nop

    :goto_27
    if-ge p2, v0, :cond_33

    .line 1260
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v1, p3, p2

    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1259
    add-int/lit8 p2, p2, 0x1

    goto :goto_27

    .line 1263
    :cond_33
    return-void
.end method

.method public blacklist writePackedUInt64(J[J)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1321
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1322
    const-wide v0, 0x50400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1324
    const/4 p2, 0x0

    if-eqz p3, :cond_11

    array-length v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1325
    :goto_12
    if-lez v0, :cond_33

    .line 1326
    nop

    .line 1327
    move v1, p2

    move v2, v1

    :goto_17
    if-ge v1, v0, :cond_23

    .line 1328
    aget-wide v3, p3, v1

    invoke-static {v3, v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 1327
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1330
    :cond_23
    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1331
    nop

    :goto_27
    if-ge p2, v0, :cond_33

    .line 1332
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v1, p3, p2

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1331
    add-int/lit8 p2, p2, 0x1

    goto :goto_27

    .line 1335
    :cond_33
    return-void
.end method

.method public blacklist writeRepeatedBool(JZ)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1785
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1786
    const-wide v0, 0x20800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1788
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 1789
    return-void
.end method

.method public blacklist writeRepeatedBytes(J[B)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1919
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1920
    const-wide v0, 0x20c00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1922
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    .line 1923
    return-void
.end method

.method public blacklist writeRepeatedDouble(JD)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 920
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 921
    const-wide v0, 0x20100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 923
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 924
    return-void
.end method

.method public blacklist writeRepeatedEnum(JI)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1967
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1968
    const-wide v0, 0x20e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1970
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 1971
    return-void
.end method

.method public blacklist writeRepeatedFixed32(JI)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1517
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1518
    const-wide v0, 0x20700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1520
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 1521
    return-void
.end method

.method public blacklist writeRepeatedFixed64(JJ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1584
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1585
    const-wide v0, 0x20600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1587
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 1588
    return-void
.end method

.method public blacklist writeRepeatedFloat(JF)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 987
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 988
    const-wide v0, 0x20200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 990
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 991
    return-void
.end method

.method public blacklist writeRepeatedInt32(JI)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1081
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1082
    const-wide v0, 0x20500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1084
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 1085
    return-void
.end method

.method public blacklist writeRepeatedInt64(JJ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1158
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1159
    const-wide v0, 0x20300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1161
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 1162
    return-void
.end method

.method public blacklist writeRepeatedObject(J[B)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2166
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2167
    const-wide v0, 0x20b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 2169
    invoke-virtual {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    .line 2170
    return-void
.end method

.method greylist-max-o writeRepeatedObjectImpl(I[B)V
    .registers 4

    .line 2173
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p2

    :goto_5
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 2174
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 2175
    return-void
.end method

.method public blacklist writeRepeatedSFixed32(JI)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1650
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1651
    const-wide v0, 0x20f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1653
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 1654
    return-void
.end method

.method public blacklist writeRepeatedSFixed64(JJ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1717
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1718
    const-wide v0, 0x21000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1720
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 1721
    return-void
.end method

.method public blacklist writeRepeatedSInt32(JI)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1374
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1375
    const-wide v0, 0x21100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1377
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 1378
    return-void
.end method

.method public blacklist writeRepeatedSInt64(JJ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1446
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1447
    const-wide v0, 0x21200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1449
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 1450
    return-void
.end method

.method public blacklist writeRepeatedString(JLjava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1855
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1856
    const-wide v0, 0x20900000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1858
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    .line 1859
    return-void
.end method

.method public blacklist writeRepeatedUInt32(JI)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1230
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1231
    const-wide v0, 0x20d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1233
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 1234
    return-void
.end method

.method public blacklist writeRepeatedUInt64(JJ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1302
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1303
    const-wide v0, 0x20400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1305
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 1306
    return-void
.end method

.method public blacklist writeSFixed32(JI)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1629
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1630
    const-wide v0, 0x10f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1632
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 1633
    return-void
.end method

.method public blacklist writeSFixed64(JJ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1696
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1697
    const-wide v0, 0x11000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1699
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 1700
    return-void
.end method

.method public blacklist writeSInt32(JI)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1353
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1354
    const-wide v0, 0x11100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1356
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 1357
    return-void
.end method

.method public blacklist writeSInt64(JJ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1425
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1426
    const-wide v0, 0x11200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1428
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 1429
    return-void
.end method

.method public blacklist writeString(JLjava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1835
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1836
    const-wide v0, 0x10900000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1838
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    .line 1839
    return-void
.end method

.method public whitelist writeTag(II)V
    .registers 4

    .line 2283
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 2284
    return-void
.end method

.method public blacklist writeUInt32(JI)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1209
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1210
    const-wide v0, 0x10d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1212
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 1213
    return-void
.end method

.method public blacklist writeUInt64(JJ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1281
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1282
    const-wide v0, 0x10400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result p1

    .line 1284
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 1285
    return-void
.end method
