.class public final Landroid/view/translation/TranslationManager;
.super Ljava/lang/Object;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_CAPABILITIES:Ljava/lang/String; = "translation_capabilities"

.field private static final blacklist ID_GENERATOR:Ljava/security/SecureRandom;

.field public static final blacklist STATUS_SYNC_CALL_FAIL:I = 0x2

.field public static final blacklist STATUS_SYNC_CALL_SUCCESS:I = 0x1

.field static final blacklist SYNC_CALLS_TIMEOUT_MS:I = 0xea60

.field private static final blacklist TAG:Ljava/lang/String; = "TranslationManager"

.field private static final blacklist sAvailableRequestId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final blacklist mCapabilityCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/view/translation/ITranslationManager;

.field private final blacklist mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mTranslatorIds:Landroid/util/IntArray;


# direct methods
.method public static synthetic blacklist $r8$lambda$1IjILc_K4abGsuTe6FkDEBl34Mw(Landroid/view/translation/TranslationManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;ILandroid/view/translation/Translator;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/translation/TranslationManager;->lambda$createOnDeviceTranslator$4(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;ILandroid/view/translation/Translator;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 96
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationManager;->ID_GENERATOR:Ljava/security/SecureRandom;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/view/translation/TranslationManager;->sAvailableRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/translation/ITranslationManager;)V
    .registers 4

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    .line 117
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    .line 120
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/view/translation/TranslationManager;->mHandler:Landroid/os/Handler;

    .line 121
    return-void
.end method

.method static synthetic blacklist lambda$addOnDeviceTranslationCapabilityUpdateListener$5(Landroid/util/Pair;)Ljava/util/ArrayList;
    .registers 1

    .line 318
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$0(Ljava/util/function/Consumer;)V
    .registers 2

    .line 155
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    new-instance v0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$2(Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V
    .registers 2

    .line 163
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$3(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    new-instance v0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$createOnDeviceTranslator$4(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;ILandroid/view/translation/Translator;)V
    .registers 7

    .line 153
    if-nez p4, :cond_b

    .line 154
    new-instance p3, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1, p2}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 156
    return-void

    .line 159
    :cond_b
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_e
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v1, p3}, Landroid/util/IntArray;->add(I)V

    .line 161
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_1d

    .line 162
    new-instance p3, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;

    invoke-direct {p3, p1, p2, p4}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V

    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 164
    return-void

    .line 161
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method


# virtual methods
.method public greylist addOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    const-string/jumbo v0, "pending intent should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_9
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    iget-object p1, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    new-instance p2, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p1, v1, p2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 318
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public whitelist addOnDeviceTranslationCapabilityUpdateListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;)V"
        }
    .end annotation

    .line 282
    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    const-string v0, "capability listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_d
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 287
    const-string p1, "TranslationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnDeviceTranslationCapabilityUpdateListener: the listener for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " already registered; ignoring."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-exit v0

    return-void

    .line 291
    :cond_35
    new-instance v1, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;

    invoke-direct {v1, p1, p2}, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_53

    .line 294
    :try_start_3a
    iget-object p1, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    .line 295
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 294
    invoke-interface {p1, v1, v2}, Landroid/view/translation/ITranslationManager;->registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_45} :catch_4d
    .catchall {:try_start_3a .. :try_end_45} :catchall_53

    .line 298
    nop

    .line 299
    :try_start_46
    iget-object p1, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 296
    :catch_4d
    move-exception p1

    .line 297
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 300
    :catchall_53
    move-exception p1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public greylist addTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/translation/TranslationManager;->addOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V

    .line 332
    return-void
.end method

.method public greylist createOnDeviceTranslator(Landroid/view/translation/TranslationContext;)Landroid/view/translation/Translator;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    const-string/jumbo v0, "translationContext cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :goto_9
    :try_start_9
    sget-object v0, Landroid/view/translation/TranslationManager;->ID_GENERATOR:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 189
    if-eqz v5, :cond_58

    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v0, v5}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_58

    .line 191
    new-instance v2, Landroid/view/translation/Translator;

    iget-object v3, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/view/translation/TranslationManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    move-object v6, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/view/translation/Translator;-><init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;)V

    .line 194
    invoke-virtual {v2}, Landroid/view/translation/Translator;->start()V
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_5b

    .line 196
    const/4 p1, 0x0

    :try_start_2e
    invoke-virtual {v2}, Landroid/view/translation/Translator;->isSessionCreated()Z

    move-result v0
    :try_end_32
    .catch Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException; {:try_start_2e .. :try_end_32} :catch_3d
    .catchall {:try_start_2e .. :try_end_32} :catchall_5b

    if-nez v0, :cond_36

    .line 197
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_5b

    return-object p1

    .line 199
    :cond_36
    :try_start_36
    iget-object v0, v6, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v0, v5}, Landroid/util/IntArray;->add(I)V
    :try_end_3b
    .catch Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException; {:try_start_36 .. :try_end_3b} :catch_3d
    .catchall {:try_start_36 .. :try_end_3b} :catchall_5b

    .line 200
    :try_start_3b
    monitor-exit v1

    return-object v2

    .line 201
    :catch_3d
    move-exception v0

    .line 204
    const-string v2, "TranslationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timed out getting create session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    monitor-exit v1

    return-object p1

    .line 189
    :cond_58
    move-object v6, p0

    move-object v4, p1

    goto :goto_9

    .line 207
    :catchall_5b
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_3b .. :try_end_5e} :catchall_5b

    throw p1
.end method

.method public whitelist createOnDeviceTranslator(Landroid/view/translation/TranslationContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationContext;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/Translator;",
            ">;)V"
        }
    .end annotation

    .line 140
    const-string/jumbo v0, "translationContext cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :goto_13
    :try_start_13
    sget-object v0, Landroid/view/translation/TranslationManager;->ID_GENERATOR:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 148
    if-eqz v5, :cond_3c

    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v0, v5}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3c

    .line 149
    nop

    .line 151
    new-instance v2, Landroid/view/translation/Translator;

    iget-object v3, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/view/translation/TranslationManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    new-instance v9, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0, p2, p3, v5}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/translation/TranslationManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V

    move-object v6, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Landroid/view/translation/Translator;-><init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;Ljava/util/function/Consumer;)V

    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 148
    :cond_3c
    move-object v4, p1

    goto :goto_13

    .line 165
    :catchall_3e
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_13 .. :try_end_41} :catchall_3e

    throw p1
.end method

.method public greylist createTranslator(Landroid/view/translation/TranslationContext;)Landroid/view/translation/Translator;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    invoke-virtual {p0, p1}, Landroid/view/translation/TranslationManager;->createOnDeviceTranslator(Landroid/view/translation/TranslationContext;)Landroid/view/translation/Translator;

    move-result-object p1

    return-object p1
.end method

.method blacklist getAvailableRequestId()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 3

    .line 446
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_3
    sget-object v1, Landroid/view/translation/TranslationManager;->sAvailableRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-exit v0

    return-object v1

    .line 448
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getOnDeviceTranslationCapabilities(II)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Landroid/view/translation/TranslationCapability;",
            ">;"
        }
    .end annotation

    .line 241
    :try_start_0
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    invoke-direct {v0}, Landroid/os/SynchronousResultReceiver;-><init>()V

    .line 242
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    .line 243
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 242
    invoke-interface {v1, p1, p2, v0, v2}, Landroid/view/translation/ITranslationManager;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;I)V

    .line 244
    nop

    .line 245
    const-wide/32 p1, 0xea60

    invoke-virtual {v0, p1, p2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object p1

    .line 246
    iget p2, p1, Landroid/os/SynchronousResultReceiver$Result;->resultCode:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_22

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 249
    :cond_22
    iget-object p1, p1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string/jumbo p2, "translation_capabilities"

    const-class v0, Landroid/content/pm/ParceledListSlice;

    .line 250
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;

    .line 251
    new-instance p2, Landroid/util/ArraySet;

    .line 252
    if-nez p1, :cond_35

    const/4 p1, 0x0

    goto :goto_39

    :cond_35
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    :goto_39
    invoke-direct {p2, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3c} :catch_5b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 253
    return-object p2

    .line 256
    :catch_3d
    move-exception p1

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Timed out getting supported translation capabilities: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranslationManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 254
    :catch_5b
    move-exception p1

    .line 255
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getOnDeviceTranslationSettingsActivityIntent()Landroid/app/PendingIntent;
    .registers 4

    .line 415
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const v1, 0xea60

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 417
    :try_start_8
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/view/translation/ITranslationManager;->getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_25

    .line 420
    nop

    .line 422
    :try_start_14
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;
    :try_end_1a
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_14 .. :try_end_1a} :catch_1b

    return-object v0

    .line 423
    :catch_1b
    move-exception v0

    .line 424
    const-string v0, "TranslationManager"

    const-string v1, "Fail to get translation service settings activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v0, 0x0

    return-object v0

    .line 418
    :catch_25
    move-exception v0

    .line 419
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist getTranslationCapabilities(II)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Landroid/view/translation/TranslationCapability;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    invoke-virtual {p0, p1, p2}, Landroid/view/translation/TranslationManager;->getOnDeviceTranslationCapabilities(II)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public greylist getTranslationSettingsActivityIntent()Landroid/app/PendingIntent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 433
    invoke-virtual {p0}, Landroid/view/translation/TranslationManager;->getOnDeviceTranslationSettingsActivityIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public greylist removeOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    const-string/jumbo v0, "pending intent should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_9
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    iget-object p1, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 375
    iget-object p1, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    .line 376
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 377
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 378
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 380
    :cond_30
    const-string p1, "TranslationManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending intent="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " does not exist in mTranslationCapabilityUpdateListeners"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_4f
    goto :goto_6e

    .line 384
    :cond_50
    const-string p1, "TranslationManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "format pair="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " does not exist in mTranslationCapabilityUpdateListeners"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_6e
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_70
    move-exception p1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_9 .. :try_end_72} :catchall_70

    throw p1
.end method

.method public whitelist removeOnDeviceTranslationCapabilityUpdateListener(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;)V"
        }
    .end annotation

    .line 342
    const-string v0, "capability callback should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_8
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IRemoteCallback;

    .line 346
    if-nez v1, :cond_1c

    .line 347
    const-string p1, "TranslationManager"

    const-string/jumbo v1, "removeOnDeviceTranslationCapabilityUpdateListener: the capability listener not found; ignoring."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_35

    return-void

    .line 352
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v3, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 352
    invoke-interface {v2, v1, v3}, Landroid/view/translation/ITranslationManager;->unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_27} :catch_2f
    .catchall {:try_start_1c .. :try_end_27} :catchall_35

    .line 356
    nop

    .line 357
    :try_start_28
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    monitor-exit v0

    .line 359
    return-void

    .line 354
    :catch_2f
    move-exception p1

    .line 355
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 358
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public greylist removeTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 399
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/translation/TranslationManager;->removeOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V

    .line 401
    return-void
.end method

.method blacklist removeTranslator(I)V
    .registers 4

    .line 437
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_3
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p1

    .line 439
    if-ltz p1, :cond_10

    .line 440
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->remove(I)V

    .line 442
    :cond_10
    monitor-exit v0

    .line 443
    return-void

    .line 442
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method
