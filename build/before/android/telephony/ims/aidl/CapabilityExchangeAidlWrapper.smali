.class public Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;
.super Ljava/lang/Object;
.source "CapabilityExchangeAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/stub/CapabilityExchangeEventListener;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CapExchangeListener"


# instance fields
.field private final blacklist mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 95
    if-nez v0, :cond_5

    .line 96
    return-void

    .line 99
    :cond_5
    :try_start_5
    new-instance v1, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    .line 100
    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object p1

    .line 103
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_1c

    .line 108
    nop

    .line 109
    return-void

    .line 104
    :catch_1c
    move-exception p1

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onPublishUpdated exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CapExchangeListener"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Remote is not available"

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public whitelist onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 117
    if-nez v0, :cond_5

    .line 118
    return-void

    .line 121
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    .line 126
    nop

    .line 127
    return-void

    .line 122
    :catch_a
    move-exception p1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPublishUpdated exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CapExchangeListener"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string v0, "Remote is not available"

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public whitelist onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 137
    if-nez v0, :cond_5

    .line 138
    return-void

    .line 141
    :cond_5
    new-instance v1, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;

    invoke-direct {v1, p0, p3}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;-><init>(Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V

    .line 164
    :try_start_a
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, p3, v1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_14

    .line 170
    nop

    .line 171
    return-void

    .line 166
    :catch_14
    move-exception p1

    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Remote capability request exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CapExchangeListener"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Remote is not available"

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public whitelist onRequestPublishCapabilities(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 55
    if-nez v0, :cond_5

    .line 56
    return-void

    .line 59
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onRequestPublishCapabilities(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    .line 64
    nop

    .line 65
    return-void

    .line 60
    :catch_a
    move-exception p1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "request publish capabilities exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CapExchangeListener"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string v0, "Remote is not available"

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public whitelist onUnpublish()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 72
    if-nez v0, :cond_5

    .line 73
    return-void

    .line 76
    :cond_5
    :try_start_5
    invoke-interface {v0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onUnpublish()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    .line 81
    nop

    .line 82
    return-void

    .line 77
    :catch_a
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unpublish exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapExchangeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Landroid/telephony/ims/ImsException;

    const-string v1, "Remote is not available"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
