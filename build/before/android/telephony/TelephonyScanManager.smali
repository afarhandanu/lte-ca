.class public final Landroid/telephony/TelephonyScanManager;
.super Ljava/lang/Object;
.source "TelephonyScanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyScanManager$NetworkScanCallback;,
        Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    }
.end annotation


# static fields
.field public static final blacklist CALLBACK_RESTRICTED_SCAN_RESULTS:I = 0x4

.field public static final greylist-max-o CALLBACK_SCAN_COMPLETE:I = 0x3

.field public static final greylist-max-o CALLBACK_SCAN_ERROR:I = 0x2

.field public static final greylist-max-o CALLBACK_SCAN_RESULTS:I = 0x1

.field public static final blacklist CALLBACK_TELEPHONY_DIED:I = 0x5

.field public static final blacklist INVALID_SCAN_ID:I = -0x1

.field public static final greylist-max-o SCAN_RESULT_KEY:Ljava/lang/String; = "scanResult"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TelephonyScanManager"


# instance fields
.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLooper:Landroid/os/Looper;

.field private final greylist-max-o mMessenger:Landroid/os/Messenger;

.field private final greylist-max-o mScanInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyScanManager$NetworkScanInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telephony/TelephonyScanManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telephony/TelephonyScanManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    .line 119
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TelephonyScanManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 121
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyScanManager;->mLooper:Landroid/os/Looper;

    .line 122
    new-instance v0, Landroid/telephony/TelephonyScanManager$1;

    iget-object v1, p0, Landroid/telephony/TelephonyScanManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Landroid/telephony/TelephonyScanManager$1;-><init>(Landroid/telephony/TelephonyScanManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/TelephonyScanManager;->mHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/telephony/TelephonyScanManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telephony/TelephonyScanManager;->mMessenger:Landroid/os/Messenger;

    .line 216
    new-instance v0, Landroid/telephony/TelephonyScanManager$2;

    invoke-direct {v0, p0}, Landroid/telephony/TelephonyScanManager$2;-><init>(Landroid/telephony/TelephonyScanManager;)V

    iput-object v0, p0, Landroid/telephony/TelephonyScanManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 222
    return-void
.end method

.method private greylist-max-o getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .line 296
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 294
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o saveScanInfo(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 7

    .line 290
    iget-object v0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    new-instance v1, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    invoke-direct {v1, p2, p3, p4}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;-><init>(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    return-void
.end method


# virtual methods
.method public blacklist requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/NetworkScan;
    .registers 20

    .line 250
    move-object/from16 v8, p4

    move-object/from16 v9, p5

    const/4 v10, 0x0

    :try_start_5
    const-string v0, "Request was null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    const-string v0, "Callback was null"

    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    const-string v0, "Executor was null"

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    invoke-direct {p0}, Landroid/telephony/TelephonyScanManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 254
    if-nez v0, :cond_1b

    return-object v10

    .line 260
    :cond_1b
    iget-object v11, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1e} :catch_5f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_1e} :catch_54

    .line 261
    :try_start_1e
    iget-object v4, p0, Landroid/telephony/TelephonyScanManager;->mMessenger:Landroid/os/Messenger;

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 265
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3c

    .line 266
    const-string p1, "TelephonyScanManager"

    const-string p2, "Failed to initiate network scan"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    monitor-exit v11

    return-object v10

    .line 275
    :cond_3c
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/TelephonyScanManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 276
    invoke-direct {p0, p2, p3, v8, v9}, Landroid/telephony/TelephonyScanManager;->saveScanInfo(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    .line 277
    new-instance v0, Landroid/telephony/NetworkScan;

    invoke-direct {v0, p2, p1}, Landroid/telephony/NetworkScan;-><init>(II)V

    monitor-exit v11

    return-object v0

    .line 278
    :catchall_50
    move-exception v0

    move-object p1, v0

    monitor-exit v11
    :try_end_53
    .catchall {:try_start_1e .. :try_end_53} :catchall_50

    :try_start_53
    throw p1
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_54} :catch_5f
    .catch Ljava/lang/NullPointerException; {:try_start_53 .. :try_end_54} :catch_54

    .line 281
    :catch_54
    move-exception v0

    move-object p1, v0

    .line 282
    const-string p2, "TelephonyScanManager"

    const-string/jumbo v0, "requestNetworkScan NPE"

    invoke-static {p2, v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6a

    .line 279
    :catch_5f
    move-exception v0

    move-object p1, v0

    .line 280
    const-string p2, "TelephonyScanManager"

    const-string/jumbo v0, "requestNetworkScan RemoteException"

    invoke-static {p2, v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    nop

    .line 284
    :goto_6a
    return-object v10
.end method
