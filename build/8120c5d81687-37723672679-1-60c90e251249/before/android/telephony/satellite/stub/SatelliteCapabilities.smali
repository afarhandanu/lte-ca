.class public Landroid/telephony/satellite/stub/SatelliteCapabilities;
.super Ljava/lang/Object;
.source "SatelliteCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/stub/SatelliteCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist antennaPositionKeys:[I

.field public blacklist antennaPositionValues:[Landroid/telephony/satellite/AntennaPosition;

.field public blacklist isPointingRequired:Z

.field public blacklist maxBytesPerOutgoingDatagram:I

.field public blacklist supportedRadioTechnologies:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteCapabilities$1;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SatelliteCapabilities$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->isPointingRequired:Z

    .line 18
    iput v0, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->maxBytesPerOutgoingDatagram:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 79
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 80
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 81
    nop

    .line 82
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 83
    invoke-direct {p0, v3}, Landroid/telephony/satellite/stub/SatelliteCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 85
    :cond_19
    return v2

    .line 87
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 88
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 90
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 74
    nop

    .line 75
    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionValues:[Landroid/telephony/satellite/AntennaPosition;

    invoke-direct {p0, v0}, Landroid/telephony/satellite/stub/SatelliteCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 76
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ac

    .line 55
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 67
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->supportedRadioTechnologies:[I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 67
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->isPointingRequired:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 67
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->maxBytesPerOutgoingDatagram:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 67
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionKeys:[I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 67
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_91
    :try_start_91
    sget-object v2, Landroid/telephony/satellite/AntennaPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/satellite/AntennaPosition;

    iput-object v2, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionValues:[Landroid/telephony/satellite/AntennaPosition;
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_aa

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a4

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    nop

    .line 71
    return-void

    .line 67
    :cond_a4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :catchall_aa
    move-exception v2

    goto :goto_b4

    .line 54
    :cond_ac
    :try_start_ac
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b4
    .catchall {:try_start_ac .. :try_end_b4} :catchall_aa

    .line 66
    :goto_b4
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_bd

    .line 67
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_bd
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->supportedRadioTechnologies:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 40
    iget-boolean v1, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->isPointingRequired:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 41
    iget v1, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->maxBytesPerOutgoingDatagram:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionKeys:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 43
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionValues:[Landroid/telephony/satellite/AntennaPosition;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void
.end method
