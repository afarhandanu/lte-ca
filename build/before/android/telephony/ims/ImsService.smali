.class public Landroid/telephony/ims/ImsService;
.super Landroid/app/Service;
.source "ImsService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsService$Listener;,
        Landroid/telephony/ims/ImsService$ImsServiceCapability;
    }
.end annotation


# static fields
.field private static final blacklist CAPABILITIES_LOG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CAPABILITY_EMERGENCY_OVER_MMTEL:J = 0x1L

.field public static final blacklist CAPABILITY_MAX_INDEX:J

.field public static final whitelist CAPABILITY_SIP_DELEGATE_CREATION:J = 0x2L

.field public static final blacklist CAPABILITY_SUPPORTS_SIMULTANEOUS_CALLING:J = 0x8L

.field public static final whitelist CAPABILITY_TERMINAL_BASED_CALL_WAITING:J = 0x4L

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsService"

.field public static final greylist-max-o SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.ims.ImsService"


# instance fields
.field private final blacklist mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mExecutorLock:Ljava/lang/Object;

.field private final greylist-max-o mFeaturesBySlot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final greylist-max-o mImsServiceController:Landroid/os/IBinder;

.field private greylist-max-o mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

.field private final blacklist mListenerLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Landroid/telephony/ims/ImsService;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/telephony/ims/ImsService;)Landroid/telephony/ims/aidl/IImsServiceControllerListener;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsService;->mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerLock(Landroid/telephony/ims/ImsService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsService;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmListener(Landroid/telephony/ims/ImsService;Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/ImsService;->mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddImsFeatureStatusCallback(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateEmergencyOnlyMmTelFeatureInternal(Landroid/telephony/ims/ImsService;I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->createEmergencyOnlyMmTelFeatureInternal(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateMmTelFeatureInternal(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createMmTelFeatureInternal(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateRcsFeatureInternal(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createRcsFeatureInternal(II)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mexecuteMethodAsync(Landroid/telephony/ims/ImsService;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mexecuteMethodAsyncForResult(Landroid/telephony/ims/ImsService;Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCachedExecutor(Landroid/telephony/ims/ImsService;)Ljava/util/concurrent/Executor;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/ImsService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseResource(Landroid/telephony/ims/ImsService;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/ImsService;->releaseResource()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImsFeature(Landroid/telephony/ims/ImsService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->removeImsFeature(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImsFeatureStatusCallback(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetImsInternal(Landroid/telephony/ims/ImsService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->resetImsInternal(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetImsFeatureCreatedForSlot(Landroid/telephony/ims/ImsService;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsanitizeCapabilities(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/telephony/ims/ImsService;->sanitizeCapabilities(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 12

    .line 185
    nop

    .line 186
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Landroid/telephony/ims/ImsService;->CAPABILITY_MAX_INDEX:J

    .line 208
    nop

    .line 209
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 210
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 211
    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 212
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 208
    const-string v5, "EMERGENCY_OVER_MMTEL"

    const-string v7, "SIP_DELEGATE_CREATION"

    const-string v9, "TERMINAL_BASED_CALL_WAITING"

    const-string v11, "SIMULTANEOUS_CALLING"

    invoke-static/range {v4 .. v11}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/telephony/ims/ImsService;->CAPABILITIES_LOG_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 244
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    .line 229
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mListenerLock:Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mExecutorLock:Ljava/lang/Object;

    .line 265
    new-instance v0, Landroid/telephony/ims/ImsService$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsService$1;-><init>(Landroid/telephony/ims/ImsService;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    .line 437
    new-instance v0, Landroid/telephony/ims/ImsService$2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsService$2;-><init>(Landroid/telephony/ims/ImsService;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 245
    return-void
.end method

.method private greylist-max-o addImsFeature(IILandroid/telephony/ims/feature/ImsFeature;)V
    .registers 7

    .line 544
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 546
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 547
    if-nez v1, :cond_17

    .line 549
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 550
    iget-object v2, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 552
    :cond_17
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 553
    monitor-exit v0

    .line 554
    return-void

    .line 553
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private blacklist addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 6

    .line 511
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 513
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 514
    if-nez v1, :cond_27

    .line 515
    const-string p2, "ImsService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not add ImsFeatureStatusCallback - no features on slot "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    monitor-exit v0

    return-void

    .line 519
    :cond_27
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/feature/ImsFeature;

    .line 520
    if-eqz p1, :cond_32

    .line 521
    invoke-virtual {p1, p3}, Landroid/telephony/ims/feature/ImsFeature;->addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 523
    :cond_32
    monitor-exit v0

    .line 524
    return-void

    .line 523
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p1
.end method

.method private blacklist createEmergencyOnlyMmTelFeatureInternal(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 4

    .line 481
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_16

    .line 483
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/ImsService;->setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V

    .line 484
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 485
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p1

    return-object p1

    .line 487
    :cond_16
    const-string p1, "ImsService"

    const-string v0, "createEmergencyOnlyMmTelFeatureInternal: null feature returned."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist createMmTelFeatureInternal(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 4

    .line 469
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createMmTelFeatureForSubscription(II)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object p2

    .line 470
    if-eqz p2, :cond_16

    .line 471
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/telephony/ims/ImsService;->setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V

    .line 472
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 473
    invoke-virtual {p2}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p1

    return-object p1

    .line 475
    :cond_16
    const-string p1, "ImsService"

    const-string p2, "createMmTelFeatureInternal: null feature returned."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist createRcsFeatureInternal(II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 4

    .line 493
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createRcsFeatureForSubscription(II)Landroid/telephony/ims/feature/RcsFeature;

    move-result-object p2

    .line 494
    if-eqz p2, :cond_16

    .line 495
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/telephony/ims/feature/RcsFeature;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 496
    const/4 v0, 0x2

    invoke-direct {p0, p2, p1, v0}, Landroid/telephony/ims/ImsService;->setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V

    .line 497
    invoke-virtual {p2}, Landroid/telephony/ims/feature/RcsFeature;->getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p1

    return-object p1

    .line 499
    :cond_16
    const-string p1, "ImsService"

    const-string p2, "createRcsFeatureInternal: null feature returned."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5

    .line 649
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    .line 651
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 649
    invoke-static {v0, p1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 651
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_10
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_10} :catch_11

    .line 655
    goto :goto_38

    .line 652
    :catch_11
    move-exception p1

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsService Binder - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 654
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 653
    const-string p2, "ImsService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_38
    return-void
.end method

.method private blacklist executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 659
    new-instance v0, Landroid/telephony/ims/ImsService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsService$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Supplier;)V

    .line 660
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 659
    invoke-static {v0, p1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 662
    :try_start_d
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_11} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_11} :catch_12

    return-object p1

    .line 663
    :catch_12
    move-exception p1

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsService Binder - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 665
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 664
    const-string p2, "ImsService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist getCachedExecutor()Ljava/util/concurrent/Executor;
    .registers 3

    .line 459
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_16

    .line 461
    invoke-virtual {p0}, Landroid/telephony/ims/ImsService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 462
    if-eqz v1, :cond_e

    :goto_d
    goto :goto_14

    :cond_e
    new-instance v1, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_d

    :goto_14
    iput-object v1, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 464
    :cond_16
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-object v1

    .line 465
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static blacklist getCapabilitiesString(J)Ljava/lang/String;
    .registers 16

    .line 963
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 964
    const-string v1, "capabilities={ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 967
    nop

    .line 969
    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 970
    :goto_10
    and-long v7, p0, v1

    cmp-long v7, v7, v3

    if-eqz v7, :cond_52

    const-wide/16 v7, 0x3f

    cmp-long v7, v5, v7

    if-gtz v7, :cond_52

    .line 971
    long-to-int v7, v5

    const-wide/16 v8, 0x1

    shl-long v10, v8, v7

    .line 972
    and-long v12, p0, v10

    cmp-long v7, v12, v3

    if-eqz v7, :cond_4e

    .line 973
    sget-object v7, Landroid/telephony/ims/ImsService;->CAPABILITIES_LOG_MAP:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v12, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 974
    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 977
    :cond_4e
    const/4 v7, 0x1

    shl-long/2addr v1, v7

    .line 978
    add-long/2addr v5, v8

    .line 979
    goto :goto_10

    .line 980
    :cond_52
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 981
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getImsFeatureCreatedForSlot(I)Landroid/util/SparseBooleanArray;
    .registers 4

    .line 613
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 614
    if-nez v0, :cond_14

    .line 615
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 616
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 618
    :cond_14
    return-object v0
.end method

.method static synthetic blacklist lambda$executeMethodAsync$0(Ljava/lang/Runnable;)V
    .registers 1

    .line 650
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$1(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 1

    .line 660
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blacklist notifySubscriptionRemoved(I)V
    .registers 3

    .line 764
    nop

    .line 765
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v0

    .line 766
    if-eqz v0, :cond_a

    .line 767
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->clearRegistrationCache()V

    .line 770
    :cond_a
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object p1

    .line 771
    if-eqz p1, :cond_13

    .line 772
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->clearConfigurationCache()V

    .line 774
    :cond_13
    return-void
.end method

.method private blacklist releaseResource()V
    .registers 7

    .line 622
    const-string v0, "ImsService"

    const-string v1, "cleaning up features"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 627
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    :try_start_c
    iget-object v3, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 628
    iget-object v3, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 629
    if-nez v3, :cond_1f

    .line 630
    goto :goto_37

    .line 633
    :cond_1f
    move v4, v1

    :goto_20
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_34

    .line 634
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/feature/ImsFeature;

    .line 635
    if-eqz v5, :cond_31

    .line 636
    invoke-virtual {v5}, Landroid/telephony/ims/feature/ImsFeature;->onFeatureRemoved()V

    .line 633
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 639
    :cond_34
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 627
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 641
    :cond_3a
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 642
    monitor-exit v0

    .line 643
    return-void

    .line 642
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_41

    throw v1
.end method

.method private blacklist removeImsFeature(II)V
    .registers 7

    .line 558
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->notifySubscriptionRemoved(I)V

    .line 560
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 562
    :try_start_6
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 563
    if-nez v1, :cond_2a

    .line 564
    const-string p2, "ImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not remove ImsFeature. No ImsFeatures exist on slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    monitor-exit v0

    return-void

    .line 568
    :cond_2a
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;

    .line 569
    if-nez v2, :cond_56

    .line 570
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not remove ImsFeature. No feature with type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " exists on slot "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    monitor-exit v0

    return-void

    .line 574
    :cond_56
    invoke-virtual {v2}, Landroid/telephony/ims/feature/ImsFeature;->onFeatureRemoved()V

    .line 575
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 576
    monitor-exit v0

    .line 577
    return-void

    .line 576
    :catchall_5e
    move-exception p1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_6 .. :try_end_60} :catchall_5e

    throw p1
.end method

.method private blacklist removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 6

    .line 528
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 530
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 531
    if-nez v1, :cond_27

    .line 532
    const-string p2, "ImsService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not remove ImsFeatureStatusCallback - no features on slot "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    monitor-exit v0

    return-void

    .line 536
    :cond_27
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/feature/ImsFeature;

    .line 537
    if-eqz p1, :cond_32

    .line 538
    invoke-virtual {p1, p3}, Landroid/telephony/ims/feature/ImsFeature;->removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 540
    :cond_32
    monitor-exit v0

    .line 541
    return-void

    .line 540
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p1
.end method

.method private blacklist resetImsInternal(II)V
    .registers 4

    .line 672
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->resetIms(I)V
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_3} :catch_4

    .line 675
    goto :goto_8

    .line 673
    :catch_4
    move-exception v0

    .line 674
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ImsService;->disableImsForSubscription(II)V

    .line 676
    :goto_8
    return-void
.end method

.method private static blacklist sanitizeCapabilities(J)J
    .registers 6

    .line 947
    nop

    .line 949
    sget-wide v0, Landroid/telephony/ims/ImsService;->CAPABILITY_MAX_INDEX:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    const-wide/16 v1, -0x1

    shl-long v0, v1, v0

    .line 951
    not-long v0, v0

    and-long/2addr p0, v0

    .line 954
    const-wide/16 v0, -0x2

    and-long/2addr p0, v0

    .line 955
    return-wide p0
.end method

.method private blacklist setImsFeatureCreatedForSlot(IIZ)V
    .registers 5

    .line 596
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 597
    :try_start_3
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->getImsFeatureCreatedForSlot(I)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 598
    monitor-exit v0

    .line 599
    return-void

    .line 598
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method private blacklist setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V
    .registers 4

    .line 505
    invoke-virtual {p1, p0, p2}, Landroid/telephony/ims/feature/ImsFeature;->initialize(Landroid/content/Context;I)V

    .line 506
    invoke-direct {p0, p2, p3, p1}, Landroid/telephony/ims/ImsService;->addImsFeature(IILandroid/telephony/ims/feature/ImsFeature;)V

    .line 507
    return-void
.end method


# virtual methods
.method public whitelist createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .registers 3

    .line 844
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    .line 845
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 859
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist createMmTelFeatureForSubscription(II)Landroid/telephony/ims/feature/MmTelFeature;
    .registers 3

    .line 817
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p2}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    .line 818
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 873
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist createRcsFeatureForSubscription(II)Landroid/telephony/ims/feature/RcsFeature;
    .registers 4

    .line 830
    const/4 p2, 0x2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    .line 831
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;

    move-result-object p1

    return-object p1
.end method

.method public whitelist disableIms(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 792
    return-void
.end method

.method public whitelist disableImsForSubscription(II)V
    .registers 3

    .line 755
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->disableIms(I)V

    .line 756
    return-void
.end method

.method public whitelist enableIms(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 783
    return-void
.end method

.method public whitelist enableImsForSubscription(II)V
    .registers 3

    .line 745
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->enableIms(I)V

    .line 746
    return-void
.end method

.method public whitelist getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 910
    new-instance p1, Landroid/telephony/ims/stub/ImsConfigImplBase;

    invoke-direct {p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    return-object p1
.end method

.method public whitelist getConfigForSubscription(II)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .registers 3

    .line 885
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 992
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public blacklist getImsFeature(II)Landroid/telephony/ims/feature/ImsFeature;
    .registers 5

    .line 584
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 586
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 587
    if-nez p1, :cond_10

    .line 588
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 590
    :cond_10
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/feature/ImsFeature;

    monitor-exit v0

    return-object p1

    .line 591
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public whitelist getImsServiceCapabilities()J
    .registers 3

    .line 721
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 922
    new-instance p1, Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-direct {p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;-><init>()V

    return-object p1
.end method

.method public whitelist getRegistrationForSubscription(II)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .registers 3

    .line 897
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getSipTransport(I)Landroid/telephony/ims/stub/SipTransportImplBase;
    .registers 2

    .line 943
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist isImsFeatureCreatedForSlot(II)Z
    .registers 4

    .line 607
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 608
    :try_start_3
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->getImsFeatureCreatedForSlot(I)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 609
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 451
    const-string v0, "android.telephony.ims.ImsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 452
    const-string p1, "ImsService"

    const-string v0, "ImsService Bound."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object p1, p0, Landroid/telephony/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object p1

    .line 455
    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public final whitelist onUpdateSupportedImsFeatures(Landroid/telephony/ims/stub/ImsFeatureConfiguration;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    if-eqz v1, :cond_e

    .line 705
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    .line 706
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_16

    .line 707
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsServiceControllerListener;->onUpdateSupportedImsFeatures(Landroid/telephony/ims/stub/ImsFeatureConfiguration;)V

    .line 708
    return-void

    .line 703
    :cond_e
    :try_start_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Framework is not ready"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 706
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p1
.end method

.method public whitelist querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .registers 2

    .line 690
    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;-><init>()V

    return-object v0
.end method

.method public whitelist readyForFeatureCreation()V
    .registers 1

    .line 735
    return-void
.end method

.method public blacklist resetIms(I)V
    .registers 2

    .line 804
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
