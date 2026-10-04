.class public abstract Landroid/util/apk/SourceStampVerifier;
.super Ljava/lang/Object;
.source "SourceStampVerifier.java"


# static fields
.field private static final blacklist APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final blacklist APK_SIGNATURE_SCHEME_V3_BLOCK_ID:I = -0xfac9740

.field private static final blacklist PROOF_OF_ROTATION_ATTR_ID:I = -0x629cfc09

.field private static final blacklist SOURCE_STAMP_BLOCK_ID:I = 0x6dff800d

.field private static final blacklist SOURCE_STAMP_CERTIFICATE_HASH_ZIP_ENTRY_NAME:Ljava/lang/String; = "stamp-cert-sha256"

.field private static final blacklist TAG:Ljava/lang/String; = "SourceStampVerifier"

.field private static final blacklist VERSION_APK_SIGNATURE_SCHEME_V2:I = 0x2

.field private static final blacklist VERSION_APK_SIGNATURE_SCHEME_V3:I = 0x3

.field private static final blacklist VERSION_JAR_SIGNATURE_SCHEME:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private static blacklist closeApkJar(Landroid/util/jar/StrictJarFile;)V
    .registers 3

    .line 506
    if-nez p0, :cond_3

    .line 507
    return-void

    .line 509
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    .line 512
    goto :goto_f

    .line 510
    :catch_7
    move-exception p0

    .line 511
    const-string v0, "SourceStampVerifier"

    const-string v1, "Could not close APK jar"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    :goto_f
    return-void
.end method

.method private static blacklist computeSha256Digest([B)[B
    .registers 3

    .line 496
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 497
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 498
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    .line 499
    :catch_e
    move-exception p0

    .line 500
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to find SHA-256"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static blacklist encodeApkContentDigests(Ljava/util/List;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;>;)[B"
        }
    .end annotation

    .line 438
    nop

    .line 439
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 440
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B

    array-length v2, v2

    add-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    .line 441
    goto :goto_6

    .line 442
    :cond_1b
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 443
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 444
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 445
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B

    .line 446
    array-length v3, v2

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 447
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 448
    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 449
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 450
    goto :goto_28

    .line 451
    :cond_51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getApkContentDigestsFromSignatureBlock(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 380
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 381
    :goto_9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 382
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 383
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 384
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 385
    :goto_1b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 386
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 388
    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 389
    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v3

    .line 390
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    goto :goto_1b

    .line 392
    :cond_39
    goto :goto_9

    .line 393
    :cond_3a
    return-object v0
.end method

.method private static blacklist getApkDigests(Ljava/util/Map;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;>;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 413
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    goto :goto_d

    .line 415
    :cond_2d
    new-instance p0, Landroid/util/apk/SourceStampVerifier$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Landroid/util/apk/SourceStampVerifier$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 416
    return-object v0
.end method

.method private static blacklist getManifestBytes(Landroid/util/jar/StrictJarFile;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 431
    if-nez v0, :cond_a

    .line 432
    const/4 p0, 0x0

    return-object p0

    .line 434
    :cond_a
    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSignatureSchemeApkContentDigests(Ljava/io/RandomAccessFile;[B)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 345
    nop

    .line 346
    const v1, -0xfac9740

    :try_start_9
    invoke-static {p0, v1}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    .line 347
    nop

    .line 348
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, v1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 349
    invoke-static {v1}, Landroid/util/apk/SourceStampVerifier;->getApkContentDigestsFromSignatureBlock(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v1

    .line 347
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_9 .. :try_end_1c} :catch_1d

    .line 352
    goto :goto_1e

    .line 350
    :catch_1d
    move-exception v1

    .line 356
    :goto_1e
    nop

    .line 357
    const v1, 0x7109871a

    :try_start_22
    invoke-static {p0, v1}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object p0

    .line 358
    nop

    .line 359
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 360
    invoke-static {p0}, Landroid/util/apk/SourceStampVerifier;->getApkContentDigestsFromSignatureBlock(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object p0

    .line 358
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_22 .. :try_end_35} :catch_36

    .line 363
    goto :goto_37

    .line 361
    :catch_36
    move-exception p0

    .line 366
    :goto_37
    if-eqz p1, :cond_54

    .line 367
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 368
    nop

    .line 369
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Landroid/util/apk/SourceStampVerifier;->computeSha256Digest([B)[B

    move-result-object p1

    .line 368
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    nop

    .line 371
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 370
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_54
    return-object v0
.end method

.method private static blacklist getSignatureSchemeDigests(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 400
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 401
    nop

    .line 402
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Landroid/util/apk/SourceStampVerifier;->getApkDigests(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 403
    nop

    .line 404
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v2}, Landroid/util/apk/SourceStampVerifier;->encodeApkContentDigests(Ljava/util/List;)[B

    move-result-object v2

    .line 403
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    goto :goto_d

    .line 406
    :cond_33
    return-object v0
.end method

.method private static blacklist getSourceStampCertificateDigest(Landroid/util/jar/StrictJarFile;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    const-string/jumbo v0, "stamp-cert-sha256"

    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 421
    if-nez v0, :cond_b

    .line 424
    const/4 p0, 0x0

    return-object p0

    .line 426
    :cond_b
    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getApkDigests$0(Landroid/util/Pair;)Ljava/lang/Integer;
    .registers 1

    .line 415
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private static blacklist verify(Landroid/util/apk/SignatureInfo;Ljava/util/Map;[B)Landroid/util/apk/SourceStampVerificationResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/apk/SignatureInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;[B)",
            "Landroid/util/apk/SourceStampVerificationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object p0, p0, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 170
    nop

    .line 171
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 173
    nop

    .line 174
    invoke-static {p0, p2}, Landroid/util/apk/SourceStampVerifier;->verifySourceStampCertificate(Ljava/nio/ByteBuffer;[B)Ljava/security/cert/X509Certificate;

    move-result-object p2

    .line 177
    nop

    .line 178
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 180
    :goto_16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 181
    nop

    .line 182
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 184
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    goto :goto_16

    .line 187
    :cond_2d
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 194
    nop

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 194
    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 196
    nop

    .line 197
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 196
    invoke-static {v0, p2, v2}, Landroid/util/apk/SourceStampVerifier;->verifySourceStampSignature([BLjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;)V

    .line 200
    goto :goto_35

    .line 189
    :cond_65
    new-instance p0, Ljava/lang/SecurityException;

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 190
    const-string p2, "No signatures found for signature scheme %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 203
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 205
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 206
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 208
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 209
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 212
    invoke-static {v1, p2, p0}, Landroid/util/apk/SourceStampVerifier;->verifySourceStampSignature([BLjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;)V

    .line 214
    nop

    .line 215
    invoke-static {v0, p2}, Landroid/util/apk/SourceStampVerifier;->verifySourceStampAttributes(Ljava/nio/ByteBuffer;Ljava/security/cert/X509Certificate;)Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    move-result-object p0

    .line 216
    if-eqz p0, :cond_a3

    .line 217
    iget-object p1, p0, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 221
    :cond_a3
    invoke-static {p2, p1}, Landroid/util/apk/SourceStampVerificationResult;->verified(Ljava/security/cert/Certificate;Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist verify(Ljava/io/RandomAccessFile;[B[B)Landroid/util/apk/SourceStampVerificationResult;
    .registers 4

    .line 147
    nop

    .line 148
    const v0, 0x6dff800d

    :try_start_4
    invoke-static {p0, v0}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_1e
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_4 .. :try_end_8} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_8} :catch_1e

    .line 151
    nop

    .line 153
    nop

    .line 154
    :try_start_a
    invoke-static {p0, p2}, Landroid/util/apk/SourceStampVerifier;->getSignatureSchemeApkContentDigests(Ljava/io/RandomAccessFile;[B)Ljava/util/Map;

    move-result-object p0

    .line 155
    nop

    .line 157
    invoke-static {p0}, Landroid/util/apk/SourceStampVerifier;->getSignatureSchemeDigests(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 155
    invoke-static {v0, p0, p1}, Landroid/util/apk/SourceStampVerifier;->verify(Landroid/util/apk/SignatureInfo;Ljava/util/Map;[B)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object p0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_17} :catch_18

    return-object p0

    .line 159
    :catch_18
    move-exception p0

    .line 160
    invoke-static {}, Landroid/util/apk/SourceStampVerificationResult;->notVerified()Landroid/util/apk/SourceStampVerificationResult;

    move-result-object p0

    return-object p0

    .line 149
    :catch_1e
    move-exception p0

    .line 150
    invoke-static {}, Landroid/util/apk/SourceStampVerificationResult;->notPresent()Landroid/util/apk/SourceStampVerificationResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist verify(Ljava/lang/String;)Landroid/util/apk/SourceStampVerificationResult;
    .registers 5

    .line 119
    nop

    .line 120
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_45
    .catchall {:try_start_2 .. :try_end_a} :catchall_43

    .line 121
    :try_start_a
    new-instance v2, Landroid/util/jar/StrictJarFile;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_39

    .line 126
    :try_start_10
    invoke-static {v2}, Landroid/util/apk/SourceStampVerifier;->getSourceStampCertificateDigest(Landroid/util/jar/StrictJarFile;)[B

    move-result-object p0

    .line 127
    if-nez p0, :cond_27

    .line 130
    invoke-static {}, Landroid/util/apk/SourceStampVerificationResult;->notPresent()Landroid/util/apk/SourceStampVerificationResult;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_36

    .line 134
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_24
    .catchall {:try_start_1a .. :try_end_1d} :catchall_21

    .line 139
    invoke-static {v2}, Landroid/util/apk/SourceStampVerifier;->closeApkJar(Landroid/util/jar/StrictJarFile;)V

    .line 130
    return-object p0

    .line 139
    :catchall_21
    move-exception p0

    move-object v0, v2

    goto :goto_4e

    .line 134
    :catch_24
    move-exception p0

    move-object v0, v2

    goto :goto_46

    .line 132
    :cond_27
    :try_start_27
    invoke-static {v2}, Landroid/util/apk/SourceStampVerifier;->getManifestBytes(Landroid/util/jar/StrictJarFile;)[B

    move-result-object v0

    .line 133
    invoke-static {v1, p0, v0}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/io/RandomAccessFile;[B[B)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_36

    .line 134
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_24
    .catchall {:try_start_2f .. :try_end_32} :catchall_21

    .line 139
    invoke-static {v2}, Landroid/util/apk/SourceStampVerifier;->closeApkJar(Landroid/util/jar/StrictJarFile;)V

    .line 133
    return-object p0

    .line 120
    :catchall_36
    move-exception p0

    move-object v0, v2

    goto :goto_3a

    :catchall_39
    move-exception p0

    :goto_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v1

    :try_start_3f
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw p0
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_45
    .catchall {:try_start_3f .. :try_end_43} :catchall_43

    .line 139
    :catchall_43
    move-exception p0

    goto :goto_4e

    .line 134
    :catch_45
    move-exception p0

    .line 137
    :goto_46
    :try_start_46
    invoke-static {}, Landroid/util/apk/SourceStampVerificationResult;->notPresent()Landroid/util/apk/SourceStampVerificationResult;

    move-result-object p0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_43

    .line 139
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->closeApkJar(Landroid/util/jar/StrictJarFile;)V

    .line 137
    return-object p0

    .line 139
    :goto_4e
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->closeApkJar(Landroid/util/jar/StrictJarFile;)V

    .line 140
    throw p0
.end method

.method public static blacklist verify(Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/apk/SourceStampVerificationResult;"
        }
    .end annotation

    .line 97
    nop

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    invoke-static {v2}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/lang/String;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Landroid/util/apk/SourceStampVerificationResult;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 102
    invoke-virtual {v2}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_4b

    .line 105
    :cond_27
    if-eqz v1, :cond_42

    .line 106
    invoke-virtual {v2}, Landroid/util/apk/SourceStampVerificationResult;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 108
    invoke-virtual {v2}, Landroid/util/apk/SourceStampVerificationResult;->getCertificateLineage()Ljava/util/List;

    move-result-object v1

    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 109
    :cond_3d
    invoke-static {}, Landroid/util/apk/SourceStampVerificationResult;->notVerified()Landroid/util/apk/SourceStampVerificationResult;

    move-result-object p0

    return-object p0

    .line 111
    :cond_42
    invoke-virtual {v2}, Landroid/util/apk/SourceStampVerificationResult;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    .line 112
    invoke-virtual {v2}, Landroid/util/apk/SourceStampVerificationResult;->getCertificateLineage()Ljava/util/List;

    move-result-object v0

    .line 113
    goto :goto_a

    .line 103
    :cond_4b
    :goto_4b
    return-object v2

    .line 114
    :cond_4c
    invoke-static {v1, v0}, Landroid/util/apk/SourceStampVerificationResult;->verified(Ljava/security/cert/Certificate;Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist verifySourceStampAttributes(Ljava/nio/ByteBuffer;Ljava/security/cert/X509Certificate;)Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_6} :catch_68

    .line 463
    nop

    .line 464
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 465
    const/4 v1, 0x0

    .line 466
    :goto_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 467
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 468
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 469
    const v4, -0x629cfc09

    if-ne v3, v4, :cond_66

    .line 470
    if-nez v1, :cond_5e

    .line 474
    invoke-static {v2, v0}, Landroid/util/apk/ApkSigningBlockUtils;->verifyProofOfRotationStruct(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    move-result-object v1

    .line 478
    :try_start_25
    iget-object v2, v1, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_54

    iget-object v2, v1, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    iget-object v3, v1, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 480
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 479
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 480
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 481
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    .line 479
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_54

    .line 482
    :cond_4c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Terminal certificate in Proof-of-rotation record does not match source stamp certificate"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_54
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_25 .. :try_end_54} :catch_55

    .line 488
    :cond_54
    :goto_54
    goto :goto_66

    .line 485
    :catch_55
    move-exception p0

    .line 486
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Failed to encode certificate when comparing Proof-of-rotation record and source stamp certificate"

    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 471
    :cond_5e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Encountered multiple Proof-of-rotation records when verifying source stamp signature"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 490
    :cond_66
    :goto_66
    goto :goto_c

    .line 491
    :cond_67
    return-object v1

    .line 461
    :catch_68
    move-exception p0

    .line 462
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static blacklist verifySourceStampCertificate(Ljava/nio/ByteBuffer;[B)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_6} :catch_3a

    .line 242
    nop

    .line 245
    nop

    .line 246
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 249
    :try_start_c
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 251
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_17
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_17} :catch_31

    .line 255
    nop

    .line 257
    nop

    .line 258
    invoke-static {p0}, Landroid/util/apk/SourceStampVerifier;->computeSha256Digest([B)[B

    move-result-object v1

    .line 259
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 263
    new-instance p1, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {p1, v0, p0}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    return-object p1

    .line 260
    :cond_29
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Certificate mismatch between APK and signature block"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 253
    :catch_31
    move-exception p0

    .line 254
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Failed to decode certificate"

    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 240
    :catch_3a
    move-exception p0

    .line 241
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static blacklist verifySourceStampSignature([BLjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    nop

    .line 281
    nop

    .line 282
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    .line 283
    :goto_6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 284
    add-int/lit8 v0, v0, 0x1

    .line 286
    :try_start_e
    invoke-static {p2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 287
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_34

    .line 290
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 291
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->isSupportedSignatureAlgorithm(I)Z

    move-result v6

    if-nez v6, :cond_25

    .line 292
    goto :goto_6

    .line 294
    :cond_25
    if-eq v3, v1, :cond_2d

    .line 295
    invoke-static {v5, v3}, Landroid/util/apk/ApkSigningBlockUtils;->compareSignatureAlgorithm(II)I

    move-result v6

    if-lez v6, :cond_33

    .line 296
    :cond_2d
    nop

    .line 297
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    move v3, v5

    .line 302
    :cond_33
    goto :goto_6

    .line 288
    :cond_34
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Signature record too short"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_3c} :catch_3c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_e .. :try_end_3c} :catch_3c

    .line 299
    :catch_3c
    move-exception p0

    .line 300
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse signature record #"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 304
    :cond_56
    if-ne v3, v1, :cond_6a

    .line 305
    if-nez v0, :cond_62

    .line 306
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No signatures found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :cond_62
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No supported signatures found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 313
    :cond_6a
    nop

    .line 314
    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object p2

    .line 315
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 316
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/security/spec/AlgorithmParameterSpec;

    .line 317
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    .line 320
    :try_start_7b
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 321
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 322
    if-eqz p2, :cond_87

    .line 323
    invoke-virtual {v1, p2}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 325
    :cond_87
    invoke-virtual {v1, p0}, Ljava/security/Signature;->update([B)V

    .line 326
    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_8e
    .catch Ljava/security/InvalidKeyException; {:try_start_7b .. :try_end_8e} :catch_ab
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7b .. :try_end_8e} :catch_ab
    .catch Ljava/security/SignatureException; {:try_start_7b .. :try_end_8e} :catch_ab
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7b .. :try_end_8e} :catch_ab

    .line 333
    nop

    .line 334
    if-eqz p0, :cond_92

    .line 337
    return-void

    .line 335
    :cond_92
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " signature did not verify"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :catch_ab
    move-exception p0

    .line 331
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to verify "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " signature"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
