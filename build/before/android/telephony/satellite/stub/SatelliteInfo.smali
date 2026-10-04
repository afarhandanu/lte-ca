.class public Landroid/telephony/satellite/stub/SatelliteInfo;
.super Ljava/lang/Object;
.source "SatelliteInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/stub/SatelliteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bands:[I

.field public blacklist earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;

.field public blacklist id:Landroid/telephony/satellite/stub/UUID;

.field public blacklist position:Landroid/telephony/satellite/stub/SatellitePosition;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteInfo$1;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SatelliteInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/stub/SatelliteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 88
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 89
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 90
    nop

    .line 91
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 92
    invoke-direct {p0, v3}, Landroid/telephony/satellite/stub/SatelliteInfo;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 94
    :cond_19
    return v2

    .line 96
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 97
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 99
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 81
    nop

    .line 82
    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->id:Landroid/telephony/satellite/stub/UUID;

    invoke-direct {p0, v0}, Landroid/telephony/satellite/stub/SatelliteInfo;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 83
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->position:Landroid/telephony/satellite/stub/SatellitePosition;

    invoke-direct {p0, v1}, Landroid/telephony/satellite/stub/SatelliteInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 84
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;

    invoke-direct {p0, v1}, Landroid/telephony/satellite/stub/SatelliteInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 85
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_99

    .line 64
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_97

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 73
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 76
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 74
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_25
    :try_start_25
    sget-object v2, Landroid/telephony/satellite/stub/UUID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/stub/UUID;

    iput-object v2, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->id:Landroid/telephony/satellite/stub/UUID;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_97

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 73
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 76
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 74
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_44
    :try_start_44
    sget-object v2, Landroid/telephony/satellite/stub/SatellitePosition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/stub/SatellitePosition;

    iput-object v2, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->position:Landroid/telephony/satellite/stub/SatellitePosition;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_97

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_63

    .line 73
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5d

    .line 76
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 74
    :cond_5d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_63
    :try_start_63
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->bands:[I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_97

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 73
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 76
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 74
    :cond_78
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_7e
    :try_start_7e
    sget-object v2, Landroid/telephony/satellite/stub/EarfcnRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/satellite/stub/EarfcnRange;

    iput-object v2, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_97

    .line 73
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_91

    .line 76
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    nop

    .line 78
    return-void

    .line 74
    :cond_91
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :catchall_97
    move-exception v2

    goto :goto_a1

    .line 63
    :cond_99
    :try_start_99
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a1
    .catchall {:try_start_99 .. :try_end_a1} :catchall_97

    .line 73
    :goto_a1
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_aa

    .line 74
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_aa
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 48
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->id:Landroid/telephony/satellite/stub/UUID;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 50
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->position:Landroid/telephony/satellite/stub/SatellitePosition;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 51
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->bands:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 52
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void
.end method
