.class public final Landroid/view/ScreenRecordingCallbacks;
.super Ljava/lang/Object;
.source "ScreenRecordingCallbacks.java"


# static fields
.field private static blacklist sInstance:Landroid/view/ScreenRecordingCallbacks;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mCallbackNotifier:Landroid/window/IScreenRecordingCallback;

.field private final blacklist mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnotifyCallbacks(Landroid/view/ScreenRecordingCallbacks;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ScreenRecordingCallbacks;->notifyCallbacks(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScreenRecordingCallbacks;->mState:I

    .line 56
    return-void
.end method

.method static blacklist getInstance()Landroid/view/ScreenRecordingCallbacks;
    .registers 2

    .line 63
    sget-object v0, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Landroid/view/ScreenRecordingCallbacks;->sInstance:Landroid/view/ScreenRecordingCallbacks;

    if-nez v1, :cond_e

    .line 65
    new-instance v1, Landroid/view/ScreenRecordingCallbacks;

    invoke-direct {v1}, Landroid/view/ScreenRecordingCallbacks;-><init>()V

    sput-object v1, Landroid/view/ScreenRecordingCallbacks;->sInstance:Landroid/view/ScreenRecordingCallbacks;

    .line 67
    :cond_e
    sget-object v1, Landroid/view/ScreenRecordingCallbacks;->sInstance:Landroid/view/ScreenRecordingCallbacks;

    monitor-exit v0

    return-object v1

    .line 68
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static blacklist getWindowManagerService()Landroid/view/IWindowManager;
    .registers 1

    .line 59
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic blacklist lambda$notifyCallbacks$0(Ljava/util/function/Consumer;I)V
    .registers 2

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyCallbacks$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V
    .registers 4

    .line 134
    new-instance v0, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist notifyCallbacks(I)V
    .registers 9

    .line 124
    sget-object v0, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    iput p1, p0, Landroid/view/ScreenRecordingCallbacks;->mState:I

    .line 126
    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 127
    monitor-exit v0

    return-void

    .line 130
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    const/4 v2, 0x0

    move v3, v2

    :goto_16
    iget-object v4, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 132
    iget-object v4, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/Consumer;

    .line 133
    iget-object v5, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    .line 134
    new-instance v6, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5, v4, p1}, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 136
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_5b

    .line 137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 139
    nop

    :goto_3f
    :try_start_3f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_51

    .line 140
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_56

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 143
    :cond_51
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    nop

    .line 145
    return-void

    .line 143
    :catchall_56
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    throw p1

    .line 136
    :catchall_5b
    move-exception p1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p1
.end method


# virtual methods
.method blacklist addCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 76
    sget-object v0, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    if-nez v1, :cond_25

    .line 78
    new-instance v1, Landroid/view/ScreenRecordingCallbacks$1;

    invoke-direct {v1, p0}, Landroid/view/ScreenRecordingCallbacks$1;-><init>(Landroid/view/ScreenRecordingCallbacks;)V

    iput-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2e

    .line 92
    :try_start_e
    invoke-static {}, Landroid/view/ScreenRecordingCallbacks;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    .line 93
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->registerScreenRecordingCallback(Landroid/window/IScreenRecordingCallback;)Z

    move-result v1

    .line 94
    nop

    .line 95
    if-eqz v1, :cond_1d

    .line 96
    const/4 v1, 0x1

    goto :goto_1e

    .line 97
    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    iput v1, p0, Landroid/view/ScreenRecordingCallbacks;->mState:I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_20} :catch_21
    .catchall {:try_start_e .. :try_end_20} :catchall_2e

    .line 100
    goto :goto_25

    .line 98
    :catch_21
    move-exception v1

    .line 99
    :try_start_22
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 102
    :cond_25
    :goto_25
    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget p1, p0, Landroid/view/ScreenRecordingCallbacks;->mState:I

    monitor-exit v0

    return p1

    .line 104
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method blacklist removeCallback(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 109
    sget-object v0, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object p1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_23

    if-eqz p1, :cond_21

    .line 113
    :try_start_10
    invoke-static {}, Landroid/view/ScreenRecordingCallbacks;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    invoke-interface {p1, v1}, Landroid/view/IWindowManager;->unregisterScreenRecordingCallback(Landroid/window/IScreenRecordingCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a
    .catchall {:try_start_10 .. :try_end_19} :catchall_23

    .line 116
    goto :goto_1e

    .line 114
    :catch_1a
    move-exception p1

    .line 115
    :try_start_1b
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 117
    :goto_1e
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    .line 119
    :cond_21
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw p1
.end method
