.class public Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;
.super Ljava/lang/Object;
.source "SatelliteModemEnableRequestAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist isDemoMode:Z

.field public blacklist isEmergencyMode:Z

.field public blacklist isEnabled:Z

.field public blacklist satelliteSubscriptionInfo:Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes$1;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEnabled:Z

    .line 16
    iput-boolean v0, p0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isDemoMode:Z

    .line 18
    iput-boolean v0, p0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEmergencyMode:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 74
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 75
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 76
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 78
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 69
    nop

    .line 70
    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->satelliteSubscriptionInfo:Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;

    invoke-direct {p0, v0}, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 71
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_91

    .line 52
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_8f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 62
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEnabled:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_8f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 62
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isDemoMode:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_8f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 62
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEmergencyMode:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_8f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 62
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_76
    :try_start_76
    sget-object v2, Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;

    iput-object v2, p0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->satelliteSubscriptionInfo:Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_8f

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_89

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    nop

    .line 66
    return-void

    .line 62
    :cond_89
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :catchall_8f
    move-exception v2

    goto :goto_99

    .line 51
    :cond_91
    :try_start_91
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_8f

    .line 61
    :goto_99
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_a2

    .line 62
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_a2
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 36
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-boolean v1, p0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEnabled:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 38
    iget-boolean v1, p0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isDemoMode:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 39
    iget-boolean v1, p0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEmergencyMode:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 40
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->satelliteSubscriptionInfo:Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    return-void
.end method
