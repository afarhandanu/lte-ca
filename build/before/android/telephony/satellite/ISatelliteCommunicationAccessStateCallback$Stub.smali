.class public abstract Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub;
.super Landroid/os/Binder;
.source "ISatelliteCommunicationAccessStateCallback.java"

# interfaces
.implements Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAccessAllowedStateChanged:I = 0x1

.field static final blacklist TRANSACTION_onAccessConfigurationChanged:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "android.telephony.satellite.ISatelliteCommunicationAccessStateCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;
    .registers 3

    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_4
    const-string v0, "android.telephony.satellite.ISatelliteCommunicationAccessStateCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;

    if-eqz v1, :cond_13

    .line 64
    check-cast v0, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;

    return-object v0

    .line 66
    :cond_13
    new-instance v0, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 75
    packed-switch p0, :pswitch_data_e

    .line 87
    const/4 p0, 0x0

    return-object p0

    .line 83
    :pswitch_5
    const-string/jumbo p0, "onAccessConfigurationChanged"

    return-object p0

    .line 79
    :pswitch_9
    const-string/jumbo p0, "onAccessAllowedStateChanged"

    return-object p0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 70
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 94
    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    nop

    .line 99
    const-string v0, "android.telephony.satellite.ISatelliteCommunicationAccessStateCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 100
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 103
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v1

    .line 106
    :cond_17
    packed-switch p1, :pswitch_data_3a

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 119
    :pswitch_1f
    sget-object p1, Landroid/telephony/satellite/SatelliteAccessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/SatelliteAccessConfiguration;

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub;->onAccessConfigurationChanged(Landroid/telephony/satellite/SatelliteAccessConfiguration;)V

    .line 122
    goto :goto_39

    .line 111
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub;->onAccessAllowedStateChanged(Z)V

    .line 114
    nop

    .line 129
    :goto_39
    return v1

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
