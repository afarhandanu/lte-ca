.class public Landroid/view/inputmethod/InputMethodSubtypeArray;
.super Ljava/lang/Object;
.source "InputMethodSubtypeArray.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodSubtypeArray"


# instance fields
.field private volatile greylist-max-o mCompressedData:[B

.field private final greylist-max-o mCount:I

.field private volatile greylist-max-o mDecompressedSize:I

.field private volatile greylist-max-o mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

.field private final greylist-max-o mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 76
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-ltz v0, :cond_25

    .line 79
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-lez v0, :cond_24

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 83
    :cond_24
    return-void

    .line 77
    :cond_25
    new-instance p1, Landroid/os/BadParcelableException;

    const-string v0, "mCount must be non-negative."

    invoke-direct {p1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor greylist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    .line 59
    if-nez p1, :cond_10

    .line 60
    const/4 p1, 0x0

    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 61
    return-void

    .line 63
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 64
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v0, v0, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/inputmethod/InputMethodSubtype;

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 65
    return-void
.end method

.method private static greylist-max-o compress([B)[B
    .registers 3

    .line 235
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_2f

    .line 236
    :try_start_5
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_25

    .line 237
    :try_start_a
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 238
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 239
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 240
    :try_start_14
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_25

    :try_start_17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_2f

    .line 239
    return-object p0

    .line 235
    :catchall_1b
    move-exception p0

    :try_start_1c
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v1

    :try_start_21
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24
    throw p0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    :try_start_26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v0

    :try_start_2b
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_2f

    .line 240
    :catch_2f
    move-exception p0

    .line 241
    const-string v0, "InputMethodSubtypeArray"

    const-string v1, "Failed to compress the data."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    const/4 p0, 0x0

    return-object p0
.end method

.method private static greylist-max-o decompress([BI)[B
    .registers 7

    .line 247
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_41

    .line 248
    :try_start_6
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_37

    .line 249
    :try_start_b
    new-array v2, p1, [B

    .line 250
    const/4 v3, 0x0

    .line 251
    :goto_e
    if-ge v3, p1, :cond_1b

    .line 252
    sub-int v4, p1, v3

    .line 253
    invoke-virtual {p0, v2, v3, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_2d

    .line 254
    if-gez v4, :cond_19

    .line 255
    goto :goto_1b

    .line 257
    :cond_19
    add-int/2addr v3, v4

    .line 258
    goto :goto_e

    .line 259
    :cond_1b
    :goto_1b
    if-eq p1, v3, :cond_25

    .line 260
    nop

    .line 263
    :try_start_1e
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_37

    :try_start_21
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_41

    .line 260
    return-object v0

    .line 262
    :cond_25
    nop

    .line 263
    :try_start_26
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_37

    :try_start_29
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_41

    .line 262
    return-object v2

    .line 247
    :catchall_2d
    move-exception p1

    :try_start_2e
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception p0

    :try_start_33
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_36
    throw p1
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p0

    :try_start_38
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p1

    :try_start_3d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_41

    .line 263
    :catch_41
    move-exception p0

    .line 264
    const-string p1, "InputMethodSubtypeArray"

    const-string v1, "Failed to decompress the data."

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    return-object v0
.end method

.method private static greylist-max-o marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B
    .registers 3

    .line 206
    nop

    .line 208
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_16

    .line 209
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_14

    .line 212
    if-eqz v0, :cond_13

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    nop

    .line 210
    :cond_13
    return-object p0

    .line 212
    :catchall_14
    move-exception p0

    goto :goto_18

    :catchall_16
    move-exception p0

    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_1e

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    nop

    .line 216
    :cond_1e
    throw p0
.end method

.method private static greylist-max-o unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;
    .registers 4

    .line 220
    nop

    .line 222
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1e

    .line 223
    :try_start_5
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 224
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 225
    sget-object p0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1c

    .line 227
    if-eqz v0, :cond_1b

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    nop

    .line 225
    :cond_1b
    return-object p0

    .line 227
    :catchall_1c
    move-exception p0

    goto :goto_20

    :catchall_1e
    move-exception p0

    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_26

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    nop

    .line 231
    :cond_26
    throw p0
.end method


# virtual methods
.method blacklist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 7

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    const/4 v1, 0x0

    :goto_14
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-ge v1, v2, :cond_5c

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "InputMethodSubtype #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->get(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_42

    .line 198
    invoke-virtual {v2, p1, v0}, Landroid/view/inputmethod/InputMethodSubtype;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_59

    .line 200
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "missing subtype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 194
    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 203
    :cond_5c
    return-void
.end method

.method public greylist-max-o get(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 5

    .line 140
    if-ltz p1, :cond_3b

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-le v0, p1, :cond_3b

    .line 143
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 144
    if-nez v0, :cond_38

    .line 145
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_d
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 147
    if-nez v0, :cond_33

    .line 148
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 149
    invoke-static {v0, v2}, Landroid/view/inputmethod/InputMethodSubtypeArray;->decompress([BI)[B

    move-result-object v0

    .line 151
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 152
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 153
    if-eqz v0, :cond_26

    .line 154
    invoke-static {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    goto :goto_31

    .line 156
    :cond_26
    const-string v0, "InputMethodSubtypeArray"

    const-string v2, "Failed to decompress data. Returns null as fallback."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v0, v0, [Landroid/view/inputmethod/InputMethodSubtype;

    .line 159
    :goto_31
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 161
    :cond_33
    monitor-exit v1

    goto :goto_38

    :catchall_35
    move-exception p1

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_35

    throw p1

    .line 163
    :cond_38
    :goto_38
    aget-object p1, v0, p1

    return-object p1

    .line 141
    :cond_3b
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public greylist-max-o getCount()I
    .registers 2

    .line 182
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    return v0
.end method

.method public blacklist toList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-ge v1, v2, :cond_16

    .line 173
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->get(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 175
    :cond_16
    return-object v0
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 95
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-nez v0, :cond_a

    .line 96
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return-void

    .line 100
    :cond_a
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 101
    iget v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 102
    if-nez v0, :cond_40

    if-nez v1, :cond_40

    .line 103
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_15
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 105
    iget v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 106
    if-nez v0, :cond_3b

    if-nez v1, :cond_3b

    .line 107
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->compress([B)[B

    move-result-object v1

    .line 109
    if-nez v1, :cond_33

    .line 110
    nop

    .line 111
    const-string v0, "InputMethodSubtypeArray"

    const-string v3, "Failed to compress data."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_34

    .line 113
    :cond_33
    array-length v0, v0

    .line 115
    :goto_34
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 116
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    .line 118
    :cond_3b
    monitor-exit v2

    goto :goto_40

    :catchall_3d
    move-exception p1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_15 .. :try_end_3f} :catchall_3d

    throw p1

    .line 121
    :cond_40
    :goto_40
    if-eqz v0, :cond_50

    if-lez v1, :cond_50

    .line 122
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_5b

    .line 126
    :cond_50
    const-string v0, "InputMethodSubtypeArray"

    const-string v1, "Unexpected state. Behaving as an empty array."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    :goto_5b
    return-void
.end method
