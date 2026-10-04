.class public Landroid/telephony/ims/SipDelegateManager;
.super Ljava/lang/Object;
.source "SipDelegateManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/SipDelegateManager$SipDelegateDestroyReason;,
        Landroid/telephony/ims/SipDelegateManager$DeniedReason;,
        Landroid/telephony/ims/SipDelegateManager$MessageFailureReason;
    }
.end annotation


# static fields
.field public static final whitelist DENIED_REASON_INVALID:I = 0x4

.field public static final whitelist DENIED_REASON_IN_USE_BY_ANOTHER_DELEGATE:I = 0x1

.field public static final whitelist DENIED_REASON_NOT_ALLOWED:I = 0x2

.field public static final whitelist DENIED_REASON_SINGLE_REGISTRATION_NOT_ALLOWED:I = 0x3

.field public static final whitelist DENIED_REASON_UNKNOWN:I = 0x0

.field public static final whitelist MESSAGE_FAILURE_REASON_DELEGATE_CLOSED:I = 0x2

.field public static final whitelist MESSAGE_FAILURE_REASON_DELEGATE_DEAD:I = 0x1

.field public static final whitelist MESSAGE_FAILURE_REASON_INTERNAL_DELEGATE_STATE_TRANSITION:I = 0xb

.field public static final whitelist MESSAGE_FAILURE_REASON_INVALID_BODY_CONTENT:I = 0x5

.field public static final whitelist MESSAGE_FAILURE_REASON_INVALID_FEATURE_TAG:I = 0x6

.field public static final whitelist MESSAGE_FAILURE_REASON_INVALID_HEADER_FIELDS:I = 0x4

.field public static final whitelist MESSAGE_FAILURE_REASON_INVALID_START_LINE:I = 0x3

.field public static final whitelist MESSAGE_FAILURE_REASON_NETWORK_NOT_AVAILABLE:I = 0x8

.field public static final whitelist MESSAGE_FAILURE_REASON_NOT_REGISTERED:I = 0x9

.field public static final whitelist MESSAGE_FAILURE_REASON_STALE_IMS_CONFIGURATION:I = 0xa

.field public static final blacklist MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MESSAGE_FAILURE_REASON_TAG_NOT_ENABLED_FOR_DELEGATE:I = 0x7

.field public static final whitelist MESSAGE_FAILURE_REASON_UNKNOWN:I = 0x0

.field public static final whitelist SIP_DELEGATE_DESTROY_REASON_REQUESTED_BY_APP:I = 0x2

.field public static final whitelist SIP_DELEGATE_DESTROY_REASON_SERVICE_DEAD:I = 0x1

.field public static final whitelist SIP_DELEGATE_DESTROY_REASON_SUBSCRIPTION_TORN_DOWN:I = 0x4

.field public static final whitelist SIP_DELEGATE_DESTROY_REASON_UNKNOWN:I = 0x0

.field public static final whitelist SIP_DELEGATE_DESTROY_REASON_USER_DISABLED_RCS:I = 0x3


# instance fields
.field private final blacklist mBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSubId:I

.field private final blacklist mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    .line 179
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_UNKNOWN"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_DELEGATE_DEAD"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_DELEGATE_CLOSED"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_INVALID_HEADER_FIELDS"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_INVALID_BODY_CONTENT"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_INVALID_FEATURE_TAG"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    .line 192
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 191
    const-string v3, "MESSAGE_FAILURE_REASON_TAG_NOT_ENABLED_FOR_DELEGATE"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_NETWORK_NOT_AVAILABLE"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_NOT_REGISTERED"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_STALE_IMS_CONFIGURATION"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 200
    const-string v2, "MESSAGE_FAILURE_REASON_INTERNAL_DELEGATE_STATE_TRANSITION"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/telephony/BinderCacheManager;Landroid/telephony/BinderCacheManager;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;",
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;)V"
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Landroid/telephony/ims/SipDelegateManager;->mContext:Landroid/content/Context;

    .line 300
    iput p2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    .line 301
    iput-object p3, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 302
    iput-object p4, p0, Landroid/telephony/ims/SipDelegateManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    .line 303
    return-void
.end method


# virtual methods
.method public whitelist createSipDelegate(Landroid/telephony/ims/DelegateRequest;Ljava/util/concurrent/Executor;Landroid/telephony/ims/stub/DelegateConnectionStateCallback;Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 367
    const-string v0, "The DelegateRequest must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 368
    const-string v0, "The Executor must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 369
    const-string v0, "The DelegateConnectionStateCallback must not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    const-string v0, "The DelegateConnectionMessageCallback must not be null."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    const/4 v1, 0x1

    :try_start_15
    new-instance v0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-direct {v0, p2, p3, p4}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/stub/DelegateConnectionStateCallback;Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;)V

    .line 374
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 375
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda1;

    invoke-direct {p3, v0}, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V

    .line 374
    invoke-virtual {p2, v0, p3}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/telephony/ims/aidl/IImsRcsController;

    .line 376
    if-eqz v2, :cond_43

    .line 380
    iget v3, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    iget-object p2, p0, Landroid/telephony/ims/SipDelegateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 381
    invoke-virtual {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getMessageCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    move-result-object v7

    .line 380
    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Landroid/telephony/ims/aidl/IImsRcsController;->createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Ljava/lang/String;Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    .line 387
    nop

    .line 388
    return-void

    .line 377
    :cond_43
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Telephony server is down"

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_4b
    .catch Landroid/os/ServiceSpecificException; {:try_start_15 .. :try_end_4b} :catch_57
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_4b} :catch_4b

    .line 384
    :catch_4b
    move-exception v0

    move-object p1, v0

    .line 385
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 382
    :catch_57
    move-exception v0

    move-object p1, v0

    .line 383
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p3

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p2, p3, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public whitelist destroySipDelegate(Landroid/telephony/ims/SipDelegateConnection;I)V
    .registers 6

    .line 401
    const-string v0, "SipDelegateConnection can not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 402
    instance-of v0, p1, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    if-eqz v0, :cond_2a

    .line 403
    check-cast p1, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    .line 406
    :try_start_b
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/IImsRcsController;

    .line 407
    iget v1, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Landroid/telephony/ims/aidl/IImsRcsController;->destroySipDelegate(ILandroid/telephony/ims/aidl/ISipDelegate;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1c} :catch_1d

    .line 417
    goto :goto_28

    .line 408
    :catch_1d
    move-exception p2

    .line 412
    :try_start_1e
    invoke-virtual {p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;->onDestroyed(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_26} :catch_27

    .line 416
    goto :goto_28

    .line 414
    :catch_27
    move-exception p1

    .line 418
    :goto_28
    nop

    .line 422
    return-void

    .line 419
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown SipDelegateConnection implementation passed into this method"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist isSupported()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v1}, Landroid/telephony/BinderCacheManager;->getBinder()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/IImsRcsController;

    .line 325
    if-eqz v1, :cond_12

    .line 329
    iget v2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController;->isSipDelegateSupported(I)Z

    move-result v0

    return v0

    .line 326
    :cond_12
    new-instance v1, Landroid/telephony/ims/ImsException;

    const-string v2, "Telephony server is down"

    invoke-direct {v1, v2, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_1a
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1a} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1a

    .line 332
    :catch_1a
    move-exception v1

    .line 333
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 330
    :catch_25
    move-exception v0

    .line 331
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 477
    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 478
    const-string v0, "Must include a non-null Executor."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 480
    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsStateCallback;->init(Ljava/util/concurrent/Executor;)V

    .line 481
    iget-object p1, p0, Landroid/telephony/ims/SipDelegateManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsStateCallback;)V

    invoke-virtual {p1, p2, v0}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/ITelephony;

    .line 482
    const/4 v0, 0x1

    if-eqz p1, :cond_4a

    .line 488
    :try_start_20
    iget v1, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    .line 490
    invoke-virtual {p2}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object p2

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 488
    const/4 v3, 0x2

    invoke-interface {p1, v1, v3, p2, v2}, Lcom/android/internal/telephony/ITelephony;->registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_30} :catch_3d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_30} :catch_32
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_30} :catch_32

    .line 495
    nop

    .line 496
    return-void

    .line 493
    :catch_32
    move-exception p1

    .line 494
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 491
    :catch_3d
    move-exception p1

    .line 492
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p2, v0, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 483
    :cond_4a
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Telephony server is down"

    invoke-direct {p1, p2, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public whitelist registerSipDialogStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/SipDialogStateCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 534
    const-string v0, "Must include a non-null SipDialogStateCallback."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 535
    const-string v0, "Must include a non-null Executor."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    invoke-virtual {p2, p1}, Landroid/telephony/ims/SipDialogStateCallback;->attachExecutor(Ljava/util/concurrent/Executor;)V

    .line 539
    const/4 p1, 0x1

    :try_start_e
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 540
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/SipDialogStateCallback;)V

    .line 539
    invoke-virtual {v0, p2, v1}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/IImsRcsController;

    .line 541
    if-eqz v0, :cond_2b

    .line 545
    iget v1, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/SipDialogStateCallback;->getCallbackBinder()Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Landroid/telephony/ims/aidl/IImsRcsController;->registerSipDialogStateCallback(ILcom/android/internal/telephony/ISipDialogStateCallback;)V

    .line 552
    nop

    .line 553
    return-void

    .line 542
    :cond_2b
    new-instance p2, Landroid/telephony/ims/ImsException;

    const-string v0, "Telephony server is down"

    invoke-direct {p2, v0, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_33
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_33} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_33} :catch_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_33} :catch_33

    .line 550
    :catch_33
    move-exception p1

    .line 551
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 548
    :catch_3e
    move-exception p2

    .line 549
    new-instance v0, Landroid/telephony/ims/ImsException;

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 546
    :catch_49
    move-exception p1

    .line 547
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p2, v0, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public whitelist triggerFullNetworkRegistration(Landroid/telephony/ims/SipDelegateConnection;ILjava/lang/String;)V
    .registers 6

    .line 439
    const-string v0, "SipDelegateConnection can not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    instance-of v0, p1, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    if-eqz v0, :cond_20

    .line 441
    check-cast p1, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    .line 443
    :try_start_b
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0}, Landroid/telephony/BinderCacheManager;->getBinder()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/IImsRcsController;

    .line 444
    iget v1, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsRcsController;->triggerNetworkRegistration(ILandroid/telephony/ims/aidl/ISipDelegate;ILjava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1c} :catch_1d

    .line 449
    goto :goto_1e

    .line 446
    :catch_1d
    move-exception p1

    .line 450
    :goto_1e
    nop

    .line 454
    return-void

    .line 451
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown SipDelegateConnection implementation passed into this method"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V
    .registers 3

    .line 504
    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 509
    if-eqz v0, :cond_19

    .line 510
    :try_start_f
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_19

    .line 512
    :catch_17
    move-exception p1

    goto :goto_1a

    .line 514
    :cond_19
    :goto_19
    nop

    .line 515
    :goto_1a
    return-void
.end method

.method public whitelist unregisterSipDialogStateCallback(Landroid/telephony/ims/SipDialogStateCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 569
    const-string v0, "Must include a non-null SipDialogStateCallback."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 571
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/IImsRcsController;

    .line 573
    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 577
    :try_start_10
    iget v2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/SipDialogStateCallback;->getCallbackBinder()Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterSipDialogStateCallback(ILcom/android/internal/telephony/ISipDialogStateCallback;)V

    .line 584
    nop

    .line 585
    return-void

    .line 580
    :catch_1b
    move-exception p1

    goto :goto_30

    .line 574
    :cond_1d
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string v0, "Telephony server is down"

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_25
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_25} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_25} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_25} :catch_25

    .line 582
    :catch_25
    move-exception p1

    .line 583
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :goto_30
    new-instance v0, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 578
    :catch_3a
    move-exception p1

    .line 579
    new-instance v0, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v0, v1, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
