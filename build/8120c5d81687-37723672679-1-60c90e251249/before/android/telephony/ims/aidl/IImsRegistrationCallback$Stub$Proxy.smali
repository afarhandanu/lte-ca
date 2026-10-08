.class Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsRegistrationCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRegistrationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;
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

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 217
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 220
    iget-object v0, p0, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 224
    const-string v0, "android.telephony.ims.aidl.IImsRegistrationCallback"

    return-object v0
.end method

.method public blacklist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 254
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 255
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 256
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    nop

    .line 263
    return-void

    .line 261
    :catchall_24
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    throw p1
.end method

.method public blacklist onDeregisteredWithDetails(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 283
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 285
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 288
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x5

    invoke-interface {p1, p4, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    nop

    .line 293
    return-void

    .line 291
    :catchall_27
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    throw p1
.end method

.method public blacklist onDeregisteredWithTime(Landroid/telephony/ims/ImsReasonInfo;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 268
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 270
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x4

    invoke-interface {p1, p4, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    nop

    .line 278
    return-void

    .line 276
    :catchall_27
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    throw p1
.end method

.method public blacklist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 230
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 232
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 236
    nop

    .line 237
    return-void

    .line 235
    :catchall_1d
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 236
    throw p1
.end method

.method public blacklist onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 242
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 244
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    nop

    .line 249
    return-void

    .line 247
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    throw p1
.end method

.method public blacklist onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 311
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 312
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 313
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    nop

    .line 318
    return-void

    .line 316
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    throw p1
.end method

.method public blacklist onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 298
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 301
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 305
    nop

    .line 306
    return-void

    .line 304
    :catchall_21
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 305
    throw p1
.end method
