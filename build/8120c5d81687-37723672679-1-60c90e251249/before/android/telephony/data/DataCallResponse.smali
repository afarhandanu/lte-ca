.class public final Landroid/telephony/data/DataCallResponse;
.super Ljava/lang/Object;
.source "DataCallResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/DataCallResponse$Builder;,
        Landroid/telephony/data/DataCallResponse$HandoverFailureMode;,
        Landroid/telephony/data/DataCallResponse$LinkStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HANDOVER_FAILURE_MODE_DO_FALLBACK:I = 0x1

.field public static final whitelist HANDOVER_FAILURE_MODE_LEGACY:I = 0x0

.field public static final whitelist HANDOVER_FAILURE_MODE_NO_FALLBACK_RETRY_HANDOVER:I = 0x2

.field public static final whitelist HANDOVER_FAILURE_MODE_NO_FALLBACK_RETRY_SETUP_NORMAL:I = 0x3

.field public static final whitelist HANDOVER_FAILURE_MODE_UNKNOWN:I = -0x1

.field public static final whitelist LINK_STATUS_ACTIVE:I = 0x2

.field public static final whitelist LINK_STATUS_DORMANT:I = 0x1

.field public static final whitelist LINK_STATUS_INACTIVE:I = 0x0

.field public static final whitelist LINK_STATUS_UNKNOWN:I = -0x1

.field public static final whitelist PDU_SESSION_ID_NOT_SET:I = 0x0

.field public static final whitelist RETRY_DURATION_UNDEFINED:I = -0x1


# instance fields
.field private final greylist-max-o mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCause:I

.field private final blacklist mDefaultQos:Landroid/telephony/data/Qos;

.field private final blacklist mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGatewayAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandoverFailureMode:I

.field private final blacklist mId:I

.field private final blacklist mInterfaceName:Ljava/lang/String;

.field private final blacklist mLinkStatus:I

.field private final greylist-max-o mMtu:I

.field private final blacklist mMtuV4:I

.field private final blacklist mMtuV6:I

.field private final blacklist mNetworkValidationStatus:I

.field private final blacklist mPcscfAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPduSessionId:I

.field private final blacklist mPhysicalNetworkSlotIndex:I

.field private final blacklist mPhysicalNetworkTransportType:I

.field private final blacklist mProtocolType:I

.field private final blacklist mQosBearerSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field private final blacklist mSuggestedRetryTime:J

.field private final blacklist mTrafficDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 610
    new-instance v0, Landroid/telephony/data/DataCallResponse$1;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(IIIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;I)V"
        }
    .end annotation

    .line 184
    move/from16 v0, p2

    int-to-long v2, v0

    .line 186
    if-nez p6, :cond_9

    const-string v0, ""

    move-object v7, v0

    goto :goto_b

    :cond_9
    move-object/from16 v7, p6

    .line 187
    :goto_b
    if-nez p7, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_15

    :cond_13
    move-object/from16 v8, p7

    .line 188
    :goto_15
    if-nez p8, :cond_1d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    goto :goto_1f

    :cond_1d
    move-object/from16 v9, p8

    .line 189
    :goto_1f
    if-nez p9, :cond_27

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    goto :goto_29

    :cond_27
    move-object/from16 v10, p9

    .line 190
    :goto_29
    if-nez p10, :cond_31

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    goto :goto_33

    :cond_31
    move-object/from16 v11, p10

    .line 193
    :goto_33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    .line 184
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x1

    move/from16 v13, p11

    move/from16 v14, p11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v12, p11

    invoke-direct/range {v0 .. v23}, Landroid/telephony/data/DataCallResponse;-><init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;III)V

    .line 199
    return-void
.end method

.method private constructor blacklist <init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;III)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;IIIII",
            "Landroid/telephony/data/Qos;",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;",
            "Landroid/telephony/data/NetworkSliceInfo;",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;III)V"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p1, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    .line 214
    iput-wide p2, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    .line 215
    iput p4, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    .line 216
    iput p5, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    .line 217
    iput p6, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    .line 218
    iput-object p7, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    .line 219
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 220
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    .line 221
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 222
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    .line 223
    iput p12, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    .line 224
    iput p13, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    .line 225
    iput p14, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    .line 226
    iput p15, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    .line 227
    move/from16 p1, p16

    iput p1, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    .line 228
    move-object/from16 p1, p17

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 229
    new-instance p1, Ljava/util/ArrayList;

    move-object/from16 p2, p18

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    .line 230
    move-object/from16 p1, p19

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 231
    new-instance p1, Ljava/util/ArrayList;

    move-object/from16 p2, p20

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    .line 232
    move/from16 p1, p21

    iput p1, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    .line 233
    move/from16 p1, p22

    iput p1, p0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkTransportType:I

    .line 234
    move/from16 p1, p23

    iput p1, p0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkSlotIndex:I

    .line 236
    iget p1, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_67

    iget p1, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_72

    .line 238
    :cond_67
    iget-object p1, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    const-string p2, "Active data calls must be on a valid interface!"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    iget p1, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    if-nez p1, :cond_73

    .line 244
    :cond_72
    return-void

    .line 241
    :cond_73
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Active data call must not have a failure!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor blacklist <init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;IIILandroid/telephony/data/DataCallResponse-IA;)V
    .registers 25

    invoke-direct/range {p0 .. p23}, Landroid/telephony/data/DataCallResponse;-><init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;III)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 256
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    const-class v1, Landroid/net/LinkAddress;

    .line 257
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/net/LinkAddress;

    .line 256
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    .line 260
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    const-class v1, Ljava/net/InetAddress;

    .line 261
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/net/InetAddress;

    .line 260
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 264
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    const-class v1, Ljava/net/InetAddress;

    .line 265
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/net/InetAddress;

    .line 264
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    .line 268
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    const-class v1, Ljava/net/InetAddress;

    .line 269
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/net/InetAddress;

    .line 268
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    .line 276
    const-class v0, Landroid/telephony/data/Qos;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/Qos;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/Qos;

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    .line 279
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    const-class v1, Landroid/telephony/data/QosBearerSession;

    .line 280
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/data/QosBearerSession;

    .line 279
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 282
    const-class v0, Landroid/telephony/data/NetworkSliceInfo;

    .line 283
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/NetworkSliceInfo;

    .line 282
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/NetworkSliceInfo;

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    .line 286
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    const-class v1, Landroid/telephony/data/TrafficDescriptor;

    .line 287
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/data/TrafficDescriptor;

    .line 286
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkTransportType:I

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkSlotIndex:I

    .line 292
    return-void
.end method

.method public static blacklist failureModeToString(I)Ljava/lang/String;
    .registers 1

    .line 632
    packed-switch p0, :pswitch_data_1a

    .line 638
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 637
    :pswitch_8
    const-string/jumbo p0, "retry setup new one"

    return-object p0

    .line 636
    :pswitch_c
    const-string/jumbo p0, "retry handover"

    return-object p0

    .line 635
    :pswitch_10
    const-string p0, "fallback"

    return-object p0

    .line 634
    :pswitch_13
    const-string p0, "legacy"

    return-object p0

    .line 633
    :pswitch_16
    const-string/jumbo p0, "unknown"

    return-object p0

    :pswitch_data_1a
    .packed-switch -0x1
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 531
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 533
    :cond_4
    instance-of v1, p1, Landroid/telephony/data/DataCallResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 534
    return v2

    .line 537
    :cond_a
    check-cast p1, Landroid/telephony/data/DataCallResponse;

    .line 539
    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    iget v3, p1, Landroid/telephony/data/DataCallResponse;->mCause:I

    if-ne v1, v3, :cond_10b

    iget-wide v3, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    iget-wide v5, p1, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_10b

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    iget v3, p1, Landroid/telephony/data/DataCallResponse;->mId:I

    if-ne v1, v3, :cond_10b

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    iget v3, p1, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    if-ne v1, v3, :cond_10b

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    iget v3, p1, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    if-ne v1, v3, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    .line 544
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 545
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 546
    invoke-interface {v1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    .line 547
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    .line 548
    invoke-interface {v1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 549
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 550
    invoke-interface {v1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    .line 551
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    .line 552
    invoke-interface {v1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    iget v3, p1, Landroid/telephony/data/DataCallResponse;->mMtu:I

    if-ne v1, v3, :cond_10b

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    iget v3, p1, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    if-ne v1, v3, :cond_10b

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    iget v3, p1, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    if-ne v1, v3, :cond_10b

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    iget v3, p1, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    if-ne v1, v3, :cond_10b

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    iget v3, p1, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    if-ne v1, v3, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 558
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    .line 559
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    .line 560
    invoke-interface {v1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 561
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    .line 562
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_10b

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    .line 563
    invoke-interface {v1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    iget v3, p1, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    if-ne v1, v3, :cond_10b

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkTransportType:I

    iget v3, p1, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkTransportType:I

    if-ne v1, v3, :cond_10b

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkSlotIndex:I

    iget p1, p1, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkSlotIndex:I

    if-ne v1, p1, :cond_10b

    goto :goto_10c

    :cond_10b
    move v0, v2

    .line 539
    :goto_10c
    return v0
.end method

.method public whitelist getAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCause()I
    .registers 2

    .line 298
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    return v0
.end method

.method public blacklist getDefaultQos()Landroid/telephony/data/Qos;
    .registers 2

    .line 434
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    return-object v0
.end method

.method public whitelist getDnsAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGatewayAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHandoverFailureMode()I
    .registers 2

    .line 417
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 332
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    return v0
.end method

.method public whitelist getInterfaceName()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLinkStatus()I
    .registers 2

    .line 337
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    return v0
.end method

.method public whitelist getMtu()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 393
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    return v0
.end method

.method public whitelist getMtuV4()I
    .registers 2

    .line 402
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    return v0
.end method

.method public whitelist getMtuV6()I
    .registers 2

    .line 410
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    return v0
.end method

.method public whitelist getNetworkValidationStatus()I
    .registers 2

    .line 471
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    return v0
.end method

.method public whitelist getPcscfAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPduSessionId()I
    .registers 2

    .line 424
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    return v0
.end method

.method public blacklist getPhysicalNetworkSlotIndex()I
    .registers 3

    .line 490
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkTransportType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 491
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkSlotIndex:I

    return v0

    .line 493
    :cond_8
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getPhysicalNetworkTransportType()I
    .registers 2

    .line 480
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkTransportType:I

    return v0
.end method

.method public whitelist getProtocolType()I
    .registers 2

    .line 343
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    return v0
.end method

.method public blacklist getQosBearerSessions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRetryDurationMillis()J
    .registers 3

    .line 326
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    return-wide v0
.end method

.method public whitelist getSliceInfo()Landroid/telephony/data/NetworkSliceInfo;
    .registers 2

    .line 453
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    return-object v0
.end method

.method public whitelist getSuggestedRetryTime()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 311
    const/4 v0, 0x0

    return v0

    .line 312
    :cond_a
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 313
    const v0, 0x7fffffff

    return v0

    .line 315
    :cond_17
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getTrafficDescriptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 25

    .line 571
    move-object/from16 v0, p0

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mCause:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, v0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 572
    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v8

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v9

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 573
    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v10

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v11

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    .line 574
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v18

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    .line 575
    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v20

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkTransportType:I

    .line 576
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v0, v0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkSlotIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    filled-new-array/range {v2 .. v23}, [Ljava/lang/Object;

    move-result-object v0

    .line 571
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 499
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 500
    const-string v1, "DataCallResponse: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 501
    const-string v2, " cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    invoke-static {v2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 502
    const-string v2, " retry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 503
    const-string v2, " cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 504
    const-string v2, " linkStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 505
    const-string v2, " protocolType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 506
    const-string v2, " ifname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 507
    const-string v2, " addresses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 508
    const-string v2, " dnses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 509
    const-string v2, " gateways="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 510
    const-string v2, " pcscf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 511
    const-string v2, " mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 512
    const-string v2, " mtuV4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getMtuV4()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 513
    const-string v2, " mtuV6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getMtuV6()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 514
    const-string v2, " handoverFailureMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    invoke-static {v2}, Landroid/telephony/data/DataCallResponse;->failureModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 515
    const-string v2, " pduSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 516
    const-string v2, " defaultQos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 517
    const-string v2, " qosBearerSessions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 518
    const-string v2, " sliceInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 519
    const-string v2, " trafficDescriptors="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 520
    const-string v2, " networkValidationStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    .line 521
    invoke-static {v2}, Landroid/telephony/PreciseDataConnectionState;->networkValidationStatusToString(I)Ljava/lang/String;

    move-result-object v2

    .line 520
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 522
    const-string v2, " physicalNetworkTransportType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkTransportType:I

    .line 523
    invoke-static {v2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 524
    const-string v2, " physicalNetworkSlotIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkSlotIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 525
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 586
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 588
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 593
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 594
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 595
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 596
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 602
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 603
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 604
    iget-object p2, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 605
    iget p2, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget p2, p0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkTransportType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    iget p2, p0, Landroid/telephony/data/DataCallResponse;->mPhysicalNetworkSlotIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    return-void
.end method
