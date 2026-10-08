.class public final Landroid/telephony/ims/SipDelegateConfiguration;
.super Ljava/lang/Object;
.source "SipDelegateConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;,
        Landroid/telephony/ims/SipDelegateConfiguration$Builder;,
        Landroid/telephony/ims/SipDelegateConfiguration$TransportType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/SipDelegateConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SIP_TRANSPORT_TCP:I = 0x1

.field public static final whitelist SIP_TRANSPORT_UDP:I = 0x0

.field public static final whitelist UDP_PAYLOAD_SIZE_UNDEFINED:I = -0x1


# instance fields
.field private blacklist mAssociatedUriHeader:Ljava/lang/String;

.field private blacklist mCniHeader:Ljava/lang/String;

.field private blacklist mContactUserParam:Ljava/lang/String;

.field private blacklist mGruu:Landroid/net/Uri;

.field private blacklist mHomeDomain:Ljava/lang/String;

.field private blacklist mImei:Ljava/lang/String;

.field private blacklist mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

.field private blacklist mIsSipCompactFormEnabled:Z

.field private blacklist mIsSipKeepaliveEnabled:Z

.field private final blacklist mLocalAddress:Ljava/net/InetSocketAddress;

.field private blacklist mMaxUdpPayloadSize:I

.field private blacklist mNatAddress:Ljava/net/InetSocketAddress;

.field private blacklist mPaniHeader:Ljava/lang/String;

.field private blacklist mPathHeader:Ljava/lang/String;

.field private blacklist mPlaniHeader:Ljava/lang/String;

.field private blacklist mPrivateUserIdentifier:Ljava/lang/String;

.field private blacklist mPublicUserIdentifier:Ljava/lang/String;

.field private blacklist mServiceRouteHeader:Ljava/lang/String;

.field private blacklist mSipAuthHeader:Ljava/lang/String;

.field private blacklist mSipAuthNonce:Ljava/lang/String;

.field private final blacklist mSipServerAddress:Ljava/net/InetSocketAddress;

.field private final blacklist mTransportType:I

.field private blacklist mUserAgentHeader:Ljava/lang/String;

.field private final blacklist mVersion:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAssociatedUriHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCniHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContactUserParam(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGruu(Landroid/telephony/ims/SipDelegateConfiguration;Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHomeDomain(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImei(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration;Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSipCompactFormEnabled(Landroid/telephony/ims/SipDelegateConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSipKeepaliveEnabled(Landroid/telephony/ims/SipDelegateConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxUdpPayloadSize(Landroid/telephony/ims/SipDelegateConfiguration;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNatAddress(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/net/InetSocketAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPaniHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPathHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPlaniHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrivateUserIdentifier(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPublicUserIdentifier(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceRouteHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSipAuthHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSipAuthNonce(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserAgentHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 873
    new-instance v0, Landroid/telephony/ims/SipDelegateConfiguration$1;

    invoke-direct {v0}, Landroid/telephony/ims/SipDelegateConfiguration$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/SipDelegateConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V
    .registers 7

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    .line 535
    iput-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    .line 536
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    .line 538
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    .line 539
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    .line 540
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    .line 541
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    .line 542
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    .line 543
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    .line 544
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    .line 545
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    .line 546
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    .line 547
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    .line 548
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    .line 549
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    .line 550
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    .line 551
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    .line 552
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    .line 553
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    .line 558
    iput-wide p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    .line 559
    iput p3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    .line 560
    iput-object p4, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    .line 561
    iput-object p5, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    .line 562
    return-void
.end method

.method synthetic constructor blacklist <init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Landroid/telephony/ims/SipDelegateConfiguration-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/telephony/ims/SipDelegateConfiguration;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    .line 535
    iput-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    .line 536
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    .line 538
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    .line 539
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    .line 540
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    .line 541
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    .line 542
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    .line 543
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    .line 544
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    .line 545
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    .line 546
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    .line 547
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    .line 548
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    .line 549
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    .line 550
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    .line 551
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    .line 552
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    .line 553
    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    .line 567
    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->readAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    .line 568
    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->readAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    .line 576
    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 588
    if-eqz v0, :cond_c2

    .line 589
    invoke-static {p1}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->fromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    .line 591
    :cond_c2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 592
    if-eqz v0, :cond_ce

    .line 593
    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->readAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    .line 595
    :cond_ce
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/SipDelegateConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;
    .registers 4

    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 860
    :try_start_8
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_11
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_11} :catch_12

    return-object v1

    .line 861
    :catch_12
    move-exception p1

    .line 863
    const-string p1, "SipDelegateConfiguration"

    const-string v0, "exception reading address, returning null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist writeAddressToParcel(Ljava/net/InetSocketAddress;Landroid/os/Parcel;)V
    .registers 4

    .line 852
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 853
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    return-void
.end method


# virtual methods
.method public blacklist copyAndIncrementVersion()Landroid/telephony/ims/SipDelegateConfiguration;
    .registers 7

    .line 636
    new-instance v0, Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-virtual {p0}, Landroid/telephony/ims/SipDelegateConfiguration;->getVersion()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    iget-object v4, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    iget-object v5, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/SipDelegateConfiguration;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 638
    iget-boolean v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    iput-boolean v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    .line 639
    iget-boolean v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    iput-boolean v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    .line 640
    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    iput v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    .line 641
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    .line 642
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    .line 643
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    .line 644
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    .line 645
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    .line 646
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    .line 647
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    .line 648
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    .line 649
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    .line 650
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    .line 651
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    .line 652
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    .line 653
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    .line 654
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    .line 655
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    .line 656
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    .line 657
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    .line 658
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 870
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 888
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 889
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_f6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_f6

    .line 890
    :cond_13
    check-cast p1, Landroid/telephony/ims/SipDelegateConfiguration;

    .line 891
    iget-wide v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    iget-wide v4, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_f4

    iget v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    iget v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    if-ne v2, v3, :cond_f4

    iget-boolean v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    iget-boolean v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    if-ne v2, v3, :cond_f4

    iget-boolean v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    iget-boolean v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    if-ne v2, v3, :cond_f4

    iget v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    iget v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    if-ne v2, v3, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    .line 896
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    .line 897
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    .line 898
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    .line 899
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    .line 900
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    .line 901
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    .line 902
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    .line 903
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    .line 904
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    .line 905
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    .line 906
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    .line 907
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    .line 908
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    .line 909
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    .line 910
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    .line 911
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    .line 912
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iget-object v3, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    .line 913
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    iget-object p1, p1, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    .line 914
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f4

    goto :goto_f5

    :cond_f4
    move v0, v1

    .line 891
    :goto_f5
    return v0

    .line 889
    :cond_f6
    :goto_f6
    return v1
.end method

.method public whitelist getHomeDomain()Ljava/lang/String;
    .registers 2

    .line 741
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImei()Ljava/lang/String;
    .registers 2

    .line 752
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIpSecConfiguration()Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;
    .registers 2

    .line 760
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    return-object v0
.end method

.method public whitelist getLocalAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 690
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public whitelist getMaxUdpPayloadSizeBytes()I
    .registers 2

    .line 720
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    return v0
.end method

.method public whitelist getNatSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 768
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public whitelist getPrivateUserIdentifier()Ljava/lang/String;
    .registers 2

    .line 734
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPublicGruuUri()Landroid/net/Uri;
    .registers 2

    .line 776
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getPublicUserIdentifier()Ljava/lang/String;
    .registers 2

    .line 727
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipAssociatedUriHeader()Ljava/lang/String;
    .registers 2

    .line 848
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipAuthenticationHeader()Ljava/lang/String;
    .registers 2

    .line 783
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipAuthenticationNonce()Ljava/lang/String;
    .registers 2

    .line 790
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipCniHeader()Ljava/lang/String;
    .registers 2

    .line 841
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipContactUserParameter()Ljava/lang/String;
    .registers 2

    .line 818
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipPaniHeader()Ljava/lang/String;
    .registers 2

    .line 826
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipPathHeader()Ljava/lang/String;
    .registers 2

    .line 804
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipPlaniHeader()Ljava/lang/String;
    .registers 2

    .line 833
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipServerAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 697
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public whitelist getSipServiceRouteHeader()Ljava/lang/String;
    .registers 2

    .line 797
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipUserAgentHeader()Ljava/lang/String;
    .registers 2

    .line 811
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTransportType()I
    .registers 2

    .line 683
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    return v0
.end method

.method public whitelist getVersion()J
    .registers 3

    .line 676
    iget-wide v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 28

    .line 919
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    iget-object v6, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    iget-boolean v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    .line 920
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    iget-object v11, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    iget-object v12, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    iget-object v13, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    iget-object v14, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    iget-object v15, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    iget-object v2, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iget-object v0, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    move-object/from16 v26, v0

    move-object/from16 v25, v1

    move-object/from16 v17, v2

    filled-new-array/range {v3 .. v26}, [Ljava/lang/Object;

    move-result-object v0

    .line 919
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isSipCompactFormEnabled()Z
    .registers 2

    .line 705
    iget-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    return v0
.end method

.method public whitelist isSipKeepaliveEnabled()Z
    .registers 2

    .line 713
    iget-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipDelegateConfiguration{ mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 599
    iget-wide v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 600
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->writeAddressToParcel(Ljava/net/InetSocketAddress;Landroid/os/Parcel;)V

    .line 602
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->writeAddressToParcel(Ljava/net/InetSocketAddress;Landroid/os/Parcel;)V

    .line 603
    iget-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 604
    iget-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 605
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 611
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 612
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 614
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 616
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 617
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 619
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 621
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_76

    move p2, v0

    goto :goto_77

    :cond_76
    move p2, v1

    :goto_77
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 622
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    if-eqz p2, :cond_83

    .line 623
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    invoke-virtual {p2, p1}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->addToParcel(Landroid/os/Parcel;)V

    .line 625
    :cond_83
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    if-eqz p2, :cond_88

    goto :goto_89

    :cond_88
    move v0, v1

    :goto_89
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 626
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    if-eqz p2, :cond_95

    .line 627
    iget-object p2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0, p2, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->writeAddressToParcel(Ljava/net/InetSocketAddress;Landroid/os/Parcel;)V

    .line 629
    :cond_95
    return-void
.end method
