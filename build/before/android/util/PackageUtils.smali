.class public final Landroid/util/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field private static final blacklist HIGH_RAM_BUFFER_SIZE_BYTES:I = 0xf4240

.field private static final blacklist LOW_RAM_BUFFER_SIZE_BYTES:I = 0x3e8


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static greylist-max-o computeSha256Digest([B)Ljava/lang/String;
    .registers 2

    .line 145
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 155
    invoke-static {p0}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object p0

    .line 156
    if-nez p0, :cond_8

    .line 157
    const/4 p0, 0x0

    return-object p0

    .line 160
    :cond_8
    const/4 v0, 0x1

    if-nez p1, :cond_10

    .line 161
    invoke-static {p0, v0}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 164
    :cond_10
    array-length v1, p0

    .line 165
    new-array v2, v1, [Ljava/lang/String;

    .line 166
    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_21

    .line 167
    aget-byte v4, p0, v3

    invoke-static {v4, v0}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 170
    :cond_21
    invoke-static {p1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o computeSha256DigestBytes([B)[B
    .registers 2

    .line 130
    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_f

    .line 134
    nop

    .line 136
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 138
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 131
    :catch_f
    move-exception p0

    .line 133
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist computeSha256DigestForLargeFile(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 3

    .line 222
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFile(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist computeSha256DigestForLargeFile(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 237
    invoke-static {p0, p1}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFileAsBytes(Ljava/lang/String;[B)[B

    move-result-object p0

    .line 238
    const/4 p1, 0x0

    if-nez p2, :cond_c

    .line 239
    invoke-static {p0, p1}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 242
    :cond_c
    array-length v0, p0

    .line 243
    new-array v1, v0, [Ljava/lang/String;

    .line 244
    nop

    :goto_10
    if-ge p1, v0, :cond_1e

    .line 245
    aget-byte v2, p0, p1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 244
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    .line 247
    :cond_1e
    invoke-static {p2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist computeSha256DigestForLargeFileAsBytes(Ljava/lang/String;[B)[B
    .registers 6

    .line 198
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SHA256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_a} :catch_3a

    .line 203
    nop

    .line 205
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    :try_start_10
    new-instance p0, Ljava/security/DigestInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_35

    .line 208
    :goto_1a
    :try_start_1a
    invoke-virtual {p0, p1}, Ljava/security/DigestInputStream;->read([B)I

    move-result v2
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_2b

    const/4 v3, -0x1

    if-eq v2, v3, :cond_22

    goto :goto_1a

    .line 209
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Ljava/security/DigestInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_35

    .line 212
    nop

    .line 214
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 206
    :catchall_2b
    move-exception p1

    :try_start_2c
    invoke-virtual {p0}, Ljava/security/DigestInputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception p0

    :try_start_31
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_34
    throw p1
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_35} :catch_35

    .line 209
    :catch_35
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    return-object v0

    .line 200
    :catch_3a
    move-exception p0

    .line 202
    return-object v0
.end method

.method public static greylist-max-o computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 4

    .line 85
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 86
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_11
    invoke-static {p0, v2}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-static {p0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 104
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 105
    aget-object p0, p0, v2

    return-object p0

    .line 109
    :cond_8
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 111
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    array-length v1, p0

    :goto_11
    if-ge v2, v1, :cond_21

    aget-object v3, p0, v2

    .line 114
    :try_start_15
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_1d

    .line 117
    goto :goto_1e

    .line 115
    :catch_1d
    move-exception v3

    .line 112
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 119
    :cond_21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;
    .registers 2

    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 67
    array-length v0, p0

    .line 68
    new-array v1, v0, [Ljava/lang/String;

    .line 69
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_15

    .line 70
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3, p1}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 72
    :cond_15
    return-object v1
.end method

.method public static blacklist createLargeFileBuffer()[B
    .registers 1

    .line 181
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 182
    const/16 v0, 0x3e8

    goto :goto_c

    :cond_9
    const v0, 0xf4240

    .line 183
    :goto_c
    new-array v0, v0, [B

    return-object v0
.end method
