.class public Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;
.super Ljava/lang/Object;
.source "RcsSubscribeResponseAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;


# instance fields
.field private final blacklist mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    .line 42
    return-void
.end method

.method private blacklist getTerminatedReasonList(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactTerminatedReason;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    if-eqz p1, :cond_28

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 114
    new-instance v2, Landroid/telephony/ims/RcsContactTerminatedReason;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/RcsContactTerminatedReason;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 116
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    goto :goto_b

    .line 119
    :cond_28
    return-object v0
.end method


# virtual methods
.method public whitelist onCommandError(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 47
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onCommandError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 50
    nop

    .line 51
    return-void

    .line 48
    :catch_7
    move-exception p1

    .line 49
    new-instance v0, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public whitelist onNetworkResponse(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    new-instance v1, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    .line 59
    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object p1

    .line 57
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 63
    nop

    .line 64
    return-void

    .line 61
    :catch_15
    move-exception p1

    .line 62
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public whitelist onNetworkResponse(ILjava/lang/String;ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    new-instance v1, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    .line 73
    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object p1

    .line 71
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    .line 78
    nop

    .line 79
    return-void

    .line 76
    :catch_19
    move-exception p1

    .line 77
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public whitelist onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 84
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 87
    nop

    .line 88
    return-void

    .line 85
    :catch_7
    move-exception p1

    .line 86
    new-instance v0, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public whitelist onNotifyCapabilitiesUpdate(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 93
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onNotifyCapabilitiesUpdate(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 96
    nop

    .line 97
    return-void

    .line 94
    :catch_7
    move-exception p1

    .line 95
    new-instance v0, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public whitelist onResourceTerminated(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 103
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-direct {p0, p1}, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->getTerminatedReasonList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onResourceTerminated(Ljava/util/List;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 106
    nop

    .line 107
    return-void

    .line 104
    :catch_b
    move-exception p1

    .line 105
    new-instance v0, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public whitelist onTerminated(Ljava/lang/String;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 125
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onTerminated(Ljava/lang/String;J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 128
    nop

    .line 129
    return-void

    .line 126
    :catch_7
    move-exception p1

    .line 127
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method
