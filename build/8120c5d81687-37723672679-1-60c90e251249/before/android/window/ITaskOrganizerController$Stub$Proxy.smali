.class Landroid/window/ITaskOrganizerController$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITaskOrganizerController.java"

# interfaces
.implements Landroid/window/ITaskOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskOrganizerController$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Landroid/window/ITaskOrganizerController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 305
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 308
    iget-object v0, p0, Landroid/window/ITaskOrganizerController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist clearExcludeLayersFromTaskSnapshot(Landroid/window/WindowContainerToken;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Landroid/window/ITaskOrganizerController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 506
    :try_start_c
    const-string v2, "android.window.ITaskOrganizerController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 507
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 508
    iget-object p1, p0, Landroid/window/ITaskOrganizerController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 512
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    nop

    .line 515
    return-void

    .line 512
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    throw p1
.end method

.method public blacklist createRootTask(IILandroid/os/IBinder;ZZLjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Landroid/window/ITaskOrganizerController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 365
    :try_start_c
    const-string v2, "android.window.ITaskOrganizerController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 369
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 370
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 371
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Landroid/window/ITaskOrganizerController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    nop

    .line 379
    return-void

    .line 376
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    throw p1
.end method

.method public blacklist deleteRootTask(Landroid/window/WindowContainerToken;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Landroid/window/ITaskOrganizerController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 387
    :try_start_c
    const-string v2, "android.window.ITaskOrganizerController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 388
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 389
    iget-object p1, p0, Landroid/window/ITaskOrganizerController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    nop

    .line 397
    return p1

    .line 394
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    throw p1
.end method

.method public blacklist getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;
    .registers 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Landroid/window/ITaskOrganizerController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 406
    :try_start_c
    const-string v2, "android.window.ITaskOrganizerController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 407
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 408
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 409
    iget-object p1, p0, Landroid/window/ITaskOrganizerController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x5

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 411
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    nop

    .line 417
    return-object p1

    .line 414
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    throw p1
.end method

.method public blacklist getImeLayeringTarget(I)Landroid/window/WindowContainerToken;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Landroid/window/ITaskOrganizerController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 449
    :try_start_c
    const-string v2, "android.window.ITaskOrganizerController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget-object p1, p0, Landroid/window/ITaskOrganizerController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 453
    sget-object p1, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContainerToken;
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 458
    nop

    .line 459
    return-object p1

    .line 456
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 458
    throw p1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 312
    const-string v0, "android.window.ITaskOrganizerController"

    return-object v0
.end method

.method public blacklist getRootTasks(I[I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    invoke-virtual {p0}, Landroid/window/ITaskOrganizerController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 426
    :try_start_c
    const-string v2, "android.window.ITaskOrganizerController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 429
    iget-object p1, p0, Landroid/window/ITaskOrganizerController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x6

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 431
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 436
    nop

    .line 437
    return-object p1

    .line 434
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 436
    throw p1
.end method

.method public blacklist registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/ITaskOrganizer;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Landroid/window/ITaskOrganizerController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 326
    :try_start_c
    const-string v2, "android.window.ITaskOrganizerController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 328
    iget-object p1, p0, Landroid/window/ITaskOrganizerController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 330
    sget-object p1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    nop

    .line 336
    return-object p1

    .line 333
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    throw p1
.end method

.method public blacklist restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Landroid/window/ITaskOrganizerController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 467
    :try_start_c
    const-string v2, "android.window.ITaskOrganizerController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 468
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 469
    iget-object p1, p0, Landroid/window/ITaskOrganizerController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 475
    nop

    .line 476
    return-void

    .line 473
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 475
    throw p1
.end method

.method public blacklist setExcludeLayersFromTaskSnapshot(Landroid/window/WindowContainerToken;[Landroid/view/SurfaceControl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Landroid/window/ITaskOrganizerController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 489
    :try_start_c
    const-string v2, "android.window.ITaskOrganizerController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 490
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 491
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 492
    iget-object p1, p0, Landroid/window/ITaskOrganizerController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 493
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 498
    nop

    .line 499
    return-void

    .line 496
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 498
    throw p1
.end method

.method public blacklist unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, Landroid/window/ITaskOrganizerController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 344
    :try_start_c
    const-string v2, "android.window.ITaskOrganizerController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 346
    iget-object p1, p0, Landroid/window/ITaskOrganizerController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_26

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    nop

    .line 353
    return-void

    .line 350
    :catchall_26
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    throw p1
.end method
