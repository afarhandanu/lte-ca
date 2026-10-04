.class public final Landroid/telephony/LinkCapacityEstimate;
.super Ljava/lang/Object;
.source "LinkCapacityEstimate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/LinkCapacityEstimate$LceType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INVALID:I = -0x1

.field public static final whitelist LCE_TYPE_COMBINED:I = 0x2

.field public static final whitelist LCE_TYPE_PRIMARY:I = 0x0

.field public static final whitelist LCE_TYPE_SECONDARY:I = 0x1


# instance fields
.field private final blacklist mDownlinkCapacityKbps:I

.field private final blacklist mType:I

.field private final blacklist mUplinkCapacityKbps:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 169
    new-instance v0, Landroid/telephony/LinkCapacityEstimate$1;

    invoke-direct {v0}, Landroid/telephony/LinkCapacityEstimate$1;-><init>()V

    sput-object v0, Landroid/telephony/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p2, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    .line 77
    iput p3, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    .line 78
    iput p1, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    .line 88
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 149
    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    instance-of v1, p1, Landroid/telephony/LinkCapacityEstimate;

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Landroid/telephony/LinkCapacityEstimate;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_12

    goto :goto_2c

    .line 153
    :cond_12
    const/4 v1, 0x1

    if-ne p0, p1, :cond_16

    .line 154
    return v1

    .line 157
    :cond_16
    check-cast p1, Landroid/telephony/LinkCapacityEstimate;

    .line 158
    iget v2, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    iget v3, p1, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    iget v3, p1, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    iget p1, p1, Landroid/telephony/LinkCapacityEstimate;->mType:I

    if-ne v2, p1, :cond_2b

    move v0, v1

    :cond_2b
    return v0

    .line 150
    :cond_2c
    :goto_2c
    return v0
.end method

.method public whitelist getDownlinkCapacityKbps()I
    .registers 2

    .line 104
    iget v0, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    return v0
.end method

.method public whitelist getUplinkCapacityKbps()I
    .registers 2

    .line 114
    iget v0, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 165
    iget v0, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const-string/jumbo v1, "{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    const-string v1, ", mDownlinkCapacityKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    const-string v1, ", mUplinkCapacityKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 142
    iget p2, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget p2, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget p2, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return-void
.end method
