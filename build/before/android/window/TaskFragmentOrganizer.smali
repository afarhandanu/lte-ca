.class public Landroid/window/TaskFragmentOrganizer;
.super Landroid/window/WindowOrganizer;
.source "TaskFragmentOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskFragmentOrganizer$TaskFragmentTransitionType;
    }
.end annotation


# static fields
.field public static final blacklist KEY_ERROR_CALLBACK_OP_TYPE:Ljava/lang/String; = "operation_type"

.field public static final blacklist KEY_ERROR_CALLBACK_TASK_FRAGMENT_INFO:Ljava/lang/String; = "task_fragment_info"

.field public static final blacklist KEY_ERROR_CALLBACK_THROWABLE:Ljava/lang/String; = "fragment_throwable"

.field public static final blacklist KEY_RESTORE_TASK_FRAGMENTS_INFO:Ljava/lang/String; = "key_restore_task_fragments_info"

.field public static final blacklist KEY_RESTORE_TASK_FRAGMENT_PARENT_INFO:Ljava/lang/String; = "key_restore_task_fragment_parent_info"

.field public static final blacklist TASK_FRAGMENT_TRANSIT_CHANGE:I = 0x6

.field public static final blacklist TASK_FRAGMENT_TRANSIT_CLOSE:I = 0x2

.field public static final blacklist TASK_FRAGMENT_TRANSIT_DRAG_RESIZE:I = 0x3f9

.field public static final blacklist TASK_FRAGMENT_TRANSIT_NONE:I = 0x0

.field public static final blacklist TASK_FRAGMENT_TRANSIT_OPEN:I = 0x1


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mInterface:Landroid/window/ITaskFragmentOrganizer;

.field private final blacklist mToken:Landroid/window/TaskFragmentOrganizerToken;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 166
    invoke-direct {p0}, Landroid/window/WindowOrganizer;-><init>()V

    .line 386
    new-instance v0, Landroid/window/TaskFragmentOrganizer$1;

    invoke-direct {v0, p0}, Landroid/window/TaskFragmentOrganizer$1;-><init>(Landroid/window/TaskFragmentOrganizer;)V

    iput-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    .line 393
    new-instance v0, Landroid/window/TaskFragmentOrganizerToken;

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOrganizerToken;-><init>(Landroid/window/ITaskFragmentOrganizer;)V

    iput-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mToken:Landroid/window/TaskFragmentOrganizerToken;

    .line 167
    iput-object p1, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 168
    return-void
.end method

.method private blacklist getController()Landroid/window/ITaskFragmentOrganizerController;
    .registers 2

    .line 402
    :try_start_0
    invoke-static {}, Landroid/window/TaskFragmentOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 403
    :catch_9
    move-exception v0

    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist isActivityEmbedded(Landroid/app/Activity;)Z
    .registers 1

    .line 416
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-static {p0}, Landroid/window/ActivityWindowInfo;->getActivityWindowInfo(Landroid/app/Activity;)Landroid/window/ActivityWindowInfo;

    move-result-object p0

    .line 418
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/window/ActivityWindowInfo;->isEmbedded()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public static blacklist putErrorInfoInBundle(Ljava/lang/Throwable;Landroid/window/TaskFragmentInfo;I)Landroid/os/Bundle;
    .registers 5

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    const-string v1, "fragment_throwable"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 154
    if-eqz p1, :cond_12

    .line 155
    const-string/jumbo p0, "task_fragment_info"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 157
    :cond_12
    const-string/jumbo p0, "operation_type"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    return-object v0
.end method


# virtual methods
.method public blacklist applySystemTransaction(Landroid/window/WindowContainerTransaction;ILandroid/window/RemoteTransition;)V
    .registers 6

    .line 363
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 364
    return-void

    .line 366
    :cond_7
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;

    .line 368
    :try_start_c
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    if-eqz p3, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-interface {v0, p1, p2, v1, p3}, Landroid/window/ITaskFragmentOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_1a

    .line 373
    nop

    .line 374
    return-void

    .line 371
    :catch_1a
    move-exception p1

    .line 372
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .registers 3

    .line 324
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not allowed!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist applyTransaction(Landroid/window/WindowContainerTransaction;IZ)V
    .registers 6

    .line 342
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 343
    return-void

    .line 345
    :cond_7
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;

    .line 347
    :try_start_c
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/window/ITaskFragmentOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_16

    .line 351
    nop

    .line 352
    return-void

    .line 349
    :catch_16
    move-exception p1

    .line 350
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist getOrganizerToken()Landroid/window/TaskFragmentOrganizerToken;
    .registers 2

    .line 397
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mToken:Landroid/window/TaskFragmentOrganizerToken;

    return-object v0
.end method

.method public blacklist onTransactionHandled(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;IZ)V
    .registers 6

    .line 309
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p2, v0}, Landroid/window/WindowContainerTransaction;->setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;

    .line 311
    :try_start_5
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/window/ITaskFragmentOrganizerController;->onTransactionHandled(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;IZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    .line 315
    nop

    .line 316
    return-void

    .line 313
    :catch_e
    move-exception p1

    .line 314
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist onTransactionReady(Landroid/window/TaskFragmentTransaction;)V
    .registers 4

    .line 382
    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->getTransactionToken()Landroid/os/IBinder;

    move-result-object p1

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/window/TaskFragmentOrganizer;->onTransactionHandled(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;IZ)V

    .line 384
    return-void
.end method

.method public blacklist registerOrganizer()V
    .registers 3

    .line 183
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/window/TaskFragmentOrganizer;->registerOrganizer(ZLandroid/os/Bundle;)V

    .line 184
    return-void
.end method

.method public blacklist registerOrganizer(Z)V
    .registers 3

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/window/TaskFragmentOrganizer;->registerOrganizer(ZLandroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method public blacklist registerOrganizer(ZLandroid/os/Bundle;)V
    .registers 5

    .line 222
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    .line 223
    if-eqz p2, :cond_9

    :goto_8
    goto :goto_f

    :cond_9
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    goto :goto_8

    .line 222
    :goto_f
    invoke-interface {v0, v1, p1, p2}, Landroid/window/ITaskFragmentOrganizerController;->registerOrganizer(Landroid/window/ITaskFragmentOrganizer;ZLandroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 226
    nop

    .line 227
    return-void

    .line 224
    :catch_14
    move-exception p1

    .line 225
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 4

    .line 250
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1, p1}, Landroid/window/ITaskFragmentOrganizerController;->registerRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;Landroid/view/RemoteAnimationDefinition;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 253
    nop

    .line 254
    return-void

    .line 251
    :catch_b
    move-exception p1

    .line 252
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setSavedState(Landroid/os/Bundle;)V
    .registers 5

    .line 278
    invoke-virtual {p1}, Landroid/os/Bundle;->getSize()I

    move-result v0

    const v1, 0x30d40

    if-gt v0, v1, :cond_1a

    .line 283
    :try_start_9
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1, p1}, Landroid/window/ITaskFragmentOrganizerController;->setSavedState(Landroid/window/ITaskFragmentOrganizer;Landroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_14

    .line 286
    nop

    .line 287
    return-void

    .line 284
    :catch_14
    move-exception p1

    .line 285
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 279
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved state too large, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->getSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterOrganizer()V
    .registers 3

    .line 235
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskFragmentOrganizerController;->unregisterOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 238
    nop

    .line 239
    return-void

    .line 236
    :catch_b
    move-exception v0

    .line 237
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist unregisterRemoteAnimations()V
    .registers 3

    .line 263
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskFragmentOrganizerController;->unregisterRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 266
    nop

    .line 267
    return-void

    .line 264
    :catch_b
    move-exception v0

    .line 265
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
