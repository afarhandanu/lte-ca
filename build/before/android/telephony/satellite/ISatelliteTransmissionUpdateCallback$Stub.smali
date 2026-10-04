.class public abstract Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;
.super Landroid/os/Binder;
.source "ISatelliteTransmissionUpdateCallback.java"

# interfaces
.implements Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onReceiveDatagramStateChanged:I = 0x2

.field static final blacklist TRANSACTION_onSatellitePositionChanged:I = 0x3

.field static final blacklist TRANSACTION_onSendDatagramRequested:I = 0x4

.field static final blacklist TRANSACTION_onSendDatagramStateChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "android.telephony.satellite.ISatelliteTransmissionUpdateCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
    .registers 3

    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_4
    const-string v0, "android.telephony.satellite.ISatelliteTransmissionUpdateCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    if-eqz v1, :cond_13

    .line 82
    check-cast v0, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    return-object v0

    .line 84
    :cond_13
    new-instance v0, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 93
    packed-switch p0, :pswitch_data_16

    .line 113
    const/4 p0, 0x0

    return-object p0

    .line 109
    :pswitch_5
    const-string/jumbo p0, "onSendDatagramRequested"

    return-object p0

    .line 105
    :pswitch_9
    const-string/jumbo p0, "onSatellitePositionChanged"

    return-object p0

    .line 101
    :pswitch_d
    const-string/jumbo p0, "onReceiveDatagramStateChanged"

    return-object p0

    .line 97
    :pswitch_11
    const-string/jumbo p0, "onSendDatagramStateChanged"

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

    .line 88
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 285
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 120
    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 124
    nop

    .line 125
    const-string v0, "android.telephony.satellite.ISatelliteTransmissionUpdateCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 129
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 132
    :cond_17
    packed-switch p1, :pswitch_data_64

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 171
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->onSendDatagramRequested(I)V

    .line 174
    goto :goto_63

    .line 163
    :pswitch_2a
    sget-object p1, Landroid/telephony/satellite/PointingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/PointingInfo;

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->onSatellitePositionChanged(Landroid/telephony/satellite/PointingInfo;)V

    .line 166
    goto :goto_63

    .line 151
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->onReceiveDatagramStateChanged(III)V

    .line 158
    goto :goto_63

    .line 137
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->onSendDatagramStateChanged(IIII)V

    .line 146
    nop

    .line 181
    :goto_63
    return v1

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_39
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
