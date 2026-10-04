.class Landroid/util/apk/VerbatimX509Certificate;
.super Landroid/util/apk/WrappedX509Certificate;
.source "VerbatimX509Certificate.java"


# instance fields
.field private final blacklist mEncodedVerbatim:[B

.field private blacklist mHash:I


# direct methods
.method constructor blacklist <init>(Ljava/security/cert/X509Certificate;[B)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Landroid/util/apk/WrappedX509Certificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 31
    const/4 p1, -0x1

    iput p1, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I

    .line 35
    iput-object p2, p0, Landroid/util/apk/VerbatimX509Certificate;->mEncodedVerbatim:[B

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 45
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 46
    :cond_4
    instance-of v0, p1, Landroid/util/apk/VerbatimX509Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 49
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/util/apk/VerbatimX509Certificate;->getEncoded()[B

    move-result-object v0

    .line 50
    check-cast p1, Landroid/util/apk/VerbatimX509Certificate;

    invoke-virtual {p1}, Landroid/util/apk/VerbatimX509Certificate;->getEncoded()[B

    move-result-object p1

    .line 51
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_18
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_a .. :try_end_18} :catch_19

    return p1

    .line 52
    :catch_19
    move-exception p1

    .line 53
    return v1
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mEncodedVerbatim:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 59
    iget v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 61
    :try_start_5
    invoke-virtual {p0}, Landroid/util/apk/VerbatimX509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I
    :try_end_f
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_f} :catch_10

    .line 64
    goto :goto_14

    .line 62
    :catch_10
    move-exception v0

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I

    .line 66
    :cond_14
    :goto_14
    iget v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I

    return v0
.end method
