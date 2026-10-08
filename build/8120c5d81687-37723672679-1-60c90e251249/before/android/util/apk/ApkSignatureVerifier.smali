.class public Landroid/util/apk/ApkSignatureVerifier;
.super Ljava/lang/Object;
.source "ApkSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;,
        Landroid/util/apk/ApkSignatureVerifier$Result;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ApkSignatureVerifier"

.field private static final greylist-max-o sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final blacklist sOverrideSigningDetails:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/SigningDetails;",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addOverrideSigningDetails(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)V
    .registers 4

    .line 131
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 132
    :try_start_3
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static blacklist clearOverrideSigningDetails()V
    .registers 2

    .line 153
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 154
    :try_start_3
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 155
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static greylist-max-o closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .registers 1

    .line 562
    if-eqz p0, :cond_7

    .line 564
    :try_start_2
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 566
    goto :goto_7

    .line 565
    :catch_6
    move-exception p0

    .line 568
    :cond_7
    :goto_7
    return-void
.end method

.method private static greylist-max-o convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 554
    array-length v0, p0

    new-array v0, v0, [Landroid/content/pm/Signature;

    .line 555
    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 556
    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v0, v1

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 558
    :cond_13
    return-object v0
.end method

.method public static greylist-max-o generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 624
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object p0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 625
    :catch_5
    move-exception v0

    .line 628
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getMinimumSignatureSchemeVersionForTargetSdk(I)I
    .registers 2

    .line 575
    const/16 v0, 0x1e

    if-lt p0, v0, :cond_6

    .line 576
    const/4 p0, 0x2

    return p0

    .line 578
    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist-max-o getVerityRootHash(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 602
    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 603
    :catch_5
    move-exception v0

    .line 607
    :try_start_6
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    .line 608
    :catch_b
    move-exception p0

    .line 609
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/util/jar/StrictJarFile;",
            "Ljava/util/zip/ZipEntry;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 515
    nop

    .line 519
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 520
    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->readFullyIgnoringContents(Ljava/io/InputStream;)V

    .line 521
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_11} :catch_17
    .catchall {:try_start_2 .. :try_end_11} :catchall_15

    .line 526
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 521
    return-object p0

    .line 526
    :catchall_15
    move-exception p0

    goto :goto_43

    .line 522
    :catch_17
    move-exception v1

    .line 523
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 524
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " in "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 523
    const/16 p2, -0x66

    invoke-interface {p0, p2, p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_15

    .line 526
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 523
    return-object p0

    .line 526
    :goto_43
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 527
    throw p0
.end method

.method private static greylist-max-o readFullyIgnoringContents(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 532
    if-nez v0, :cond_f

    .line 533
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 536
    :cond_f
    nop

    .line 537
    nop

    .line 538
    :goto_11
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    .line 539
    goto :goto_11

    .line 542
    :cond_1b
    sget-object p0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 543
    return-void
.end method

.method public static blacklist removeOverrideSigningDetails(Landroid/content/pm/SigningDetails;)V
    .registers 3

    .line 144
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 145
    :try_start_3
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static blacklist unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 83
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 103
    nop

    .line 104
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 105
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 106
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 108
    :cond_10
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    iget-object p2, p2, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 109
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p3

    if-eqz p3, :cond_49

    .line 111
    sget-object p3, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 112
    :try_start_21
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;

    .line 113
    monitor-exit p3
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_46

    .line 114
    if-eqz v0, :cond_49

    .line 115
    const-string p2, "ApkSignatureVerifier"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying override signing details for APK "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    move-object p2, v0

    goto :goto_49

    .line 113
    :catchall_46
    move-exception p0

    :try_start_47
    monitor-exit p3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0

    .line 119
    :cond_49
    :goto_49
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 168
    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/16 v2, -0x67

    const/4 v3, 0x4

    if-le p2, v3, :cond_27

    .line 170
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 177
    :cond_27
    :try_start_27
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV4Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2b
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_27 .. :try_end_2b} :catch_2c

    return-object p0

    .line 178
    :catch_2c
    move-exception v4

    .line 180
    if-lt p2, v3, :cond_47

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No APK Signature Scheme v4 signature in package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 186
    :cond_47
    const/4 v3, 0x3

    if-le p2, v3, :cond_68

    .line 188
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 193
    :cond_68
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 424
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    const-string v3, "Failed to collect certificates from "

    const-string v4, "AndroidManifest.xml"

    .line 430
    const/16 v5, -0x67

    const-wide/32 v6, 0x40000

    const/4 v8, 0x0

    :try_start_10
    const-string/jumbo v9, "strictJarFileCtor"

    invoke-static {v6, v7, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 434
    new-instance v9, Landroid/util/jar/StrictJarFile;

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_1c
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_1c} :catch_1b5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1c} :catch_196
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_1c} :catch_196
    .catchall {:try_start_10 .. :try_end_1c} :catchall_192

    .line 438
    :try_start_1c
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-virtual {v9, v4}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v12
    :try_end_25
    .catch Ljava/security/GeneralSecurityException; {:try_start_1c .. :try_end_25} :catch_18d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_25} :catch_188
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_25} :catch_188
    .catchall {:try_start_1c .. :try_end_25} :catchall_183

    .line 444
    const-string v13, "Package "

    if-nez v12, :cond_4d

    .line 445
    :try_start_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " has no manifest"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, -0x65

    invoke-interface {v1, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_46
    .catch Ljava/security/GeneralSecurityException; {:try_start_29 .. :try_end_46} :catch_18d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_46} :catch_188
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_46} :catch_188
    .catchall {:try_start_29 .. :try_end_46} :catchall_183

    .line 508
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 445
    return-object v0

    .line 448
    :cond_4d
    nop

    .line 449
    :try_start_4e
    invoke-static {v1, v9, v12}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v12

    .line 450
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v14

    if-eqz v14, :cond_63

    .line 451
    invoke-interface {v1, v12}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_5c
    .catch Ljava/security/GeneralSecurityException; {:try_start_4e .. :try_end_5c} :catch_18d
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5c} :catch_188
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_5c} :catch_188
    .catchall {:try_start_4e .. :try_end_5c} :catchall_183

    .line 508
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 451
    return-object v0

    .line 453
    :cond_63
    :try_start_63
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Ljava/security/cert/Certificate;

    .line 454
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v14
    :try_end_6d
    .catch Ljava/security/GeneralSecurityException; {:try_start_63 .. :try_end_6d} :catch_18d
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6d} :catch_188
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_6d} :catch_188
    .catchall {:try_start_63 .. :try_end_6d} :catchall_183

    const-string v15, " has no certificates at entry "

    if-eqz v14, :cond_95

    .line 455
    :try_start_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_8e
    .catch Ljava/security/GeneralSecurityException; {:try_start_71 .. :try_end_8e} :catch_18d
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_8e} :catch_188
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_8e} :catch_188
    .catchall {:try_start_71 .. :try_end_8e} :catchall_183

    .line 508
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 455
    return-object v0

    .line 459
    :cond_95
    :try_start_95
    invoke-static {v12}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v12

    .line 462
    if-eqz v0, :cond_166

    .line 463
    invoke-virtual {v9}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 464
    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d2

    .line 465
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/zip/ZipEntry;

    .line 466
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v16
    :try_end_af
    .catch Ljava/security/GeneralSecurityException; {:try_start_95 .. :try_end_af} :catch_18d
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_af} :catch_188
    .catch Ljava/lang/RuntimeException; {:try_start_95 .. :try_end_af} :catch_188
    .catchall {:try_start_95 .. :try_end_af} :catchall_183

    if-eqz v16, :cond_b2

    goto :goto_9f

    .line 468
    :cond_b2
    move-wide/from16 v16, v6

    :try_start_b4
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 469
    const-string v7, "META-INF/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c3

    move-wide/from16 v6, v16

    goto :goto_9f

    .line 470
    :cond_c3
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cc

    move-wide/from16 v6, v16

    goto :goto_9f

    .line 472
    :cond_cc
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    move-wide/from16 v6, v16

    goto :goto_9f

    .line 475
    :cond_d2
    move-wide/from16 v16, v6

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_168

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 477
    nop

    .line 478
    invoke-static {v1, v9, v4}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 479
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 480
    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_f3
    .catch Ljava/security/GeneralSecurityException; {:try_start_b4 .. :try_end_f3} :catch_181
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_f3} :catch_17f
    .catch Ljava/lang/RuntimeException; {:try_start_b4 .. :try_end_f3} :catch_17f
    .catchall {:try_start_b4 .. :try_end_f3} :catchall_17d

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 480
    return-object v0

    .line 482
    :cond_fa
    :try_start_fa
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/security/cert/Certificate;

    .line 483
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12e

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 486
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-interface {v1, v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_127
    .catch Ljava/security/GeneralSecurityException; {:try_start_fa .. :try_end_127} :catch_181
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_127} :catch_17f
    .catch Ljava/lang/RuntimeException; {:try_start_fa .. :try_end_127} :catch_17f
    .catchall {:try_start_fa .. :try_end_127} :catchall_17d

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 484
    return-object v0

    .line 490
    :cond_12e
    :try_start_12e
    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v6

    .line 491
    invoke-static {v12, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_164

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " has mismatched certificates at entry "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 495
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    const/16 v4, -0x68

    invoke-interface {v1, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_15d
    .catch Ljava/security/GeneralSecurityException; {:try_start_12e .. :try_end_15d} :catch_181
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_15d} :catch_17f
    .catch Ljava/lang/RuntimeException; {:try_start_12e .. :try_end_15d} :catch_17f
    .catchall {:try_start_12e .. :try_end_15d} :catchall_17d

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 492
    return-object v0

    .line 497
    :cond_164
    goto/16 :goto_d8

    .line 462
    :cond_166
    move-wide/from16 v16, v6

    .line 499
    :cond_168
    :try_start_168
    new-instance v0, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v4, Landroid/content/pm/SigningDetails;

    invoke-direct {v4, v12, v10}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    invoke-direct {v0, v4, v8}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_176
    .catch Ljava/security/GeneralSecurityException; {:try_start_168 .. :try_end_176} :catch_181
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_176} :catch_17f
    .catch Ljava/lang/RuntimeException; {:try_start_168 .. :try_end_176} :catch_17f
    .catchall {:try_start_168 .. :try_end_176} :catchall_17d

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 499
    return-object v0

    .line 508
    :catchall_17d
    move-exception v0

    goto :goto_186

    .line 504
    :catch_17f
    move-exception v0

    goto :goto_18b

    .line 501
    :catch_181
    move-exception v0

    goto :goto_190

    .line 508
    :catchall_183
    move-exception v0

    move-wide/from16 v16, v6

    :goto_186
    move-object v8, v9

    goto :goto_1d7

    .line 504
    :catch_188
    move-exception v0

    move-wide/from16 v16, v6

    :goto_18b
    move-object v8, v9

    goto :goto_199

    .line 501
    :catch_18d
    move-exception v0

    move-wide/from16 v16, v6

    :goto_190
    move-object v8, v9

    goto :goto_1b8

    .line 508
    :catchall_192
    move-exception v0

    move-wide/from16 v16, v6

    goto :goto_1d7

    .line 504
    :catch_196
    move-exception v0

    move-wide/from16 v16, v6

    .line 505
    :goto_199
    :try_start_199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1ae
    .catchall {:try_start_199 .. :try_end_1ae} :catchall_1d6

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v8}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 505
    return-object v0

    .line 501
    :catch_1b5
    move-exception v0

    move-wide/from16 v16, v6

    .line 502
    :goto_1b8
    :try_start_1b8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x69

    invoke-interface {v1, v3, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1cf
    .catchall {:try_start_1b8 .. :try_end_1cf} :catchall_1d6

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v8}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 502
    return-object v0

    .line 508
    :catchall_1d6
    move-exception v0

    :goto_1d7
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v8}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 510
    throw v0
.end method

.method private static blacklist verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 397
    if-eqz p2, :cond_6

    const-string/jumbo v0, "verifyV2"

    goto :goto_8

    :cond_6
    const-string v0, "certsOnlyV2"

    :goto_8
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 399
    nop

    .line 400
    :try_start_f
    invoke-static {p1, p2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object p2

    .line 401
    iget-object v0, p2, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    .line 402
    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 403
    new-instance v3, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v4, Landroid/content/pm/SigningDetails;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    iget-object p2, p2, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v3, v4, p2}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_f .. :try_end_2a} :catch_54
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_30
    .catchall {:try_start_f .. :try_end_2a} :catchall_2e

    .line 413
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 403
    return-object p0

    .line 413
    :catchall_2e
    move-exception p0

    goto :goto_56

    .line 407
    :catch_30
    move-exception p2

    .line 409
    :try_start_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to collect certificates from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " using APK Signature Scheme v2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x67

    invoke-interface {p0, v0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_50
    .catchall {:try_start_31 .. :try_end_50} :catchall_2e

    .line 413
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 409
    return-object p0

    .line 405
    :catch_54
    move-exception p0

    .line 406
    :try_start_55
    throw p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_2e

    .line 413
    :goto_56
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 414
    throw p0
.end method

.method private static blacklist verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 201
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 202
    :catch_5
    move-exception v0

    .line 204
    const/4 v1, 0x3

    const/16 v2, -0x67

    if-lt p2, v1, :cond_23

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No APK Signature Scheme v3 signature in package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 211
    :cond_23
    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/4 v3, 0x2

    if-le p2, v3, :cond_48

    .line 213
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 220
    :cond_48
    :try_start_48
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_4c
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_48 .. :try_end_4c} :catch_4d

    return-object p0

    .line 221
    :catch_4d
    move-exception v4

    .line 223
    if-lt p2, v3, :cond_68

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No APK Signature Scheme v2 signature in package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 230
    :cond_68
    const/4 v3, 0x1

    if-le p2, v3, :cond_89

    .line 232
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 238
    :cond_89
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 356
    if-eqz p2, :cond_6

    const-string/jumbo v0, "verifyV3"

    goto :goto_8

    :cond_6
    const-string v0, "certsOnlyV3"

    :goto_8
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 359
    if-eqz p2, :cond_15

    :try_start_10
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object p2

    goto :goto_19

    .line 360
    :cond_15
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object p2

    .line 362
    :goto_19
    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/security/cert/Certificate;

    iget-object v3, p2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 363
    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 364
    nop

    .line 365
    iget-object v3, p2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v3, :cond_62

    .line 367
    iget-object v3, p2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v3, v3, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v5, v3, [Landroid/content/pm/Signature;

    .line 368
    nop

    :goto_35
    if-ge v4, v3, :cond_63

    .line 369
    new-instance v6, Landroid/content/pm/Signature;

    iget-object v7, p2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v7, v7, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v6, v5, v4

    .line 370
    aget-object v6, v5, v4

    iget-object v7, p2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v7, v7, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 368
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 365
    :cond_62
    const/4 v5, 0x0

    .line 373
    :cond_63
    new-instance v3, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v4, Landroid/content/pm/SigningDetails;

    const/4 v6, 0x3

    invoke-direct {v4, v0, v6, v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    iget-object p2, p2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v3, v4, p2}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_74
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_10 .. :try_end_74} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_74} :catch_7a
    .catchall {:try_start_10 .. :try_end_74} :catchall_78

    .line 384
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 373
    return-object p0

    .line 384
    :catchall_78
    move-exception p0

    goto :goto_a0

    .line 378
    :catch_7a
    move-exception p2

    .line 380
    :try_start_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to collect certificates from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " using APK Signature Scheme v3"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x67

    invoke-interface {p0, v0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_9a
    .catchall {:try_start_7b .. :try_end_9a} :catchall_78

    .line 384
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 380
    return-object p0

    .line 376
    :catch_9e
    move-exception p0

    .line 377
    :try_start_9f
    throw p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_78

    .line 384
    :goto_a0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 385
    throw p0
.end method

.method private static blacklist verifyV4Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 251
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz p3, :cond_a

    const-string/jumbo v0, "verifyV4"

    goto :goto_c

    :cond_a
    const-string v0, "certsOnlyV4"

    :goto_c
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 253
    nop

    .line 254
    :try_start_13
    invoke-static {v2}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractSignature(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 255
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/os/incremental/V4Signature$HashingInfo;

    .line 256
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/incremental/V4Signature$SigningInfos;

    .line 258
    nop

    .line 259
    nop

    .line 260
    nop

    .line 262
    nop

    .line 266
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->alwaysLoadPastCertsV4()Z

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-nez v0, :cond_3c

    if-nez p3, :cond_3c

    iget-object v0, v6, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    array-length v0, v0
    :try_end_33
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_13 .. :try_end_33} :catch_17f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_159
    .catchall {:try_start_13 .. :try_end_33} :catchall_155

    if-lez v0, :cond_36

    goto :goto_3c

    :cond_36
    move-wide/from16 v16, v3

    move-object v0, v7

    move-object v3, v0

    goto/16 :goto_a7

    .line 271
    :cond_3c
    :goto_3c
    nop

    .line 272
    :try_start_3d
    invoke-static {v2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    .line 273
    iget-object v11, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    .line 274
    new-array v12, v8, [[Ljava/security/cert/Certificate;

    iget-object v13, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aput-object v13, v12, v9

    .line 275
    iget-object v13, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v13, :cond_8c

    .line 277
    iget-object v13, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v13, v13, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v7, v13, [Landroid/content/pm/Signature;

    .line 278
    move v14, v9

    :goto_58
    if-ge v14, v13, :cond_89

    .line 279
    new-instance v15, Landroid/content/pm/Signature;
    :try_end_5c
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_3d .. :try_end_5c} :catch_96
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5c} :catch_159
    .catchall {:try_start_3d .. :try_end_5c} :catchall_155

    move-wide/from16 v16, v3

    :try_start_5e
    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v3, v3, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 280
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v15, v7, v14

    .line 281
    aget-object v3, v7, v14

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v4, v4, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 278
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v3, v16

    goto :goto_58

    :cond_89
    move-wide/from16 v16, v3

    goto :goto_8e

    .line 275
    :cond_8c
    move-wide/from16 v16, v3

    .line 284
    :goto_8e
    iget v10, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->blockId:I
    :try_end_90
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_5e .. :try_end_90} :catch_94
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_90} :catch_139
    .catchall {:try_start_5e .. :try_end_90} :catchall_183

    .line 296
    move-object v0, v7

    move-object v3, v11

    move-object v7, v12

    goto :goto_a7

    .line 285
    :catch_94
    move-exception v0

    goto :goto_99

    :catch_96
    move-exception v0

    move-wide/from16 v16, v3

    .line 287
    :goto_99
    nop

    .line 288
    :try_start_9a
    invoke-static {v2, v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 289
    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    .line 290
    iget-object v0, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;
    :try_end_a2
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_9a .. :try_end_a2} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a2} :catch_139
    .catchall {:try_start_9a .. :try_end_a2} :catchall_183

    .line 295
    move-object/from16 v18, v7

    move-object v7, v0

    move-object/from16 v0, v18

    .line 299
    :goto_a7
    nop

    .line 300
    :try_start_a8
    invoke-static {v2, v5, v6, v10}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->verify(Ljava/lang/String;Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v4

    .line 302
    new-array v5, v8, [[Ljava/security/cert/Certificate;

    iget-object v6, v4, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->certs:[Ljava/security/cert/Certificate;

    aput-object v6, v5, v9

    .line 303
    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v5

    .line 305
    if-eqz p3, :cond_122

    .line 306
    invoke-static {v7}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v6

    .line 307
    array-length v7, v6

    array-length v10, v5

    if-ne v7, v10, :cond_108

    .line 312
    array-length v7, v5

    move v10, v9

    :goto_c2
    if-ge v10, v7, :cond_d9

    .line 313
    aget-object v11, v6, v10

    aget-object v12, v5, v10

    invoke-virtual {v11, v12}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d1

    .line 312
    add-int/lit8 v10, v10, 0x1

    goto :goto_c2

    .line 314
    :cond_d1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "V4 signature certificate does not match V2/V3"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_d9
    nop

    .line 320
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 321
    iget-object v7, v4, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    iget-object v10, v4, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    array-length v10, v10

    invoke-static {v7, v6, v10}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v6

    if-eqz v6, :cond_fb

    .line 323
    nop

    .line 324
    goto :goto_fd

    .line 326
    :cond_fb
    goto :goto_e2

    .line 320
    :cond_fc
    move v8, v9

    .line 327
    :goto_fd
    if-eqz v8, :cond_100

    goto :goto_122

    .line 328
    :cond_100
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "APK digest in V4 signature does not match V2/V3"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_108
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid number of certificates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_122
    :goto_122
    new-instance v3, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v6, Landroid/content/pm/SigningDetails;

    const/4 v7, 0x4

    invoke-direct {v6, v5, v7, v0}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    iget-object v0, v4, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v3, v6, v0}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v1, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_133
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_a8 .. :try_end_133} :catch_137
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_133} :catch_139
    .catchall {:try_start_a8 .. :try_end_133} :catchall_183

    .line 343
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 332
    return-object v0

    .line 335
    :catch_137
    move-exception v0

    goto :goto_182

    .line 337
    :catch_139
    move-exception v0

    goto :goto_15c

    .line 291
    :catch_13b
    move-exception v0

    .line 292
    :try_start_13c
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V4 verification failed to collect V2/V3 certificates from : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_155
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_13c .. :try_end_155} :catch_137
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_155} :catch_139
    .catchall {:try_start_13c .. :try_end_155} :catchall_183

    .line 343
    :catchall_155
    move-exception v0

    move-wide/from16 v16, v3

    goto :goto_184

    .line 337
    :catch_159
    move-exception v0

    move-wide/from16 v16, v3

    .line 339
    :goto_15c
    :try_start_15c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect certificates from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using APK Signature Scheme v4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x67

    invoke-interface {v1, v3, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_17b
    .catchall {:try_start_15c .. :try_end_17b} :catchall_183

    .line 343
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 339
    return-object v0

    .line 335
    :catch_17f
    move-exception v0

    move-wide/from16 v16, v3

    .line 336
    :goto_182
    :try_start_182
    throw v0
    :try_end_183
    .catchall {:try_start_182 .. :try_end_183} :catchall_183

    .line 343
    :catchall_183
    move-exception v0

    :goto_184
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 344
    throw v0
.end method
