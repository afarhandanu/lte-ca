.class public Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;
.super Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;
.source "MbmsStreamingServiceBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 302
    invoke-super {p0}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist dispose(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    return-void
.end method

.method public whitelist getPlaybackUri(ILjava/lang/String;)Landroid/net/Uri;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    const/4 p1, 0x0

    return-object p1
.end method

.method public final greylist-max-o initialize(Landroid/telephony/mbms/IMbmsStreamingSessionCallback;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    if-eqz p1, :cond_1f

    .line 72
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 74
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IMbmsStreamingSessionCallback;II)V

    invoke-virtual {p0, v1, p2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->initialize(Landroid/telephony/mbms/MbmsStreamingSessionCallback;I)I

    move-result v1

    .line 107
    if-nez v1, :cond_1e

    .line 108
    invoke-interface {p1}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v2, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;

    invoke-direct {v2, p0, v0, p2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;II)V

    const/4 p2, 0x0

    invoke-interface {p1, v2, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 116
    :cond_1e
    return v1

    .line 69
    :cond_1f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist initialize(Landroid/telephony/mbms/MbmsStreamingSessionCallback;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onAppCallbackDied(II)V
    .registers 3

    .line 294
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    invoke-super {p0, p1, p2, p3, p4}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method

.method public whitelist requestUpdateStreamingServices(ILjava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    if-eqz p3, :cond_1f

    .line 172
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 174
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;

    invoke-direct {v1, p0, p3, v0, p1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IStreamingServiceCallback;II)V

    invoke-virtual {p0, p1, p2, v1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/StreamingServiceCallback;)I

    move-result p2

    .line 226
    if-nez p2, :cond_1e

    .line 227
    invoke-interface {p3}, Landroid/telephony/mbms/IStreamingServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    new-instance v1, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;II)V

    const/4 p1, 0x0

    invoke-interface {p3, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 235
    :cond_1e
    return p2

    .line 169
    :cond_1f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist startStreaming(ILjava/lang/String;Landroid/telephony/mbms/StreamingServiceCallback;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist stopStreaming(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    return-void
.end method
