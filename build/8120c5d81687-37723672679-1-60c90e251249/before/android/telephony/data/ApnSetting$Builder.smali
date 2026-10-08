.class public Landroid/telephony/data/ApnSetting$Builder;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/ApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlwaysOn:Z

.field private greylist-max-o mApnName:Ljava/lang/String;

.field private blacklist mApnSetId:I

.field private greylist-max-o mApnTypeBitmask:I

.field private greylist-max-o mAuthType:I

.field private greylist-max-o mCarrierEnabled:Z

.field private blacklist mCarrierId:I

.field private blacklist mEditedStatus:I

.field private greylist-max-o mEntryName:Ljava/lang/String;

.field private blacklist mEsimBootstrapProvisioning:Z

.field private greylist-max-o mId:I

.field private blacklist mInfrastructureBitmask:I

.field private blacklist mLingeringNetworkTypeBitmask:J

.field private greylist-max-o mMaxConns:I

.field private greylist-max-o mMaxConnsTime:I

.field private blacklist mMmsProxyAddress:Ljava/lang/String;

.field private greylist-max-o mMmsProxyPort:I

.field private greylist-max-o mMmsc:Landroid/net/Uri;

.field private greylist-max-o mModemCognitive:Z

.field private blacklist mMtuV4:I

.field private blacklist mMtuV6:I

.field private greylist-max-o mMvnoMatchData:Ljava/lang/String;

.field private greylist-max-o mMvnoType:I

.field private greylist-max-o mNetworkTypeBitmask:I

.field private greylist-max-o mOperatorNumeric:Ljava/lang/String;

.field private greylist-max-o mPassword:Ljava/lang/String;

.field private greylist-max-o mProfileId:I

.field private greylist-max-o mProtocol:I

.field private blacklist mProxyAddress:Ljava/lang/String;

.field private greylist-max-o mProxyPort:I

.field private greylist-max-o mRoamingProtocol:I

.field private blacklist mSkip464Xlat:I

.field private greylist-max-o mUser:Ljava/lang/String;

.field private greylist-max-o mWaitTime:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlwaysOn(Landroid/telephony/data/ApnSetting$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mAlwaysOn:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApnName(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApnSetId(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnSetId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApnTypeBitmask(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthType(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mAuthType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierEnabled(Landroid/telephony/data/ApnSetting$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEditedStatus(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mEditedStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEntryName(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEsimBootstrapProvisioning(Landroid/telephony/data/ApnSetting$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mEsimBootstrapProvisioning:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInfrastructureBitmask(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mInfrastructureBitmask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLingeringNetworkTypeBitmask(Landroid/telephony/data/ApnSetting$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mLingeringNetworkTypeBitmask:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxConns(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConns:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxConnsTime(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConnsTime:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMmsProxyAddress(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMmsProxyPort(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMmsc(Landroid/telephony/data/ApnSetting$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsc:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmModemCognitive(Landroid/telephony/data/ApnSetting$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mModemCognitive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMtuV4(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtuV4:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMtuV6(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtuV6:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMvnoMatchData(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoMatchData:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMvnoType(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkTypeBitmask(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mNetworkTypeBitmask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOperatorNumeric(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mOperatorNumeric:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPassword(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileId(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProfileId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProtocol(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProxyAddress(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProxyPort(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoamingProtocol(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSkip464Xlat(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mSkip464Xlat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUser(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mUser:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaitTime(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mWaitTime:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 1934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1899
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    .line 1902
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    .line 1905
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mAuthType:I

    .line 1909
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    .line 1910
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    .line 1921
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    .line 1924
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierId:I

    .line 1925
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mSkip464Xlat:I

    .line 1927
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mInfrastructureBitmask:I

    .line 1929
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mEditedStatus:I

    .line 1934
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/data/ApnSetting;
    .registers 4

    .line 2409
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    const v1, 0x3ffff

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_65

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    .line 2413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_65

    .line 2416
    :cond_1a
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5f

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    .line 2417
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mms proxy("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") should be a hostname, not a url"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ApnSetting"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2421
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    .line 2423
    :cond_5f
    new-instance v0, Landroid/telephony/data/ApnSetting;

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/ApnSetting;-><init>(Landroid/telephony/data/ApnSetting$Builder;Landroid/telephony/data/ApnSetting-IA;)V

    return-object v0

    .line 2414
    :cond_65
    :goto_65
    return-object v1
.end method

.method public blacklist buildWithoutCheck()Landroid/telephony/data/ApnSetting;
    .registers 3

    .line 2433
    new-instance v0, Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/ApnSetting;-><init>(Landroid/telephony/data/ApnSetting$Builder;Landroid/telephony/data/ApnSetting-IA;)V

    return-object v0
.end method

.method public whitelist setAlwaysOn(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2346
    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mAlwaysOn:Z

    .line 2347
    return-object p0
.end method

.method public whitelist setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2076
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    .line 2077
    return-object p0
.end method

.method public blacklist setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2054
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnSetId:I

    .line 2055
    return-object p0
.end method

.method public whitelist setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2225
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    .line 2226
    return-object p0
.end method

.method public whitelist setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2208
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mAuthType:I

    .line 2209
    return-object p0
.end method

.method public whitelist setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2275
    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierEnabled:Z

    .line 2276
    return-object p0
.end method

.method public whitelist setCarrierId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2324
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierId:I

    .line 2325
    return-object p0
.end method

.method public blacklist setEditedStatus(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2397
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mEditedStatus:I

    .line 2398
    return-object p0
.end method

.method public whitelist setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2065
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    .line 2066
    return-object p0
.end method

.method public blacklist setEsimBootstrapProvisioning(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2377
    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mEsimBootstrapProvisioning:Z

    .line 2378
    return-object p0
.end method

.method public greylist-max-o setId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 1943
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mId:I

    .line 1944
    return-object p0
.end method

.method public blacklist setInfrastructureBitmask(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2362
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mInfrastructureBitmask:I

    .line 2363
    return-object p0
.end method

.method public blacklist setLingeringNetworkTypeBitmask(J)Landroid/telephony/data/ApnSetting$Builder;
    .registers 3

    .line 2299
    iput-wide p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mLingeringNetworkTypeBitmask:J

    .line 2300
    return-object p0
.end method

.method public greylist-max-o setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2010
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConns:I

    .line 2011
    return-object p0
.end method

.method public greylist-max-o setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2032
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConnsTime:I

    .line 2033
    return-object p0
.end method

.method public whitelist setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2163
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    .line 2164
    return-object p0
.end method

.method public whitelist setMmsProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2152
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->inetAddressToString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    .line 2153
    return-object p0
.end method

.method public whitelist setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2174
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    .line 2175
    return-object p0
.end method

.method public whitelist setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2130
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsc:Landroid/net/Uri;

    .line 2131
    return-object p0
.end method

.method public greylist-max-o setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 1999
    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mModemCognitive:Z

    .line 2000
    return-object p0
.end method

.method public whitelist setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 1955
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtuV4:I

    .line 1956
    return-object p0
.end method

.method public whitelist setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 1967
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtuV6:I

    .line 1968
    return-object p0
.end method

.method public greylist-max-o setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2043
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoMatchData:Ljava/lang/String;

    .line 2044
    return-object p0
.end method

.method public whitelist setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2310
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    .line 2311
    return-object p0
.end method

.method public whitelist setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2286
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mNetworkTypeBitmask:I

    .line 2287
    return-object p0
.end method

.method public whitelist setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2238
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mOperatorNumeric:Ljava/lang/String;

    .line 2239
    return-object p0
.end method

.method public whitelist setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2197
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mPassword:Ljava/lang/String;

    .line 2198
    return-object p0
.end method

.method public whitelist setPersistent(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 1989
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 1977
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProfileId:I

    .line 1978
    return-object p0
.end method

.method public whitelist setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2251
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    .line 2252
    return-object p0
.end method

.method public whitelist setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2108
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyAddress:Ljava/lang/String;

    .line 2109
    return-object p0
.end method

.method public whitelist setProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2097
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->inetAddressToString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyAddress:Ljava/lang/String;

    .line 2098
    return-object p0
.end method

.method public whitelist setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2119
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    .line 2120
    return-object p0
.end method

.method public whitelist setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2264
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    .line 2265
    return-object p0
.end method

.method public blacklist setSkip464Xlat(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2335
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mSkip464Xlat:I

    .line 2336
    return-object p0
.end method

.method public whitelist setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2185
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mUser:Ljava/lang/String;

    .line 2186
    return-object p0
.end method

.method public greylist-max-o setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    .line 2021
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mWaitTime:I

    .line 2022
    return-object p0
.end method
