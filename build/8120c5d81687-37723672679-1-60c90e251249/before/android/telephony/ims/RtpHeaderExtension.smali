.class public final Landroid/telephony/ims/RtpHeaderExtension;
.super Ljava/lang/Object;
.source "RtpHeaderExtension.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mExtensionData:[B

.field private blacklist mLocalIdentifier:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroid/telephony/ims/RtpHeaderExtension$1;

    invoke-direct {v0}, Landroid/telephony/ims/RtpHeaderExtension$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RtpHeaderExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I[B)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    if-lt p1, v0, :cond_19

    const/16 v0, 0xd

    if-gt p1, v0, :cond_19

    .line 52
    if-eqz p2, :cond_11

    .line 55
    iput p1, p0, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    .line 56
    iput-object p2, p0, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    .line 57
    return-void

    .line 53
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "extensionDa is required."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "localIdentifier must be in range 1-14"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/RtpHeaderExtension-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/RtpHeaderExtension;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 124
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 125
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 126
    :cond_12
    check-cast p1, Landroid/telephony/ims/RtpHeaderExtension;

    .line 127
    iget v2, p0, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    iget v3, p1, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    iget-object p1, p1, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    .line 128
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    .line 127
    :goto_26
    return v0

    .line 125
    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist getExtensionData()[B
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    return-object v0
.end method

.method public whitelist getLocalIdentifier()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 133
    iget v0, p0, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    const-string v1, "RtpHeaderExtension{mLocalIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget v1, p0, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_2b

    aget-byte v4, v1, v3

    .line 145
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v4, "b_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 148
    :cond_2b
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 105
    iget p2, p0, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object p2, p0, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 107
    return-void
.end method
