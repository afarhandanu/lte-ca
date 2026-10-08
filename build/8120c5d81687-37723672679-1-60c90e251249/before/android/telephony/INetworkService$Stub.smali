.class public abstract Landroid/telephony/INetworkService$Stub;
.super Landroid/os/Binder;
.source "INetworkService.java"

# interfaces
.implements Landroid/telephony/INetworkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/INetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/INetworkService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.telephony.INetworkService"

.field static final greylist-max-o TRANSACTION_createNetworkServiceProvider:I = 0x1

.field static final blacklist TRANSACTION_registerForNetworkRegistrationInfoChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_removeNetworkServiceProvider:I = 0x2

.field static final blacklist TRANSACTION_requestNetworkRegistrationInfo:I = 0x3

.field static final blacklist TRANSACTION_unregisterForNetworkRegistrationInfoChanged:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.telephony.INetworkService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/INetworkService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/telephony/INetworkService;
    .registers 3

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_4
    const-string v0, "android.telephony.INetworkService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/telephony/INetworkService;

    if-eqz v1, :cond_13

    .line 56
    check-cast v0, Landroid/telephony/INetworkService;

    return-object v0

    .line 58
    :cond_13
    new-instance v0, Landroid/telephony/INetworkService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/telephony/INetworkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 67
    packed-switch p0, :pswitch_data_18

    .line 91
    const/4 p0, 0x0

    return-object p0

    .line 87
    :pswitch_5
    const-string/jumbo p0, "unregisterForNetworkRegistrationInfoChanged"

    return-object p0

    .line 83
    :pswitch_9
    const-string/jumbo p0, "registerForNetworkRegistrationInfoChanged"

    return-object p0

    .line 79
    :pswitch_d
    const-string/jumbo p0, "requestNetworkRegistrationInfo"

    return-object p0

    .line 75
    :pswitch_11
    const-string/jumbo p0, "removeNetworkServiceProvider"

    return-object p0

    .line 71
    :pswitch_15
    const-string p0, "createNetworkServiceProvider"

    return-object p0

    :pswitch_data_18
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

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 257
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 98
    invoke-static {p1}, Landroid/telephony/INetworkService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 102
    nop

    .line 103
    const-string v0, "android.telephony.INetworkService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 107
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 110
    :cond_17
    packed-switch p1, :pswitch_data_74

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 153
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/INetworkServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/INetworkServiceCallback;

    move-result-object p3

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, p1, p3}, Landroid/telephony/INetworkService$Stub;->unregisterForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V

    .line 158
    goto :goto_72

    .line 143
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/INetworkServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/INetworkServiceCallback;

    move-result-object p3

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, p1, p3}, Landroid/telephony/INetworkService$Stub;->registerForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V

    .line 148
    goto :goto_72

    .line 131
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/INetworkServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/INetworkServiceCallback;

    move-result-object p4

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/INetworkService$Stub;->requestNetworkRegistrationInfo(IILandroid/telephony/INetworkServiceCallback;)V

    .line 138
    goto :goto_72

    .line 123
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, p1}, Landroid/telephony/INetworkService$Stub;->removeNetworkServiceProvider(I)V

    .line 126
    goto :goto_72

    .line 115
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, p1}, Landroid/telephony/INetworkService$Stub;->createNetworkServiceProvider(I)V

    .line 118
    nop

    .line 165
    :goto_72
    return v1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_67
        :pswitch_5c
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
