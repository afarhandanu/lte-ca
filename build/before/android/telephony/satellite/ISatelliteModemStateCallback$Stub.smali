.class public abstract Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;
.super Landroid/os/Binder;
.source "ISatelliteModemStateCallback.java"

# interfaces
.implements Landroid/telephony/satellite/ISatelliteModemStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/ISatelliteModemStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onEmergencyModeChanged:I = 0x2

.field static final blacklist TRANSACTION_onRegistrationFailure:I = 0x3

.field static final blacklist TRANSACTION_onSatelliteModemStateChanged:I = 0x1

.field static final blacklist TRANSACTION_onTerrestrialNetworkAvailableChanged:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.telephony.satellite.ISatelliteModemStateCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteModemStateCallback;
    .registers 3

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_4
    const-string v0, "android.telephony.satellite.ISatelliteModemStateCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/satellite/ISatelliteModemStateCallback;

    if-eqz v1, :cond_13

    .line 77
    check-cast v0, Landroid/telephony/satellite/ISatelliteModemStateCallback;

    return-object v0

    .line 79
    :cond_13
    new-instance v0, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 88
    packed-switch p0, :pswitch_data_16

    .line 108
    const/4 p0, 0x0

    return-object p0

    .line 104
    :pswitch_5
    const-string/jumbo p0, "onTerrestrialNetworkAvailableChanged"

    return-object p0

    .line 100
    :pswitch_9
    const-string/jumbo p0, "onRegistrationFailure"

    return-object p0

    .line 96
    :pswitch_d
    const-string/jumbo p0, "onEmergencyModeChanged"

    return-object p0

    .line 92
    :pswitch_11
    const-string/jumbo p0, "onSatelliteModemStateChanged"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 260
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 115
    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 119
    nop

    .line 120
    const-string v0, "android.telephony.satellite.ISatelliteModemStateCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 124
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v1

    .line 127
    :cond_17
    packed-switch p1, :pswitch_data_4c

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 156
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->onTerrestrialNetworkAvailableChanged(Z)V

    .line 159
    goto :goto_4b

    .line 148
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->onRegistrationFailure(I)V

    .line 151
    goto :goto_4b

    .line 140
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->onEmergencyModeChanged(Z)V

    .line 143
    goto :goto_4b

    .line 132
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->onSatelliteModemStateChanged(I)V

    .line 135
    nop

    .line 166
    :goto_4b
    return v1

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_40
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
