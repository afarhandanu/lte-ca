.class public Landroid/telephony/ims/RcsUceAdapter;
.super Ljava/lang/Object;
.source "RcsUceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;,
        Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;,
        Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;,
        Landroid/telephony/ims/RcsUceAdapter$PublishState;,
        Landroid/telephony/ims/RcsUceAdapter$StackPublishTriggerType;,
        Landroid/telephony/ims/RcsUceAdapter$ErrorCode;,
        Landroid/telephony/ims/RcsUceAdapter$RcsImsCapabilityFlag;
    }
.end annotation


# static fields
.field public static final blacklist CAPABILITY_TYPE_OPTIONS_UCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_TYPE_PRESENCE_UCE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_ETAG_EXPIRED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_2G:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_3G:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_EHRPD:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_HSPAPLUS:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_INTERNET_PDN:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_IWLAN:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_LTE_VOPS_DISABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_LTE_VOPS_ENABLED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_NR5G_VOPS_DISABLED:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_NR5G_VOPS_ENABLED:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_WLAN:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_FORBIDDEN:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_GENERIC_FAILURE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_INSUFFICIENT_MEMORY:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_LOST_NETWORK:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_AUTHORIZED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_AVAILABLE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_ENABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_FOUND:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_REGISTERED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_REQUEST_TIMEOUT:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_REQUEST_TOO_LARGE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_SERVER_UNAVAILABLE:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_NOT_PUBLISHED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_OK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_OTHER_ERROR:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_PUBLISHING:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_RCS_PROVISION_ERROR:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_REQUEST_TIMEOUT:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_VOICE_PROVISION_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "RcsUceAdapter"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPublishStateCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;",
            "Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubId:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    .line 559
    iput p2, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    .line 560
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    .line 561
    return-void
.end method

.method private blacklist addPublishStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    .registers 5

    .line 1007
    new-instance v0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V

    .line 1008
    iget-object p1, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    monitor-enter p1

    .line 1009
    :try_start_8
    iget-object v1, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    monitor-exit p1

    .line 1011
    return-object v0

    .line 1010
    :catchall_f
    move-exception p2

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p2
.end method

.method private blacklist getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;
    .registers 2

    .line 1029
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1030
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyImsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1032
    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    return-object v0
.end method

.method private blacklist removePublishStateCallback(Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    .registers 4

    .line 1022
    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1023
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;

    monitor-exit v0

    return-object p1

    .line 1024
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method


# virtual methods
.method public whitelist addOnPublishStateChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 822
    if-eqz p1, :cond_4c

    .line 825
    if-eqz p2, :cond_44

    .line 830
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 831
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_37

    .line 837
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsUceAdapter;->addPublishStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;

    move-result-object p1

    .line 839
    :try_start_11
    iget p2, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;->getBinder()Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Landroid/telephony/ims/aidl/IImsRcsController;->registerUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    :try_end_1a
    .catch Landroid/os/ServiceSpecificException; {:try_start_11 .. :try_end_1a} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1c

    .line 846
    nop

    .line 847
    return-void

    .line 842
    :catch_1c
    move-exception p1

    .line 843
    const-string p2, "Error calling IImsRcsController#registerUcePublishStateCallback"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 844
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Remote IMS Service is not available"

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 840
    :catch_2a
    move-exception p1

    .line 841
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p2, v0, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 832
    :cond_37
    const-string p1, "addOnPublishStateChangedListener : IImsRcsController is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Cannot find remote IMS service"

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 826
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null OnPublishStateChangedListener."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 823
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null Executor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getUcePublishState()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 778
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 779
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_2b

    .line 786
    :try_start_9
    iget v3, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    invoke-interface {v0, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->getUcePublishState(I)I

    move-result v0
    :try_end_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 789
    :catch_10
    move-exception v0

    .line 790
    const-string v3, "Error calling IImsRcsController#getUcePublishState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 791
    new-instance v0, Landroid/telephony/ims/ImsException;

    const-string v2, "Remote IMS Service is not available"

    invoke-direct {v0, v2, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 787
    :catch_1e
    move-exception v0

    .line 788
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 780
    :cond_2b
    const-string v0, "getUcePublishState: IImsRcsController is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v0, Landroid/telephony/ims/ImsException;

    const-string v2, "Can not find remote IMS service"

    invoke-direct {v0, v2, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public whitelist isUceSettingEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 924
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 925
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_2a

    .line 932
    :try_start_9
    iget v3, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    iget-object v4, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    .line 933
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 932
    invoke-interface {v0, v3, v4, v5}, Landroid/telephony/ims/aidl/IImsRcsController;->isUceSettingEnabled(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1b} :catch_1c

    return v0

    .line 934
    :catch_1c
    move-exception v0

    .line 935
    const-string v3, "Error calling IImsRcsController#isUceSettingEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    new-instance v0, Landroid/telephony/ims/ImsException;

    const-string v2, "Remote IMS Service is not available"

    invoke-direct {v0, v2, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 926
    :cond_2a
    const-string v0, "isUceSettingEnabled: IImsRcsController is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    new-instance v0, Landroid/telephony/ims/ImsException;

    const-string v2, "Can not find remote IMS service"

    invoke-direct {v0, v2, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public whitelist removeOnPublishStateChangedListener(Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 869
    if-eqz p1, :cond_46

    .line 873
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 874
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_38

    .line 880
    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsUceAdapter;->removePublishStateCallback(Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;

    move-result-object p1

    .line 881
    if-nez p1, :cond_12

    .line 882
    return-void

    .line 886
    :cond_12
    :try_start_12
    iget v3, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;->getBinder()Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    :try_end_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_12 .. :try_end_1b} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1d

    .line 893
    nop

    .line 894
    return-void

    .line 889
    :catch_1d
    move-exception p1

    .line 890
    const-string v0, "Error calling IImsRcsController#unregisterUcePublishStateCallback"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 891
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string v0, "Remote IMS Service is not available"

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 887
    :catch_2b
    move-exception p1

    .line 888
    new-instance v0, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v0, v1, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 875
    :cond_38
    const-string/jumbo p1, "removeOnPublishStateChangedListener: IImsRcsController is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string v0, "Cannot find remote IMS service"

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 870
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must include a non-null OnPublishStateChangedListener."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist requestAvailability(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
    .registers 12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 702
    if-eqz p2, :cond_63

    .line 705
    if-eqz p1, :cond_5b

    .line 708
    if-eqz p3, :cond_53

    .line 712
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 713
    const/4 v6, 0x1

    const-string v7, "RcsUceAdapter"

    if-eqz v0, :cond_45

    .line 719
    new-instance v5, Landroid/telephony/ims/RcsUceAdapter$2;

    invoke-direct {v5, p0, p2, p3}, Landroid/telephony/ims/RcsUceAdapter$2;-><init>(Landroid/telephony/ims/RcsUceAdapter;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V

    .line 751
    :try_start_14
    iget v1, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    iget-object p2, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    .line 752
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 751
    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsRcsController;->requestAvailability(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    :try_end_26
    .catch Landroid/os/ServiceSpecificException; {:try_start_14 .. :try_end_26} :catch_37
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_26} :catch_28

    .line 759
    nop

    .line 760
    return-void

    .line 755
    :catch_28
    move-exception v0

    move-object p1, v0

    .line 756
    const-string p2, "Error calling IImsRcsController#requestAvailability"

    invoke-static {v7, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Remote IMS Service is not available"

    invoke-direct {p1, p2, v6}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 753
    :catch_37
    move-exception v0

    move-object p1, v0

    .line 754
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object p3

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p2, p3, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 714
    :cond_45
    const-string/jumbo p1, "requestAvailability: IImsRcsController is null"

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Cannot find remote IMS service"

    invoke-direct {p1, p2, v6}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 709
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null CapabilitiesCallback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 706
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include non-null contact number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 703
    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null Executor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist requestCapabilities(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
    .registers 12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 603
    if-eqz p3, :cond_67

    .line 606
    if-eqz p2, :cond_5f

    .line 609
    if-eqz p1, :cond_57

    .line 613
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 614
    const/4 v6, 0x1

    const-string v7, "RcsUceAdapter"

    if-eqz v0, :cond_49

    .line 620
    new-instance v5, Landroid/telephony/ims/RcsUceAdapter$1;

    invoke-direct {v5, p0, p2, p3}, Landroid/telephony/ims/RcsUceAdapter$1;-><init>(Landroid/telephony/ims/RcsUceAdapter;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V

    .line 652
    :try_start_14
    iget v1, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    iget-object p2, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    .line 653
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 652
    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsRcsController;->requestCapabilities(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    :try_end_2a
    .catch Landroid/os/ServiceSpecificException; {:try_start_14 .. :try_end_2a} :catch_3b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2a} :catch_2c

    .line 660
    nop

    .line 661
    return-void

    .line 656
    :catch_2c
    move-exception v0

    move-object p1, v0

    .line 657
    const-string p2, "Error calling IImsRcsController#requestCapabilities"

    invoke-static {v7, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Remote IMS Service is not available"

    invoke-direct {p1, p2, v6}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 654
    :catch_3b
    move-exception v0

    move-object p1, v0

    .line 655
    new-instance p2, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object p3

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p2, p3, p1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 615
    :cond_49
    const-string/jumbo p1, "requestCapabilities: IImsRcsController is null"

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string p2, "Can not find remote IMS service"

    invoke-direct {p1, p2, v6}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 610
    :cond_57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include non-null contact number list."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 607
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null Executor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 604
    :cond_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must include a non-null CapabilitiesCallback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setUceSettingEnabled(Z)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 981
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 982
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_1e

    .line 989
    :try_start_9
    iget v3, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    invoke-interface {v0, v3, p1}, Landroid/telephony/ims/aidl/IImsRcsController;->setUceSettingEnabled(IZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    .line 994
    nop

    .line 995
    return-void

    .line 990
    :catch_10
    move-exception p1

    .line 991
    const-string v0, "Error calling IImsRcsController#setUceSettingEnabled"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 992
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string v0, "Remote IMS Service is not available"

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 983
    :cond_1e
    const-string/jumbo p1, "setUceSettingEnabled: IImsRcsController is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string v0, "Can not find remote IMS service"

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method
