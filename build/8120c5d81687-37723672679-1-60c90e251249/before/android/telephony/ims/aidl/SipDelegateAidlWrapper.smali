.class public Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
.super Ljava/lang/Object;
.source "SipDelegateAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/DelegateStateCallback;
.implements Landroid/telephony/ims/DelegateMessageCallback;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SipDelegateAW"


# instance fields
.field private volatile blacklist mDelegate:Landroid/telephony/ims/stub/SipDelegate;

.field private final blacklist mDelegateBinder:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

.field private final blacklist mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .registers 5

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;-><init>(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V

    iput-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegateBinder:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

    .line 115
    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 116
    iput-object p2, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    .line 117
    iput-object p3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    .line 118
    return-void
.end method

.method static synthetic blacklist lambda$notifyLocalMessageFailedToBeReceived$0(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;I)V
    .registers 3

    .line 218
    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/stub/SipDelegate;->notifyMessageReceiveError(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist notifyLocalMessageFailedToBeReceived(Landroid/telephony/ims/SipMessage;I)V
    .registers 6

    .line 215
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object p1

    .line 216
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    .line 217
    if-eqz v0, :cond_12

    .line 218
    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, p2}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 220
    :cond_12
    return-void
.end method


# virtual methods
.method public blacklist getDelegate()Landroid/telephony/ims/stub/SipDelegate;
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    return-object v0
.end method

.method public blacklist getDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegateBinder:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

    return-object v0
.end method

.method public blacklist getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    return-object v0
.end method

.method public whitelist onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .registers 3

    .line 186
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 189
    goto :goto_7

    .line 187
    :catch_6
    move-exception p1

    .line 190
    :goto_7
    return-void
.end method

.method public whitelist onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/stub/SipDelegate;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    .line 157
    if-nez p2, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    .line 159
    :cond_8
    :try_start_8
    iget-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegateBinder:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0, v1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onCreated(Landroid/telephony/ims/aidl/ISipDelegate;Ljava/util/List;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    .line 162
    goto :goto_16

    .line 160
    :catch_15
    move-exception p1

    .line 163
    :goto_16
    return-void
.end method

.method public whitelist onDestroyed(I)V
    .registers 3

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    .line 196
    :try_start_3
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onDestroyed(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 199
    goto :goto_a

    .line 197
    :catch_9
    move-exception p1

    .line 200
    :goto_a
    return-void
.end method

.method public whitelist onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V
    .registers 3

    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 171
    goto :goto_7

    .line 169
    :catch_6
    move-exception p1

    .line 172
    :goto_7
    return-void
.end method

.method public blacklist onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .registers 3

    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 180
    goto :goto_7

    .line 178
    :catch_6
    move-exception p1

    .line 181
    :goto_7
    return-void
.end method

.method public whitelist onMessageReceived(Landroid/telephony/ims/SipMessage;)V
    .registers 3

    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 132
    goto :goto_f

    .line 124
    :catch_6
    move-exception v0

    .line 127
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    .line 128
    if-eqz v0, :cond_f

    .line 129
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->notifyLocalMessageFailedToBeReceived(Landroid/telephony/ims/SipMessage;I)V

    .line 133
    :cond_f
    :goto_f
    return-void
.end method

.method public whitelist onMessageSendFailure(Ljava/lang/String;I)V
    .registers 4

    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 150
    goto :goto_7

    .line 148
    :catch_6
    move-exception p1

    .line 151
    :goto_7
    return-void
.end method

.method public whitelist onMessageSent(Ljava/lang/String;)V
    .registers 3

    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;->onMessageSent(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 141
    goto :goto_7

    .line 139
    :catch_6
    move-exception p1

    .line 142
    :goto_7
    return-void
.end method
