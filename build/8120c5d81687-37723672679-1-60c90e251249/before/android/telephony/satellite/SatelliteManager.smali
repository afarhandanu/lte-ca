.class public final Landroid/telephony/satellite/SatelliteManager;
.super Ljava/lang/Object;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SatelliteManager$SatelliteException;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteDisallowedReason;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteCommunicationRestrictionReason;,
        Landroid/telephony/satellite/SatelliteManager$DatagramType;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteModemState;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteDatagramTransferState;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteDataSupportMode;,
        Landroid/telephony/satellite/SatelliteManager$DisplayMode;,
        Landroid/telephony/satellite/SatelliteManager$DeviceHoldPosition;,
        Landroid/telephony/satellite/SatelliteManager$NTRadioTechnology;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteResult;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_SATELLITE_START_NON_EMERGENCY_SESSION:Ljava/lang/String; = "android.telephony.satellite.action.SATELLITE_START_NON_EMERGENCY_SESSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SATELLITE_SUBSCRIBER_ID_LIST_CHANGED:Ljava/lang/String; = "android.telephony.satellite.action.SATELLITE_SUBSCRIBER_ID_LIST_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATAGRAM_TYPE_CHECK_PENDING_INCOMING_SMS:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATAGRAM_TYPE_KEEP_ALIVE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATAGRAM_TYPE_LAST_SOS_MESSAGE_NO_HELP_NEEDED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATAGRAM_TYPE_LAST_SOS_MESSAGE_STILL_NEED_HELP:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATAGRAM_TYPE_LOCATION_SHARING:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATAGRAM_TYPE_SMS:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATAGRAM_TYPE_SOS_MESSAGE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATAGRAM_TYPE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_HOLD_POSITION_LANDSCAPE_LEFT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_HOLD_POSITION_LANDSCAPE_RIGHT:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_HOLD_POSITION_PORTRAIT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_HOLD_POSITION_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_MODE_CLOSED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_MODE_FIXED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_MODE_OPENED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_MODE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EMERGENCY_CALL_TO_SATELLITE_HANDOVER_TYPE_SOS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EMERGENCY_CALL_TO_SATELLITE_HANDOVER_TYPE_T911:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_DEMO_MODE_ENABLED:Ljava/lang/String; = "demo_mode_enabled"

.field public static final blacklist KEY_DEPROVISION_SATELLITE_TOKENS:Ljava/lang/String; = "deprovision_satellite"

.field public static final blacklist KEY_EMERGENCY_MODE_ENABLED:Ljava/lang/String; = "emergency_mode_enabled"

.field public static final blacklist KEY_NTN_SIGNAL_STRENGTH:Ljava/lang/String; = "ntn_signal_strength"

.field public static final blacklist KEY_PROVISION_SATELLITE_TOKENS:Ljava/lang/String; = "provision_satellite"

.field public static final blacklist KEY_REQUEST_PROVISION_SUBSCRIBER_ID_TOKEN:Ljava/lang/String; = "request_provision_subscriber_id"

.field public static final blacklist KEY_SATELLITE_ACCESS_CONFIGURATION:Ljava/lang/String; = "satellite_access_configuration"

.field public static final blacklist KEY_SATELLITE_CAPABILITIES:Ljava/lang/String; = "satellite_capabilities"

.field public static final blacklist KEY_SATELLITE_COMMUNICATION_ALLOWED:Ljava/lang/String; = "satellite_communication_allowed"

.field public static final blacklist KEY_SATELLITE_DISPLAY_NAME:Ljava/lang/String; = "satellite_display_name"

.field public static final blacklist KEY_SATELLITE_ENABLED:Ljava/lang/String; = "satellite_enabled"

.field public static final blacklist KEY_SATELLITE_NEXT_VISIBILITY:Ljava/lang/String; = "satellite_next_visibility"

.field public static final blacklist KEY_SATELLITE_PROVISIONED:Ljava/lang/String; = "satellite_provisioned"

.field public static final blacklist KEY_SATELLITE_SUPPORTED:Ljava/lang/String; = "satellite_supported"

.field public static final blacklist KEY_SELECTED_NB_IOT_SATELLITE_SUBSCRIPTION_ID:Ljava/lang/String; = "selected_nb_iot_satellite_subscription_id"

.field public static final blacklist KEY_SESSION_STATS:Ljava/lang/String; = "session_stats"

.field public static final blacklist KEY_SESSION_STATS_V2:Ljava/lang/String; = "session_stats_v2"

.field public static final blacklist METADATA_SATELLITE_MANUAL_CONNECT_P2P_SUPPORT:Ljava/lang/String; = "android.telephony.METADATA_SATELLITE_MANUAL_CONNECT_P2P_SUPPORT"

.field public static final whitelist NT_RADIO_TECHNOLOGY_EMTC_NTN:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NT_RADIO_TECHNOLOGY_NB_IOT_NTN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NT_RADIO_TECHNOLOGY_NR_NTN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NT_RADIO_TECHNOLOGY_PROPRIETARY:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NT_RADIO_TECHNOLOGY_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_SATELLITE_DATA_OPTIMIZED:Ljava/lang/String; = "android.telephony.PROPERTY_SATELLITE_DATA_OPTIMIZED"

.field public static final whitelist PROPERTY_SATELLITE_MANUAL_CONNECT_P2P_SUPPORT:Ljava/lang/String; = "android.telephony.satellite.PROPERTY_SATELLITE_MANUAL_CONNECT_P2P_SUPPORT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_COMMUNICATION_RESTRICTION_REASON_ENTITLEMENT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_COMMUNICATION_RESTRICTION_REASON_GEOLOCATION:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_COMMUNICATION_RESTRICTION_REASON_USER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_IDLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_RECEIVE_FAILED:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_RECEIVE_NONE:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_RECEIVE_SUCCESS:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_RECEIVING:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_SENDING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_SEND_FAILED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_SEND_SUCCESS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_WAITING_TO_CONNECT:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATA_SUPPORT_CONSTRAINED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATA_SUPPORT_RESTRICTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATA_SUPPORT_UNCONSTRAINED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATA_SUPPORT_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_DISALLOWED_REASON_LOCATION_DISABLED:I = 0x4

.field public static final blacklist SATELLITE_DISALLOWED_REASON_NOT_IN_ALLOWED_REGION:I = 0x2

.field public static final blacklist SATELLITE_DISALLOWED_REASON_NOT_PROVISIONED:I = 0x1

.field public static final blacklist SATELLITE_DISALLOWED_REASON_NOT_SUPPORTED:I = 0x0

.field public static final blacklist SATELLITE_DISALLOWED_REASON_UNSUPPORTED_DEFAULT_MSG_APP:I = 0x3

.field public static final whitelist SATELLITE_MODEM_STATE_CONNECTED:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_DATAGRAM_RETRYING:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_DATAGRAM_TRANSFERRING:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_DISABLING_SATELLITE:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_ENABLING_SATELLITE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_IDLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_LISTENING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_NOT_CONNECTED:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_OFF:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_UNAVAILABLE:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_ACCESS_BARRED:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_DISABLE_IN_PROGRESS:I = 0x1c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_EMERGENCY_CALL_IN_PROGRESS:I = 0x1b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_ENABLE_IN_PROGRESS:I = 0x1d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_ERROR:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_ILLEGAL_STATE:I = 0x17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_INVALID_ARGUMENTS:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_INVALID_MODEM_STATE:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_INVALID_TELEPHONY_STATE:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_LOCATION_DISABLED:I = 0x19
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_LOCATION_NOT_AVAILABLE:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_MODEM_BUSY:I = 0x16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_MODEM_ERROR:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_MODEM_TIMEOUT:I = 0x18
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NETWORK_ERROR:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NETWORK_TIMEOUT:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NOT_AUTHORIZED:I = 0x13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NOT_REACHABLE:I = 0x12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NOT_SUPPORTED:I = 0x14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NO_RESOURCES:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NO_VALID_SATELLITE_SUBSCRIPTION:I = 0x1e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_RADIO_NOT_AVAILABLE:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_REQUEST_ABORTED:I = 0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_REQUEST_FAILED:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_REQUEST_IN_PROGRESS:I = 0x15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_REQUEST_NOT_SUPPORTED:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SERVER_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SERVICE_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SERVICE_NOT_PROVISIONED:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SERVICE_PROVISION_IN_PROGRESS:I = 0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SatelliteManager"

.field private static final blacklist sNtnSignalStrengthCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/NtnSignalStrengthCallback;",
            "Landroid/telephony/satellite/INtnSignalStrengthCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteCapabilitiesCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteCapabilitiesCallback;",
            "Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteCommunicationAccessStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;",
            "Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteDatagramCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteDatagramCallback;",
            "Landroid/telephony/satellite/ISatelliteDatagramCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteDisallowedReasonsCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;",
            "Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteModemStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteModemStateCallback;",
            "Landroid/telephony/satellite/ISatelliteModemStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteProvisionStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteProvisionStateCallback;",
            "Landroid/telephony/satellite/ISatelliteProvisionStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteSupportedStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/internal/telephony/IBooleanConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteTransmissionUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;",
            "Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSelectedNbIotSatelliteSubscriptionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;",
            "Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSubId:I

.field private blacklist mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDatagramCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteProvisionStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteModemStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteTransmissionUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sNtnSignalStrengthCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCapabilitiesCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteSupportedStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCommunicationAccessStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDisallowedReasonsCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSelectedNbIotSatelliteSubscriptionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 131
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/telephony/satellite/SatelliteManager;-><init>(Landroid/content/Context;I)V

    .line 132
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager;->mContext:Landroid/content/Context;

    .line 142
    iput p2, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    .line 143
    return-void
.end method

.method private static blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .line 3877
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 3878
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 3879
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 3876
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3880
    return-object v0
.end method

.method static synthetic blacklist lambda$addAttachRestrictionForCarrier$69(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2802
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$addAttachRestrictionForCarrier$70(Ljava/util/function/Consumer;)V
    .registers 2

    .line 2801
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda16;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$addAttachRestrictionForCarrier$71(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2807
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$addAttachRestrictionForCarrier$72(Ljava/util/function/Consumer;)V
    .registers 2

    .line 2806
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda30;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionSatellite$100(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 3773
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda5;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionSatellite$97(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3768
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionSatellite$98(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 3768
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda58;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda58;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionSatellite$99(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3773
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionService$36(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1856
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionService$37(Ljava/util/function/Consumer;)V
    .registers 2

    .line 1855
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda31;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionService$38(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1861
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionService$39(Ljava/util/function/Consumer;)V
    .registers 2

    .line 1860
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda49;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda49;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$pollPendingDatagrams$44(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2251
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$pollPendingDatagrams$45(Ljava/util/function/Consumer;)V
    .registers 2

    .line 2250
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda18;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$pollPendingDatagrams$46(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2256
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$pollPendingDatagrams$47(Ljava/util/function/Consumer;)V
    .registers 2

    .line 2255
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda90;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda90;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionSatellite$93(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3707
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionSatellite$94(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 3707
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda32;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionSatellite$95(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3712
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionSatellite$96(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 3712
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda54;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda54;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionService$32(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1803
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionService$33(Ljava/util/function/Consumer;)V
    .registers 2

    .line 1802
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda86;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda86;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionService$34(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1808
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionService$35(Ljava/util/function/Consumer;)V
    .registers 2

    .line 1807
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeAttachRestrictionForCarrier$73(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2849
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeAttachRestrictionForCarrier$74(Ljava/util/function/Consumer;)V
    .registers 2

    .line 2848
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda64;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda64;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeAttachRestrictionForCarrier$75(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2854
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeAttachRestrictionForCarrier$76(Ljava/util/function/Consumer;)V
    .registers 2

    .line 2853
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda57;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda57;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCapabilities$18(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1243
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCapabilities$19(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 1243
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda65;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda65;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCapabilities$20(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1248
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCapabilities$21(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 1248
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda20;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestEnabled$0(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 949
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestEnabled$1(Ljava/util/function/Consumer;)V
    .registers 2

    .line 948
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda17;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestEnabled$2(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 954
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestEnabled$3(Ljava/util/function/Consumer;)V
    .registers 2

    .line 953
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda70;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda70;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsAttachEnabledForCarrier$68(Landroid/os/OutcomeReceiver;Ljava/util/Set;)V
    .registers 3

    .line 2760
    nop

    .line 2761
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2760
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsCommunicationAllowedForCurrentLocation$52(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2372
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsCommunicationAllowedForCurrentLocation$53(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 2372
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda89;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda89;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsCommunicationAllowedForCurrentLocation$54(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2377
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsCommunicationAllowedForCurrentLocation$55(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 2377
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda92;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda92;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsDemoModeEnabled$10(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1071
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsDemoModeEnabled$11(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 1071
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsDemoModeEnabled$8(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1066
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsDemoModeEnabled$9(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 1066
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda45;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEmergencyModeEnabled$12(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1124
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEmergencyModeEnabled$13(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 1124
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda100;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda100;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEnabled$4(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1007
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEnabled$5(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 1007
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda77;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda77;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEnabled$6(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1012
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEnabled$7(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 1012
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda76;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda76;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsProvisioned$40(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2005
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsProvisioned$41(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 2005
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda78;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda78;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsProvisioned$42(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2010
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsProvisioned$43(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 2010
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsSupported$14(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1184
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsSupported$15(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 1184
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda93;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda93;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsSupported$16(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1189
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsSupported$17(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 1189
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda69;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda69;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNtnSignalStrength$77(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3068
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNtnSignalStrength$78(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 3068
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda21;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNtnSignalStrength$79(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3073
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNtnSignalStrength$80(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 3073
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda23;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteAccessConfigurationForCurrentLocation$56(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2434
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteAccessConfigurationForCurrentLocation$57(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 2434
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda39;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteAccessConfigurationForCurrentLocation$58(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2440
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteAccessConfigurationForCurrentLocation$59(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 2440
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda33;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteDisplayName$89(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3646
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteDisplayName$90(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 3646
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda36;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteDisplayName$91(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3651
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteDisplayName$92(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 3651
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda75;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda75;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteSubscriberProvisionStatus$85(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3587
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteSubscriberProvisionStatus$86(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 3587
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda74;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda74;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteSubscriberProvisionStatus$87(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3592
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteSubscriberProvisionStatus$88(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 3592
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda26;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSelectedNbIotSatelliteSubscriptionId$64(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2559
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSelectedNbIotSatelliteSubscriptionId$65(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 2559
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda94;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda94;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSelectedNbIotSatelliteSubscriptionId$66(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2564
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSelectedNbIotSatelliteSubscriptionId$67(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 2564
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda48;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda48;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSessionStats$81(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3522
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSessionStats$82(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 3522
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda63;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda63;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSessionStats$83(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3527
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSessionStats$84(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 3527
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda47;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTimeForNextSatelliteVisibility$60(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2495
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTimeForNextSatelliteVisibility$61(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 2495
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda19;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTimeForNextSatelliteVisibility$62(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2500
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTimeForNextSatelliteVisibility$63(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 2500
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda29;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendDatagram$48(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2312
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendDatagram$49(Ljava/util/function/Consumer;)V
    .registers 2

    .line 2311
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda46;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendDatagram$50(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2317
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendDatagram$51(Ljava/util/function/Consumer;)V
    .registers 2

    .line 2316
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda99;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda99;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$startTransmissionUpdates$22(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1692
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$startTransmissionUpdates$23(Ljava/util/function/Consumer;)V
    .registers 2

    .line 1691
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda83;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda83;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$startTransmissionUpdates$24(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1697
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$startTransmissionUpdates$25(Ljava/util/function/Consumer;)V
    .registers 2

    .line 1696
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda91;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda91;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$26(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1745
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$27(Ljava/util/function/Consumer;)V
    .registers 2

    .line 1744
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda27;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$28(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1750
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$29(Ljava/util/function/Consumer;)V
    .registers 2

    .line 1749
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda68;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda68;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$30(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1755
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$31(Ljava/util/function/Consumer;)V
    .registers 2

    .line 1754
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda22;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 3884
    const-string v0, "SatelliteManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 3888
    const-string v0, "SatelliteManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    return-void
.end method


# virtual methods
.method public whitelist addAttachRestrictionForCarrier(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2784
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2789
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2790
    if-eqz v0, :cond_15

    .line 2791
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$23;

    invoke-direct {v1, p0, p3, p4}, Landroid/telephony/satellite/SatelliteManager$23;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2798
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/ITelephony;->addAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 2799
    goto :goto_22

    .line 2800
    :cond_15
    const-string p1, "addAttachRestrictionForCarrier() invalid telephony"

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2801
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda50;

    invoke-direct {p1, p4}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda50;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_22} :catch_23

    .line 2808
    :goto_22
    goto :goto_42

    .line 2804
    :catch_23
    move-exception p1

    .line 2805
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addAttachRestrictionForCarrier() RemoteException:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2806
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda51;

    invoke-direct {p1, p4}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda51;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2809
    :goto_42
    return-void

    .line 2785
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid subscription ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist deprovisionSatellite(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 3738
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3739
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3742
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3743
    if-eqz v0, :cond_16

    .line 3744
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$35;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2, p3}, Landroid/telephony/satellite/SatelliteManager$35;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 3765
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->deprovisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V

    .line 3766
    goto :goto_23

    .line 3767
    :cond_16
    const-string p1, "deprovisionSatellite() invalid telephony"

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3768
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda87;

    invoke-direct {p1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda87;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_24

    .line 3775
    :goto_23
    goto :goto_43

    .line 3771
    :catch_24
    move-exception p1

    .line 3772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprovisionSatellite() RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3773
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda88;

    invoke-direct {p1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda88;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3776
    :goto_43
    return-void
.end method

.method public whitelist deprovisionService(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1838
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    :try_start_9
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1844
    if-eqz v0, :cond_18

    .line 1845
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$11;

    invoke-direct {v1, p0, p2, p3}, Landroid/telephony/satellite/SatelliteManager$11;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1852
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->deprovisionSatelliteService(Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 1853
    goto :goto_25

    .line 1854
    :cond_18
    const-string p1, "deprovisionService() invalid telephony"

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1855
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda34;

    invoke-direct {p1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda34;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_25} :catch_26

    .line 1862
    :goto_25
    goto :goto_45

    .line 1858
    :catch_26
    move-exception p1

    .line 1859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprovisionService() RemoteException ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1860
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda35;

    invoke-direct {p1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda35;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1863
    :goto_45
    return-void
.end method

.method public whitelist getAttachRestrictionReasonsForCarrier(I)Ljava/util/Set;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2875
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2880
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2881
    if-eqz v0, :cond_33

    .line 2882
    nop

    .line 2883
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getAttachRestrictionReasonsForCarrier(I)[I

    move-result-object p1

    .line 2884
    array-length v0, p1

    if-nez v0, :cond_20

    .line 2885
    const-string/jumbo p1, "receivedArray is empty, create empty set"

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->logd(Ljava/lang/String;)V

    .line 2886
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 2888
    :cond_20
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1

    .line 2891
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_3b} :catch_3b

    .line 2893
    :catch_3b
    move-exception p1

    .line 2894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAttachRestrictionReasonsForCarrier() RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2895
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2897
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 2876
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid subscription ID"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getSatelliteDataOptimizedApps()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3827
    :try_start_5
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3828
    if-eqz v1, :cond_10

    .line 3829
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSatelliteDataOptimizedApps()Ljava/util/List;

    move-result-object v0

    .line 3836
    goto :goto_33

    .line 3831
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_19} :catch_19

    .line 3833
    :catch_19
    move-exception v1

    .line 3834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSatelliteDataOptimizedApps() RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3835
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3838
    :goto_33
    return-object v0
.end method

.method public whitelist getSatelliteDataSupportMode(I)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3857
    nop

    .line 3860
    :try_start_1
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3861
    if-eqz v0, :cond_c

    .line 3862
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getSatelliteDataSupportMode(I)I

    move-result p1

    .line 3869
    goto :goto_30

    .line 3864
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_15

    .line 3866
    :catch_15
    move-exception p1

    .line 3867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSatelliteDataSupportMode() RemoteException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3868
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/4 p1, -0x1

    .line 3871
    :goto_30
    return p1
.end method

.method public whitelist getSatelliteDisallowedReasons()[I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2916
    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2917
    if-eqz v0, :cond_b

    .line 2918
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getSatelliteDisallowedReasons()[I

    move-result-object v0

    return-object v0

    .line 2920
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 2922
    :catch_13
    move-exception v0

    .line 2923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSatelliteDisallowedReasons() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2924
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2926
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist getSatellitePlmnsForCarrier(I)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3272
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3277
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3278
    if-eqz v0, :cond_11

    .line 3279
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getSatellitePlmnsForCarrier(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3281
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_19

    .line 3283
    :catch_19
    move-exception p1

    .line 3284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSatellitePlmnsForCarrier() RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3285
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3287
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 3273
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid subscription ID"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist pollPendingDatagrams(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
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

    .line 2234
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2239
    if-eqz v0, :cond_15

    .line 2240
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$16;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$16;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2247
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->pollPendingDatagrams(Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 2248
    goto :goto_23

    .line 2249
    :cond_15
    const-string/jumbo v0, "pollPendingDatagrams() invalid telephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2250
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda84;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda84;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_24

    .line 2257
    :goto_23
    goto :goto_44

    .line 2253
    :catch_24
    move-exception v0

    .line 2254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pollPendingDatagrams() RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2255
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda85;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda85;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2258
    :goto_44
    return-void
.end method

.method public whitelist provisionSatellite(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 3677
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3678
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3681
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3682
    if-eqz v0, :cond_16

    .line 3683
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$34;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2, p3}, Landroid/telephony/satellite/SatelliteManager$34;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 3704
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->provisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V

    .line 3705
    goto :goto_24

    .line 3706
    :cond_16
    const-string/jumbo p1, "provisionSatellite() invalid telephony"

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3707
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda79;

    invoke-direct {p1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda79;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 3714
    :goto_24
    goto :goto_45

    .line 3710
    :catch_25
    move-exception p1

    .line 3711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provisionSatellite() RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3712
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda80;

    invoke-direct {p1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda80;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3715
    :goto_45
    return-void
.end method

.method public whitelist provisionService(Ljava/lang/String;[BLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1782
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    nop

    .line 1789
    const/4 v0, 0x0

    :try_start_e
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1790
    if-eqz v1, :cond_1f

    .line 1791
    new-instance v2, Landroid/telephony/satellite/SatelliteManager$10;

    invoke-direct {v2, p0, p4, p5}, Landroid/telephony/satellite/SatelliteManager$10;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1798
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/ITelephony;->provisionSatelliteService(Ljava/lang/String;[BLcom/android/internal/telephony/IIntegerConsumer;)Landroid/os/ICancellationSignal;

    move-result-object p1

    .line 1800
    move-object v0, p1

    goto :goto_2d

    .line 1801
    :cond_1f
    const-string/jumbo p1, "provisionService() invalid telephony"

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1802
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda95;

    invoke-direct {p1, p5}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda95;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2d} :catch_2e

    .line 1809
    :goto_2d
    goto :goto_4e

    .line 1805
    :catch_2e
    move-exception p1

    .line 1806
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provisionService() RemoteException="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1807
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda96;

    invoke-direct {p1, p5}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda96;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1810
    :goto_4e
    if-eqz p3, :cond_53

    .line 1811
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1813
    :cond_53
    return-void
.end method

.method public whitelist registerForCapabilitiesChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCapabilitiesCallback;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3194
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3195
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3198
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3199
    if-eqz v0, :cond_1b

    .line 3200
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$28;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$28;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCapabilitiesCallback;)V

    .line 3210
    sget-object p1, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCapabilitiesCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3211
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)I

    move-result p1

    return p1

    .line 3213
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_23

    .line 3215
    :catch_23
    move-exception p1

    .line 3216
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerForCapabilitiesChanged() RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3217
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3219
    const/16 p1, 0x9

    return p1
.end method

.method public whitelist registerForCommunicationAccessStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3386
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3387
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3390
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3391
    if-eqz v0, :cond_1d

    .line 3392
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$30;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$30;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;)V

    .line 3411
    sget-object p1, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCommunicationAccessStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3412
    iget p1, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->registerForCommunicationAccessStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;)I

    move-result p1

    return p1

    .line 3415
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_26} :catch_26

    .line 3417
    :catch_26
    move-exception p1

    .line 3418
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerForCommunicationAccessStateChanged() RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3419
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3421
    const/16 p1, 0x9

    return p1
.end method

.method public whitelist registerForIncomingDatagram(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDatagramCallback;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2137
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2142
    if-eqz v0, :cond_1b

    .line 2143
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$15;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$15;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDatagramCallback;)V

    .line 2166
    sget-object p1, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDatagramCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2167
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)I

    move-result p1

    return p1

    .line 2169
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_24

    .line 2171
    :catch_24
    move-exception p1

    .line 2172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerForIncomingDatagram() RemoteException:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2175
    const/16 p1, 0x9

    return p1
.end method

.method public whitelist registerForModemStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteModemStateCallback;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2033
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2038
    if-eqz v0, :cond_1b

    .line 2039
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$14;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$14;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteModemStateCallback;)V

    .line 2066
    sget-object p1, Landroid/telephony/satellite/SatelliteManager;->sSatelliteModemStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)I

    move-result p1

    return p1

    .line 2069
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_24

    .line 2071
    :catch_24
    move-exception p1

    .line 2072
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerForModemStateChanged() RemoteException:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2075
    const/16 p1, 0x9

    return p1
.end method

.method public whitelist registerForNtnSignalStrengthChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/NtnSignalStrengthCallback;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3103
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3106
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3107
    if-eqz v0, :cond_1b

    .line 3108
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$27;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$27;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/NtnSignalStrengthCallback;)V

    .line 3118
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V

    .line 3119
    sget-object p1, Landroid/telephony/satellite/SatelliteManager;->sNtnSignalStrengthCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3120
    nop

    .line 3130
    goto :goto_3e

    .line 3121
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_23} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_23

    .line 3126
    :catch_23
    move-exception p1

    .line 3127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerForNtnSignalStrengthChanged() RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3129
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3131
    :goto_3e
    return-void

    .line 3123
    :catch_3f
    move-exception p1

    .line 3124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerForNtnSignalStrengthChanged() IllegalStateException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3125
    throw p1
.end method

.method public whitelist registerForProvisionStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteProvisionStateCallback;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1883
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1888
    if-eqz v0, :cond_1b

    .line 1889
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$12;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$12;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteProvisionStateCallback;)V

    .line 1907
    sget-object p1, Landroid/telephony/satellite/SatelliteManager;->sSatelliteProvisionStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)I

    move-result p1

    return p1

    .line 1910
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_24

    .line 1912
    :catch_24
    move-exception p1

    .line 1913
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerForProvisionStateChanged() RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1914
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1916
    const/16 p1, 0x9

    return p1
.end method

.method public whitelist registerForSatelliteDisallowedReasonsChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2945
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2946
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2949
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2950
    if-eqz v0, :cond_1b

    .line 2951
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$25;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$25;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;)V

    .line 2961
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V

    .line 2962
    sget-object p1, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDisallowedReasonsCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2963
    nop

    .line 2969
    goto :goto_3e

    .line 2964
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_23

    .line 2966
    :catch_23
    move-exception p1

    .line 2967
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerForSatelliteDisallowedReasonsChanged() RemoteException"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2968
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2970
    :goto_3e
    return-void
.end method

.method public whitelist registerForSelectedNbIotSatelliteSubscriptionChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2588
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2589
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2592
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2593
    if-eqz v0, :cond_1b

    .line 2594
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$22;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$22;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;)V

    .line 2604
    sget-object p1, Landroid/telephony/satellite/SatelliteManager;->sSelectedNbIotSatelliteSubscriptionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2605
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)I

    move-result p1

    return p1

    .line 2608
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_23

    .line 2610
    :catch_23
    move-exception p1

    .line 2611
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerForSelectedNbIotSatelliteSubscriptionChanged() RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2612
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2614
    const/16 p1, 0x9

    return p1
.end method

.method public whitelist registerForSupportedStateChanged(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 3307
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3308
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3311
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3312
    if-eqz v0, :cond_1b

    .line 3313
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$29;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$29;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3320
    sget-object p1, Landroid/telephony/satellite/SatelliteManager;->sSatelliteSupportedStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3321
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSatelliteSupportedStateChanged(Lcom/android/internal/telephony/IBooleanConsumer;)I

    move-result p1

    return p1

    .line 3324
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_24

    .line 3326
    :catch_24
    move-exception p1

    .line 3327
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerForSupportedStateChanged() RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3328
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3330
    const/16 p1, 0x9

    return p1
.end method

.method public whitelist registerStateChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteStateChangeListener;)V
    .registers 5

    .line 867
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_22

    .line 871
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 872
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v0, :cond_1a

    .line 875
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->addSatelliteStateChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteStateChangeListener;)V

    .line 876
    return-void

    .line 873
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telephony registry service is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 868
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telephony service is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist removeAttachRestrictionForCarrier(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2831
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2836
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2837
    if-eqz v0, :cond_15

    .line 2838
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$24;

    invoke-direct {v1, p0, p3, p4}, Landroid/telephony/satellite/SatelliteManager$24;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2845
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/ITelephony;->removeAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 2846
    goto :goto_23

    .line 2847
    :cond_15
    const-string/jumbo p1, "removeAttachRestrictionForCarrier() invalid telephony"

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2848
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda12;

    invoke-direct {p1, p4}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda12;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_24

    .line 2855
    :goto_23
    goto :goto_44

    .line 2851
    :catch_24
    move-exception p1

    .line 2852
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeAttachRestrictionForCarrier() RemoteException:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2853
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda13;

    invoke-direct {p1, p4}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda13;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2856
    :goto_44
    return-void

    .line 2832
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid subscription ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist requestAttachEnabledForCarrier(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2720
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2721
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2723
    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 2724
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/telephony/satellite/SatelliteManager;->removeAttachRestrictionForCarrier(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_10

    .line 2727
    :cond_d
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/telephony/satellite/SatelliteManager;->addAttachRestrictionForCarrier(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2730
    :goto_10
    return-void
.end method

.method public whitelist requestCapabilities(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/satellite/SatelliteCapabilities;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 1212
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1217
    if-eqz v0, :cond_16

    .line 1218
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$6;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1240
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteCapabilities(Landroid/os/ResultReceiver;)V

    .line 1241
    goto :goto_24

    .line 1242
    :cond_16
    const-string/jumbo v0, "requestCapabilities() invalid telephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1243
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda59;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda59;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 1250
    :goto_24
    goto :goto_45

    .line 1246
    :catch_25
    move-exception v0

    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCapabilities() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1248
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda60;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda60;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1251
    :goto_45
    return-void
.end method

.method public whitelist requestEnabled(Landroid/telephony/satellite/EnableRequestAttributes;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/satellite/EnableRequestAttributes;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 930
    const-string v0, "SatelliteManager"

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 936
    if-eqz v1, :cond_26

    .line 937
    new-instance v2, Landroid/telephony/satellite/SatelliteManager$1;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/satellite/SatelliteManager$1;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 944
    invoke-virtual {p1}, Landroid/telephony/satellite/EnableRequestAttributes;->isEnabled()Z

    move-result v3

    .line 945
    invoke-virtual {p1}, Landroid/telephony/satellite/EnableRequestAttributes;->isDemoMode()Z

    move-result v4

    invoke-virtual {p1}, Landroid/telephony/satellite/EnableRequestAttributes;->isEmergencyMode()Z

    move-result p1

    .line 944
    invoke-interface {v1, v3, v4, p1, v2}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 946
    goto :goto_34

    .line 947
    :cond_26
    const-string/jumbo p1, "requestEnabled() invalid telephony"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda10;

    invoke-direct {p1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda10;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_34} :catch_35

    .line 955
    :goto_34
    goto :goto_44

    .line 951
    :catch_35
    move-exception p1

    .line 952
    const-string/jumbo v1, "requestEnabled() exception: "

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 953
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda11;

    invoke-direct {p1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda11;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 956
    :goto_44
    return-void
.end method

.method public whitelist requestIsAttachEnabledForCarrier(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 2756
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2757
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2759
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/SatelliteManager;->getAttachRestrictionReasonsForCarrier(I)Ljava/util/Set;

    move-result-object p1

    .line 2760
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda71;

    invoke-direct {v0, p3, p1}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda71;-><init>(Landroid/os/OutcomeReceiver;Ljava/util/Set;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2762
    return-void
.end method

.method public whitelist requestIsCommunicationAllowedForCurrentLocation(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 2342
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2343
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2347
    if-eqz v0, :cond_18

    .line 2348
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$18;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$18;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2369
    iget v2, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsCommunicationAllowedForCurrentLocation(ILandroid/os/ResultReceiver;)V

    .line 2370
    goto :goto_26

    .line 2371
    :cond_18
    const-string/jumbo v0, "requestIsCommunicationAllowedForCurrentLocation() invalid telephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2372
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda40;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda40;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_26} :catch_27

    .line 2379
    :goto_26
    goto :goto_47

    .line 2375
    :catch_27
    move-exception v0

    .line 2376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestIsCommunicationAllowedForCurrentLocation() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2377
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda41;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda41;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2380
    :goto_47
    return-void
.end method

.method public whitelist requestIsDemoModeEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 1036
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1041
    if-eqz v0, :cond_16

    .line 1042
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$3;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1063
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsDemoModeEnabled(Landroid/os/ResultReceiver;)V

    .line 1064
    goto :goto_24

    .line 1065
    :cond_16
    const-string/jumbo v0, "requestIsDemoModeEnabled() invalid telephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1066
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda24;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda24;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 1073
    :goto_24
    goto :goto_45

    .line 1069
    :catch_25
    move-exception v0

    .line 1070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestIsDemoModeEnabled() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1071
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda25;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda25;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1074
    :goto_45
    return-void
.end method

.method public whitelist requestIsEmergencyModeEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 1095
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1100
    if-eqz v0, :cond_16

    .line 1101
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$4;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1122
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsEmergencyModeEnabled(Landroid/os/ResultReceiver;)V

    .line 1123
    goto :goto_1e

    .line 1124
    :cond_16
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda28;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda28;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1e} :catch_1f

    .line 1130
    :goto_1e
    goto :goto_3a

    .line 1127
    :catch_1f
    move-exception p1

    .line 1128
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestIsEmergencyModeEnabled() RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1131
    :goto_3a
    return-void
.end method

.method public whitelist requestIsEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 977
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 982
    if-eqz v0, :cond_16

    .line 983
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$2;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1004
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsSatelliteEnabled(Landroid/os/ResultReceiver;)V

    .line 1005
    goto :goto_24

    .line 1006
    :cond_16
    const-string/jumbo v0, "requestIsEnabled() invalid telephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1007
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda97;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda97;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 1014
    :goto_24
    goto :goto_45

    .line 1010
    :catch_25
    move-exception v0

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestIsEnabled() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1012
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda98;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda98;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1015
    :goto_45
    return-void
.end method

.method public whitelist requestIsProvisioned(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 1975
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1980
    if-eqz v0, :cond_16

    .line 1981
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$13;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$13;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2002
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsSatelliteProvisioned(Landroid/os/ResultReceiver;)V

    .line 2003
    goto :goto_24

    .line 2004
    :cond_16
    const-string/jumbo v0, "requestIsProvisioned() invalid telephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2005
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda61;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda61;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 2012
    :goto_24
    goto :goto_45

    .line 2008
    :catch_25
    move-exception v0

    .line 2009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestIsProvisioned() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2010
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda62;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda62;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2013
    :goto_45
    return-void
.end method

.method public whitelist requestIsSupported(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 1154
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1159
    if-eqz v0, :cond_16

    .line 1160
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$5;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1181
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsSatelliteSupported(Landroid/os/ResultReceiver;)V

    .line 1182
    goto :goto_24

    .line 1183
    :cond_16
    const-string/jumbo v0, "requestIsSupported() invalid telephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1184
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda52;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda52;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 1191
    :goto_24
    goto :goto_45

    .line 1187
    :catch_25
    move-exception v0

    .line 1188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestIsSupported() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1189
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda53;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda53;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1192
    :goto_45
    return-void
.end method

.method public whitelist requestNtnSignalStrength(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/satellite/NtnSignalStrength;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 3037
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3038
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3041
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3042
    if-eqz v0, :cond_16

    .line 3043
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$26;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$26;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 3065
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestNtnSignalStrength(Landroid/os/ResultReceiver;)V

    .line 3066
    goto :goto_24

    .line 3067
    :cond_16
    const-string/jumbo v0, "requestNtnSignalStrength() invalid telephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3068
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda72;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda72;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 3075
    :goto_24
    goto :goto_45

    .line 3071
    :catch_25
    move-exception v0

    .line 3072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestNtnSignalStrength() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3073
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda73;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda73;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3076
    :goto_45
    return-void
.end method

.method public whitelist requestSatelliteAccessConfigurationForCurrentLocation(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/satellite/SatelliteAccessConfiguration;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 2403
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2404
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2407
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2408
    if-eqz v0, :cond_16

    .line 2409
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$19;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$19;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2431
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteAccessConfigurationForCurrentLocation(Landroid/os/ResultReceiver;)V

    .line 2432
    goto :goto_24

    .line 2433
    :cond_16
    const-string/jumbo v0, "requestSatelliteAccessConfigurationForCurrentLocation() invalid telephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2434
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 2442
    :goto_24
    goto :goto_45

    .line 2437
    :catch_25
    move-exception v0

    .line 2438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSatelliteAccessConfigurationForCurrentLocation() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2440
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2443
    :goto_45
    return-void
.end method

.method public blacklist requestSatelliteDisplayName(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/CharSequence;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 3616
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3617
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3620
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3621
    if-eqz v0, :cond_16

    .line 3622
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$33;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$33;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 3643
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteDisplayName(Landroid/os/ResultReceiver;)V

    .line 3644
    goto :goto_24

    .line 3645
    :cond_16
    const-string/jumbo v0, "requestSatelliteDisplayName() invalid telephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3646
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda66;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda66;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 3653
    :goto_24
    goto :goto_45

    .line 3649
    :catch_25
    move-exception v0

    .line 3650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSatelliteDisplayName() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3651
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda67;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda67;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3654
    :goto_45
    return-void
.end method

.method public whitelist requestSatelliteSubscriberProvisionStatus(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;",
            ">;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 3555
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3556
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3559
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3560
    if-eqz v0, :cond_16

    .line 3561
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$32;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$32;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 3584
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteSubscriberProvisionStatus(Landroid/os/ResultReceiver;)V

    .line 3585
    goto :goto_24

    .line 3586
    :cond_16
    const-string/jumbo v0, "requestSatelliteSubscriberProvisionStatus() invalid telephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3587
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda37;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda37;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 3594
    :goto_24
    goto :goto_45

    .line 3590
    :catch_25
    move-exception v0

    .line 3591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSatelliteSubscriberProvisionStatus() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3592
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda38;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda38;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3595
    :goto_45
    return-void
.end method

.method public whitelist requestSelectedNbIotSatelliteSubscriptionId(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 2525
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2526
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2529
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2530
    if-eqz v0, :cond_16

    .line 2531
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$21;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$21;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2556
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSelectedNbIotSatelliteSubscriptionId(Landroid/os/ResultReceiver;)V

    .line 2557
    goto :goto_24

    .line 2558
    :cond_16
    const-string/jumbo v0, "requestSelectedNbIotSatelliteSubscriptionId() invalid telephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2559
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda81;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda81;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 2566
    :goto_24
    goto :goto_45

    .line 2562
    :catch_25
    move-exception v0

    .line 2563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSelectedNbIotSatelliteSubscriptionId() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2564
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda82;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda82;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2567
    :goto_45
    return-void
.end method

.method public blacklist requestSessionStats(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/satellite/SatelliteSessionStats;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 3479
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3480
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3483
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3484
    if-eqz v0, :cond_18

    .line 3485
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$31;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$31;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 3519
    iget v2, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteSessionStats(ILandroid/os/ResultReceiver;)V

    .line 3520
    goto :goto_26

    .line 3521
    :cond_18
    const-string/jumbo v0, "requestSessionStats() invalid telephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3522
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda14;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_26} :catch_27

    .line 3529
    :goto_26
    goto :goto_47

    .line 3525
    :catch_27
    move-exception v0

    .line 3526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSessionStats() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3527
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda15;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3530
    :goto_47
    return-void
.end method

.method public whitelist requestTimeForNextSatelliteVisibility(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/time/Duration;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 2464
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2468
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2469
    if-eqz v0, :cond_16

    .line 2470
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$20;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$20;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2492
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestTimeForNextSatelliteVisibility(Landroid/os/ResultReceiver;)V

    .line 2493
    goto :goto_24

    .line 2494
    :cond_16
    const-string/jumbo v0, "requestTimeForNextSatelliteVisibility() invalid telephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2495
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda8;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 2502
    :goto_24
    goto :goto_45

    .line 2498
    :catch_25
    move-exception v0

    .line 2499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestTimeForNextSatelliteVisibility() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2500
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda9;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2503
    :goto_45
    return-void
.end method

.method public whitelist sendDatagram(ILandroid/telephony/satellite/SatelliteDatagram;ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/satellite/SatelliteDatagram;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2293
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    :try_start_9
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2299
    if-eqz v0, :cond_18

    .line 2300
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$17;

    invoke-direct {v1, p0, p4, p5}, Landroid/telephony/satellite/SatelliteManager$17;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2307
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/ITelephony;->sendDatagram(ILandroid/telephony/satellite/SatelliteDatagram;ZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 2309
    goto :goto_26

    .line 2310
    :cond_18
    const-string/jumbo p1, "sendDatagram() invalid telephony"

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2311
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda55;

    invoke-direct {p1, p5}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda55;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_26} :catch_27

    .line 2318
    :goto_26
    goto :goto_47

    .line 2314
    :catch_27
    move-exception p1

    .line 2315
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sendDatagram() RemoteException:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2316
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda56;

    invoke-direct {p1, p5}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda56;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2319
    :goto_47
    return-void
.end method

.method public whitelist setDeviceAlignedWithSatellite(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2677
    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2678
    if-eqz v0, :cond_a

    .line 2679
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setDeviceAlignedWithSatellite(Z)V

    .line 2686
    goto :goto_2e

    .line 2681
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 2683
    :catch_13
    move-exception p1

    .line 2684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDeviceAlignedWithSatellite() RemoteException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2685
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2687
    :goto_2e
    return-void
.end method

.method public blacklist setNtnSmsSupported(Z)V
    .registers 4

    .line 3800
    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3801
    if-eqz v0, :cond_a

    .line 3802
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setNtnSmsSupported(Z)V

    .line 3809
    goto :goto_2e

    .line 3804
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 3806
    :catch_13
    move-exception p1

    .line 3807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNtnSmsSupported() RemoteException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3808
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3810
    :goto_2e
    return-void
.end method

.method public whitelist startTransmissionUpdates(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;",
            ")V"
        }
    .end annotation

    .line 1637
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    :try_start_9
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1643
    if-eqz v0, :cond_22

    .line 1644
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$7;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$7;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1651
    new-instance v2, Landroid/telephony/satellite/SatelliteManager$8;

    invoke-direct {v2, p0, p1, p3}, Landroid/telephony/satellite/SatelliteManager$8;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;)V

    .line 1687
    sget-object v3, Landroid/telephony/satellite/SatelliteManager;->sSatelliteTransmissionUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->startSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    .line 1689
    goto :goto_30

    .line 1690
    :cond_22
    const-string/jumbo p3, "startTransmissionUpdates() invalid telephony"

    invoke-static {p3}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1691
    new-instance p3, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda6;

    invoke-direct {p3, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_30} :catch_31

    .line 1698
    :goto_30
    goto :goto_51

    .line 1694
    :catch_31
    move-exception p3

    .line 1695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startTransmissionUpdates() RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1696
    new-instance p3, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda7;

    invoke-direct {p3, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1699
    :goto_51
    return-void
.end method

.method public whitelist stopTransmissionUpdates(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1722
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteTransmissionUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1727
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    .line 1730
    :try_start_11
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1731
    if-eqz v0, :cond_31

    .line 1732
    if-eqz p1, :cond_22

    .line 1733
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$9;

    invoke-direct {v1, p0, p2, p3}, Landroid/telephony/satellite/SatelliteManager$9;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1740
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->stopSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    .line 1742
    goto :goto_3f

    .line 1743
    :cond_22
    const-string/jumbo p1, "stopSatelliteTransmissionUpdates: No internal callback."

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1744
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda42;

    invoke-direct {p1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda42;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3f

    .line 1748
    :cond_31
    const-string/jumbo p1, "stopTransmissionUpdates() invalid telephony"

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1749
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda43;

    invoke-direct {p1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda43;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_3f} :catch_40

    .line 1756
    :goto_3f
    goto :goto_60

    .line 1752
    :catch_40
    move-exception p1

    .line 1753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopTransmissionUpdates() RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1754
    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda44;

    invoke-direct {p1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda44;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1757
    :goto_60
    return-void
.end method

.method public whitelist unregisterForCapabilitiesChanged(Landroid/telephony/satellite/SatelliteCapabilitiesCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3238
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3239
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCapabilitiesCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3240
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;

    .line 3243
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3244
    if-eqz v0, :cond_1e

    .line 3245
    if-eqz p1, :cond_17

    .line 3246
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)V

    goto :goto_1d

    .line 3248
    :cond_17
    const-string/jumbo p1, "unregisterForCapabilitiesChanged: No internal callback."

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3256
    :goto_1d
    goto :goto_41

    .line 3251
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_26} :catch_26

    .line 3253
    :catch_26
    move-exception p1

    .line 3254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterForCapabilitiesChanged() RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3255
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3257
    :goto_41
    return-void
.end method

.method public whitelist unregisterForCommunicationAccessStateChanged(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3440
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3441
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCommunicationAccessStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3442
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;

    .line 3445
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3446
    if-eqz v0, :cond_20

    .line 3447
    if-eqz p1, :cond_19

    .line 3448
    iget v1, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterForCommunicationAccessStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;)V

    goto :goto_1f

    .line 3451
    :cond_19
    const-string/jumbo p1, "unregisterForCommunicationAccessStateChanged: No internal callback."

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3459
    :goto_1f
    goto :goto_44

    .line 3454
    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_29} :catch_29

    .line 3456
    :catch_29
    move-exception p1

    .line 3457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterForCommunicationAccessStateChanged() RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3458
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3460
    :goto_44
    return-void
.end method

.method public whitelist unregisterForIncomingDatagram(Landroid/telephony/satellite/SatelliteDatagramCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2193
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2194
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDatagramCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2195
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/ISatelliteDatagramCallback;

    .line 2198
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2199
    if-eqz v0, :cond_1e

    .line 2200
    if-eqz p1, :cond_17

    .line 2201
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)V

    goto :goto_1d

    .line 2203
    :cond_17
    const-string/jumbo p1, "unregisterForIncomingDatagram: No internal callback."

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2211
    :goto_1d
    goto :goto_42

    .line 2206
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_27} :catch_27

    .line 2208
    :catch_27
    move-exception p1

    .line 2209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterForIncomingDatagram() RemoteException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2212
    :goto_42
    return-void
.end method

.method public whitelist unregisterForModemStateChanged(Landroid/telephony/satellite/SatelliteModemStateCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2094
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteModemStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/ISatelliteModemStateCallback;

    .line 2099
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2100
    if-eqz v0, :cond_1e

    .line 2101
    if-eqz p1, :cond_17

    .line 2102
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterForModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    goto :goto_1d

    .line 2104
    :cond_17
    const-string/jumbo p1, "unregisterForModemStateChanged: No internal callback."

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2112
    :goto_1d
    goto :goto_42

    .line 2107
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_27} :catch_27

    .line 2109
    :catch_27
    move-exception p1

    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterForModemStateChanged() RemoteException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2111
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2113
    :goto_42
    return-void
.end method

.method public whitelist unregisterForNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrengthCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3156
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3157
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sNtnSignalStrengthCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3158
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/INtnSignalStrengthCallback;

    .line 3161
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3162
    if-eqz v0, :cond_25

    .line 3163
    if-eqz p1, :cond_17

    .line 3164
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V

    .line 3175
    goto :goto_48

    .line 3166
    :cond_17
    const-string/jumbo p1, "unregisterForNtnSignalStrengthChanged: No internal callback."

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3167
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3170
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2d} :catch_2d

    .line 3172
    :catch_2d
    move-exception p1

    .line 3173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterForNtnSignalStrengthChanged() RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3174
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3176
    :goto_48
    return-void
.end method

.method public whitelist unregisterForProvisionStateChanged(Landroid/telephony/satellite/SatelliteProvisionStateCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1935
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteProvisionStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1937
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    .line 1940
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1941
    if-eqz v0, :cond_1e

    .line 1942
    if-eqz p1, :cond_17

    .line 1943
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)V

    goto :goto_1d

    .line 1945
    :cond_17
    const-string/jumbo p1, "unregisterForProvisionStateChanged: No internal callback."

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1953
    :goto_1d
    goto :goto_42

    .line 1948
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_27} :catch_27

    .line 1950
    :catch_27
    move-exception p1

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterForProvisionStateChanged() RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1952
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1954
    :goto_42
    return-void
.end method

.method public whitelist unregisterForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2988
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2989
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDisallowedReasonsCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2990
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;

    .line 2993
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2994
    if-eqz v0, :cond_25

    .line 2995
    if-eqz p1, :cond_17

    .line 2996
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V

    .line 3007
    goto :goto_48

    .line 2998
    :cond_17
    const-string/jumbo p1, "unregisterForSatelliteDisallowedReasonsChanged: No internal callback."

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2999
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3002
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2d} :catch_2d

    .line 3004
    :catch_2d
    move-exception p1

    .line 3005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterForSatelliteDisallowedReasonsChanged() RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3006
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3008
    :goto_48
    return-void
.end method

.method public whitelist unregisterForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2634
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2635
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSelectedNbIotSatelliteSubscriptionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2636
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;

    .line 2639
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2640
    if-eqz v0, :cond_1e

    .line 2641
    if-eqz p1, :cond_17

    .line 2642
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)V

    goto :goto_1d

    .line 2645
    :cond_17
    const-string/jumbo p1, "unregisterForSelectedNbIotSatelliteSubscriptionChanged: No internal callback."

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2655
    :goto_1d
    goto :goto_41

    .line 2649
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_26} :catch_26

    .line 2651
    :catch_26
    move-exception p1

    .line 2652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterForSelectedNbIotSatelliteSubscriptionChanged() RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2654
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2656
    :goto_41
    return-void
.end method

.method public whitelist unregisterForSupportedStateChanged(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3348
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3349
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteSupportedStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3350
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/IBooleanConsumer;

    .line 3353
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3354
    if-eqz v0, :cond_1e

    .line 3355
    if-eqz p1, :cond_17

    .line 3356
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterForSatelliteSupportedStateChanged(Lcom/android/internal/telephony/IBooleanConsumer;)V

    goto :goto_1d

    .line 3358
    :cond_17
    const-string/jumbo p1, "unregisterForSupportedStateChanged: No internal callback."

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3366
    :goto_1d
    goto :goto_42

    .line 3361
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_27} :catch_27

    .line 3363
    :catch_27
    move-exception p1

    .line 3364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterForSupportedStateChanged() RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3365
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3367
    :goto_42
    return-void
.end method

.method public whitelist unregisterStateChangeListener(Landroid/telephony/satellite/SatelliteStateChangeListener;)V
    .registers 4

    .line 894
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_22

    .line 898
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 899
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v0, :cond_1a

    .line 902
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyRegistryManager;->removeSatelliteStateChangeListener(Landroid/telephony/satellite/SatelliteStateChangeListener;)V

    .line 903
    return-void

    .line 900
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony registry service is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 895
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
