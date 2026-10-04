.class public final Landroid/view/contentcapture/ContentCaptureManager;
.super Ljava/lang/Object;
.source "ContentCaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;,
        Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;,
        Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;,
        Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;,
        Landroid/view/contentcapture/ContentCaptureManager$Dumper;,
        Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;,
        Landroid/view/contentcapture/ContentCaptureManager$LoggingLevel;,
        Landroid/view/contentcapture/ContentCaptureManager$DataShareError;
    }
.end annotation


# static fields
.field public static final whitelist DATA_SHARE_ERROR_CONCURRENT_REQUEST:I = 0x2

.field public static final whitelist DATA_SHARE_ERROR_TIMEOUT_INTERRUPTED:I = 0x3

.field public static final whitelist DATA_SHARE_ERROR_UNKNOWN:I = 0x1

.field public static final blacklist DEBUG:Z = false

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_ALLOWLIST_DELAY_MS:J = 0x7530L

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_ALLOWLIST_TIMEOUT_MS:J = 0xfaL

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_AUTO_DISCONNECT_TIMEOUT_MS:J = 0xbb8L

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_BUFFER_SIZE:I = 0x96

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_OPTIONAL_GROUPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_OPTIONAL_GROUPS_CONFIG:Ljava/lang/String; = ""

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_OPTIONAL_GROUPS_THRESHOLD:I = 0x0

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_REQUIRED_GROUPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_REQUIRED_GROUPS_CONFIG:Ljava/lang/String; = ""

.field public static final blacklist DEFAULT_DISABLE_FLUSH_FOR_VIEW_TREE_APPEARING:Z = false

.field public static final blacklist DEFAULT_ENABLE_CONTENT_CAPTURE_RECEIVER:Z = true

.field public static final blacklist DEFAULT_ENABLE_CONTENT_PROTECTION_RECEIVER:Z = false

.field public static final blacklist DEFAULT_IDLE_FLUSHING_FREQUENCY_MS:I = 0x1388

.field public static final blacklist DEFAULT_LOG_HISTORY_SIZE:I = 0xa

.field public static final blacklist DEFAULT_MAX_BUFFER_SIZE:I = 0x1f4

.field public static final blacklist DEFAULT_TEXT_CHANGE_FLUSHING_FREQUENCY_MS:I = 0x3e8

.field public static final blacklist DEVICE_CONFIG_ENABLE_ACTIVITY_START_ASSIST_CONTENT:Ljava/lang/String; = "enable_activity_start_assist_content"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_CONTENT_PROTECTION_ALLOWLIST_DELAY_MS:Ljava/lang/String; = "content_protection_allowlist_delay_ms"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_CONTENT_PROTECTION_ALLOWLIST_TIMEOUT_MS:Ljava/lang/String; = "content_protection_allowlist_timeout_ms"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_CONTENT_PROTECTION_AUTO_DISCONNECT_TIMEOUT:Ljava/lang/String; = "content_protection_auto_disconnect_timeout_ms"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_CONTENT_PROTECTION_BUFFER_SIZE:Ljava/lang/String; = "content_protection_buffer_size"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_CONTENT_PROTECTION_OPTIONAL_GROUPS_CONFIG:Ljava/lang/String; = "content_protection_optional_groups_config"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_CONTENT_PROTECTION_OPTIONAL_GROUPS_THRESHOLD:Ljava/lang/String; = "content_protection_optional_groups_threshold"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_CONTENT_PROTECTION_REQUIRED_GROUPS_CONFIG:Ljava/lang/String; = "content_protection_required_groups_config"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_DISABLE_FLUSH_FOR_VIEW_TREE_APPEARING:Ljava/lang/String; = "disable_flush_for_view_tree_appearing"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_ENABLE_CONTENT_PROTECTION_RECEIVER:Ljava/lang/String; = "enable_content_protection_receiver"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_IDLE_FLUSH_FREQUENCY:Ljava/lang/String; = "idle_flush_frequency"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_IDLE_UNBIND_TIMEOUT:Ljava/lang/String; = "idle_unbind_timeout"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_LOGGING_LEVEL:Ljava/lang/String; = "logging_level"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_LOG_HISTORY_SIZE:Ljava/lang/String; = "log_history_size"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_MAX_BUFFER_SIZE:Ljava/lang/String; = "max_buffer_size"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_REPORT_LIST_VIEW_CHILDREN:Ljava/lang/String; = "report_list_view_children"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_SERVICE_EXPLICITLY_ENABLED:Ljava/lang/String; = "service_explicitly_enabled"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_TEXT_CHANGE_FLUSH_FREQUENCY:Ljava/lang/String; = "text_change_flush_frequency"

.field public static final blacklist DUMPABLE_NAME:Ljava/lang/String; = "ContentCaptureManager"

.field public static final blacklist LOGGING_LEVEL_DEBUG:I = 0x1

.field public static final blacklist LOGGING_LEVEL_OFF:I = 0x0

.field public static final blacklist LOGGING_LEVEL_VERBOSE:I = 0x2

.field public static final whitelist NO_SESSION_ID:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist RESULT_CODE_FALSE:I = 0x2

.field public static final blacklist RESULT_CODE_OK:I = 0x0

.field public static final blacklist RESULT_CODE_SECURITY_EXCEPTION:I = -0x1

.field public static final blacklist RESULT_CODE_TRUE:I = 0x1

.field private static final blacklist SYNC_CALLS_TIMEOUT_MS:I = 0x1388

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mContentCaptureConditionBuffer:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContentCaptureHandler:Landroid/os/Handler;

.field private final blacklist mContentProtectionEventBuffer:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

.field private final blacklist mDataShareAdapterResourceManager:Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

.field private blacklist mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

.field private blacklist mFlags:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

.field final blacklist mOptions:Landroid/content/ContentCaptureOptions;

.field private final blacklist mService:Landroid/view/contentcapture/IContentCaptureManager;

.field private blacklist mUiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$BGgoAybgPcW5kwRmi8OZB-nNNQo(Landroid/view/contentcapture/ContentCaptureManager;Lcom/android/internal/util/SyncResultReceiver;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/ContentCaptureManager;->lambda$getContentCaptureConditions$0(Lcom/android/internal/util/SyncResultReceiver;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hmcKxvla5xwairS_fAjDplB2sLE(Landroid/view/contentcapture/ContentCaptureManager;Lcom/android/internal/util/SyncResultReceiver;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/ContentCaptureManager;->lambda$isContentCaptureFeatureEnabled$1(Lcom/android/internal/util/SyncResultReceiver;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/view/contentcapture/ContentCaptureManager;)I
    .registers 1

    iget p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/contentcapture/ContentCaptureManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainSession(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureSession;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/IContentCaptureManager;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 221
    const-class v0, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    .line 474
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureManager;->DEFAULT_CONTENT_PROTECTION_REQUIRED_GROUPS:Ljava/util/List;

    .line 479
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureManager;->DEFAULT_CONTENT_PROTECTION_OPTIONAL_GROUPS:Ljava/util/List;

    .line 478
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V
    .registers 5

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    .line 572
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 573
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    .line 574
    const-string/jumbo v0, "service cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/contentcapture/IContentCaptureManager;

    iput-object p2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    .line 575
    const-string/jumbo p2, "options cannot be null"

    invoke-static {p3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ContentCaptureOptions;

    iput-object p2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    .line 577
    iget-object p2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget p2, p2, Landroid/content/ContentCaptureOptions;->loggingLevel:I

    invoke-static {p2}, Landroid/view/contentcapture/ContentCaptureHelper;->setLoggingLevel(I)V

    .line 578
    iget-object p2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean p2, p2, Landroid/content/ContentCaptureOptions;->disableFlushForViewTreeAppearing:Z

    invoke-virtual {p0, p2}, Landroid/view/contentcapture/ContentCaptureManager;->setFlushViewTreeAppearingEventDisabled(Z)V

    .line 580
    sget-boolean p2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz p2, :cond_5a

    sget-object p2, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Constructor for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_5a
    new-instance p1, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;-><init>(Landroid/view/contentcapture/ContentCaptureManager-IA;)V

    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDataShareAdapterResourceManager:Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    .line 584
    iget-object p1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object p1, p1, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget-boolean p1, p1, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->enableReceiver:Z

    if-eqz p1, :cond_82

    iget-object p1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object p1, p1, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget p1, p1, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->bufferSize:I

    if-lez p1, :cond_82

    .line 586
    new-instance p1, Lcom/android/internal/util/RingBuffer;

    const-class p2, Landroid/view/contentcapture/ContentCaptureEvent;

    iget-object p3, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object p3, p3, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget p3, p3, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->bufferSize:I

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentProtectionEventBuffer:Lcom/android/internal/util/RingBuffer;

    goto :goto_84

    .line 591
    :cond_82
    iput-object p2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentProtectionEventBuffer:Lcom/android/internal/util/RingBuffer;

    .line 593
    :goto_84
    return-void
.end method

.method private static blacklist getService()Landroid/view/contentcapture/IContentCaptureManager;
    .registers 1

    .line 1107
    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getServiceSettingsComponentName()Landroid/content/ComponentName;
    .registers 5

    .line 717
    nop

    .line 718
    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 719
    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    .line 721
    :cond_b
    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    .line 722
    new-instance v2, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v3, 0x1388

    invoke-direct {v2, v3}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 724
    :try_start_16
    invoke-interface {v0, v2}, Landroid/view/contentcapture/IContentCaptureManager;->getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;)V

    .line 725
    invoke-virtual {v2}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v0

    .line 726
    const/4 v3, -0x1

    if-eq v0, v3, :cond_27

    .line 729
    invoke-virtual {v2}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0

    .line 727
    :cond_27
    new-instance v0, Ljava/lang/SecurityException;

    invoke-virtual {v2}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_31} :catch_4b
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_16 .. :try_end_31} :catch_31

    .line 732
    :catch_31
    move-exception v0

    .line 733
    sget-object v2, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get service settings componentName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return-object v1

    .line 730
    :catch_4b
    move-exception v0

    .line 731
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private synthetic blacklist lambda$getContentCaptureConditions$0(Lcom/android/internal/util/SyncResultReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 798
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/view/contentcapture/IContentCaptureManager;->getContentCaptureConditions(Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method private synthetic blacklist lambda$isContentCaptureFeatureEnabled$1(Lcom/android/internal/util/SyncResultReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 910
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-interface {v0, p1}, Landroid/view/contentcapture/IContentCaptureManager;->isContentCaptureFeatureEnabled(Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method private blacklist prepareContentCaptureHandler()Landroid/os/Handler;
    .registers 2

    .line 625
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentCaptureHandler:Landroid/os/Handler;

    if-nez v0, :cond_a

    .line 626
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentCaptureHandler:Landroid/os/Handler;

    .line 628
    :cond_a
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentCaptureHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private blacklist prepareUiHandler()Landroid/os/Handler;
    .registers 2

    .line 634
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 635
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mUiHandler:Landroid/os/Handler;

    .line 637
    :cond_e
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static blacklist resetTemporaryService(I)V
    .registers 4

    .line 1051
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->getService()Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    .line 1052
    if-nez v0, :cond_d

    .line 1053
    sget-object v1, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "IContentCaptureManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_d
    :try_start_d
    invoke-interface {v0, p0}, Landroid/view/contentcapture/IContentCaptureManager;->resetTemporaryService(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_12

    .line 1059
    nop

    .line 1060
    return-void

    .line 1057
    :catch_12
    move-exception p0

    .line 1058
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist setDefaultServiceEnabled(IZ)V
    .registers 5

    .line 1095
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->getService()Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    .line 1096
    if-nez v0, :cond_d

    .line 1097
    sget-object v1, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "IContentCaptureManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_d
    :try_start_d
    invoke-interface {v0, p0, p1}, Landroid/view/contentcapture/IContentCaptureManager;->setDefaultServiceEnabled(IZ)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_12

    .line 1103
    nop

    .line 1104
    return-void

    .line 1101
    :catch_12
    move-exception p0

    .line 1102
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist setTemporaryService(ILjava/lang/String;I)V
    .registers 6

    .line 1076
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->getService()Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    .line 1077
    if-nez v0, :cond_d

    .line 1078
    sget-object v1, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "IContentCaptureManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_d
    :try_start_d
    invoke-interface {v0, p0, p1, p2}, Landroid/view/contentcapture/IContentCaptureManager;->setTemporaryService(ILjava/lang/String;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_12

    .line 1084
    nop

    .line 1085
    return-void

    .line 1082
    :catch_12
    move-exception p0

    .line 1083
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private blacklist syncRun(Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;)Lcom/android/internal/util/SyncResultReceiver;
    .registers 4

    .line 980
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 982
    :try_start_7
    invoke-interface {p1, v0}, Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;->run(Lcom/android/internal/util/SyncResultReceiver;)V

    .line 983
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result p1

    .line 984
    const/4 v1, -0x1

    if-eq p1, v1, :cond_13

    .line 991
    nop

    .line 992
    return-object v0

    .line 985
    :cond_13
    new-instance p1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1d} :catch_26
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_7 .. :try_end_1d} :catch_1d

    .line 989
    :catch_1d
    move-exception p1

    .line 990
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Fail to get syn run result from SyncResultReceiver."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 987
    :catch_26
    move-exception p1

    .line 988
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public blacklist addDumpable(Landroid/app/Activity;)V
    .registers 4

    .line 997
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    if-nez v0, :cond_c

    .line 998
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/contentcapture/ContentCaptureManager$Dumper;-><init>(Landroid/view/contentcapture/ContentCaptureManager;Landroid/view/contentcapture/ContentCaptureManager-IA;)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    .line 1000
    :cond_c
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    .line 1001
    return-void
.end method

.method public blacklist flush(I)V
    .registers 3

    .line 681
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    .line 682
    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->flush(I)V

    .line 683
    return-void
.end method

.method public whitelist getContentCaptureConditions()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;"
        }
    .end annotation

    .line 795
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 797
    :cond_e
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/contentcapture/ContentCaptureManager;)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/ContentCaptureManager;->syncRun(Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;)Lcom/android/internal/util/SyncResultReceiver;

    move-result-object v0

    .line 801
    nop

    .line 802
    :try_start_18
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableListResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 803
    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureHelper;->toSet(Ljava/util/List;)Landroid/util/ArraySet;

    move-result-object v0
    :try_end_20
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_18 .. :try_end_20} :catch_21

    return-object v0

    .line 804
    :catch_21
    move-exception v0

    .line 805
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to get content capture conditions."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getContentProtectionEventBuffer()Lcom/android/internal/util/RingBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentProtectionEventBuffer:Lcom/android/internal/util/RingBuffer;

    return-object v0
.end method

.method public blacklist getFlushViewTreeAppearingEventDisabled()Z
    .registers 3

    .line 890
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_3
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 893
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;
    .registers 9

    .line 607
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 608
    :try_start_3
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    if-nez v0, :cond_3a

    .line 609
    new-instance v2, Landroid/view/contentcapture/MainContentCaptureSession;

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    .line 612
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureManager;->prepareUiHandler()Landroid/os/Handler;

    move-result-object v5

    .line 613
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureManager;->prepareContentCaptureHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/contentcapture/MainContentCaptureSession;-><init>(Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;Landroid/view/contentcapture/ContentCaptureManager;Landroid/os/Handler;Landroid/os/Handler;Landroid/view/contentcapture/IContentCaptureManager;)V

    iput-object v2, v4, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    .line 616
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_3b

    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMainContentCaptureSession(): created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 608
    :cond_3a
    move-object v4, p0

    .line 618
    :cond_3b
    :goto_3b
    iget-object v0, v4, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    monitor-exit v1

    return-object v0

    .line 619
    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public whitelist getServiceComponentName()Landroid/content/ComponentName;
    .registers 3

    .line 693
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 695
    :cond_e
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 697
    :try_start_15
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-interface {v1, v0}, Landroid/view/contentcapture/IContentCaptureManager;->getServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V

    .line 698
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_2a
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_15 .. :try_end_20} :catch_21

    return-object v0

    .line 701
    :catch_21
    move-exception v0

    .line 702
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to get service componentName."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :catch_2a
    move-exception v0

    .line 700
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist isContentCaptureConditionEnabled(Landroid/view/contentcapture/ContentCaptureCondition;)Z
    .registers 4

    .line 770
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentCaptureConditionBuffer:Ljava/util/Set;

    if-nez v0, :cond_16

    .line 771
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentCaptureConditionBuffer:Ljava/util/Set;

    .line 772
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getContentCaptureConditions()Ljava/util/Set;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_16

    .line 774
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentCaptureConditionBuffer:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 777
    :cond_16
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentCaptureConditionBuffer:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist isContentCaptureEnabled()Z
    .registers 4

    .line 753
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 756
    :cond_8
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_b
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    .line 758
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_19

    .line 761
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureSession;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    .line 763
    :cond_17
    const/4 v0, 0x1

    return v0

    .line 758
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist isContentCaptureFeatureEnabled()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 909
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda1;-><init>(Landroid/view/contentcapture/ContentCaptureManager;)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/ContentCaptureManager;->syncRun(Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;)Lcom/android/internal/util/SyncResultReceiver;

    move-result-object v0

    .line 913
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v0

    .line 914
    packed-switch v0, :pswitch_data_4a

    .line 920
    sget-object v2, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    goto :goto_17

    .line 918
    :pswitch_14
    return v1

    .line 916
    :pswitch_15
    const/4 v0, 0x1

    return v0

    .line 920
    :goto_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received invalid result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_a .. :try_end_2e} :catch_2f

    .line 921
    return v1

    .line 923
    :catch_2f
    move-exception v0

    .line 924
    sget-object v2, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get content capture feature enable status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    return v1

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method public blacklist onActivityCreated(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 7

    .line 644
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    .line 645
    :cond_7
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 646
    :try_start_a
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/view/contentcapture/ContentCaptureSession;->start(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 648
    monitor-exit v0

    .line 649
    return-void

    .line 648
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw p1
.end method

.method public blacklist onActivityDestroyed()V
    .registers 2

    .line 668
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    .line 669
    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->destroy()V

    .line 670
    return-void
.end method

.method public blacklist onActivityPaused()V
    .registers 2

    .line 661
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    .line 662
    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->notifySessionPaused()V

    .line 663
    return-void
.end method

.method public blacklist onActivityResumed()V
    .registers 2

    .line 654
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    .line 655
    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->notifySessionResumed()V

    .line 656
    return-void
.end method

.method public whitelist removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 3

    .line 936
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    :try_start_3
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-interface {v0, p1}, Landroid/view/contentcapture/IContentCaptureManager;->removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 942
    nop

    .line 943
    return-void

    .line 940
    :catch_a
    move-exception p1

    .line 941
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setContentCaptureEnabled(Z)V
    .registers 5

    .line 816
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_29

    .line 817
    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setContentCaptureEnabled(): setting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_29
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    if-eqz p1, :cond_35

    .line 823
    :try_start_2e
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    goto :goto_3b

    .line 825
    :cond_35
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    .line 827
    :goto_3b
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    .line 828
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_46

    .line 829
    if-eqz v1, :cond_45

    .line 830
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/view/contentcapture/ContentCaptureSession;->setDisabled(Z)Z

    .line 832
    :cond_45
    return-void

    .line 828
    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public blacklist setFlushViewTreeAppearingEventDisabled(Z)V
    .registers 5

    .line 871
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_1d

    .line 872
    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFlushViewTreeAppearingEventDisabled(): setting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_1d
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 876
    if-eqz p1, :cond_29

    .line 877
    :try_start_22
    iget p1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    goto :goto_2f

    .line 879
    :cond_29
    iget p1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    .line 881
    :goto_2f
    monitor-exit v0

    .line 882
    return-void

    .line 881
    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public whitelist shareData(Landroid/view/contentcapture/DataShareRequest;Ljava/util/concurrent/Executor;Landroid/view/contentcapture/DataShareWriteAdapter;)V
    .registers 8

    .line 960
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    :try_start_9
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    new-instance v1, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDataShareAdapterResourceManager:Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    const/4 v3, 0x0

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/view/contentcapture/DataShareWriteAdapter;Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;Landroid/view/contentcapture/ContentCaptureManager-IA;)V

    invoke-interface {v0, p1, v1}, Landroid/view/contentcapture/IContentCaptureManager;->shareData(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_18

    .line 970
    nop

    .line 971
    return-void

    .line 968
    :catch_18
    move-exception p1

    .line 969
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .registers 6

    .line 840
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_1f

    .line 841
    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWindowAttributes(): window flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_1f
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, 0x2000

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_29

    move p1, v1

    goto :goto_2a

    :cond_29
    move p1, v0

    .line 848
    :goto_2a
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 849
    :try_start_2d
    iget v3, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_33

    move v0, v1

    .line 850
    :cond_33
    if-eqz p1, :cond_3c

    .line 851
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    goto :goto_42

    .line 853
    :cond_3c
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    .line 855
    :goto_42
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    .line 856
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_4d

    .line 859
    if-eqz v1, :cond_4c

    if-nez v0, :cond_4c

    .line 860
    invoke-virtual {v1, p1}, Landroid/view/contentcapture/ContentCaptureSession;->setDisabled(Z)Z

    .line 862
    :cond_4c
    return-void

    .line 856
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method
