.class public Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
.super Ljava/lang/Object;
.source "CapabilityChangeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/CapabilityChangeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapabilityPair"
.end annotation


# instance fields
.field private final greylist-max-o mCapability:I

.field private final greylist-max-o radioTech:I


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->mCapability:I

    .line 53
    iput p2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->radioTech:I

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 61
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 62
    :cond_4
    instance-of v1, p1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 64
    :cond_a
    check-cast p1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 66
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    .line 67
    :cond_17
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result p1

    if-ne v1, p1, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public whitelist getCapability()I
    .registers 2

    .line 85
    iget v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->mCapability:I

    return v0
.end method

.method public whitelist getRadioTech()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->radioTech:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 75
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    .line 76
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CapabilityPair{mCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->mCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->radioTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
