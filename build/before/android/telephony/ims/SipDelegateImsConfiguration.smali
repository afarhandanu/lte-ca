.class public final Landroid/telephony/ims/SipDelegateImsConfiguration;
.super Ljava/lang/Object;
.source "SipDelegateImsConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;,
        Landroid/telephony/ims/SipDelegateImsConfiguration$BooleanConfigKey;,
        Landroid/telephony/ims/SipDelegateImsConfiguration$IntConfigKey;,
        Landroid/telephony/ims/SipDelegateImsConfiguration$StringConfigKey;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/SipDelegateImsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist IPTYPE_IPV4:Ljava/lang/String; = "IPV4"

.field public static final greylist IPTYPE_IPV6:Ljava/lang/String; = "IPV6"

.field public static final greylist KEY_SIP_CONFIG_AUTHENTICATION_HEADER_STRING:Ljava/lang/String; = "sip_config_auhentication_header_string"

.field public static final greylist KEY_SIP_CONFIG_AUTHENTICATION_NONCE_STRING:Ljava/lang/String; = "sip_config_authentication_nonce_string"

.field public static final greylist KEY_SIP_CONFIG_CELLULAR_NETWORK_INFO_HEADER_STRING:Ljava/lang/String; = "sip_config_cellular_network_info_header_string"

.field public static final greylist KEY_SIP_CONFIG_HOME_DOMAIN_STRING:Ljava/lang/String; = "sip_config_home_domain_string"

.field public static final greylist KEY_SIP_CONFIG_IMEI_STRING:Ljava/lang/String; = "sip_config_imei_string"

.field public static final greylist KEY_SIP_CONFIG_IPTYPE_STRING:Ljava/lang/String; = "sip_config_iptype_string"

.field public static final greylist KEY_SIP_CONFIG_IS_COMPACT_FORM_ENABLED_BOOL:Ljava/lang/String; = "sip_config_is_compact_form_enabled_bool"

.field public static final greylist KEY_SIP_CONFIG_IS_GRUU_ENABLED_BOOL:Ljava/lang/String; = "sip_config_is_gruu_enabled_bool"

.field public static final greylist KEY_SIP_CONFIG_IS_IPSEC_ENABLED_BOOL:Ljava/lang/String; = "sip_config_is_ipsec_enabled_bool"

.field public static final greylist KEY_SIP_CONFIG_IS_KEEPALIVE_ENABLED_BOOL:Ljava/lang/String; = "sip_config_is_keepalive_enabled_bool"

.field public static final greylist KEY_SIP_CONFIG_IS_NAT_ENABLED_BOOL:Ljava/lang/String; = "sip_config_is_nat_enabled_bool"

.field public static final greylist KEY_SIP_CONFIG_MAX_PAYLOAD_SIZE_ON_UDP_INT:Ljava/lang/String; = "sip_config_udp_max_payload_size_int"

.field public static final greylist KEY_SIP_CONFIG_PATH_HEADER_STRING:Ljava/lang/String; = "sip_config_path_header_string"

.field public static final greylist KEY_SIP_CONFIG_P_ACCESS_NETWORK_INFO_HEADER_STRING:Ljava/lang/String; = "sip_config_p_access_network_info_header_string"

.field public static final greylist KEY_SIP_CONFIG_P_ASSOCIATED_URI_HEADER_STRING:Ljava/lang/String; = "sip_config_p_associated_uri_header_string"

.field public static final greylist KEY_SIP_CONFIG_P_LAST_ACCESS_NETWORK_INFO_HEADER_STRING:Ljava/lang/String; = "sip_config_p_last_access_network_info_header_string"

.field public static final greylist KEY_SIP_CONFIG_SECURITY_VERIFY_HEADER_STRING:Ljava/lang/String; = "sip_config_security_verify_header_string"

.field public static final greylist KEY_SIP_CONFIG_SERVER_DEFAULT_IPADDRESS_STRING:Ljava/lang/String; = "sip_config_server_default_ipaddress_string"

.field public static final greylist KEY_SIP_CONFIG_SERVER_DEFAULT_PORT_INT:Ljava/lang/String; = "sip_config_server_default_port_int"

.field public static final greylist KEY_SIP_CONFIG_SERVER_IPSEC_CLIENT_PORT_INT:Ljava/lang/String; = "sip_config_server_ipsec_client_port_int"

.field public static final greylist KEY_SIP_CONFIG_SERVER_IPSEC_OLD_CLIENT_PORT_INT:Ljava/lang/String; = "sip_config_server_ipsec_old_client_port_int"

.field public static final greylist KEY_SIP_CONFIG_SERVER_IPSEC_SERVER_PORT_INT:Ljava/lang/String; = "sip_config_server_ipsec_server_port_int"

.field public static final greylist KEY_SIP_CONFIG_SERVICE_ROUTE_HEADER_STRING:Ljava/lang/String; = "sip_config_service_route_header_string"

.field public static final greylist KEY_SIP_CONFIG_TRANSPORT_TYPE_STRING:Ljava/lang/String; = "sip_config_protocol_type_string"

.field public static final greylist KEY_SIP_CONFIG_UE_DEFAULT_IPADDRESS_STRING:Ljava/lang/String; = "sip_config_ue_default_ipaddress_string"

.field public static final greylist KEY_SIP_CONFIG_UE_DEFAULT_PORT_INT:Ljava/lang/String; = "sip_config_ue_default_port_int"

.field public static final greylist KEY_SIP_CONFIG_UE_IPSEC_CLIENT_PORT_INT:Ljava/lang/String; = "sip_config_ue_ipsec_client_port_int"

.field public static final greylist KEY_SIP_CONFIG_UE_IPSEC_OLD_CLIENT_PORT_INT:Ljava/lang/String; = "sip_config_ue_ipsec_old_client_port_int"

.field public static final greylist KEY_SIP_CONFIG_UE_IPSEC_SERVER_PORT_INT:Ljava/lang/String; = "sip_config_ue_ipsec_server_port_int"

.field public static final greylist KEY_SIP_CONFIG_UE_PRIVATE_USER_ID_STRING:Ljava/lang/String; = "sip_config_ue_private_user_id_string"

.field public static final greylist KEY_SIP_CONFIG_UE_PUBLIC_GRUU_STRING:Ljava/lang/String; = "sip_config_ue_public_gruu_string"

.field public static final greylist KEY_SIP_CONFIG_UE_PUBLIC_IPADDRESS_WITH_NAT_STRING:Ljava/lang/String; = "sip_config_ue_public_ipaddress_with_nat_string"

.field public static final greylist KEY_SIP_CONFIG_UE_PUBLIC_PORT_WITH_NAT_INT:Ljava/lang/String; = "sip_config_ue_public_port_with_nat_int"

.field public static final greylist KEY_SIP_CONFIG_UE_PUBLIC_USER_ID_STRING:Ljava/lang/String; = "sip_config_ue_public_user_id_string"

.field public static final greylist KEY_SIP_CONFIG_URI_USER_PART_STRING:Ljava/lang/String; = "sip_config_uri_user_part_string"

.field public static final greylist KEY_SIP_CONFIG_USER_AGENT_HEADER_STRING:Ljava/lang/String; = "sip_config_sip_user_agent_header_string"

.field public static final greylist SIP_TRANSPORT_TCP:Ljava/lang/String; = "TCP"

.field public static final greylist SIP_TRANSPORT_UDP:Ljava/lang/String; = "UDP"


# instance fields
.field private final blacklist mBundle:Landroid/os/PersistableBundle;

.field private final blacklist mVersion:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 513
    new-instance v0, Landroid/telephony/ims/SipDelegateImsConfiguration$1;

    invoke-direct {v0}, Landroid/telephony/ims/SipDelegateImsConfiguration$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/SipDelegateImsConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JLandroid/os/PersistableBundle;)V
    .registers 4

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-wide p1, p0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mVersion:J

    .line 432
    iput-object p3, p0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mBundle:Landroid/os/PersistableBundle;

    .line 433
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/os/PersistableBundle;Landroid/telephony/ims/SipDelegateImsConfiguration-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/SipDelegateImsConfiguration;-><init>(JLandroid/os/PersistableBundle;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mVersion:J

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mBundle:Landroid/os/PersistableBundle;

    .line 438
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/SipDelegateImsConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDelegateImsConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist getSocketAddr(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .registers 4

    .line 592
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method


# virtual methods
.method public greylist containsKey(Ljava/lang/String;)Z
    .registers 3

    .line 445
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public greylist copyBundle()Landroid/os/PersistableBundle;
    .registers 3

    .line 481
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mBundle:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 471
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 472
    return p2

    .line 474
    :cond_9
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {p2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public greylist getInt(Ljava/lang/String;I)I
    .registers 4

    .line 460
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 461
    return p2

    .line 463
    :cond_9
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {p2, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 452
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist getVersion()J
    .registers 3

    .line 499
    iget-wide v0, p0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mVersion:J

    return-wide v0
.end method

.method public blacklist toNewConfig()Landroid/telephony/ims/SipDelegateConfiguration;
    .registers 19

    .line 533
    move-object/from16 v0, p0

    const-string/jumbo v1, "sip_config_protocol_type_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 534
    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 535
    const-string v3, "UDP"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 536
    move v6, v2

    goto :goto_18

    .line 537
    :cond_16
    const/4 v1, 0x1

    move v6, v1

    .line 538
    :goto_18
    new-instance v3, Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    iget-wide v4, v0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mVersion:J

    .line 540
    const-string/jumbo v1, "sip_config_ue_default_ipaddress_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    const-string/jumbo v7, "sip_config_ue_default_port_int"

    const/4 v9, -0x1

    invoke-virtual {v0, v7, v9}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 540
    invoke-direct {v0, v1, v7}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getSocketAddr(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v7

    .line 542
    const-string/jumbo v1, "sip_config_server_default_ipaddress_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    const-string/jumbo v8, "sip_config_server_default_port_int"

    invoke-virtual {v0, v8, v9}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 542
    invoke-direct {v0, v1, v8}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getSocketAddr(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 544
    nop

    .line 545
    const-string/jumbo v1, "sip_config_is_compact_form_enabled_bool"

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 544
    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipCompactFormEnabled(Z)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 546
    nop

    .line 547
    const-string/jumbo v1, "sip_config_is_keepalive_enabled_bool"

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 546
    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipKeepaliveEnabled(Z)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 548
    const-string/jumbo v1, "sip_config_udp_max_payload_size_int"

    invoke-virtual {v0, v1, v9}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setMaxUdpPayloadSizeBytes(I)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 549
    const-string/jumbo v1, "sip_config_ue_public_user_id_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 550
    const-string/jumbo v1, "sip_config_ue_private_user_id_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPrivateUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 551
    const-string/jumbo v1, "sip_config_home_domain_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setHomeDomain(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 552
    const-string/jumbo v1, "sip_config_imei_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setImei(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 553
    const-string/jumbo v1, "sip_config_auhentication_header_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAuthenticationHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 554
    const-string/jumbo v1, "sip_config_authentication_nonce_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAuthenticationNonce(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 555
    const-string/jumbo v1, "sip_config_service_route_header_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipServiceRouteHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 556
    const-string/jumbo v1, "sip_config_path_header_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPathHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 557
    const-string/jumbo v1, "sip_config_sip_user_agent_header_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipUserAgentHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 558
    const-string/jumbo v1, "sip_config_uri_user_part_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipContactUserParameter(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 559
    const-string/jumbo v1, "sip_config_p_access_network_info_header_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 560
    nop

    .line 561
    const-string/jumbo v1, "sip_config_p_last_access_network_info_header_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 560
    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPlaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 562
    const-string/jumbo v1, "sip_config_cellular_network_info_header_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipCniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 563
    const-string/jumbo v1, "sip_config_p_associated_uri_header_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAssociatedUriHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 564
    const-string/jumbo v1, "sip_config_is_gruu_enabled_bool"

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_111

    .line 565
    const-string/jumbo v1, "sip_config_ue_public_gruu_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 566
    nop

    .line 567
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10d

    .line 568
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_10e

    .line 567
    :cond_10d
    const/4 v1, 0x0

    .line 570
    :goto_10e
    invoke-virtual {v3, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicGruuUri(Landroid/net/Uri;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 572
    :cond_111
    const-string/jumbo v1, "sip_config_is_ipsec_enabled_bool"

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_153

    .line 573
    new-instance v10, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    .line 574
    const-string/jumbo v1, "sip_config_ue_ipsec_client_port_int"

    invoke-virtual {v0, v1, v9}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 575
    const-string/jumbo v1, "sip_config_ue_ipsec_server_port_int"

    invoke-virtual {v0, v1, v9}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 576
    const-string/jumbo v1, "sip_config_ue_ipsec_old_client_port_int"

    invoke-virtual {v0, v1, v9}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 577
    const-string/jumbo v1, "sip_config_server_ipsec_client_port_int"

    invoke-virtual {v0, v1, v9}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 578
    const-string/jumbo v1, "sip_config_server_ipsec_server_port_int"

    invoke-virtual {v0, v1, v9}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 579
    const-string/jumbo v1, "sip_config_server_ipsec_old_client_port_int"

    invoke-virtual {v0, v1, v9}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 580
    const-string/jumbo v1, "sip_config_security_verify_header_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v10 .. v17}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;-><init>(IIIIIILjava/lang/String;)V

    .line 573
    invoke-virtual {v3, v10}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 583
    :cond_153
    const-string/jumbo v1, "sip_config_is_nat_enabled_bool"

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_172

    .line 584
    nop

    .line 585
    const-string/jumbo v1, "sip_config_ue_public_ipaddress_with_nat_string"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 586
    const-string/jumbo v2, "sip_config_ue_public_port_with_nat_int"

    invoke-virtual {v0, v2, v9}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 584
    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getSocketAddr(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setNatSocketAddress(Ljava/net/InetSocketAddress;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 588
    :cond_172
    invoke-virtual {v3}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->build()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 509
    iget-wide v0, p0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 510
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateImsConfiguration;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 511
    return-void
.end method
