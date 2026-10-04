.class public abstract Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;
.super Landroid/os/Binder;
.source "ISubscribeResponseCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISubscribeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCommandError:I = 0x1

.field static final blacklist TRANSACTION_onNetworkResponse:I = 0x2

.field static final blacklist TRANSACTION_onNotifyCapabilitiesUpdate:I = 0x3

.field static final blacklist TRANSACTION_onResourceTerminated:I = 0x4

.field static final blacklist TRANSACTION_onTerminated:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.telephony.ims.aidl.ISubscribeResponseCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    .registers 3

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_4
    const-string v0, "android.telephony.ims.aidl.ISubscribeResponseCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    if-eqz v1, :cond_13

    .line 60
    check-cast v0, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    return-object v0

    .line 62
    :cond_13
    new-instance v0, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 71
    packed-switch p0, :pswitch_data_1a

    .line 95
    const/4 p0, 0x0

    return-object p0

    .line 91
    :pswitch_5
    const-string/jumbo p0, "onTerminated"

    return-object p0

    .line 87
    :pswitch_9
    const-string/jumbo p0, "onResourceTerminated"

    return-object p0

    .line 83
    :pswitch_d
    const-string/jumbo p0, "onNotifyCapabilitiesUpdate"

    return-object p0

    .line 79
    :pswitch_11
    const-string/jumbo p0, "onNetworkResponse"

    return-object p0

    .line 75
    :pswitch_15
    const-string/jumbo p0, "onCommandError"

    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
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

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 250
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 102
    invoke-static {p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 106
    nop

    .line 107
    const-string v0, "android.telephony.ims.aidl.ISubscribeResponseCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 114
    :cond_17
    packed-switch p1, :pswitch_data_62

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 151
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onTerminated(Ljava/lang/String;J)V

    .line 156
    goto :goto_60

    .line 143
    :pswitch_2e
    sget-object p1, Landroid/telephony/ims/RcsContactTerminatedReason;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onResourceTerminated(Ljava/util/List;)V

    .line 146
    goto :goto_60

    .line 135
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onNotifyCapabilitiesUpdate(Ljava/util/List;)V

    .line 138
    goto :goto_60

    .line 127
    :pswitch_46
    sget-object p1, Landroid/telephony/ims/SipDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/SipDetails;

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V

    .line 130
    goto :goto_60

    .line 119
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onCommandError(I)V

    .line 122
    nop

    .line 163
    :goto_60
    return v1

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_55
        :pswitch_46
        :pswitch_3b
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
