.class Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMbmsDownloadService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsDownloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 358
    return-void
.end method


# virtual methods
.method public greylist-max-o addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 505
    :try_start_c
    const-string v2, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 506
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 507
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 508
    iget-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x8

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 515
    nop

    .line 516
    return p1

    .line 513
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 515
    throw p1
.end method

.method public blacklist addServiceAnnouncement(I[B)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 430
    :try_start_c
    const-string v2, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 433
    iget-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 435
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 440
    nop

    .line 441
    return p1

    .line 438
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 440
    throw p1
.end method

.method public greylist-max-o addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 467
    :try_start_c
    const-string v2, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 468
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 469
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 470
    iget-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x6

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 477
    nop

    .line 478
    return p1

    .line 475
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 477
    throw p1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 361
    iget-object v0, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    invoke-virtual {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 561
    :try_start_c
    const-string v2, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 562
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 563
    iget-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 564
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 570
    nop

    .line 571
    return p1

    .line 568
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 570
    throw p1
.end method

.method public greylist-max-o dispose(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 615
    :try_start_c
    const-string v2, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    iget-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 618
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 621
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 623
    nop

    .line 624
    return-void

    .line 621
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 623
    throw p1
.end method

.method public greylist-max-o download(Landroid/telephony/mbms/DownloadRequest;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 449
    :try_start_c
    const-string v2, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 450
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 451
    iget-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 458
    nop

    .line 459
    return p1

    .line 456
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 458
    throw p1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 365
    const-string v0, "android.telephony.mbms.vendor.IMbmsDownloadService"

    return-object v0
.end method

.method public greylist-max-o initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 373
    :try_start_c
    const-string v2, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 376
    iget-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    nop

    .line 384
    return p1

    .line 381
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    throw p1
.end method

.method public greylist-max-o listPendingDownloads(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 543
    :try_start_c
    const-string v2, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 546
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 547
    sget-object p1, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    nop

    .line 553
    return-object p1

    .line 550
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    throw p1
.end method

.method public greylist-max-o removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 524
    :try_start_c
    const-string v2, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 525
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 526
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 527
    iget-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    nop

    .line 535
    return p1

    .line 532
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    throw p1
.end method

.method public greylist-max-o removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 486
    :try_start_c
    const-string v2, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 487
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 488
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 489
    iget-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x7

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    nop

    .line 497
    return p1

    .line 494
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    throw p1
.end method

.method public greylist-max-o requestDownloadState(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    invoke-virtual {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 579
    :try_start_c
    const-string v2, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 580
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 581
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 582
    iget-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 584
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 589
    nop

    .line 590
    return p1

    .line 587
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 589
    throw p1
.end method

.method public greylist-max-o requestUpdateFileServices(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 392
    :try_start_c
    const-string v2, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 395
    iget-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 402
    nop

    .line 403
    return p1

    .line 400
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 402
    throw p1
.end method

.method public greylist-max-o resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 598
    :try_start_c
    const-string v2, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 599
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 600
    iget-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 602
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 607
    nop

    .line 608
    return p1

    .line 605
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 607
    throw p1
.end method

.method public greylist-max-o setTempFileRootDirectory(ILjava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 411
    :try_start_c
    const-string v2, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    iget-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    nop

    .line 422
    return p1

    .line 419
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    throw p1
.end method
