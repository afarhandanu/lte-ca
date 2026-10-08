.class Landroid/view/SurfaceView$SurfaceControlViewHostParent;
.super Landroid/view/ISurfaceControlViewHostParent$Stub;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurfaceControlViewHostParent"
.end annotation


# instance fields
.field private blacklist mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 335
    invoke-direct {p0}, Landroid/view/ISurfaceControlViewHostParent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceView-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$forwardBackKeyToParent$1(Landroid/view/SurfaceView;Landroid/view/KeyEvent;)V
    .registers 7

    .line 407
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    goto :goto_64

    .line 410
    :cond_e
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 411
    if-nez v0, :cond_15

    .line 412
    return-void

    .line 414
    :cond_15
    iget-object p0, p0, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    .line 415
    if-nez p0, :cond_22

    .line 416
    return-void

    .line 419
    :cond_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 420
    const-wide/16 v3, 0x64

    cmp-long v3, v1, v3

    const-string v4, "SurfaceView"

    if-lez v3, :cond_51

    .line 421
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignore the input event that exceed the tolerance time, exceed "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 425
    :cond_51
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object p0

    if-nez p0, :cond_5d

    .line 426
    const-string p0, "Received invalid input event"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void

    .line 429
    :cond_5d
    const/4 p0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p0, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 431
    return-void

    .line 408
    :cond_64
    :goto_64
    return-void
.end method

.method static synthetic blacklist lambda$updateParams$0(Landroid/view/SurfaceView;)V
    .registers 2

    .line 389
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_9

    .line 390
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 392
    :cond_9
    return-void
.end method


# virtual methods
.method blacklist attach(Landroid/view/SurfaceView;)V
    .registers 3

    .line 348
    monitor-enter p0

    .line 350
    :try_start_1
    iget-object v0, p1, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ISurfaceControlViewHost;->attachParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V

    .line 351
    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_f
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    .line 355
    goto :goto_17

    .line 356
    :catchall_d
    move-exception p1

    goto :goto_19

    .line 352
    :catch_f
    move-exception p1

    .line 353
    :try_start_10
    const-string p1, "SurfaceView"

    const-string v0, "Failed to attach parent interface to SCVH. Likely SCVH is already dead."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_17
    monitor-exit p0

    .line 357
    return-void

    .line 356
    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_d

    throw p1
.end method

.method blacklist detach()V
    .registers 4

    .line 360
    monitor-enter p0

    .line 361
    :try_start_1
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_7

    .line 362
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_20

    return-void

    .line 365
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ISurfaceControlViewHost;->attachParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14
    .catchall {:try_start_8 .. :try_end_13} :catchall_20

    .line 369
    goto :goto_1c

    .line 366
    :catch_14
    move-exception v1

    .line 367
    :try_start_15
    const-string v1, "SurfaceView"

    const-string v2, "Failed to remove parent interface from SCVH. Likely SCVH is already dead"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_1c
    iput-object v0, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    .line 371
    monitor-exit p0

    .line 372
    return-void

    .line 371
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public blacklist forwardBackKeyToParent(Landroid/view/KeyEvent;)V
    .registers 4

    .line 399
    monitor-enter p0

    .line 400
    :try_start_1
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    .line 401
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10

    .line 402
    if-nez v0, :cond_7

    .line 403
    return-void

    .line 406
    :cond_7
    new-instance v1, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView;Landroid/view/KeyEvent;)V

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->-$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    .line 432
    return-void

    .line 401
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public blacklist updateParams([Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .line 377
    monitor-enter p0

    .line 378
    :try_start_1
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    .line 379
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_28

    .line 380
    if-nez v0, :cond_7

    .line 381
    return-void

    .line 384
    :cond_7
    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmEmbeddedWindowParams(Landroid/view/SurfaceView;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 385
    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmEmbeddedWindowParams(Landroid/view/SurfaceView;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 387
    invoke-virtual {v0}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 388
    new-instance p1, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceView;)V

    invoke-static {v0, p1}, Landroid/view/SurfaceView;->-$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    .line 394
    :cond_27
    return-void

    .line 379
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method
