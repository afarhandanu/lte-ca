.class public Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.super Ljava/lang/Object;
.source "ImsRegistrationImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsRegistrationImplBase$ImsDeregistrationReason;,
        Landroid/telephony/ims/stub/ImsRegistrationImplBase$ImsRegistrationTech;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_THROTTLE_SEC:I = 0x0

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsRegistrationImplBase"

.field public static final blacklist REASON_ALLOWED_NETWORK_TYPES_CHANGED:I = 0x3

.field public static final blacklist REASON_HANDOVER_FAILED:I = 0x6

.field public static final blacklist REASON_NON_IMS_CAPABLE_NETWORK:I = 0x4

.field public static final blacklist REASON_RADIO_POWER_OFF:I = 0x5

.field public static final blacklist REASON_SIM_REFRESH:I = 0x2

.field public static final blacklist REASON_SIM_REMOVED:I = 0x1

.field public static final blacklist REASON_UNKNOWN:I = 0x0

.field public static final blacklist REASON_VOPS_NOT_SUPPORTED:I = 0x7

.field private static final greylist-max-o REGISTRATION_STATE_UNKNOWN:I = -0x1

.field public static final whitelist REGISTRATION_TECH_3G:I = 0x4

.field public static final whitelist REGISTRATION_TECH_CROSS_SIM:I = 0x2

.field public static final whitelist REGISTRATION_TECH_IWLAN:I = 0x1

.field public static final whitelist REGISTRATION_TECH_LTE:I = 0x0

.field public static final blacklist REGISTRATION_TECH_MAX:I = 0x5

.field public static final whitelist REGISTRATION_TECH_NONE:I = -0x1

.field public static final whitelist REGISTRATION_TECH_NR:I = 0x3


# instance fields
.field private final greylist-max-o mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

.field private final blacklist mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mEmergencyLastDisconnectRadioTech:I

.field private blacklist mEmergencyLastDisconnectSuggestedAction:I

.field private blacklist mEmergencyRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

.field private blacklist mEmergencyRegistrationState:I

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mLastDisconnectRadioTech:I

.field private blacklist mLastDisconnectSuggestedAction:I

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private blacklist mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

.field private greylist-max-o mRegistrationState:I

.field private blacklist mUris:[Landroid/net/Uri;

.field private blacklist mUrisSet:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$GS2KoBJFiCmjK-J6dQd7d0dVWLg(Landroid/telephony/ims/stub/ImsRegistrationImplBase;[Landroid/net/Uri;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->lambda$onSubscriberAssociatedUriChanged$6([Landroid/net/Uri;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegistrationAttributes(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Landroid/telephony/ims/ImsRegistrationAttributes;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddEmergencyRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->addEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveEmergencyRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->removeEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 337
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 339
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 341
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    .line 346
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 347
    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationState:I

    .line 349
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 350
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 352
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    .line 353
    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    .line 354
    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

    .line 355
    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    .line 359
    new-array v0, v1, [Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 360
    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 204
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 337
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 339
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 341
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    .line 346
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 347
    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationState:I

    .line 349
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 350
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 352
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    .line 353
    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    .line 354
    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

    .line 355
    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    .line 359
    new-array v0, v1, [Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 360
    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 216
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 217
    return-void
.end method

.method private blacklist addEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    .line 389
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;Z)V

    .line 390
    return-void
.end method

.method private greylist-max-o addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;Z)V

    .line 376
    return-void
.end method

.method private blacklist broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;Z)V"
        }
    .end annotation

    .line 832
    if-eqz p2, :cond_f

    .line 833
    iget-object p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter p2

    .line 834
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 835
    monitor-exit p2

    goto :goto_18

    :catchall_c
    move-exception p1

    monitor-exit p2
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1

    .line 837
    :cond_f
    iget-object p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter p2

    .line 838
    :try_start_12
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 839
    monitor-exit p2

    .line 841
    :goto_18
    return-void

    .line 839
    :catchall_19
    move-exception p1

    monitor-exit p2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private blacklist isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z
    .registers 3

    .line 815
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 816
    return v0

    .line 818
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getAttributeFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method static synthetic blacklist lambda$onDeregistered$2(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 4

    .line 623
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 626
    goto :goto_1e

    .line 624
    :catch_4
    move-exception p0

    .line 625
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "onDeregistered() - Skipping callback."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsRegistrationImplBase"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :goto_1e
    return-void
.end method

.method static synthetic blacklist lambda$onDeregistered$3(ZLandroid/telephony/ims/ImsReasonInfo;IIILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 6

    .line 676
    if-eqz p0, :cond_6

    .line 677
    :try_start_2
    invoke-interface {p5, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    goto :goto_9

    .line 679
    :cond_6
    invoke-interface {p5, p1, p2, p3, p4}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregisteredWithTime(Landroid/telephony/ims/ImsReasonInfo;III)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_a

    .line 684
    :goto_9
    goto :goto_24

    .line 682
    :catch_a
    move-exception p0

    .line 683
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "onDeregistered() - Skipping callback."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsRegistrationImplBase"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_24
    return-void
.end method

.method static synthetic blacklist lambda$onDeregistered$4(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 5

    .line 744
    :try_start_0
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregisteredWithDetails(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 747
    goto :goto_1e

    .line 745
    :catch_4
    move-exception p0

    .line 746
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "onDeregistered() - Skipping callback."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsRegistrationImplBase"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :goto_1e
    return-void
.end method

.method static synthetic blacklist lambda$onRegistered$0(Landroid/telephony/ims/ImsRegistrationAttributes;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 2

    .line 490
    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 493
    goto :goto_1e

    .line 491
    :catch_4
    move-exception p0

    .line 492
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "onRegistered(int, Set) - Skipping callback."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsRegistrationImplBase"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_1e
    return-void
.end method

.method static synthetic blacklist lambda$onRegistering$1(Landroid/telephony/ims/ImsRegistrationAttributes;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 2

    .line 524
    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 527
    goto :goto_1e

    .line 525
    :catch_4
    move-exception p0

    .line 526
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "onRegistering(int, Set) - Skipping callback."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsRegistrationImplBase"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :goto_1e
    return-void
.end method

.method private synthetic blacklist lambda$onSubscriberAssociatedUriChanged$6([Landroid/net/Uri;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3

    .line 811
    invoke-direct {p0, p2, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onSubscriberAssociatedUriChanged(Landroid/telephony/ims/aidl/IImsRegistrationCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTechnologyChangeFailed$5(ILandroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3

    .line 790
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 793
    goto :goto_1e

    .line 791
    :catch_4
    move-exception p0

    .line 792
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "onTechnologyChangeFailed() - Skipping callback."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsRegistrationImplBase"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :goto_1e
    return-void
.end method

.method private blacklist onSubscriberAssociatedUriChanged(Landroid/telephony/ims/aidl/IImsRegistrationCallback;[Landroid/net/Uri;)V
    .registers 3

    .line 845
    :try_start_0
    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 848
    goto :goto_1e

    .line 846
    :catch_4
    move-exception p1

    .line 847
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "onSubscriberAssociatedUriChanged() - Skipping callback."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsRegistrationImplBase"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :goto_1e
    return-void
.end method

.method private blacklist removeEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3

    .line 393
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 394
    return-void
.end method

.method private greylist-max-o removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3

    .line 383
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 384
    return-void
.end method

.method private blacklist updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 927
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 928
    if-eqz p2, :cond_8

    :try_start_5
    iget v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationState:I

    goto :goto_a

    :cond_8
    iget v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 929
    :goto_a
    if-eqz p2, :cond_f

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    goto :goto_11

    .line 930
    :cond_f
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 931
    :goto_11
    if-eqz p2, :cond_16

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_18

    .line 932
    :cond_16
    iget-object v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 933
    :goto_18
    if-eqz p2, :cond_1d

    iget v4, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    goto :goto_1f

    .line 934
    :cond_1d
    iget v4, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    .line 935
    :goto_1f
    if-eqz p2, :cond_24

    iget p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    goto :goto_26

    .line 936
    :cond_24
    iget p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

    .line 937
    :goto_26
    iget-boolean v5, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 938
    iget-object v6, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 939
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_41

    .line 940
    packed-switch v1, :pswitch_data_44

    goto :goto_3b

    .line 950
    :pswitch_2f
    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 951
    goto :goto_3b

    .line 946
    :pswitch_33
    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 947
    goto :goto_3b

    .line 942
    :pswitch_37
    invoke-interface {p1, v3, v4, p2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 943
    nop

    .line 958
    :goto_3b
    if-eqz v5, :cond_40

    .line 959
    invoke-direct {p0, p1, v6}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onSubscriberAssociatedUriChanged(Landroid/telephony/ims/aidl/IImsRegistrationCallback;[Landroid/net/Uri;)V

    .line 961
    :cond_40
    return-void

    .line 939
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_37
        :pswitch_33
        :pswitch_2f
    .end packed-switch
.end method

.method private blacklist updateToDisconnectedEmergencyState(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 8

    .line 895
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 897
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 898
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 900
    new-instance v2, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    .line 901
    invoke-virtual {v2}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v2

    .line 900
    invoke-direct {p0, v2, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToEmergencyState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    .line 903
    if-eqz p1, :cond_1f

    .line 904
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 905
    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    .line 906
    iput p3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    goto :goto_2e

    .line 908
    :cond_1f
    const-string p1, "ImsRegistrationImplBase"

    const-string/jumbo p2, "updateToDisconnectedState: no ImsReasonInfo provided."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 911
    :goto_2e
    monitor-exit v0

    .line 912
    return-void

    .line 911
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw p1
.end method

.method private blacklist updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 8

    .line 874
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 876
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 877
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 879
    new-instance v2, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v2}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    .line 881
    if-eqz p1, :cond_1f

    .line 882
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 883
    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    .line 884
    iput p3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

    goto :goto_2e

    .line 886
    :cond_1f
    const-string p1, "ImsRegistrationImplBase"

    const-string/jumbo p2, "updateToDisconnectedState: no ImsReasonInfo provided."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 889
    :goto_2e
    monitor-exit v0

    .line 890
    return-void

    .line 889
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw p1
.end method

.method private blacklist updateToEmergencyState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V
    .registers 4

    .line 862
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 863
    :try_start_3
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 864
    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationState:I

    .line 865
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 866
    const/4 p1, 0x0

    iput p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    .line 867
    const/4 p1, -0x1

    iput p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    .line 868
    monitor-exit v0

    .line 869
    return-void

    .line 868
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method private blacklist updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V
    .registers 4

    .line 852
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_3
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 854
    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 855
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 856
    const/4 p1, 0x0

    iput p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    .line 857
    const/4 p1, -0x1

    iput p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

    .line 858
    monitor-exit v0

    .line 859
    return-void

    .line 858
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method


# virtual methods
.method public final blacklist clearRegistrationCache()V
    .registers 3

    .line 981
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 982
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 983
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 984
    monitor-exit v0

    .line 985
    return-void

    .line 984
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final greylist-max-o getBinder()Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 2

    .line 366
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0
.end method

.method public final whitelist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 551
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 552
    return-void
.end method

.method public final whitelist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 578
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    if-eqz v0, :cond_1c

    .line 579
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 580
    invoke-virtual {v1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 581
    invoke-virtual {v2}, Landroid/telephony/ims/ImsRegistrationAttributes;->getAttributeFlags()I

    move-result v2

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 582
    invoke-virtual {v3}, Landroid/telephony/ims/ImsRegistrationAttributes;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, p3, v1, v2, v3}, Landroid/telephony/ims/ImsRegistrationAttributes;-><init>(IIILjava/util/Set;)V

    goto :goto_25

    .line 583
    :cond_1c
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, p3}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    .line 584
    :goto_25
    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 585
    return-void
.end method

.method public final whitelist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 739
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 741
    if-eqz p1, :cond_6

    goto :goto_b

    :cond_6
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 742
    :goto_b
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    .line 749
    return-void
.end method

.method public final whitelist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 611
    invoke-direct {p0, p3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    .line 612
    invoke-virtual {p3}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result p3

    .line 613
    if-eqz v0, :cond_e

    .line 614
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToDisconnectedEmergencyState(Landroid/telephony/ims/ImsReasonInfo;II)V

    goto :goto_11

    .line 616
    :cond_e
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 619
    :goto_11
    if-eqz p1, :cond_14

    goto :goto_19

    :cond_14
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 621
    :goto_19
    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/ImsReasonInfo;II)V

    invoke-direct {p0, v1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    .line 628
    return-void
.end method

.method public final blacklist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/ims/ImsRegistrationAttributes;I)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 659
    if-ltz p4, :cond_27

    .line 664
    invoke-direct {p0, p3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v1

    .line 665
    invoke-virtual {p3}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result v4

    .line 666
    if-eqz v1, :cond_10

    .line 667
    invoke-direct {p0, p1, p2, v4}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToDisconnectedEmergencyState(Landroid/telephony/ims/ImsReasonInfo;II)V

    goto :goto_13

    .line 669
    :cond_10
    invoke-direct {p0, p1, p2, v4}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 672
    :goto_13
    if-eqz p1, :cond_16

    goto :goto_1b

    :cond_16
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    :goto_1b
    move-object v2, p1

    .line 674
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;

    move v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;-><init>(ZLandroid/telephony/ims/ImsReasonInfo;III)V

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    .line 686
    return-void

    .line 660
    :cond_27
    move v5, p4

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "throttlingTimeSec cannot be negative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 710
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V

    .line 712
    return-void
.end method

.method public final whitelist onRegistered(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 471
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 472
    return-void
.end method

.method public final whitelist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 482
    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    .line 483
    const/4 v1, 0x2

    if-eqz v0, :cond_b

    .line 484
    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToEmergencyState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    goto :goto_e

    .line 486
    :cond_b
    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    .line 488
    :goto_e
    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    invoke-direct {p0, v1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    .line 495
    return-void
.end method

.method public final whitelist onRegistering(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 505
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 506
    return-void
.end method

.method public final whitelist onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 516
    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    .line 517
    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 518
    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToEmergencyState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    goto :goto_e

    .line 520
    :cond_b
    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    .line 522
    :goto_e
    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    invoke-direct {p0, v1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    .line 529
    return-void
.end method

.method public final whitelist onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 807
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_3
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 809
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 810
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    .line 811
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;[Landroid/net/Uri;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    .line 812
    return-void

    .line 810
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public final whitelist onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 763
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    if-eqz v0, :cond_1c

    .line 764
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 765
    invoke-virtual {v1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 766
    invoke-virtual {v2}, Landroid/telephony/ims/ImsRegistrationAttributes;->getAttributeFlags()I

    move-result v2

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 767
    invoke-virtual {v3}, Landroid/telephony/ims/ImsRegistrationAttributes;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/telephony/ims/ImsRegistrationAttributes;-><init>(IIILjava/util/Set;)V

    goto :goto_25

    .line 768
    :cond_1c
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    .line 769
    :goto_25
    invoke-virtual {p0, p2, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onTechnologyChangeFailed(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 770
    return-void
.end method

.method public final whitelist onTechnologyChangeFailed(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 785
    invoke-direct {p0, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    .line 786
    invoke-virtual {p2}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result p2

    .line 787
    if-eqz p1, :cond_b

    goto :goto_10

    :cond_b
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 788
    :goto_10
    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda1;-><init>(ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    .line 795
    return-void
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 970
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_6

    .line 971
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 973
    :cond_6
    return-void
.end method

.method public blacklist triggerDeregistration(I)V
    .registers 2

    .line 461
    return-void
.end method

.method public whitelist triggerFullNetworkRegistration(ILjava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 447
    return-void
.end method

.method public whitelist triggerSipDelegateDeregistration()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 426
    return-void
.end method

.method public whitelist updateSipDelegateRegistration()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 408
    return-void
.end method
