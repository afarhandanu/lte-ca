.class public Landroid/telephony/ims/stub/ImsSmsImplBase;
.super Ljava/lang/Object;
.source "ImsSmsImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsSmsImplBase$StatusReportResult;,
        Landroid/telephony/ims/stub/ImsSmsImplBase$DeliverStatusResult;,
        Landroid/telephony/ims/stub/ImsSmsImplBase$SendStatusResult;
    }
.end annotation


# static fields
.field public static final whitelist DELIVER_STATUS_ERROR_GENERIC:I = 0x2

.field public static final whitelist DELIVER_STATUS_ERROR_NO_MEMORY:I = 0x3

.field public static final whitelist DELIVER_STATUS_ERROR_REQUEST_NOT_SUPPORTED:I = 0x4

.field public static final whitelist DELIVER_STATUS_OK:I = 0x1

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SmsImplBase"

.field public static final whitelist RESULT_NO_NETWORK_ERROR:I = -0x1

.field public static final whitelist SEND_STATUS_ERROR:I = 0x2

.field public static final whitelist SEND_STATUS_ERROR_FALLBACK:I = 0x4

.field public static final whitelist SEND_STATUS_ERROR_RETRY:I = 0x3

.field public static final whitelist SEND_STATUS_OK:I = 0x1

.field public static final whitelist STATUS_REPORT_STATUS_ERROR:I = 0x2

.field public static final whitelist STATUS_REPORT_STATUS_OK:I = 0x1


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    .line 150
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 151
    return-void
.end method


# virtual methods
.method public whitelist acknowledgeSms(III)V
    .registers 4

    .line 224
    const-string p1, "SmsImplBase"

    const-string p2, "acknowledgeSms() not implemented."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method public whitelist acknowledgeSms(III[B)V
    .registers 6

    .line 244
    const-string p4, "SmsImplBase"

    const-string v0, "acknowledgeSms() not implemented. acknowledgeSms(int, int, int) called."

    invoke-static {p4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    .line 246
    return-void
.end method

.method public whitelist acknowledgeSmsReport(III)V
    .registers 4

    .line 263
    const-string p1, "SmsImplBase"

    const-string p2, "acknowledgeSmsReport() not implemented."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 560
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_c

    :cond_7
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    :goto_c
    return-object v0
.end method

.method public whitelist getSmsFormat()Ljava/lang/String;
    .registers 2

    .line 526
    const-string v0, "3gpp"

    return-object v0
.end method

.method public blacklist onMemoryAvailable(I)V
    .registers 2

    .line 206
    return-void
.end method

.method public final blacklist onMemoryAvailableResult(III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 425
    nop

    .line 426
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_4
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 428
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1a

    .line 430
    if-eqz v1, :cond_12

    .line 434
    :try_start_9
    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onMemoryAvailableResult(III)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 437
    goto :goto_11

    .line 435
    :catch_d
    move-exception p1

    .line 436
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 438
    :goto_11
    return-void

    .line 431
    :cond_12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Feature not ready."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 428
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public whitelist onReady()V
    .registers 1

    .line 536
    return-void
.end method

.method public final whitelist onSendSmsResult(IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    nop

    .line 358
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 360
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_20

    .line 362
    if-eqz v2, :cond_18

    .line 366
    const/4 v7, -0x1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    :try_start_e
    invoke-interface/range {v2 .. v7}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    .line 370
    goto :goto_17

    .line 368
    :catch_12
    move-exception v0

    move-object p1, v0

    .line 369
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 371
    :goto_17
    return-void

    .line 363
    :cond_18
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Feature not ready."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 360
    :catchall_20
    move-exception v0

    move-object p1, v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_20

    throw p1
.end method

.method public final whitelist onSendSmsResultError(IIIII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 394
    nop

    .line 395
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_4
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 397
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1c

    .line 399
    if-eqz v0, :cond_14

    .line 403
    move-object p0, v0

    :try_start_a
    invoke-interface/range {p0 .. p5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 406
    goto :goto_13

    .line 404
    :catch_e
    move-exception v0

    move-object p1, v0

    .line 405
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 407
    :goto_13
    return-void

    .line 400
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Feature not ready."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 397
    :catchall_1c
    move-exception v0

    move-object p1, v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1c

    throw p1
.end method

.method public final whitelist onSendSmsResultSuccess(II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 320
    nop

    .line 321
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 323
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_20

    .line 325
    if-eqz v2, :cond_18

    .line 329
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    move v3, p1

    move v4, p2

    :try_start_e
    invoke-interface/range {v2 .. v7}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    .line 333
    goto :goto_17

    .line 331
    :catch_12
    move-exception v0

    move-object p1, v0

    .line 332
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 334
    :goto_17
    return-void

    .line 326
    :cond_18
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Feature not ready."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :catchall_20
    move-exception v0

    move-object p1, v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_20

    throw p1
.end method

.method public final whitelist onSmsReceived(ILjava/lang/String;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 282
    nop

    .line 283
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_4
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 285
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_52

    .line 287
    if-eqz v1, :cond_4a

    .line 291
    :try_start_9
    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsReceived(ILjava/lang/String;[B)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 302
    goto :goto_49

    .line 292
    :catch_d
    move-exception v0

    .line 293
    const-string v1, "SmsImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deliver sms: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {p3, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p2

    .line 295
    const/4 p3, 0x2

    if-eqz p2, :cond_3d

    iget-object v0, p2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v0, :cond_3d

    .line 296
    iget-object p2, p2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p2, p2, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    goto :goto_49

    .line 299
    :cond_3d
    const-string p2, "SmsImplBase"

    const-string/jumbo v0, "onSmsReceived: Invalid pdu entered."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    .line 303
    :goto_49
    return-void

    .line 288
    :cond_4a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Feature not ready."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1
.end method

.method public final whitelist onSmsStatusReportReceived(IILjava/lang/String;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 463
    nop

    .line 464
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_4
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 466
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_37

    .line 468
    if-eqz v1, :cond_2f

    .line 472
    :try_start_9
    invoke-interface {v1, p1, p3, p4}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsStatusReportReceived(ILjava/lang/String;[B)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 476
    goto :goto_2e

    .line 473
    :catch_d
    move-exception p3

    .line 474
    const-string p4, "SmsImplBase"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not process sms status report: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 p3, 0x2

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    .line 477
    :goto_2e
    return-void

    .line 469
    :cond_2f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Feature not ready."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 466
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public final whitelist onSmsStatusReportReceived(ILjava/lang/String;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 495
    nop

    .line 496
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 497
    :try_start_4
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 498
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_52

    .line 500
    if-eqz v1, :cond_4a

    .line 504
    :try_start_9
    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsStatusReportReceived(ILjava/lang/String;[B)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 517
    goto :goto_49

    .line 505
    :catch_d
    move-exception v0

    .line 506
    const-string v1, "SmsImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not process sms status report: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {p3, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p2

    .line 508
    const/4 p3, 0x2

    if-eqz p2, :cond_3d

    iget-object v0, p2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v0, :cond_3d

    .line 509
    iget-object p2, p2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p2, p2, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    goto :goto_49

    .line 514
    :cond_3d
    const-string p2, "SmsImplBase"

    const-string/jumbo v0, "onSmsStatusReportReceived: Invalid pdu entered."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    .line 518
    :goto_49
    return-void

    .line 501
    :cond_4a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Feature not ready."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 498
    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1
.end method

.method public final greylist-max-o registerSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 3

    .line 161
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public whitelist sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 7

    .line 186
    const/4 p3, 0x2

    const/4 p4, 0x1

    :try_start_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResult(IIII)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6

    .line 190
    goto :goto_23

    .line 188
    :catch_6
    move-exception p1

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not send sms: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmsImplBase"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_23
    return-void
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 546
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_6

    .line 547
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 549
    :cond_6
    return-void
.end method
