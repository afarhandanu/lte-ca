.class public Landroid/telephony/satellite/stub/SatelliteDatagram;
.super Ljava/lang/Object;
.source "SatelliteDatagram.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/stub/SatelliteDatagram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist data:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteDatagram$1;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SatelliteDatagram$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/stub/SatelliteDatagram;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 54
    nop

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 42
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_3c

    .line 43
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_3a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 46
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 49
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    return-void

    .line 47
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_3a

    .line 46
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_34

    .line 49
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    nop

    .line 51
    return-void

    .line 47
    :cond_34
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :catchall_3a
    move-exception v2

    goto :goto_44

    .line 42
    :cond_3c
    :try_start_3c
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_3a

    .line 46
    :goto_44
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_4d

    .line 47
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_4d
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    return-void
.end method
