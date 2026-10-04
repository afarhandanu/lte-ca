.class public Landroid/util/proto/ProtoFieldFilter;
.super Ljava/lang/Object;
.source "ProtoFieldFilter.java"


# static fields
.field private static final blacklist BUFFER_SIZE_BYTES:I = 0x1000


# instance fields
.field private final blacklist mBuffer:[B

.field private final blacklist mFieldPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVarIntBuffer:[B


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 86
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoFieldFilter;-><init>(Ljava/util/function/Predicate;I)V

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/Predicate;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    .line 74
    iput-object p1, p0, Landroid/util/proto/ProtoFieldFilter;->mFieldPredicate:Ljava/util/function/Predicate;

    .line 75
    new-array p1, p2, [B

    iput-object p1, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    .line 76
    return-void
.end method

.method private blacklist copyFieldData(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    packed-switch p3, :pswitch_data_30

    .line 201
    :pswitch_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown or unsupported wire type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :pswitch_1c
    const/4 p3, 0x4

    invoke-direct {p0, p1, p2, p3}, Landroid/util/proto/ProtoFieldFilter;->copyFixed(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 194
    goto :goto_2f

    .line 190
    :pswitch_21
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoFieldFilter;->copyLengthDelimited(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 191
    goto :goto_2f

    .line 187
    :pswitch_25
    const/16 p3, 0x8

    invoke-direct {p0, p1, p2, p3}, Landroid/util/proto/ProtoFieldFilter;->copyFixed(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 188
    goto :goto_2f

    .line 184
    :pswitch_2b
    invoke-static {p1, p2}, Landroid/util/proto/ProtoFieldFilter;->copyVarint(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 185
    nop

    .line 203
    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_25
        :pswitch_21
        :pswitch_3
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist copyFixed(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    move v0, p3

    .line 252
    :goto_1
    if-lez v0, :cond_3b

    .line 253
    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 254
    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 255
    if-ltz v1, :cond_1a

    .line 258
    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    invoke-virtual {p2, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 259
    sub-int/2addr v0, v1

    .line 260
    goto :goto_1

    .line 256
    :cond_1a
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EOF while copying fixed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    mul-int/lit8 p3, p3, 0x8

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " field"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 261
    :cond_3b
    return-void
.end method

.method private blacklist copyLengthDelimited(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoFieldFilter;->readRawVarint(Ljava/io/InputStream;)I

    move-result v0

    .line 268
    if-lez v0, :cond_3d

    .line 271
    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 273
    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    invoke-static {v1, v0}, Landroid/util/proto/ProtoFieldFilter;->parseVarint([BI)J

    move-result-wide v0

    .line 274
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_24

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_24

    .line 279
    long-to-int v0, v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoFieldFilter;->copyFixed(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 280
    return-void

    .line 275
    :cond_24
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length for length-delimited field: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 269
    :cond_3d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "EOF reading length for length-delimited field"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist copyVarint(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 236
    if-ltz v0, :cond_11

    .line 239
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 240
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_10

    .line 241
    nop

    .line 244
    return-void

    .line 243
    :cond_10
    goto :goto_1

    .line 237
    :cond_11
    new-instance p0, Ljava/io/IOException;

    const-string p1, "EOF while copying varint"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist parseVarint([BI)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    nop

    .line 160
    nop

    .line 161
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v2, p1, :cond_20

    .line 162
    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0x7f

    shl-int/2addr v4, v3

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 163
    add-int/lit8 v3, v3, 0x7

    .line 164
    const/16 v4, 0x3f

    if-gt v3, v4, :cond_18

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 165
    :cond_18
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Malformed varint: exceeds 64 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 168
    :cond_20
    return-wide v0
.end method

.method private blacklist readRawVarint(Ljava/io/InputStream;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 129
    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 130
    return v1

    .line 132
    :cond_8
    nop

    .line 133
    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    const/4 v1, 0x1

    .line 135
    :goto_f
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_36

    .line 137
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 139
    if-ltz v0, :cond_2e

    .line 143
    const/16 v2, 0xa

    if-ge v1, v2, :cond_26

    .line 146
    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    add-int/lit8 v3, v1, 0x1

    int-to-byte v4, v0

    aput-byte v4, v2, v1

    move v1, v3

    goto :goto_f

    .line 144
    :cond_26
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Malformed varint: too many bytes (max 10)"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_2e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Malformed varint: reached EOF mid-varint"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_36
    return v1
.end method

.method private blacklist skipBytes(Ljava/io/InputStream;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 304
    cmp-long v2, v0, p2

    if-gez v2, :cond_2c

    .line 305
    sub-long/2addr p2, v0

    .line 307
    :goto_9
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2c

    .line 308
    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 309
    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 310
    if-ltz v0, :cond_24

    .line 313
    int-to-long v0, v1

    sub-long/2addr p2, v0

    .line 314
    goto :goto_9

    .line 311
    :cond_24
    new-instance p1, Ljava/io/IOException;

    const-string p2, "EOF while skipping bytes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_2c
    return-void
.end method

.method private blacklist skipFieldData(Ljava/io/InputStream;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    packed-switch p2, :pswitch_data_32

    .line 228
    :pswitch_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown or unsupported wire type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :pswitch_1c
    const-wide/16 v0, 0x4

    invoke-direct {p0, p1, v0, v1}, Landroid/util/proto/ProtoFieldFilter;->skipBytes(Ljava/io/InputStream;J)V

    .line 222
    goto :goto_30

    .line 218
    :pswitch_22
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoFieldFilter;->skipLengthDelimited(Ljava/io/InputStream;)V

    .line 219
    goto :goto_30

    .line 215
    :pswitch_26
    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, v0, v1}, Landroid/util/proto/ProtoFieldFilter;->skipBytes(Ljava/io/InputStream;J)V

    .line 216
    goto :goto_30

    .line 212
    :pswitch_2c
    invoke-static {p1}, Landroid/util/proto/ProtoFieldFilter;->skipVarint(Ljava/io/InputStream;)V

    .line 213
    nop

    .line 230
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_26
        :pswitch_22
        :pswitch_3
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist skipLengthDelimited(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoFieldFilter;->readRawVarint(Ljava/io/InputStream;)I

    move-result v0

    .line 325
    if-lez v0, :cond_36

    .line 328
    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    invoke-static {v1, v0}, Landroid/util/proto/ProtoFieldFilter;->parseVarint([BI)J

    move-result-wide v0

    .line 329
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1d

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1d

    .line 332
    invoke-direct {p0, p1, v0, v1}, Landroid/util/proto/ProtoFieldFilter;->skipBytes(Ljava/io/InputStream;J)V

    .line 333
    return-void

    .line 330
    :cond_1d
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid length to skip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 326
    :cond_36
    new-instance p1, Ljava/io/IOException;

    const-string v0, "EOF reading length for length-delimited field"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist skipVarint(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 287
    if-ltz v1, :cond_1c

    .line 290
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_d

    .line 291
    nop

    .line 298
    return-void

    .line 293
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 294
    const/16 v1, 0xa

    if-gt v0, v1, :cond_14

    .line 297
    goto :goto_1

    .line 295
    :cond_14
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Malformed varint: exceeds maximum length of 10 bytes"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 288
    :cond_1c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "EOF while skipping varint"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist filter(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoFieldFilter;->readRawVarint(Ljava/io/InputStream;)I

    move-result v0

    if-lez v0, :cond_32

    .line 102
    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    invoke-static {v1, v0}, Landroid/util/proto/ProtoFieldFilter;->parseVarint([BI)J

    move-result-wide v1

    .line 103
    const/4 v3, 0x3

    ushr-long v3, v1, v3

    long-to-int v3, v3

    .line 104
    const-wide/16 v4, 0x7

    and-long/2addr v1, v4

    long-to-int v1, v1

    .line 106
    if-nez v3, :cond_18

    .line 107
    goto :goto_32

    .line 109
    :cond_18
    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mFieldPredicate:Ljava/util/function/Predicate;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 110
    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    invoke-direct {p0, p1, p2, v1}, Landroid/util/proto/ProtoFieldFilter;->copyFieldData(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    goto :goto_31

    .line 113
    :cond_2e
    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoFieldFilter;->skipFieldData(Ljava/io/InputStream;I)V

    .line 115
    :goto_31
    goto :goto_1

    .line 116
    :cond_32
    :goto_32
    return-void
.end method
