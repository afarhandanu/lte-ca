.class public abstract Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;
.super Landroid/os/Binder;
.source "ICapabilityExchangeEventListener.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onPublishUpdated:I = 0x3

.field static final blacklist TRANSACTION_onRemoteCapabilityRequest:I = 0x4

.field static final blacklist TRANSACTION_onRequestPublishCapabilities:I = 0x1

.field static final blacklist TRANSACTION_onUnpublish:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.telephony.ims.aidl.ICapabilityExchangeEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    .registers 3

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "android.telephony.ims.aidl.ICapabilityExchangeEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 70
    packed-switch p0, :pswitch_data_16

    .line 90
    const/4 p0, 0x0

    return-object p0

    .line 86
    :pswitch_5
    const-string/jumbo p0, "onRemoteCapabilityRequest"

    return-object p0

    .line 82
    :pswitch_9
    const-string/jumbo p0, "onPublishUpdated"

    return-object p0

    .line 78
    :pswitch_d
    const-string/jumbo p0, "onUnpublish"

    return-object p0

    .line 74
    :pswitch_11
    const-string/jumbo p0, "onRequestPublishCapabilities"

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

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 223
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 97
    invoke-static {p1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 101
    nop

    .line 102
    const-string v0, "android.telephony.ims.aidl.ICapabilityExchangeEventListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 106
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v1

    .line 109
    :cond_17
    packed-switch p1, :pswitch_data_5a

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 135
    :pswitch_1f
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p3

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IOptionsRequestCallback;

    move-result-object p4

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V

    .line 142
    goto :goto_58

    .line 127
    :pswitch_3a
    sget-object p1, Landroid/telephony/ims/SipDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/SipDetails;

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->onPublishUpdated(Landroid/telephony/ims/SipDetails;)V

    .line 130
    goto :goto_58

    .line 121
    :pswitch_49
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->onUnpublish()V

    .line 122
    goto :goto_58

    .line 114
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->onRequestPublishCapabilities(I)V

    .line 117
    nop

    .line 149
    :goto_58
    return v1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_49
        :pswitch_3a
        :pswitch_1f
    .end packed-switch
.end method
