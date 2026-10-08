.class public Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    }
.end annotation


# static fields
.field private static final greylist-max-o APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final blacklist MAX_V2_SIGNERS:I = 0xa

.field public static final greylist-max-o SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x2

.field private static final greylist-max-o STRIPPING_PROTECTION_ATTR_ID:I = -0x41100ff3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 160
    const v0, 0x7109871a

    invoke-static {p0, v0}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object p0

    return-object p0
.end method

.method static greylist-max-o generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    .line 416
    invoke-static {p0, p1, v1}, Landroid/util/apk/VerityBuilder;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)[B

    move-result-object p0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    .line 417
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 416
    return-object p0

    .line 414
    :catchall_14
    move-exception p0

    :try_start_15
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw p0
.end method

.method static greylist-max-o getVerityRootHash(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    .line 406
    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object p0

    .line 407
    iget-object p0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->verityRootHash:[B
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 408
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 407
    return-object p0

    .line 404
    :catchall_16
    move-exception p0

    :try_start_17
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p0
.end method

.method public static greylist-max-o hasSignature(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_8} :catch_1b

    .line 89
    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    .line 90
    nop

    .line 91
    :try_start_c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_c .. :try_end_f} :catch_1b

    .line 90
    const/4 p0, 0x1

    return p0

    .line 88
    :catchall_11
    move-exception p0

    :try_start_12
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v0

    :try_start_17
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw p0
    :try_end_1b
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_17 .. :try_end_1b} :catch_1b

    .line 91
    :catch_1b
    move-exception p0

    .line 92
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist unsafeGetCertsWithoutVerification(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object p0

    .line 123
    iget-object p0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method private static greylist-max-o verify(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    nop

    .line 175
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    :try_start_b
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2
    :try_end_11
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_11} :catch_b7

    .line 182
    nop

    .line 185
    :try_start_12
    iget-object v3, p1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_ae

    .line 188
    const/4 v4, 0x0

    .line 189
    :goto_19
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 191
    const/16 v5, 0xa

    if-gt v4, v5, :cond_51

    .line 197
    :try_start_25
    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 198
    invoke-static {v5, v0, v2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 199
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_30} :catch_31
    .catch Ljava/nio/BufferUnderflowException; {:try_start_25 .. :try_end_30} :catch_31
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_30} :catch_31

    .line 204
    goto :goto_19

    .line 200
    :catch_31
    move-exception p0

    .line 201
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse/verify signer #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " block"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 192
    :cond_51
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "APK Signature Scheme v2 only supports a maximum of 10 signers"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_59
    const/4 v2, 0x1

    if-lt v4, v2, :cond_a6

    .line 211
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9e

    .line 215
    if-eqz p2, :cond_67

    .line 216
    invoke-static {v0, p0, p1}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrity(Ljava/util/Map;Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V

    .line 219
    :cond_67
    nop

    .line 220
    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 221
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 222
    nop

    .line 223
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    .line 222
    invoke-static {p2, v2, v3, p1}, Landroid/util/apk/ApkSigningBlockUtils;->parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B

    move-result-object p0

    goto :goto_8c

    .line 220
    :cond_8b
    const/4 p0, 0x0

    .line 226
    :goto_8c
    new-instance p1, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    .line 227
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [[Ljava/security/cert/X509Certificate;

    invoke-interface {v1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Ljava/security/cert/X509Certificate;

    invoke-direct {p1, p2, p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;-><init>([[Ljava/security/cert/X509Certificate;[BLjava/util/Map;)V

    .line 226
    return-object p1

    .line 212
    :cond_9e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No content digests found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 208
    :cond_a6
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No signers found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :catch_ae
    move-exception p0

    .line 187
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Failed to read list of signers"

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 180
    :catch_b7
    move-exception p0

    .line 181
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static greylist-max-o verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    .line 148
    invoke-static {p0, v0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :try_start_8
    invoke-static {v0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    .line 133
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 132
    return-object p0

    .line 131
    :catchall_10
    move-exception p0

    :try_start_11
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw p0
.end method

.method public static greylist-max-o verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object p0

    .line 108
    iget-object p0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method private static greylist-max-o verifyAdditionalAttributes(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 376
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_4e

    .line 381
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 382
    packed-switch v1, :pswitch_data_6c

    goto :goto_4d

    .line 384
    :pswitch_1a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v2, :cond_30

    .line 389
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 390
    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    goto :goto_4d

    .line 391
    :cond_28
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "V2 signature indicates APK is signed using APK Signature Scheme v3, but none was found. Signature stripped?"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 385
    :cond_30
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V2 Signature Scheme Stripping Protection Attribute  value too small.  Expected 4 bytes, but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 387
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 399
    :goto_4d
    goto :goto_1

    .line 378
    :cond_4e
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining buffer too short to contain additional attribute ID. Remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 379
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 400
    :cond_6b
    return-void

    :pswitch_data_6c
    .packed-switch -0x41100ff3
        :pswitch_1a
    .end packed-switch
.end method

.method private static greylist-max-o verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 236
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 237
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 239
    nop

    .line 240
    nop

    .line 241
    nop

    .line 242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move v7, v3

    move v6, v4

    move-object v8, v5

    .line 243
    :goto_1a
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    const/16 v10, 0x8

    if-eqz v9, :cond_72

    .line 244
    add-int/lit8 v7, v7, 0x1

    .line 246
    :try_start_24
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 247
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-lt v11, v10, :cond_50

    .line 250
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 251
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-static {v10}, Landroid/util/apk/ApkSigningBlockUtils;->isSupportedSignatureAlgorithm(I)Z

    move-result v11

    if-nez v11, :cond_40

    .line 253
    goto :goto_1a

    .line 255
    :cond_40
    if-eq v6, v4, :cond_48

    .line 256
    invoke-static {v10, v6}, Landroid/util/apk/ApkSigningBlockUtils;->compareSignatureAlgorithm(II)I

    move-result v11

    if-lez v11, :cond_4f

    .line 257
    :cond_48
    nop

    .line 258
    invoke-static {v9}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    move-object v8, v6

    move v6, v10

    .line 264
    :cond_4f
    goto :goto_1a

    .line 248
    :cond_50
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Signature record too short"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_58} :catch_58
    .catch Ljava/nio/BufferUnderflowException; {:try_start_24 .. :try_end_58} :catch_58

    .line 260
    :catch_58
    move-exception p0

    .line 261
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse signature record #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 266
    :cond_72
    if-ne v6, v4, :cond_86

    .line 267
    if-nez v7, :cond_7e

    .line 268
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No signatures found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 270
    :cond_7e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No supported signatures found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 274
    :cond_86
    invoke-static {v6}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    nop

    .line 276
    invoke-static {v6}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v4

    .line 277
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 278
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/security/spec/AlgorithmParameterSpec;

    .line 281
    nop

    .line 282
    :try_start_98
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v9, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v9, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 283
    invoke-virtual {v1, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 284
    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v9

    .line 285
    invoke-virtual {v9, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 286
    if-eqz v4, :cond_b1

    .line 287
    invoke-virtual {v9, v4}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 289
    :cond_b1
    invoke-virtual {v9, v0}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 290
    invoke-virtual {v9, v8}, Ljava/security/Signature;->verify([B)Z

    move-result v1
    :try_end_b8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_98 .. :try_end_b8} :catch_1ed
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_98 .. :try_end_b8} :catch_1ed
    .catch Ljava/security/InvalidKeyException; {:try_start_98 .. :try_end_b8} :catch_1ed
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_98 .. :try_end_b8} :catch_1ed
    .catch Ljava/security/SignatureException; {:try_start_98 .. :try_end_b8} :catch_1ed

    .line 295
    nop

    .line 296
    if-eqz v1, :cond_1d4

    .line 302
    nop

    .line 303
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 304
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 305
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 306
    move v7, v3

    .line 307
    :goto_c9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_10f

    .line 308
    add-int/lit8 v7, v7, 0x1

    .line 310
    :try_start_d1
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 311
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-lt v9, v10, :cond_ed

    .line 314
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 315
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    if-ne v9, v6, :cond_ec

    .line 317
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    .line 321
    :cond_ec
    goto :goto_c9

    .line 312
    :cond_ed
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Record too short"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_f5} :catch_f5
    .catch Ljava/nio/BufferUnderflowException; {:try_start_d1 .. :try_end_f5} :catch_f5

    .line 319
    :catch_f5
    move-exception p0

    .line 320
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse digest record #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 324
    :cond_10f
    invoke-interface {v2, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cc

    .line 328
    invoke-static {v6}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v1

    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 330
    if-eqz p1, :cond_149

    .line 331
    invoke-static {p1, v5}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_12c

    goto :goto_149

    .line 332
    :cond_12c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :cond_149
    :goto_149
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 338
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 339
    move v2, v3

    .line 340
    :goto_153
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_18e

    .line 341
    add-int/lit8 v2, v2, 0x1

    .line 342
    invoke-static {p1}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 345
    :try_start_15f
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 346
    invoke-virtual {p2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_16a
    .catch Ljava/security/cert/CertificateException; {:try_start_15f .. :try_end_16a} :catch_174

    .line 349
    nop

    .line 350
    new-instance v6, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v6, v5, v4}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 351
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    goto :goto_153

    .line 347
    :catch_174
    move-exception p0

    .line 348
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to decode certificate #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 354
    :cond_18e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1c4

    .line 357
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 358
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    .line 359
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1bc

    .line 364
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 365
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifyAdditionalAttributes(Ljava/nio/ByteBuffer;)V

    .line 367
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/cert/X509Certificate;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;

    return-object p0

    .line 360
    :cond_1bc
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Public key mismatch between certificate and signature record"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 355
    :cond_1c4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No certificates listed"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 325
    :cond_1cc
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :cond_1d4
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " signature did not verify"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 291
    :catch_1ed
    move-exception p0

    .line 293
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to verify "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " signature"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
