.class abstract Landroid/util/apk/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final blacklist UINT16_MAX_VALUE:I = 0xffff

.field private static final blacklist ZIP64_EOCD_LOCATOR_SIG_REVERSE_BYTE_ORDER:I = 0x504b0607

.field private static final blacklist ZIP64_EOCD_LOCATOR_SIZE:I = 0x14

.field private static final blacklist ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field private static final blacklist ZIP_EOCD_CENTRAL_DIR_SIZE_FIELD_OFFSET:I = 0xc

.field private static final blacklist ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET:I = 0x14

.field private static final blacklist ZIP_EOCD_REC_MIN_SIZE:I = 0x16

.field private static final blacklist ZIP_EOCD_REC_SIG:I = 0x6054b50


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 245
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_9

    .line 248
    return-void

    .line 246
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer byte order must be little endian"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I
    .registers 8

    .line 147
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 159
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 160
    const/4 v1, -0x1

    const/16 v2, 0x16

    if-ge v0, v2, :cond_d

    .line 161
    return v1

    .line 163
    :cond_d
    sub-int/2addr v0, v2

    const v2, 0xffff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 164
    nop

    .line 165
    const/4 v3, 0x0

    :goto_17
    if-gt v3, v2, :cond_30

    .line 167
    sub-int v4, v0, v3

    .line 168
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    const v6, 0x6054b50

    if-ne v5, v6, :cond_2d

    .line 169
    add-int/lit8 v5, v4, 0x14

    .line 170
    invoke-static {p0, v5}, Landroid/util/apk/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 172
    if-ne v5, v3, :cond_2d

    .line 173
    return v4

    .line 166
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 178
    :cond_30
    return v1
.end method

.method static blacklist findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    .line 68
    const-wide/16 v2, 0x16

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 69
    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_18

    .line 77
    return-object v0

    .line 83
    :cond_18
    const v0, 0xffff

    invoke-static {p0, v0}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    if-ltz p1, :cond_61

    const v0, 0xffff

    if-gt p1, v0, :cond_61

    .line 115
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    .line 116
    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gez v4, :cond_17

    .line 118
    return-object v5

    .line 121
    :cond_17
    int-to-long v6, p1

    sub-long v2, v0, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p1, v2

    .line 123
    add-int/lit8 p1, p1, 0x16

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 124
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 126
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 128
    invoke-static {p1}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 129
    const/4 v2, -0x1

    if-ne p0, v2, :cond_4a

    .line 131
    return-object v5

    .line 134
    :cond_4a
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 136
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 137
    int-to-long v2, p0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 111
    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "maxCommentSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getUnsignedInt16(Ljava/nio/ByteBuffer;I)I
    .registers 2

    .line 251
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static blacklist getUnsignedInt32(Ljava/nio/ByteBuffer;I)J
    .registers 4

    .line 255
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J
    .registers 3

    .line 212
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 213
    nop

    .line 215
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 213
    invoke-static {p0, v0}, Landroid/util/apk/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J
    .registers 3

    .line 238
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 239
    nop

    .line 241
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    .line 239
    invoke-static {p0, v0}, Landroid/util/apk/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final blacklist isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    const-wide/16 v0, 0x14

    sub-long/2addr p1, v0

    .line 196
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_b

    .line 197
    return v1

    .line 200
    :cond_b
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 203
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    const p1, 0x504b0607

    if-ne p0, p1, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method private static blacklist setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V
    .registers 6

    .line 259
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_19

    const-wide v0, 0xffffffffL

    cmp-long v0, p2, v0

    if-gtz v0, :cond_19

    .line 262
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    long-to-int p1, p2

    invoke-virtual {p0, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 263
    return-void

    .line 260
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "uint32 value of out range: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V
    .registers 4

    .line 225
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 226
    nop

    .line 228
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 226
    invoke-static {p0, v0, p1, p2}, Landroid/util/apk/ZipUtils;->setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V

    .line 230
    return-void
.end method
