.class public Landroid/telephony/ims/ImsMmTelManager;
.super Ljava/lang/Object;
.source "ImsMmTelManager.java"

# interfaces
.implements Landroid/telephony/ims/RegistrationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;,
        Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;,
        Landroid/telephony/ims/ImsMmTelManager$WiFiCallingMode;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ImsMmTelManager"

.field public static final whitelist WIFI_MODE_CELLULAR_PREFERRED:I = 0x1

.field public static final blacklist WIFI_MODE_UNKNOWN:I = -0x1

.field public static final whitelist WIFI_MODE_WIFI_ONLY:I = 0x0

.field public static final whitelist WIFI_MODE_WIFI_PREFERRED:I = 0x2

.field private static final blacklist sTelephonyCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSubId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$ZnoNQIvyAW1vNl5u8uNW59nej4Q()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    invoke-static {}, Landroid/telephony/ims/ImsMmTelManager;->getITelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 236
    new-instance v0, Landroid/telephony/BinderCacheManager;

    new-instance v1, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Landroid/telephony/BinderCacheManager;-><init>(Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;)V

    sput-object v0, Landroid/telephony/ims/ImsMmTelManager;->sTelephonyCache:Landroid/telephony/BinderCacheManager;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/telephony/BinderCacheManager;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;)V"
        }
    .end annotation

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/telephony/ims/ImsMmTelManager;-><init>(Landroid/content/Context;ILandroid/telephony/BinderCacheManager;)V

    .line 277
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/telephony/BinderCacheManager;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;)V"
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Landroid/telephony/ims/ImsMmTelManager;->mContext:Landroid/content/Context;

    .line 286
    iput p2, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    .line 287
    iput-object p3, p0, Landroid/telephony/ims/ImsMmTelManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 288
    return-void
.end method

.method public static whitelist createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 267
    new-instance v0, Landroid/telephony/ims/ImsMmTelManager;

    sget-object v1, Landroid/telephony/ims/ImsMmTelManager;->sTelephonyCache:Landroid/telephony/BinderCacheManager;

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/ImsMmTelManager;-><init>(ILandroid/telephony/BinderCacheManager;)V

    return-object v0

    .line 264
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid subscription ID"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .line 1720
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0}, Landroid/telephony/BinderCacheManager;->getBinder()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method private static blacklist getITelephonyInterface()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .line 1726
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1727
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1728
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1724
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1729
    return-object v0
.end method

.method private blacklist getOpPackageName()Ljava/lang/String;
    .registers 2

    .line 1712
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 1713
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1715
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$getRegistrationState$0(Ljava/util/function/Consumer;)V
    .registers 2

    .line 594
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getRegistrationTransportType$1(Ljava/util/function/Consumer;)V
    .registers 2

    .line 641
    nop

    .line 642
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 641
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist wifiCallingModeToString(I)Ljava/lang/String;
    .registers 3

    .line 1742
    packed-switch p0, :pswitch_data_2a

    .line 1748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1746
    :pswitch_1d
    const-string p0, "WIFI_PREFERRED"

    return-object p0

    .line 1745
    :pswitch_20
    const-string p0, "CELLULAR_PREFERRED"

    return-object p0

    .line 1744
    :pswitch_23
    const-string p0, "WIFI_ONLY"

    return-object p0

    .line 1743
    :pswitch_26
    const-string p0, "UNKNOWN"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public whitelist getFeatureState(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 1619
    if-eqz p1, :cond_38

    .line 1622
    if-eqz p2, :cond_30

    .line 1626
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1627
    if-eqz v0, :cond_27

    .line 1633
    :try_start_a
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    new-instance v2, Landroid/telephony/ims/ImsMmTelManager$4;

    invoke-direct {v2, p0, p1, p2}, Landroid/telephony/ims/ImsMmTelManager$4;-><init>(Landroid/telephony/ims/ImsMmTelManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getImsMmTelFeatureState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_14} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    .line 1648
    goto :goto_19

    .line 1646
    :catch_15
    move-exception p1

    .line 1647
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1649
    :goto_19
    return-void

    .line 1644
    :catch_1a
    move-exception p1

    .line 1645
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p2, v0, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 1628
    :cond_27
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Could not find Telephony Service."

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 1623
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null Consumer."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1620
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null Executor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getRegistrationState(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 568
    if-eqz p2, :cond_47

    .line 571
    if-eqz p1, :cond_3f

    .line 575
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 576
    if-eqz v0, :cond_37

    .line 581
    :try_start_a
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    new-instance v2, Landroid/telephony/ims/ImsMmTelManager$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/telephony/ims/ImsMmTelManager$1;-><init>(Landroid/telephony/ims/ImsMmTelManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getImsMmTelRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_14} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    .line 595
    goto :goto_36

    .line 592
    :catch_15
    move-exception v0

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting registration state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsMmTelManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v0, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 596
    :goto_36
    return-void

    .line 577
    :cond_37
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not find Telephony Service."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 572
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null Executor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 569
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null callback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getRegistrationTransportType(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 614
    if-eqz p2, :cond_47

    .line 617
    if-eqz p1, :cond_3f

    .line 621
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 622
    if-eqz v0, :cond_37

    .line 627
    :try_start_a
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    new-instance v2, Landroid/telephony/ims/ImsMmTelManager$2;

    invoke-direct {v2, p0, p1, p2}, Landroid/telephony/ims/ImsMmTelManager$2;-><init>(Landroid/telephony/ims/ImsMmTelManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getImsMmTelRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_14} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    .line 643
    goto :goto_36

    .line 639
    :catch_15
    move-exception v0

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting transport type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsMmTelManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v0, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 644
    :goto_36
    return-void

    .line 623
    :cond_37
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not find Telephony Service."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 618
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null Executor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 615
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null callback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getVoWiFiModeSetting()I
    .registers 4

    .line 1389
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1390
    if-eqz v0, :cond_2d

    .line 1395
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getVoWiFiModeSetting(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1403
    :catch_d
    move-exception v0

    .line 1404
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1396
    :catch_13
    move-exception v0

    .line 1397
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    .line 1399
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1401
    :cond_23
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1391
    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find Telephony Service."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getVoWiFiRoamingModeSetting()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1463
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1464
    if-eqz v0, :cond_2d

    .line 1469
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getVoWiFiRoamingModeSetting(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1477
    :catch_d
    move-exception v0

    .line 1478
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1470
    :catch_13
    move-exception v0

    .line 1471
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    .line 1473
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1475
    :cond_23
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1465
    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find Telephony Service."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isAdvancedCallingSettingEnabled()Z
    .registers 4

    .line 791
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_2d

    .line 797
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isAdvancedCallingSettingEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 805
    :catch_d
    move-exception v0

    .line 806
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 798
    :catch_13
    move-exception v0

    .line 799
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    .line 801
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 803
    :cond_23
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find Telephony Service."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isAvailable(II)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 910
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 911
    if-eqz v0, :cond_13

    .line 916
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isAvailable(III)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 917
    :catch_d
    move-exception p1

    .line 918
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 912
    :cond_13
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not find Telephony Service."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist isCapable(II)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 880
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 881
    if-eqz v0, :cond_13

    .line 886
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isCapable(III)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 887
    :catch_d
    move-exception p1

    .line 888
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 882
    :cond_13
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not find Telephony Service."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist isCrossSimCallingEnabled()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 1176
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1177
    if-eqz v0, :cond_20

    .line 1183
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isCrossSimCallingEnabledByUser(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1186
    :catch_d
    move-exception v0

    .line 1187
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1190
    const/4 v0, 0x0

    return v0

    .line 1184
    :catch_13
    move-exception v0

    .line 1185
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1178
    :cond_20
    new-instance v0, Landroid/telephony/ims/ImsException;

    const-string v1, "Could not find Telephony Service."

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public whitelist isSupported(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 944
    if-eqz p4, :cond_38

    .line 947
    if-eqz p3, :cond_30

    .line 951
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 952
    if-eqz v0, :cond_27

    .line 958
    :try_start_a
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    new-instance v2, Landroid/telephony/ims/ImsMmTelManager$3;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/ims/ImsMmTelManager$3;-><init>(Landroid/telephony/ims/ImsMmTelManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isMmTelCapabilitySupported(ILcom/android/internal/telephony/IIntegerConsumer;II)V
    :try_end_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_14} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    .line 973
    goto :goto_19

    .line 971
    :catch_15
    move-exception p1

    .line 972
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 974
    :goto_19
    return-void

    .line 969
    :catch_1a
    move-exception p1

    .line 970
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p3

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p2, p3, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 953
    :cond_27
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Could not find Telephony Service."

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 948
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null Executor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 945
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null Consumer."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist isTtyOverVolteEnabled()Z
    .registers 4

    .line 1583
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1584
    if-eqz v0, :cond_2d

    .line 1589
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isTtyOverVolteEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1597
    :catch_d
    move-exception v0

    .line 1598
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1590
    :catch_13
    move-exception v0

    .line 1591
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    .line 1593
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1595
    :cond_23
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1585
    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find Telephony Service."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isVoWiFiRoamingSettingEnabled()Z
    .registers 4

    .line 1266
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1267
    if-eqz v0, :cond_2d

    .line 1272
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isVoWiFiRoamingSettingEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1280
    :catch_d
    move-exception v0

    .line 1281
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1273
    :catch_13
    move-exception v0

    .line 1274
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    .line 1276
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1278
    :cond_23
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1268
    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find Telephony Service."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isVoWiFiSettingEnabled()Z
    .registers 4

    .line 1083
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1084
    if-eqz v0, :cond_2d

    .line 1089
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isVoWiFiSettingEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1097
    :catch_d
    move-exception v0

    .line 1098
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1090
    :catch_13
    move-exception v0

    .line 1091
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    .line 1093
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1095
    :cond_23
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1085
    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find Telephony Service."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isVtSettingEnabled()Z
    .registers 4

    .line 1006
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1007
    if-eqz v0, :cond_2d

    .line 1012
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isVtSettingEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1020
    :catch_d
    move-exception v0

    .line 1021
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1013
    :catch_13
    move-exception v0

    .line 1014
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    .line 1016
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1018
    :cond_23
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1008
    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find Telephony Service."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerImsEmergencyRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 488
    if-eqz p2, :cond_47

    .line 491
    if-eqz p1, :cond_3f

    .line 494
    invoke-virtual {p2, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 496
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    .line 497
    const/4 v0, 0x1

    if-eqz p1, :cond_37

    .line 503
    :try_start_e
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/android/internal/telephony/ITelephony;->registerImsEmergencyRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_17} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_24
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_19

    .line 510
    nop

    .line 511
    return-void

    .line 508
    :catch_19
    move-exception p1

    .line 509
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 506
    :catch_24
    move-exception p1

    .line 507
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 504
    :catch_2a
    move-exception p1

    .line 505
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p2, v0, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 498
    :cond_37
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Could not find Telephony Service."

    invoke-direct {p1, p2, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 492
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null Executor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 489
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null RegistrationCallback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    if-eqz p2, :cond_50

    .line 321
    if-eqz p1, :cond_48

    .line 324
    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 326
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    .line 327
    const/4 v0, 0x1

    if-eqz p1, :cond_40

    .line 333
    :try_start_e
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/android/internal/telephony/ITelephony;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_17} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_19

    .line 343
    nop

    .line 344
    return-void

    .line 341
    :catch_19
    move-exception p1

    .line 342
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 334
    :catch_24
    move-exception p1

    .line 335
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_34

    .line 337
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 339
    :cond_34
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p2, v0, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 328
    :cond_40
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Could not find Telephony Service."

    invoke-direct {p1, p2, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 322
    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null Executor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 319
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null RegistrationCallback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 362
    if-eqz p2, :cond_41

    .line 365
    if-eqz p1, :cond_39

    .line 368
    invoke-virtual {p2, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 370
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    .line 371
    const/4 v0, 0x1

    if-eqz p1, :cond_31

    .line 377
    :try_start_e
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/android/internal/telephony/ITelephony;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_17} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_19

    .line 382
    nop

    .line 383
    return-void

    .line 380
    :catch_19
    move-exception p1

    .line 381
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 378
    :catch_24
    move-exception p1

    .line 379
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p2, v0, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 372
    :cond_31
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Could not find Telephony Service."

    invoke-direct {p1, p2, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 366
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null Executor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 363
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null RegistrationCallback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 1672
    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1673
    const-string v0, "Must include a non-null Executor."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1675
    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsStateCallback;->init(Ljava/util/concurrent/Executor;)V

    .line 1676
    iget-object p1, p0, Landroid/telephony/ims/ImsMmTelManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsStateCallback;)V

    invoke-virtual {p1, p2, v0}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/ITelephony;

    .line 1677
    const/4 v0, 0x1

    if-eqz p1, :cond_47

    .line 1683
    :try_start_20
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    .line 1685
    invoke-virtual {p2}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object p2

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1683
    invoke-interface {p1, v1, v0, p2, v2}, Lcom/android/internal/telephony/ITelephony;->registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_2d} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2d} :catch_2f
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_2d} :catch_2f

    .line 1690
    nop

    .line 1691
    return-void

    .line 1688
    :catch_2f
    move-exception p1

    .line 1689
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 1686
    :catch_3a
    move-exception p1

    .line 1687
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p2, v0, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 1678
    :cond_47
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Telephony server is down"

    invoke-direct {p1, p2, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public whitelist registerMmTelCapabilityCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 684
    if-eqz p2, :cond_47

    .line 687
    if-eqz p1, :cond_3f

    .line 690
    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 692
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    .line 693
    const/4 v0, 0x1

    if-eqz p1, :cond_37

    .line 699
    :try_start_e
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/android/internal/telephony/ITelephony;->registerMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_17} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_24
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_19

    .line 706
    nop

    .line 707
    return-void

    .line 704
    :catch_19
    move-exception p1

    .line 705
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 702
    :catch_24
    move-exception p1

    .line 703
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 700
    :catch_2a
    move-exception p1

    .line 701
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p2, v0, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 694
    :cond_37
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Could not find Telephony Service."

    invoke-direct {p1, p2, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 688
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null Executor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 685
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null RegistrationCallback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setAdvancedCallingSettingEnabled(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 839
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_2d

    .line 845
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setAdvancedCallingSettingEnabled(IZ)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 855
    nop

    .line 856
    return-void

    .line 853
    :catch_d
    move-exception p1

    .line 854
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 846
    :catch_13
    move-exception p1

    .line 847
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 849
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not find Telephony Service."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setCrossSimCallingEnabled(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 1223
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_1e

    .line 1230
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setCrossSimCallingEnabled(IZ)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 1235
    goto :goto_10

    .line 1233
    :catch_c
    move-exception p1

    .line 1234
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1236
    :goto_10
    return-void

    .line 1231
    :catch_11
    move-exception p1

    .line 1232
    new-instance v0, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v0, v1, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1225
    :cond_1e
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string v0, "Could not find Telephony Service."

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public whitelist setRttCapabilitySetting(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1537
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1538
    if-eqz v0, :cond_2d

    .line 1543
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRttCapabilitySetting(IZ)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1553
    nop

    .line 1554
    return-void

    .line 1551
    :catch_d
    move-exception p1

    .line 1552
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1544
    :catch_13
    move-exception p1

    .line 1545
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 1547
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1549
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1539
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not find Telephony Service."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setVoWiFiModeSetting(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1425
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1426
    if-eqz v0, :cond_2d

    .line 1431
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVoWiFiModeSetting(II)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1441
    nop

    .line 1442
    return-void

    .line 1439
    :catch_d
    move-exception p1

    .line 1440
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1432
    :catch_13
    move-exception p1

    .line 1433
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 1435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1437
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1427
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not find Telephony Service."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setVoWiFiNonPersistent(ZI)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1339
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1340
    if-eqz v0, :cond_2d

    .line 1345
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVoWiFiNonPersistent(IZI)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1355
    nop

    .line 1356
    return-void

    .line 1353
    :catch_d
    move-exception p1

    .line 1354
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1346
    :catch_13
    move-exception p1

    .line 1347
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_23

    .line 1349
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1351
    :cond_23
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1341
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not find Telephony Service."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setVoWiFiRoamingModeSetting(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1501
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1502
    if-eqz v0, :cond_2d

    .line 1507
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVoWiFiRoamingModeSetting(II)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1517
    nop

    .line 1518
    return-void

    .line 1515
    :catch_d
    move-exception p1

    .line 1516
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1508
    :catch_13
    move-exception p1

    .line 1509
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 1511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1513
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1503
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not find Telephony Service."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setVoWiFiRoamingSettingEnabled(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1300
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1301
    if-eqz v0, :cond_2d

    .line 1306
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVoWiFiRoamingSettingEnabled(IZ)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1316
    nop

    .line 1317
    return-void

    .line 1314
    :catch_d
    move-exception p1

    .line 1315
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1307
    :catch_13
    move-exception p1

    .line 1308
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 1310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1312
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1302
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not find Telephony Service."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setVoWiFiSettingEnabled(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1116
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1117
    if-eqz v0, :cond_2d

    .line 1122
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVoWiFiSettingEnabled(IZ)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1132
    nop

    .line 1133
    return-void

    .line 1130
    :catch_d
    move-exception p1

    .line 1131
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1123
    :catch_13
    move-exception p1

    .line 1124
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 1126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1128
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not find Telephony Service."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setVtSettingEnabled(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1038
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1039
    if-eqz v0, :cond_2d

    .line 1044
    :try_start_6
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVtSettingEnabled(IZ)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1054
    nop

    .line 1055
    return-void

    .line 1052
    :catch_d
    move-exception p1

    .line 1053
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1045
    :catch_13
    move-exception p1

    .line 1046
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 1048
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1050
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not find Telephony Service."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterImsEmergencyRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 542
    if-eqz p1, :cond_21

    .line 546
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 547
    if-nez v0, :cond_10

    .line 548
    const-string p1, "ImsMmTelManager"

    const-string v0, "Could not find Telephony Service."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-void

    .line 553
    :cond_10
    :try_start_10
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterImsEmergencyRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1b

    .line 556
    nop

    .line 557
    return-void

    .line 554
    :catch_1b
    move-exception p1

    .line 555
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 543
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must include a non-null RegistrationCallback."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterImsRegistrationCallback(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    if-eqz p1, :cond_21

    .line 407
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_19

    .line 413
    :try_start_8
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    .line 416
    nop

    .line 417
    return-void

    .line 414
    :catch_13
    move-exception p1

    .line 415
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 409
    :cond_19
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not find Telephony Service."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 404
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must include a non-null RegistrationCallback."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 4

    .line 435
    if-eqz p1, :cond_21

    .line 439
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_19

    .line 445
    :try_start_8
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    .line 448
    nop

    .line 449
    return-void

    .line 446
    :catch_13
    move-exception p1

    .line 447
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 441
    :cond_19
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not find Telephony Service."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must include a non-null RegistrationCallback."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V
    .registers 3

    .line 1699
    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1701
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 1703
    if-eqz v0, :cond_19

    .line 1704
    :try_start_f
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_19

    .line 1706
    :catch_17
    move-exception p1

    goto :goto_1a

    .line 1708
    :cond_19
    :goto_19
    nop

    .line 1709
    :goto_1a
    return-void
.end method

.method public whitelist unregisterMmTelCapabilityCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    .registers 4

    .line 736
    if-eqz p1, :cond_21

    .line 740
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 741
    if-nez v0, :cond_10

    .line 742
    const-string p1, "ImsMmTelManager"

    const-string v0, "Could not find Telephony Service."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void

    .line 746
    :cond_10
    :try_start_10
    iget v1, p0, Landroid/telephony/ims/ImsMmTelManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1b

    .line 749
    nop

    .line 750
    return-void

    .line 747
    :catch_1b
    move-exception p1

    .line 748
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 737
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must include a non-null RegistrationCallback."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
