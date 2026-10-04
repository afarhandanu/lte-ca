.class public Landroid/window/TaskOrganizer;
.super Landroid/window/WindowOrganizer;
.source "TaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskOrganizer$CreateRootTaskRequest;
    }
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mInterface:Landroid/window/ITaskOrganizer;

.field private final blacklist mTaskOrganizerController:Landroid/window/ITaskOrganizerController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/window/TaskOrganizer;-><init>(Landroid/window/ITaskOrganizerController;Ljava/util/concurrent/Executor;)V

    .line 93
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/ITaskOrganizerController;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 97
    invoke-direct {p0}, Landroid/window/WindowOrganizer;-><init>()V

    .line 363
    new-instance v0, Landroid/window/TaskOrganizer$1;

    invoke-direct {v0, p0}, Landroid/window/TaskOrganizer$1;-><init>(Landroid/window/TaskOrganizer;)V

    iput-object v0, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    .line 98
    if-eqz p2, :cond_d

    goto :goto_12

    :cond_d
    new-instance p2, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    :goto_12
    iput-object p2, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 99
    if-eqz p1, :cond_17

    .line 100
    goto :goto_1b

    :cond_17
    invoke-direct {p0}, Landroid/window/TaskOrganizer;->getController()Landroid/window/ITaskOrganizerController;

    move-result-object p1

    :goto_1b
    iput-object p1, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    .line 101
    return-void
.end method

.method private blacklist getController()Landroid/window/ITaskOrganizerController;
    .registers 2

    .line 425
    :try_start_0
    invoke-static {}, Landroid/window/TaskOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getTaskOrganizerController()Landroid/window/ITaskOrganizerController;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 426
    :catch_9
    move-exception v0

    .line 427
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist addStartingWindow(Landroid/window/StartingWindowInfo;)V
    .registers 2

    .line 140
    return-void
.end method

.method public blacklist clearExcludeLayersFromTaskSnapshot(Landroid/window/WindowContainerToken;)V
    .registers 3

    .line 348
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->clearExcludeLayersFromTaskSnapshot(Landroid/window/WindowContainerToken;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 351
    nop

    .line 352
    return-void

    .line 349
    :catch_7
    move-exception p1

    .line 350
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist copySplashScreenView(I)V
    .registers 2

    .line 154
    return-void
.end method

.method public blacklist createRootTask(IILandroid/os/IBinder;)V
    .registers 5

    .line 222
    new-instance v0, Landroid/window/TaskOrganizer$CreateRootTaskRequest;

    invoke-direct {v0}, Landroid/window/TaskOrganizer$CreateRootTaskRequest;-><init>()V

    .line 223
    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->setDisplayId(I)Landroid/window/TaskOrganizer$CreateRootTaskRequest;

    move-result-object p1

    .line 224
    invoke-virtual {p1, p2}, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->setWindowingMode(I)Landroid/window/TaskOrganizer$CreateRootTaskRequest;

    move-result-object p1

    .line 225
    invoke-virtual {p1, p3}, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->setLaunchCookie(Landroid/os/IBinder;)Landroid/window/TaskOrganizer$CreateRootTaskRequest;

    move-result-object p1

    .line 222
    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->createRootTask(Landroid/window/TaskOrganizer$CreateRootTaskRequest;)V

    .line 226
    return-void
.end method

.method public blacklist createRootTask(IILandroid/os/IBinder;ZZ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    new-instance v0, Landroid/window/TaskOrganizer$CreateRootTaskRequest;

    invoke-direct {v0}, Landroid/window/TaskOrganizer$CreateRootTaskRequest;-><init>()V

    .line 207
    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->setDisplayId(I)Landroid/window/TaskOrganizer$CreateRootTaskRequest;

    move-result-object p1

    .line 208
    invoke-virtual {p1, p2}, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->setWindowingMode(I)Landroid/window/TaskOrganizer$CreateRootTaskRequest;

    move-result-object p1

    .line 209
    invoke-virtual {p1, p3}, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->setLaunchCookie(Landroid/os/IBinder;)Landroid/window/TaskOrganizer$CreateRootTaskRequest;

    move-result-object p1

    .line 210
    invoke-virtual {p1, p4}, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->setRemoveWithTaskOrganizer(Z)Landroid/window/TaskOrganizer$CreateRootTaskRequest;

    move-result-object p1

    .line 211
    invoke-virtual {p1, p5}, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->setReparentOnDisplayRemoval(Z)Landroid/window/TaskOrganizer$CreateRootTaskRequest;

    move-result-object p1

    .line 206
    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->createRootTask(Landroid/window/TaskOrganizer$CreateRootTaskRequest;)V

    .line 212
    return-void
.end method

.method public blacklist createRootTask(Landroid/window/TaskOrganizer$CreateRootTaskRequest;)V
    .registers 9

    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    iget v1, p1, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->displayId:I

    iget v2, p1, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->windowingMode:I

    iget-object v3, p1, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->launchCookie:Landroid/os/IBinder;

    iget-boolean v4, p1, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->removeWithTaskOrganizer:Z

    iget-boolean v5, p1, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->reparentOnDisplayRemoval:Z

    iget-object v6, p1, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->name:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Landroid/window/ITaskOrganizerController;->createRootTask(IILandroid/os/IBinder;ZZLjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 242
    nop

    .line 243
    return-void

    .line 240
    :catch_13
    move-exception v0

    move-object p1, v0

    .line 241
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist deleteRootTask(Landroid/window/WindowContainerToken;)Z
    .registers 3

    .line 249
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->deleteRootTask(Landroid/window/WindowContainerToken;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 250
    :catch_7
    move-exception p1

    .line 251
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/WindowContainerToken;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 262
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 263
    :catch_7
    move-exception p1

    .line 264
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 360
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist getImeLayeringTarget(I)Landroid/window/WindowContainerToken;
    .registers 3

    .line 291
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->getImeLayeringTarget(I)Landroid/window/WindowContainerToken;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 292
    :catch_7
    move-exception p1

    .line 293
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getRootTasks(I[I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 275
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->getRootTasks(I[I)Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 276
    :catch_7
    move-exception p1

    .line 277
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist onAppSplashScreenViewRemoved(I)V
    .registers 2

    .line 164
    return-void
.end method

.method public blacklist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    .line 182
    return-void
.end method

.method public blacklist onImeDrawnOnTask(I)V
    .registers 2

    .line 186
    return-void
.end method

.method public blacklist onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 173
    return-void
.end method

.method public blacklist onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    .line 179
    return-void
.end method

.method public blacklist onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    .line 176
    return-void
.end method

.method public blacklist onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 191
    return-void
.end method

.method public blacklist registerOrganizer()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    iget-object v1, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskOrganizerController;->registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 115
    :catch_d
    move-exception v0

    .line 116
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 2

    .line 148
    return-void
.end method

.method public blacklist requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V
    .registers 3

    .line 196
    return-void
.end method

.method public blacklist restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    .registers 3

    .line 317
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 320
    nop

    .line 321
    return-void

    .line 318
    :catch_7
    move-exception p1

    .line 319
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setExcludeLayersFromTaskSnapshot(Landroid/window/WindowContainerToken;[Landroid/view/SurfaceControl;)V
    .registers 4

    .line 335
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->setExcludeLayersFromTaskSnapshot(Landroid/window/WindowContainerToken;[Landroid/view/SurfaceControl;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 338
    nop

    .line 339
    return-void

    .line 336
    :catch_7
    move-exception p1

    .line 337
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    .registers 4

    .line 304
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 305
    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 306
    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 307
    return-void
.end method

.method public blacklist unregisterOrganizer()V
    .registers 3

    .line 125
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    iget-object v1, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskOrganizerController;->unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 128
    nop

    .line 129
    return-void

    .line 126
    :catch_9
    move-exception v0

    .line 127
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
