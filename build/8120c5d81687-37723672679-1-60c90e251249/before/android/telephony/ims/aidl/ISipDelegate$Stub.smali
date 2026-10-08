.class public abstract Landroid/telephony/ims/aidl/ISipDelegate$Stub;
.super Landroid/os/Binder;
.source "ISipDelegate.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISipDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISipDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ISipDelegate$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cleanupSession:I = 0x4

.field static final blacklist TRANSACTION_notifyMessageReceiveError:I = 0x3

.field static final blacklist TRANSACTION_notifyMessageReceived:I = 0x2

.field static final blacklist TRANSACTION_sendMessage:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.telephony.ims.aidl.ISipDelegate"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegate;
    .registers 3

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_4
    const-string v0, "android.telephony.ims.aidl.ISipDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/ims/aidl/ISipDelegate;

    if-eqz v1, :cond_13

    .line 56
    check-cast v0, Landroid/telephony/ims/aidl/ISipDelegate;

    return-object v0

    .line 58
    :cond_13
    new-instance v0, Landroid/telephony/ims/aidl/ISipDelegate$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/ISipDelegate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 67
    packed-switch p0, :pswitch_data_14

    .line 87
    const/4 p0, 0x0

    return-object p0

    .line 83
    :pswitch_5
    const-string p0, "cleanupSession"

    return-object p0

    .line 79
    :pswitch_8
    const-string/jumbo p0, "notifyMessageReceiveError"

    return-object p0

    .line 75
    :pswitch_c
    const-string/jumbo p0, "notifyMessageReceived"

    return-object p0

    .line 71
    :pswitch_10
    const-string/jumbo p0, "sendMessage"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 224
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 94
    invoke-static {p1}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.telephony.ims.aidl.ISipDelegate"

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
    packed-switch p1, :pswitch_data_58

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 139
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->cleanupSession(Ljava/lang/String;)V

    .line 142
    goto :goto_57

    .line 129
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->notifyMessageReceiveError(Ljava/lang/String;I)V

    .line 134
    goto :goto_57

    .line 121
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->notifyMessageReceived(Ljava/lang/String;)V

    .line 124
    goto :goto_57

    .line 111
    :pswitch_44
    sget-object p1, Landroid/telephony/ims/SipMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/SipMessage;

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->sendMessage(Landroid/telephony/ims/SipMessage;J)V

    .line 116
    nop

    .line 149
    :goto_57
    return v1

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_44
        :pswitch_39
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
