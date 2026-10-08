.class Landroid/telephony/ims/aidl/ISipTransport$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISipTransport.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISipTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISipTransport$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Landroid/telephony/ims/aidl/ISipTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 131
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/telephony/ims/aidl/ISipTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/ISipTransport$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 144
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.ISipTransport"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 147
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 148
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 149
    iget-object p1, p0, Landroid/telephony/ims/aidl/ISipTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p1, p3, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_26

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    nop

    .line 154
    return-void

    .line 152
    :catchall_26
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    throw p1
.end method

.method public blacklist destroySipDelegate(Landroid/telephony/ims/aidl/ISipDelegate;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/ISipTransport$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 159
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.ISipTransport"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 161
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object p1, p0, Landroid/telephony/ims/aidl/ISipTransport$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    nop

    .line 167
    return-void

    .line 165
    :catchall_20
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    throw p1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 138
    const-string v0, "android.telephony.ims.aidl.ISipTransport"

    return-object v0
.end method
