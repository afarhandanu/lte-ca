.class public final Landroid/telephony/data/DataCallResponse$Builder;
.super Ljava/lang/Object;
.source "DataCallResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataCallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCause:I

.field private blacklist mDefaultQos:Landroid/telephony/data/Qos;

.field private blacklist mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGatewayAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHandoverFailureMode:I

.field private blacklist mId:I

.field private blacklist mInterfaceName:Ljava/lang/String;

.field private blacklist mLinkStatus:I

.field private blacklist mMtu:I

.field private blacklist mMtuV4:I

.field private blacklist mMtuV6:I

.field private blacklist mNetworkValidationStatus:I

.field private blacklist mPcscfAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPduSessionId:I

.field private blacklist mPhysicalNetworkSlotIndex:I

.field private blacklist mPhysicalNetworkTransportType:I

.field private blacklist mProtocolType:I

.field private blacklist mQosBearerSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field private blacklist mSuggestedRetryTime:J

.field private blacklist mTrafficDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    .line 667
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mInterfaceName:Ljava/lang/String;

    .line 669
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mAddresses:Ljava/util/List;

    .line 671
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mDnsAddresses:Ljava/util/List;

    .line 673
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mGatewayAddresses:Ljava/util/List;

    .line 675
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPcscfAddresses:Ljava/util/List;

    .line 683
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mHandoverFailureMode:I

    .line 685
    iput v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPduSessionId:I

    .line 689
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mQosBearerSessions:Ljava/util/List;

    .line 693
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mTrafficDescriptors:Ljava/util/List;

    .line 695
    iput v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mNetworkValidationStatus:I

    .line 698
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPhysicalNetworkTransportType:I

    .line 701
    iput v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPhysicalNetworkSlotIndex:I

    .line 707
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/data/DataCallResponse;
    .registers 27

    .line 1022
    move-object/from16 v0, p0

    new-instance v1, Landroid/telephony/data/DataCallResponse;

    move-object v2, v1

    iget v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mCause:I

    move-object v4, v2

    iget-wide v2, v0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    move-object v5, v4

    iget v4, v0, Landroid/telephony/data/DataCallResponse$Builder;->mId:I

    move-object v6, v5

    iget v5, v0, Landroid/telephony/data/DataCallResponse$Builder;->mLinkStatus:I

    move-object v7, v6

    iget v6, v0, Landroid/telephony/data/DataCallResponse$Builder;->mProtocolType:I

    move-object v8, v7

    iget-object v7, v0, Landroid/telephony/data/DataCallResponse$Builder;->mInterfaceName:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Landroid/telephony/data/DataCallResponse$Builder;->mAddresses:Ljava/util/List;

    move-object v10, v9

    iget-object v9, v0, Landroid/telephony/data/DataCallResponse$Builder;->mDnsAddresses:Ljava/util/List;

    move-object v11, v10

    iget-object v10, v0, Landroid/telephony/data/DataCallResponse$Builder;->mGatewayAddresses:Ljava/util/List;

    move-object v12, v11

    iget-object v11, v0, Landroid/telephony/data/DataCallResponse$Builder;->mPcscfAddresses:Ljava/util/List;

    move-object v13, v12

    iget v12, v0, Landroid/telephony/data/DataCallResponse$Builder;->mMtu:I

    move-object v14, v13

    iget v13, v0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV4:I

    move-object v15, v14

    iget v14, v0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV6:I

    move-object/from16 v16, v15

    iget v15, v0, Landroid/telephony/data/DataCallResponse$Builder;->mHandoverFailureMode:I

    move/from16 v17, v1

    iget v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mPduSessionId:I

    move/from16 v18, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mDefaultQos:Landroid/telephony/data/Qos;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mQosBearerSessions:Ljava/util/List;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mTrafficDescriptors:Ljava/util/List;

    move-object/from16 v22, v1

    iget v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mNetworkValidationStatus:I

    move/from16 v23, v1

    iget v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mPhysicalNetworkTransportType:I

    iget v0, v0, Landroid/telephony/data/DataCallResponse$Builder;->mPhysicalNetworkSlotIndex:I

    const/16 v24, 0x0

    move/from16 v25, v23

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    move/from16 v22, v1

    move/from16 v1, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move/from16 v21, v25

    invoke-direct/range {v0 .. v24}, Landroid/telephony/data/DataCallResponse;-><init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;IIILandroid/telephony/data/DataCallResponse-IA;)V

    return-object v0
.end method

.method public whitelist setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    .line 801
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mAddresses:Ljava/util/List;

    .line 803
    return-object p0
.end method

.method public whitelist setCause(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    .line 718
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mCause:I

    .line 719
    return-object p0
.end method

.method public blacklist setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    .line 923
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 924
    return-object p0
.end method

.method public whitelist setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    .line 813
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mDnsAddresses:Ljava/util/List;

    .line 815
    return-object p0
.end method

.method public whitelist setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    .line 825
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mGatewayAddresses:Ljava/util/List;

    .line 827
    return-object p0
.end method

.method public whitelist setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    .line 890
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mHandoverFailureMode:I

    .line 891
    return-object p0
.end method

.method public whitelist setId(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    .line 754
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mId:I

    .line 755
    return-object p0
.end method

.method public whitelist setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    .line 789
    if-nez p1, :cond_4

    const-string p1, ""

    .line 790
    :cond_4
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mInterfaceName:Ljava/lang/String;

    .line 791
    return-object p0
.end method

.method public whitelist setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    .line 765
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mLinkStatus:I

    .line 766
    return-object p0
.end method

.method public whitelist setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    .line 853
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mMtu:I

    .line 854
    return-object p0
.end method

.method public whitelist setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    .line 866
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV4:I

    .line 867
    return-object p0
.end method

.method public whitelist setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    .line 879
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV6:I

    .line 880
    return-object p0
.end method

.method public whitelist setNetworkValidationStatus(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    .line 987
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mNetworkValidationStatus:I

    .line 988
    return-object p0
.end method

.method public whitelist setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    .line 838
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPcscfAddresses:Ljava/util/List;

    .line 840
    return-object p0
.end method

.method public whitelist setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 6

    .line 905
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string/jumbo v3, "pduSessionId must be greater than or equal to0"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 907
    const/16 v2, 0xf

    if-gt p1, v2, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string/jumbo v1, "pduSessionId must be less than or equal to 15."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 909
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPduSessionId:I

    .line 910
    return-object p0
.end method

.method public blacklist setPhysicalNetworkSlotIndex(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    .line 1012
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPhysicalNetworkSlotIndex:I

    .line 1013
    return-object p0
.end method

.method public blacklist setPhysicalNetworkTransportType(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    .line 1000
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPhysicalNetworkTransportType:I

    .line 1001
    return-object p0
.end method

.method public whitelist setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    .line 776
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mProtocolType:I

    .line 777
    return-object p0
.end method

.method public blacklist setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    .line 939
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mQosBearerSessions:Ljava/util/List;

    .line 941
    return-object p0
.end method

.method public whitelist setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 3

    .line 743
    iput-wide p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    .line 744
    return-object p0
.end method

.method public whitelist setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    .line 955
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 956
    return-object p0
.end method

.method public whitelist setSuggestedRetryTime(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 732
    int-to-long v0, p1

    iput-wide v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    .line 733
    return-object p0
.end method

.method public whitelist setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    .line 973
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mTrafficDescriptors:Ljava/util/List;

    .line 975
    return-object p0
.end method
