.class public abstract Landroid/telephony/satellite/stub/ISatelliteListener$Stub;
.super Landroid/os/Binder;
.source "ISatelliteListener.java"

# interfaces
.implements Landroid/telephony/satellite/stub/ISatelliteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/stub/ISatelliteListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/stub/ISatelliteListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onNtnSignalStrengthChanged:I = 0x5

.field static final blacklist TRANSACTION_onPendingDatagrams:I = 0x2

.field static final blacklist TRANSACTION_onRegistrationFailure:I = 0x8

.field static final blacklist TRANSACTION_onSatelliteCapabilitiesChanged:I = 0x6

.field static final blacklist TRANSACTION_onSatelliteDatagramReceived:I = 0x1

.field static final blacklist TRANSACTION_onSatelliteModemStateChanged:I = 0x4

.field static final blacklist TRANSACTION_onSatellitePositionChanged:I = 0x3

.field static final blacklist TRANSACTION_onSatelliteSupportedStateChanged:I = 0x7

.field static final blacklist TRANSACTION_onTerrestrialNetworkAvailableChanged:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 98
    const-string v0, "android.telephony.satellite.stub.ISatelliteListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatelliteListener;
    .registers 3

    .line 106
    if-nez p0, :cond_4

    .line 107
    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_4
    const-string v0, "android.telephony.satellite.stub.ISatelliteListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/satellite/stub/ISatelliteListener;

    if-eqz v1, :cond_13

    .line 111
    check-cast v0, Landroid/telephony/satellite/stub/ISatelliteListener;

    return-object v0

    .line 113
    :cond_13
    new-instance v0, Landroid/telephony/satellite/stub/ISatelliteListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 122
    packed-switch p0, :pswitch_data_2a

    .line 162
    const/4 p0, 0x0

    return-object p0

    .line 158
    :pswitch_5
    const-string/jumbo p0, "onTerrestrialNetworkAvailableChanged"

    return-object p0

    .line 154
    :pswitch_9
    const-string/jumbo p0, "onRegistrationFailure"

    return-object p0

    .line 150
    :pswitch_d
    const-string/jumbo p0, "onSatelliteSupportedStateChanged"

    return-object p0

    .line 146
    :pswitch_11
    const-string/jumbo p0, "onSatelliteCapabilitiesChanged"

    return-object p0

    .line 142
    :pswitch_15
    const-string/jumbo p0, "onNtnSignalStrengthChanged"

    return-object p0

    .line 138
    :pswitch_19
    const-string/jumbo p0, "onSatelliteModemStateChanged"

    return-object p0

    .line 134
    :pswitch_1d
    const-string/jumbo p0, "onSatellitePositionChanged"

    return-object p0

    .line 130
    :pswitch_21
    const-string/jumbo p0, "onPendingDatagrams"

    return-object p0

    .line 126
    :pswitch_25
    const-string/jumbo p0, "onSatelliteDatagramReceived"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 117
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 440
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 169
    invoke-static {p1}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 173
    nop

    .line 174
    const-string v0, "android.telephony.satellite.stub.ISatelliteListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 175
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 178
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return v1

    .line 181
    :cond_17
    packed-switch p1, :pswitch_data_90

    .line 256
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 249
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onTerrestrialNetworkAvailableChanged(Z)V

    .line 252
    goto :goto_8f

    .line 241
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onRegistrationFailure(I)V

    .line 244
    goto :goto_8f

    .line 233
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onSatelliteSupportedStateChanged(Z)V

    .line 236
    goto :goto_8f

    .line 225
    :pswitch_40
    sget-object p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/stub/SatelliteCapabilities;

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onSatelliteCapabilitiesChanged(Landroid/telephony/satellite/stub/SatelliteCapabilities;)V

    .line 228
    goto :goto_8f

    .line 217
    :pswitch_4f
    sget-object p1, Landroid/telephony/satellite/stub/NtnSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/stub/NtnSignalStrength;

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onNtnSignalStrengthChanged(Landroid/telephony/satellite/stub/NtnSignalStrength;)V

    .line 220
    goto :goto_8f

    .line 209
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onSatelliteModemStateChanged(I)V

    .line 212
    goto :goto_8f

    .line 201
    :pswitch_69
    sget-object p1, Landroid/telephony/satellite/stub/PointingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/stub/PointingInfo;

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onSatellitePositionChanged(Landroid/telephony/satellite/stub/PointingInfo;)V

    .line 204
    goto :goto_8f

    .line 195
    :pswitch_78
    invoke-virtual {p0}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onPendingDatagrams()V

    .line 196
    goto :goto_8f

    .line 186
    :pswitch_7c
    sget-object p1, Landroid/telephony/satellite/stub/SatelliteDatagram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/stub/SatelliteDatagram;

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, p1, p3}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->onSatelliteDatagramReceived(Landroid/telephony/satellite/stub/SatelliteDatagram;I)V

    .line 191
    nop

    .line 259
    :goto_8f
    return v1

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_78
        :pswitch_69
        :pswitch_5e
        :pswitch_4f
        :pswitch_40
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
