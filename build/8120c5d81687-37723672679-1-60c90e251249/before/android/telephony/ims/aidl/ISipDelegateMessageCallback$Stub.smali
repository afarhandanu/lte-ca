.class public abstract Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;
.super Landroid/os/Binder;
.source "ISipDelegateMessageCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onMessageReceived:I = 0x1

.field static final blacklist TRANSACTION_onMessageSendFailure:I = 0x3

.field static final blacklist TRANSACTION_onMessageSent:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.telephony.ims.aidl.ISipDelegateMessageCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    .registers 3

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_4
    const-string v0, "android.telephony.ims.aidl.ISipDelegateMessageCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    if-eqz v1, :cond_13

    .line 54
    check-cast v0, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    return-object v0

    .line 56
    :cond_13
    new-instance v0, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 65
    packed-switch p0, :pswitch_data_12

    .line 81
    const/4 p0, 0x0

    return-object p0

    .line 77
    :pswitch_5
    const-string/jumbo p0, "onMessageSendFailure"

    return-object p0

    .line 73
    :pswitch_9
    const-string/jumbo p0, "onMessageSent"

    return-object p0

    .line 69
    :pswitch_d
    const-string/jumbo p0, "onMessageReceived"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 194
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 88
    invoke-static {p1}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 92
    nop

    .line 93
    const-string v0, "android.telephony.ims.aidl.ISipDelegateMessageCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 100
    :cond_17
    packed-switch p1, :pswitch_data_4a

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 121
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->onMessageSendFailure(Ljava/lang/String;I)V

    .line 126
    goto :goto_48

    .line 113
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->onMessageSent(Ljava/lang/String;)V

    .line 116
    goto :goto_48

    .line 105
    :pswitch_39
    sget-object p1, Landroid/telephony/ims/SipMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/SipMessage;

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V

    .line 108
    nop

    .line 133
    :goto_48
    return v1

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_39
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
