.class public final Landroid/window/SurfaceSyncGroup;
.super Ljava/lang/Object;
.source "SurfaceSyncGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;,
        Landroid/window/SurfaceSyncGroup$SurfaceViewFrameCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_COUNT:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceSyncGroup"

.field public static final blacklist TRANSACTION_READY_TIMEOUT:I

.field private static final blacklist sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static blacklist sHandlerThread:Landroid/os/HandlerThread;

.field private static final blacklist sHandlerThreadLock:Ljava/lang/Object;

.field private static blacklist sTransactionFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAddedToSyncListener:Ljava/lang/Runnable;

.field private blacklist mFinished:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHasWMSync:Z

.field public final blacklist mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mParentSyncGroup:Landroid/window/ISurfaceSyncGroup;

.field private final blacklist mPendingSyncs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/window/ITransactionReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSurfaceSyncGroupCompletedListener:Landroid/window/ISurfaceSyncGroupCompletedListener;

.field private final blacklist mSyncCompleteCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mSyncReady:Z

.field private blacklist mTimeoutAdded:Z

.field private blacklist mTimeoutDisabled:Z

.field private final blacklist mToken:Landroid/os/Binder;

.field private final blacklist mTrackName:Ljava/lang/String;

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private blacklist mTransactionReadyConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ButZILC1krkx4FHXNaBT92Z1Qt8(Landroid/window/SurfaceSyncGroup;)V
    .registers 1

    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->lambda$addTimeout$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Kan-laRIbBzOqZCBkfLmwXUDtJA(Landroid/window/SurfaceSyncGroup;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/window/SurfaceSyncGroup;->lambda$new$1(Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RIGQSKCGL_wOT_BLp-LvudtYwpE(Landroid/window/SurfaceSyncGroup;Landroid/window/ITransactionReadyCallback;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/window/SurfaceSyncGroup;->lambda$setTransactionCallbackFromParent$5(Landroid/window/ITransactionReadyCallback;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/window/SurfaceSyncGroup;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingSyncs(Landroid/window/SurfaceSyncGroup;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrackName(Landroid/window/SurfaceSyncGroup;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransaction(Landroid/window/SurfaceSyncGroup;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Landroid/window/SurfaceSyncGroup;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddSyncToWm(Landroid/window/SurfaceSyncGroup;Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/window/SurfaceSyncGroup;->addSyncToWm(Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckIfSyncIsComplete(Landroid/window/SurfaceSyncGroup;)V
    .registers 1

    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->checkIfSyncIsComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minvokeSyncCompleteCallbacks(Landroid/window/SurfaceSyncGroup;)V
    .registers 1

    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->invokeSyncCompleteCallbacks()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/window/SurfaceSyncGroup;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Landroid/window/SurfaceSyncGroup;->TRANSACTION_READY_TIMEOUT:I

    .line 74
    new-instance v0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/window/SurfaceSyncGroup;->sTransactionFactory:Ljava/util/function/Supplier;

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/window/SurfaceSyncGroup;->sHandlerThreadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 165
    new-instance v0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 173
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    .line 86
    sget-object v0, Landroid/window/SurfaceSyncGroup;->sTransactionFactory:Ljava/util/function/Supplier;

    .line 87
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 100
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mSyncCompleteCallbacks:Landroid/util/ArraySet;

    .line 112
    new-instance v0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;-><init>(Landroid/window/SurfaceSyncGroup;Landroid/window/SurfaceSyncGroup-IA;)V

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

    .line 122
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mToken:Landroid/os/Binder;

    .line 191
    sget-object v0, Landroid/window/SurfaceSyncGroup;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_41

    .line 192
    sget-object v0, Landroid/window/SurfaceSyncGroup;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 195
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/window/SurfaceSyncGroup;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceSyncGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    .line 198
    new-instance p1, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda4;-><init>(Landroid/window/SurfaceSyncGroup;Ljava/util/function/Consumer;)V

    iput-object p1, p0, Landroid/window/SurfaceSyncGroup;->mTransactionReadyConsumer:Ljava/util/function/Consumer;

    .line 218
    const-wide/16 p1, 0x8

    invoke-static {p1, p2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 219
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {p1, p2, v0, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 225
    :cond_8f
    return-void
.end method

.method private blacklist addLocalSync(Landroid/window/ISurfaceSyncGroup;Z)Z
    .registers 9

    .line 545
    invoke-static {p1}, Landroid/window/SurfaceSyncGroup;->getSurfaceSyncGroup(Landroid/window/ISurfaceSyncGroup;)Landroid/window/SurfaceSyncGroup;

    move-result-object v0

    .line 546
    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 547
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to add a local sync that\'s either not valid or not from the local process="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SurfaceSyncGroup"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return v1

    .line 552
    :cond_20
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 553
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addLocalSync="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 554
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 553
    invoke-static {v2, v3, p1, v4, v5}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 556
    :cond_46
    nop

    .line 557
    invoke-virtual {p0, p2}, Landroid/window/SurfaceSyncGroup;->createTransactionReadyCallback(Z)Landroid/window/ITransactionReadyCallback;

    move-result-object p1

    .line 559
    if-nez p1, :cond_4e

    .line 560
    return v1

    .line 563
    :cond_4e
    iget-object p2, p0, Landroid/window/SurfaceSyncGroup;->mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

    invoke-direct {v0, p2, p1}, Landroid/window/SurfaceSyncGroup;->setTransactionCallbackFromParent(Landroid/window/ISurfaceSyncGroup;Landroid/window/ITransactionReadyCallback;)V

    .line 564
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 565
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {v2, v3, p1, p2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 567
    :cond_62
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist addSyncToWm(Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;)Z
    .registers 10

    .line 512
    const/4 v0, 0x0

    const-wide/16 v1, 0x8

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 513
    iget-object v3, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSyncToWm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 514
    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 513
    invoke-static {v1, v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 516
    :cond_29
    new-instance v3, Landroid/window/AddToSurfaceSyncGroupResult;

    invoke-direct {v3}, Landroid/window/AddToSurfaceSyncGroupResult;-><init>()V

    .line 517
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3, v3}, Landroid/view/IWindowManager;->addToSurfaceSyncGroup(Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;Landroid/window/AddToSurfaceSyncGroupResult;)Z

    move-result p1

    if-nez p1, :cond_48

    .line 520
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 521
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {v1, v2, p1, p2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 523
    :cond_47
    return v0

    .line 526
    :cond_48
    iget-object p1, v3, Landroid/window/AddToSurfaceSyncGroupResult;->mParentSyncGroup:Landroid/window/ISurfaceSyncGroup;

    iget-object p2, v3, Landroid/window/AddToSurfaceSyncGroupResult;->mTransactionReadyCallback:Landroid/window/ITransactionReadyCallback;

    invoke-direct {p0, p1, p2}, Landroid/window/SurfaceSyncGroup;->setTransactionCallbackFromParent(Landroid/window/ISurfaceSyncGroup;Landroid/window/ITransactionReadyCallback;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_4f} :catch_61

    .line 533
    nop

    .line 534
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 535
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {v1, v2, p1, p2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 537
    :cond_5f
    const/4 p1, 0x1

    return p1

    .line 528
    :catch_61
    move-exception p1

    .line 529
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 530
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {v1, v2, p1, p2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 532
    :cond_71
    return v0
.end method

.method private blacklist addTimeout()V
    .registers 5

    .line 804
    nop

    .line 805
    sget-object v0, Landroid/window/SurfaceSyncGroup;->sHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 806
    :try_start_4
    sget-object v1, Landroid/window/SurfaceSyncGroup;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_16

    .line 807
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SurfaceSyncGroupTimer"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/window/SurfaceSyncGroup;->sHandlerThread:Landroid/os/HandlerThread;

    .line 808
    sget-object v1, Landroid/window/SurfaceSyncGroup;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 811
    :cond_16
    sget-object v1, Landroid/window/SurfaceSyncGroup;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 812
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_4d

    .line 814
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 815
    :try_start_20
    iget-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutAdded:Z

    if-nez v0, :cond_48

    iget-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutDisabled:Z

    if-nez v0, :cond_48

    if-nez v1, :cond_2b

    goto :goto_48

    .line 821
    :cond_2b
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_36

    .line 822
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mHandler:Landroid/os/Handler;

    .line 825
    :cond_36
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutAdded:Z

    .line 826
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_4a

    .line 828
    new-instance v0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda3;-><init>(Landroid/window/SurfaceSyncGroup;)V

    .line 838
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/window/SurfaceSyncGroup;->TRANSACTION_READY_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 839
    return-void

    .line 818
    :cond_48
    :goto_48
    :try_start_48
    monitor-exit v2

    return-void

    .line 826
    :catchall_4a
    move-exception v0

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4a

    throw v0

    .line 812
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method private blacklist checkIfSyncIsComplete()V
    .registers 6

    .line 663
    iget-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mFinished:Z

    if-eqz v0, :cond_a

    .line 667
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 668
    return-void

    .line 671
    :cond_a
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 672
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIfSyncIsComplete mSyncReady="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/window/SurfaceSyncGroup;->mSyncReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPendingSyncs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    .line 674
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 672
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_3c
    iget-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mSyncReady:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_5d

    .line 688
    :cond_49
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mTransactionReadyConsumer:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mFinished:Z

    .line 690
    iget-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutAdded:Z

    if-eqz v0, :cond_5c

    .line 691
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 693
    :cond_5c
    return-void

    .line 682
    :cond_5d
    :goto_5d
    return-void
.end method

.method private static blacklist getSurfaceSyncGroup(Landroid/window/ISurfaceSyncGroup;)Landroid/window/SurfaceSyncGroup;
    .registers 2

    .line 146
    instance-of v0, p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;

    if-eqz v0, :cond_b

    .line 147
    check-cast p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;

    invoke-virtual {p0}, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;->getSurfaceSyncGroup()Landroid/window/SurfaceSyncGroup;

    move-result-object p0

    return-object p0

    .line 149
    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist invokeSyncCompleteCallbacks()V
    .registers 3

    .line 229
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mSyncCompleteCallbacks:Landroid/util/ArraySet;

    new-instance v1, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 232
    return-void
.end method

.method private static blacklist isLocalBinder(Landroid/os/IBinder;)Z
    .registers 1

    .line 142
    instance-of p0, p0, Landroid/os/BinderProxy;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic blacklist lambda$add$3(Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 294
    invoke-virtual {p0, p1}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 295
    invoke-virtual {p0}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 296
    return-void
.end method

.method static synthetic blacklist lambda$add$4(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V
    .registers 3

    .line 293
    new-instance v0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda6;-><init>(Landroid/window/SurfaceSyncGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->syncNextFrame(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$addTimeout$6()V
    .registers 4

    .line 829
    const-string v0, "SurfaceSyncGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to receive transaction ready in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/window/SurfaceSyncGroup;->TRANSACTION_READY_TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms. Marking SurfaceSyncGroup("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 834
    :try_start_30
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 835
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_3a

    .line 836
    invoke-virtual {p0}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 837
    return-void

    .line 835
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method static synthetic blacklist lambda$invokeSyncCompleteCallbacks$2(Landroid/util/Pair;)V
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/view/SurfaceControl$Transaction;)V
    .registers 1

    .line 166
    if-eqz p0, :cond_5

    .line 170
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 172
    :cond_5
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    .line 203
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 204
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Final TransactionCallback with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_20
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 208
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 209
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 212
    :try_start_2f
    iget-object p2, p0, Landroid/window/SurfaceSyncGroup;->mSurfaceSyncGroupCompletedListener:Landroid/window/ISurfaceSyncGroupCompletedListener;

    if-nez p2, :cond_36

    .line 213
    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->invokeSyncCompleteCallbacks()V

    .line 215
    :cond_36
    monitor-exit p1

    .line 216
    return-void

    .line 215
    :catchall_38
    move-exception p2

    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_38

    throw p2
.end method

.method private synthetic blacklist lambda$setTransactionCallbackFromParent$5(Landroid/window/ITransactionReadyCallback;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    .line 619
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 620
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoke transactionReadyCallback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 622
    invoke-interface {p1}, Landroid/window/ITransactionReadyCallback;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 620
    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 624
    :cond_28
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 627
    :try_start_2c
    invoke-interface {p1, p3}, Landroid/window/ITransactionReadyCallback;->onTransactionReady(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 630
    goto :goto_34

    .line 628
    :catch_30
    move-exception p1

    .line 629
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 631
    :goto_34
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 632
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 634
    :cond_43
    return-void
.end method

.method private blacklist setTransactionCallbackFromParent(Landroid/window/ISurfaceSyncGroup;Landroid/window/ITransactionReadyCallback;)V
    .registers 9

    .line 576
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 577
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTransactionCallbackFromParent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 579
    invoke-interface {p2}, Landroid/window/ITransactionReadyCallback;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 577
    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 585
    :cond_35
    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->addTimeout()V

    .line 587
    nop

    .line 588
    nop

    .line 589
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 590
    :try_start_3d
    iget-boolean v3, p0, Landroid/window/SurfaceSyncGroup;->mFinished:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_45

    .line 591
    move-object p1, v5

    goto :goto_62

    .line 599
    :cond_45
    iget-object v3, p0, Landroid/window/SurfaceSyncGroup;->mParentSyncGroup:Landroid/window/ISurfaceSyncGroup;

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/window/SurfaceSyncGroup;->mParentSyncGroup:Landroid/window/ISurfaceSyncGroup;
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_80

    if-eq v3, p1, :cond_54

    .line 606
    :try_start_4d
    iget-object v3, p0, Landroid/window/SurfaceSyncGroup;->mParentSyncGroup:Landroid/window/ISurfaceSyncGroup;

    invoke-interface {p1, v3, v4}, Landroid/window/ISurfaceSyncGroup;->addToSync(Landroid/window/ISurfaceSyncGroup;Z)Z
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_52} :catch_53
    .catchall {:try_start_4d .. :try_end_52} :catchall_80

    .line 609
    goto :goto_54

    .line 608
    :catch_53
    move-exception v3

    .line 616
    :cond_54
    :goto_54
    :try_start_54
    iget-object v3, p0, Landroid/window/SurfaceSyncGroup;->mTransactionReadyConsumer:Ljava/util/function/Consumer;

    .line 617
    iput-object p1, p0, Landroid/window/SurfaceSyncGroup;->mParentSyncGroup:Landroid/window/ISurfaceSyncGroup;

    .line 618
    new-instance p1, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p2, v3}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda5;-><init>(Landroid/window/SurfaceSyncGroup;Landroid/window/ITransactionReadyCallback;Ljava/util/function/Consumer;)V

    iput-object p1, p0, Landroid/window/SurfaceSyncGroup;->mTransactionReadyConsumer:Ljava/util/function/Consumer;

    .line 635
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mAddedToSyncListener:Ljava/lang/Runnable;

    const/4 v4, 0x0

    .line 637
    :goto_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_80

    .line 641
    if-eqz v4, :cond_6b

    .line 643
    :try_start_65
    invoke-interface {p2, v5}, Landroid/window/ITransactionReadyCallback;->onTransactionReady(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_68} :catch_69

    .line 645
    :goto_68
    goto :goto_70

    .line 644
    :catch_69
    move-exception p1

    goto :goto_68

    .line 646
    :cond_6b
    if-eqz p1, :cond_70

    .line 647
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 649
    :cond_70
    :goto_70
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 650
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 652
    :cond_7f
    return-void

    .line 637
    :catchall_80
    move-exception p1

    :try_start_81
    monitor-exit v2
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw p1
.end method

.method public static blacklist setTransactionFactory(Ljava/util/function/Supplier;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 156
    sput-object p0, Landroid/window/SurfaceSyncGroup;->sTransactionFactory:Ljava/util/function/Supplier;

    .line 157
    return-void
.end method


# virtual methods
.method public whitelist add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z
    .registers 4

    .line 321
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 322
    return v0

    .line 324
    :cond_4
    invoke-interface {p1}, Landroid/view/AttachedSurfaceControl;->getOrCreateSurfaceSyncGroup()Landroid/window/SurfaceSyncGroup;

    move-result-object p1

    .line 325
    if-nez p1, :cond_b

    .line 326
    return v0

    .line 329
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/window/SurfaceSyncGroup;->add(Landroid/window/SurfaceSyncGroup;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public whitelist add(Landroid/view/SurfaceControlViewHost$SurfacePackage;Ljava/lang/Runnable;)Z
    .registers 5

    .line 353
    const-string v0, "SurfaceSyncGroup"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ISurfaceControlViewHost;->getSurfaceSyncGroup()Landroid/window/ISurfaceSyncGroup;

    move-result-object p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_19

    .line 357
    nop

    .line 359
    if-nez p1, :cond_14

    .line 360
    const-string p1, "Failed to add SurfaceControlViewHost to SurfaceSyncGroup. SCVH returned null SurfaceSyncGroup"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return v1

    .line 364
    :cond_14
    invoke-virtual {p0, p1, v1, p2}, Landroid/window/SurfaceSyncGroup;->add(Landroid/window/ISurfaceSyncGroup;ZLjava/lang/Runnable;)Z

    move-result p1

    return p1

    .line 354
    :catch_19
    move-exception p1

    .line 355
    const-string p1, "Failed to add SurfaceControlViewHost to SurfaceSyncGroup"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return v1
.end method

.method public blacklist add(Landroid/view/SurfaceView;Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceView;",
            "Ljava/util/function/Consumer<",
            "Landroid/window/SurfaceSyncGroup$SurfaceViewFrameCallback;",
            ">;)Z"
        }
    .end annotation

    .line 290
    new-instance v0, Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 291
    iget-object v1, v0, Landroid/window/SurfaceSyncGroup;->mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroid/window/SurfaceSyncGroup;->add(Landroid/window/ISurfaceSyncGroup;ZLjava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 293
    new-instance v1, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 297
    const/4 p1, 0x1

    return p1

    .line 299
    :cond_1d
    return v3
.end method

.method public blacklist add(Landroid/window/ISurfaceSyncGroup;ZLjava/lang/Runnable;)Z
    .registers 10

    .line 401
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 402
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToSync token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/window/SurfaceSyncGroup;->mToken:Landroid/os/Binder;

    .line 403
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 402
    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 405
    :cond_2a
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 406
    :try_start_2d
    iget-boolean v3, p0, Landroid/window/SurfaceSyncGroup;->mSyncReady:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5d

    .line 407
    const-string p1, "SurfaceSyncGroup"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trying to add to sync when already marked as ready "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 409
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 411
    :cond_5b
    monitor-exit v2

    return v4

    .line 413
    :cond_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_2d .. :try_end_5e} :catchall_db

    .line 415
    if-eqz p3, :cond_63

    .line 416
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 419
    :cond_63
    invoke-interface {p1}, Landroid/window/ISurfaceSyncGroup;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/window/SurfaceSyncGroup;->isLocalBinder(Landroid/os/IBinder;)Z

    move-result p3

    if-eqz p3, :cond_81

    .line 420
    invoke-direct {p0, p1, p2}, Landroid/window/SurfaceSyncGroup;->addLocalSync(Landroid/window/ISurfaceSyncGroup;Z)Z

    move-result p1

    .line 421
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p2

    if-eqz p2, :cond_80

    .line 422
    iget-object p2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {v0, v1, p2, p3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 424
    :cond_80
    return p1

    .line 427
    :cond_81
    iget-object p3, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 428
    :try_start_84
    iget-boolean v2, p0, Landroid/window/SurfaceSyncGroup;->mHasWMSync:Z

    const/4 v3, 0x1

    if-nez v2, :cond_b0

    .line 438
    new-instance v2, Landroid/window/SurfaceSyncGroup$1;

    invoke-direct {v2, p0}, Landroid/window/SurfaceSyncGroup$1;-><init>(Landroid/window/SurfaceSyncGroup;)V

    iput-object v2, p0, Landroid/window/SurfaceSyncGroup;->mSurfaceSyncGroupCompletedListener:Landroid/window/ISurfaceSyncGroupCompletedListener;

    .line 446
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mToken:Landroid/os/Binder;

    iget-object v5, p0, Landroid/window/SurfaceSyncGroup;->mSurfaceSyncGroupCompletedListener:Landroid/window/ISurfaceSyncGroupCompletedListener;

    invoke-direct {p0, v2, v4, v5}, Landroid/window/SurfaceSyncGroup;->addSyncToWm(Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 448
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/window/SurfaceSyncGroup;->mSurfaceSyncGroupCompletedListener:Landroid/window/ISurfaceSyncGroupCompletedListener;

    .line 449
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 450
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 452
    :cond_ac
    monitor-exit p3

    return v4

    .line 454
    :cond_ae
    iput-boolean v3, p0, Landroid/window/SurfaceSyncGroup;->mHasWMSync:Z

    .line 456
    :cond_b0
    monitor-exit p3
    :try_end_b1
    .catchall {:try_start_84 .. :try_end_b1} :catchall_d8

    .line 459
    :try_start_b1
    iget-object p3, p0, Landroid/window/SurfaceSyncGroup;->mToken:Landroid/os/Binder;

    invoke-interface {p1, p3, p2}, Landroid/window/ISurfaceSyncGroup;->onAddedToSyncGroup(Landroid/os/IBinder;Z)Z
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_b6} :catch_c7

    .line 465
    nop

    .line 467
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_c6

    .line 468
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 470
    :cond_c6
    return v3

    .line 460
    :catch_c7
    move-exception p1

    .line 461
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_d7

    .line 462
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 464
    :cond_d7
    return v4

    .line 456
    :catchall_d8
    move-exception p1

    :try_start_d9
    monitor-exit p3
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw p1

    .line 413
    :catchall_db
    move-exception p1

    :try_start_dc
    monitor-exit v2
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    throw p1
.end method

.method public blacklist add(Landroid/window/SurfaceSyncGroup;Ljava/lang/Runnable;)Z
    .registers 4

    .line 381
    iget-object p1, p1, Landroid/window/SurfaceSyncGroup;->mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/window/SurfaceSyncGroup;->add(Landroid/window/ISurfaceSyncGroup;ZLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public blacklist addSyncCompleteCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 6

    .line 242
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_3
    iget-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mFinished:Z

    if-eqz v1, :cond_c

    .line 244
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 245
    monitor-exit v0

    return-void

    .line 247
    :cond_c
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mSyncCompleteCallbacks:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 248
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public whitelist addTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 480
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_3
    iget-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mFinished:Z

    if-eqz v1, :cond_2b

    .line 484
    const-string v1, "SurfaceSyncGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding transaction to a completed SurfaceSyncGroup("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ").  Applying immediately"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_30

    .line 488
    :cond_2b
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 490
    :goto_30
    monitor-exit v0

    .line 491
    return-void

    .line 490
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public blacklist createTransactionReadyCallback(Z)Landroid/window/ITransactionReadyCallback;
    .registers 8

    .line 712
    new-instance v0, Landroid/window/SurfaceSyncGroup$2;

    invoke-direct {v0, p0, p1}, Landroid/window/SurfaceSyncGroup$2;-><init>(Landroid/window/SurfaceSyncGroup;Z)V

    .line 738
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 739
    :try_start_8
    iget-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mSyncReady:Z

    if-eqz v1, :cond_2f

    .line 740
    const-string v0, "SurfaceSyncGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was already marked as ready. No more SurfaceSyncGroups can be added."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    monitor-exit p1

    const/4 p1, 0x0

    return-object p1

    .line 744
    :cond_2f
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 745
    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 746
    iget-object v3, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createTransactionReadyCallback mPendingSyncs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    .line 748
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transactionReady="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 749
    invoke-interface {v0}, Landroid/window/ITransactionReadyCallback;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 746
    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_68
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_8 .. :try_end_69} :catchall_6d

    .line 757
    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->addTimeout()V

    .line 759
    return-object v0

    .line 751
    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 658
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isComplete()Z
    .registers 3

    .line 846
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_3
    iget-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mFinished:Z

    monitor-exit v0

    return v1

    .line 848
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist markSyncReady()V
    .registers 5

    .line 262
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 263
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    const-string/jumbo v3, "markSyncReady"

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_10
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_13
    iget-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mHasWMSync:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_2a

    if-eqz v1, :cond_22

    .line 268
    :try_start_17
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->markSurfaceSyncGroupReady(Landroid/os/IBinder;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_21
    .catchall {:try_start_17 .. :try_end_20} :catchall_2a

    .line 270
    goto :goto_22

    .line 269
    :catch_21
    move-exception v1

    .line 272
    :cond_22
    :goto_22
    const/4 v1, 0x1

    :try_start_23
    iput-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mSyncReady:Z

    .line 273
    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->checkIfSyncIsComplete()V

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public blacklist setAddedToSyncListener(Ljava/lang/Runnable;)V
    .registers 3

    .line 500
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_3
    iput-object p1, p0, Landroid/window/SurfaceSyncGroup;->mAddedToSyncListener:Ljava/lang/Runnable;

    .line 502
    monitor-exit v0

    .line 503
    return-void

    .line 502
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public blacklist toggleTimeout(Z)V
    .registers 5

    .line 792
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    const/4 v1, 0x0

    if-nez p1, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    move v2, v1

    :goto_9
    :try_start_9
    iput-boolean v2, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutDisabled:Z

    .line 794
    iget-boolean v2, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutAdded:Z

    if-eqz v2, :cond_19

    if-nez p1, :cond_19

    .line 795
    iget-object p1, p0, Landroid/window/SurfaceSyncGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 796
    iput-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutAdded:Z

    goto :goto_22

    .line 797
    :cond_19
    iget-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutAdded:Z

    if-nez v1, :cond_22

    if-eqz p1, :cond_22

    .line 798
    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->addTimeout()V

    .line 800
    :cond_22
    :goto_22
    monitor-exit v0

    .line 801
    return-void

    .line 800
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw p1
.end method
