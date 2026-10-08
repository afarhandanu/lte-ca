.class public Landroid/util/apk/ApkSignatureSchemeV4Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV4Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    }
.end annotation


# static fields
.field static final blacklist APK_SIGNATURE_SCHEME_DEFAULT:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertToContentDigestType(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 245
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 246
    const/4 p0, 0x3

    return p0

    .line 248
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported hashAlgorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist extractCertificates(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/security/SignatureException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 69
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractSignature(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 70
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/incremental/V4Signature$HashingInfo;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/incremental/V4Signature$SigningInfos;

    const/4 v2, -0x1

    invoke-static {p0, v1, v0, v2}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->verify(Ljava/lang/String;Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist extractSignature(Ljava/lang/String;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/os/incremental/V4Signature$HashingInfo;",
            "Landroid/os/incremental/V4Signature$SigningInfos;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 79
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    nop

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->unsafeGetFileSignature(Ljava/lang/String;)[B

    move-result-object p0

    .line 88
    if-eqz p0, :cond_1a

    array-length v1, p0

    if-lez v1, :cond_1a

    .line 89
    nop

    .line 90
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object p0

    const/4 v1, 0x0

    goto :goto_48

    .line 95
    :cond_1a
    nop

    .line 97
    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".idsig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_37} :catch_d2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_c9
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_37} :catch_c0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_37} :catch_c0

    .line 98
    :try_start_37
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_40} :catch_b7
    .catch Ljava/io/EOFException; {:try_start_37 .. :try_end_40} :catch_d2
    .catch Ljava/security/DigestException; {:try_start_37 .. :try_end_40} :catch_c0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_37 .. :try_end_40} :catch_c0

    .line 99
    :try_start_40
    invoke-static {v1}, Landroid/os/incremental/V4Signature;->readFrom(Ljava/io/InputStream;)Landroid/os/incremental/V4Signature;

    move-result-object p0
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_ad

    .line 100
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_b7
    .catch Ljava/io/EOFException; {:try_start_44 .. :try_end_47} :catch_d2
    .catch Ljava/security/DigestException; {:try_start_44 .. :try_end_47} :catch_c0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_44 .. :try_end_47} :catch_c0

    .line 103
    const/4 v1, 0x1

    .line 105
    :goto_48
    :try_start_48
    invoke-virtual {p0}, Landroid/os/incremental/V4Signature;->isVersionSupported()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 109
    iget-object v2, p0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    invoke-static {v2}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v2

    .line 111
    iget-object p0, p0, Landroid/os/incremental/V4Signature;->signingInfos:[B

    invoke-static {p0}, Landroid/os/incremental/V4Signature$SigningInfos;->fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfos;

    move-result-object p0

    .line 114
    if-eqz v1, :cond_86

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/security/VerityUtils;->getFsverityDigest(Ljava/lang/String;)[B

    move-result-object v1

    .line 116
    if-eqz v1, :cond_7e

    .line 119
    nop

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/android/internal/security/VerityUtils;->generateFsVerityDigest(JLandroid/os/incremental/V4Signature$HashingInfo;)[B

    move-result-object v0

    .line 121
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_76

    goto :goto_86

    .line 122
    :cond_76
    new-instance p0, Ljava/security/SignatureException;

    const-string v0, "Actual digest does not match the v4 signature"

    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_7e
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "The APK does not have fs-verity"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_86
    :goto_86
    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 106
    :cond_8b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "v4 signature version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Landroid/os/incremental/V4Signature;->version:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is not supported"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ad
    .catch Ljava/io/EOFException; {:try_start_48 .. :try_end_ad} :catch_d2
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_ad} :catch_c9
    .catch Ljava/security/DigestException; {:try_start_48 .. :try_end_ad} :catch_c0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_48 .. :try_end_ad} :catch_c0

    .line 98
    :catchall_ad
    move-exception p0

    :try_start_ae
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b2

    goto :goto_b6

    :catchall_b2
    move-exception v0

    :try_start_b3
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b6
    throw p0
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b7} :catch_b7
    .catch Ljava/io/EOFException; {:try_start_b3 .. :try_end_b7} :catch_d2
    .catch Ljava/security/DigestException; {:try_start_b3 .. :try_end_b7} :catch_c0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b3 .. :try_end_b7} :catch_c0

    .line 100
    :catch_b7
    move-exception p0

    .line 101
    :try_start_b8
    new-instance p0, Landroid/util/apk/SignatureNotFoundException;

    const-string v0, "Failed to obtain signature bytes from .idsig"

    invoke-direct {p0, v0}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_c0
    .catch Ljava/io/EOFException; {:try_start_b8 .. :try_end_c0} :catch_d2
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c0} :catch_c9
    .catch Ljava/security/DigestException; {:try_start_b8 .. :try_end_c0} :catch_c0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b8 .. :try_end_c0} :catch_c0

    .line 131
    :catch_c0
    move-exception p0

    .line 132
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Failed to calculate the digest"

    invoke-direct {v0, v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 129
    :catch_c9
    move-exception p0

    .line 130
    new-instance v0, Landroid/util/apk/SignatureNotFoundException;

    const-string v1, "Failed to read V4 signature."

    invoke-direct {v0, v1, p0}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 127
    :catch_d2
    move-exception p0

    .line 128
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "V4 signature is invalid."

    invoke-direct {v0, v1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static blacklist findSigningInfoForBlockId(Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/os/incremental/V4Signature$SigningInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 163
    const/4 v0, -0x1

    if-eq p1, v0, :cond_54

    const v0, -0xfac9740

    if-ne p1, v0, :cond_9

    goto :goto_54

    .line 167
    :cond_9
    iget-object p0, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_3b

    aget-object v2, p0, v1

    .line 168
    iget v3, v2, Landroid/os/incremental/V4Signature$SigningInfoBlock;->blockId:I

    if-ne p1, v3, :cond_38

    .line 170
    :try_start_15
    iget-object p0, v2, Landroid/os/incremental/V4Signature$SigningInfoBlock;->signingInfo:[B

    invoke-static {p0}, Landroid/os/incremental/V4Signature$SigningInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfo;

    move-result-object p0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_1c

    return-object p0

    .line 171
    :catch_1c
    move-exception p0

    .line 172
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read V4 signature block: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/os/incremental/V4Signature$SigningInfoBlock;->blockId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 167
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 177
    :cond_3b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find V4 signature block corresponding to V3 blockId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :cond_54
    :goto_54
    iget-object p0, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

    return-object p0
.end method

.method public static blacklist verify(Ljava/lang/String;Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 143
    invoke-static {p2, p3}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->findSigningInfoForBlockId(Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/os/incremental/V4Signature$SigningInfo;

    move-result-object p2

    .line 147
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/os/incremental/V4Signature;->getSignedData(JLandroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfo;)[B

    move-result-object p0

    .line 149
    invoke-static {p2, p0}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->verifySigner(Landroid/os/incremental/V4Signature$SigningInfo;[B)Landroid/util/Pair;

    move-result-object p0

    .line 152
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 153
    iget p3, p1, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    invoke-static {p3}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->convertToContentDigestType(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p1, p1, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance p1, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/security/cert/Certificate;

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [B

    invoke-direct {p1, p3, p0, p2}, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;-><init>([Ljava/security/cert/Certificate;[BLjava/util/Map;)V

    return-object p1
.end method

.method private static blacklist verifySigner(Landroid/os/incremental/V4Signature$SigningInfo;[B)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/incremental/V4Signature$SigningInfo;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/security/cert/Certificate;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 183
    iget v0, p0, Landroid/os/incremental/V4Signature$SigningInfo;->signatureAlgorithmId:I

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->isSupportedSignatureAlgorithm(I)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 187
    iget v0, p0, Landroid/os/incremental/V4Signature$SigningInfo;->signatureAlgorithmId:I

    .line 188
    iget-object v1, p0, Landroid/os/incremental/V4Signature$SigningInfo;->signature:[B

    .line 189
    iget-object v2, p0, Landroid/os/incremental/V4Signature$SigningInfo;->publicKey:[B

    .line 190
    iget-object v3, p0, Landroid/os/incremental/V4Signature$SigningInfo;->certificate:[B

    .line 192
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    nop

    .line 194
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v0

    .line 195
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 196
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    .line 199
    nop

    .line 200
    :try_start_22
    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v6, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 201
    invoke-virtual {v4, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 202
    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    .line 203
    invoke-virtual {v6, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 204
    if-eqz v0, :cond_3b

    .line 205
    invoke-virtual {v6, v0}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 207
    :cond_3b
    invoke-virtual {v6, p1}, Ljava/security/Signature;->update([B)V

    .line 208
    invoke-virtual {v6, v1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_42
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_42} :catch_a5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_22 .. :try_end_42} :catch_a5
    .catch Ljava/security/InvalidKeyException; {:try_start_22 .. :try_end_42} :catch_a5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_22 .. :try_end_42} :catch_a5
    .catch Ljava/security/SignatureException; {:try_start_22 .. :try_end_42} :catch_a5

    .line 213
    nop

    .line 214
    if-eqz p1, :cond_8c

    .line 221
    :try_start_45
    const-string p1, "X.509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1
    :try_end_4b
    .catch Ljava/security/cert/CertificateException; {:try_start_45 .. :try_end_4b} :catch_83

    .line 224
    nop

    .line 228
    :try_start_4c
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 229
    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;
    :try_end_57
    .catch Ljava/security/cert/CertificateException; {:try_start_4c .. :try_end_57} :catch_7a

    .line 232
    nop

    .line 233
    new-instance v0, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v0, p1, v3}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 235
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    .line 236
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 241
    iget-object p0, p0, Landroid/os/incremental/V4Signature$SigningInfo;->apkDigest:[B

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 237
    :cond_72
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Public key mismatch between certificate and signature record"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 230
    :catch_7a
    move-exception p0

    .line 231
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Failed to decode certificate"

    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 222
    :catch_83
    move-exception p0

    .line 223
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 215
    :cond_8c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " signature did not verify"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 209
    :catch_a5
    move-exception p0

    .line 211
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to verify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " signature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 184
    :cond_c5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No supported signatures found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
