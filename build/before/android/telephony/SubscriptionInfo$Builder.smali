.class public Landroid/telephony/SubscriptionInfo$Builder;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAreUiccApplicationsEnabled:Z

.field private blacklist mCardId:I

.field private blacklist mCardString:Ljava/lang/String;

.field private blacklist mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

.field private blacklist mCarrierId:I

.field private blacklist mCarrierName:Ljava/lang/CharSequence;

.field private blacklist mCountryIso:Ljava/lang/String;

.field private blacklist mDataRoaming:I

.field private blacklist mDisplayName:Ljava/lang/CharSequence;

.field private blacklist mDisplayNameSource:I

.field private blacklist mEhplmns:[Ljava/lang/String;

.field private blacklist mGroupOwner:Ljava/lang/String;

.field private blacklist mGroupUuid:Landroid/os/ParcelUuid;

.field private blacklist mHplmns:[Ljava/lang/String;

.field private blacklist mIccId:Ljava/lang/String;

.field private blacklist mIconBitmap:Landroid/graphics/Bitmap;

.field private blacklist mIconTint:I

.field private blacklist mId:I

.field private blacklist mIsEmbedded:Z

.field private blacklist mIsGroupDisabled:Z

.field private blacklist mIsOnlyNonTerrestrialNetwork:Z

.field private blacklist mIsOpportunistic:Z

.field private blacklist mIsSatelliteESOSSupported:Z

.field private blacklist mMcc:Ljava/lang/String;

.field private blacklist mMnc:Ljava/lang/String;

.field private blacklist mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mPortIndex:I

.field private blacklist mProfileClass:I

.field private blacklist mServiceCapabilities:I

.field private blacklist mSimSlotIndex:I

.field private blacklist mTransferStatus:I

.field private blacklist mType:I

.field private blacklist mUsageSetting:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAreUiccApplicationsEnabled(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardId(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardString(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierConfigAccessRules(Landroid/telephony/SubscriptionInfo$Builder;)[Landroid/telephony/UiccAccessRule;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierName(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountryIso(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataRoaming(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayName(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayNameSource(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEhplmns(Landroid/telephony/SubscriptionInfo$Builder;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupOwner(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupUuid(Landroid/telephony/SubscriptionInfo$Builder;)Landroid/os/ParcelUuid;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHplmns(Landroid/telephony/SubscriptionInfo$Builder;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIccId(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconBitmap(Landroid/telephony/SubscriptionInfo$Builder;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconTint(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmbedded(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsGroupDisabled(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOnlyNonTerrestrialNetwork(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOpportunistic(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteESOSSupported(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMcc(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMnc(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeAccessRules(Landroid/telephony/SubscriptionInfo$Builder;)[Landroid/telephony/UiccAccessRule;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumber(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPortIndex(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileClass(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCapabilities(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimSlotIndex(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferStatus(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsageSetting(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 6

    .line 1379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1177
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    .line 1182
    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    .line 1190
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    .line 1196
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 1203
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    .line 1209
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    .line 1215
    const/4 v2, 0x0

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    .line 1220
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    .line 1228
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    .line 1233
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1239
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    .line 1245
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    .line 1251
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    .line 1257
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    .line 1263
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    .line 1269
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    .line 1275
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1281
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    .line 1287
    const/4 v4, -0x2

    iput v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    .line 1292
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    .line 1297
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 1306
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    .line 1313
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    .line 1321
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    .line 1327
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    .line 1333
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1340
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1346
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    .line 1351
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    .line 1356
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    .line 1362
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    .line 1364
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    .line 1369
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    .line 1374
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    .line 1380
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/SubscriptionInfo;)V
    .registers 7

    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1177
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    .line 1182
    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    .line 1190
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    .line 1196
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 1203
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    .line 1209
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    .line 1215
    const/4 v2, 0x0

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    .line 1220
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    .line 1228
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    .line 1233
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1239
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    .line 1245
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    .line 1251
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    .line 1257
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    .line 1263
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    .line 1269
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    .line 1275
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1281
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    .line 1287
    const/4 v4, -0x2

    iput v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    .line 1292
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    .line 1297
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 1306
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    .line 1313
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    .line 1321
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    .line 1327
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    .line 1333
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1340
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1346
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    .line 1351
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    .line 1356
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    .line 1362
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    .line 1364
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    .line 1369
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    .line 1374
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    .line 1388
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmId(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    .line 1389
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIccId(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    .line 1390
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmSimSlotIndex(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    .line 1391
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmDisplayName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 1392
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCarrierName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    .line 1393
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmDisplayNameSource(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    .line 1394
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIconTint(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    .line 1395
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    .line 1396
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmDataRoaming(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    .line 1397
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIconBitmap(Landroid/telephony/SubscriptionInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1398
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmMcc(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    .line 1399
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmMnc(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    .line 1400
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmEhplmns(Landroid/telephony/SubscriptionInfo;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    .line 1401
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmHplmns(Landroid/telephony/SubscriptionInfo;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    .line 1402
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCountryIso(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    .line 1403
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsEmbedded(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    .line 1404
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmNativeAccessRules(Landroid/telephony/SubscriptionInfo;)[Landroid/telephony/UiccAccessRule;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1405
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCardString(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    .line 1406
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCardId(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    .line 1407
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsOpportunistic(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    .line 1408
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmGroupUuid(Landroid/telephony/SubscriptionInfo;)Landroid/os/ParcelUuid;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 1409
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsGroupDisabled(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    .line 1410
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCarrierId(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    .line 1411
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmProfileClass(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    .line 1412
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmType(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    .line 1413
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmGroupOwner(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1414
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCarrierConfigAccessRules(Landroid/telephony/SubscriptionInfo;)[Landroid/telephony/UiccAccessRule;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1415
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmAreUiccApplicationsEnabled(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    .line 1416
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmPortIndex(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    .line 1417
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmUsageSetting(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    .line 1418
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsOnlyNonTerrestrialNetwork(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    .line 1419
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmServiceCapabilities(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    .line 1420
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmTransferStatus(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    .line 1421
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsSatelliteESOSSupported(Landroid/telephony/SubscriptionInfo;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    .line 1422
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/SubscriptionInfo;
    .registers 3

    .line 1876
    new-instance v0, Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/SubscriptionInfo;-><init>(Landroid/telephony/SubscriptionInfo$Builder;Landroid/telephony/SubscriptionInfo-IA;)V

    return-object v0
.end method

.method public blacklist setCardId(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1658
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    .line 1659
    return-object p0
.end method

.method public blacklist setCardString(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1646
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    .line 1647
    return-object p0
.end method

.method public blacklist setCarrierConfigAccessRules([Landroid/telephony/UiccAccessRule;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1765
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1766
    return-object p0
.end method

.method public blacklist setCarrierId(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1713
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    .line 1714
    return-object p0
.end method

.method public blacklist setCarrierName(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1483
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    .line 1484
    return-object p0
.end method

.method public blacklist setCountryIso(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1607
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    .line 1608
    return-object p0
.end method

.method public blacklist setDataRoaming(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1535
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    .line 1536
    return-object p0
.end method

.method public blacklist setDisplayName(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1470
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 1471
    return-object p0
.end method

.method public blacklist setDisplayNameSource(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1497
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    .line 1498
    return-object p0
.end method

.method public blacklist setEhplmns([Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1583
    if-nez p1, :cond_5

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    :cond_5
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    .line 1584
    return-object p0
.end method

.method public blacklist setEmbedded(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1619
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    .line 1620
    return-object p0
.end method

.method public blacklist setGroupDisabled(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1699
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    .line 1700
    return-object p0
.end method

.method public blacklist setGroupOwner(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1751
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1752
    return-object p0
.end method

.method public blacklist setGroupUuid(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3

    .line 1684
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    :cond_8
    invoke-static {p1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p1

    :goto_c
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 1685
    return-object p0
.end method

.method public blacklist setHplmns([Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1595
    if-nez p1, :cond_5

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    :cond_5
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    .line 1596
    return-object p0
.end method

.method public blacklist setIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1444
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    .line 1445
    return-object p0
.end method

.method public blacklist setIcon(Landroid/graphics/Bitmap;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1547
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1548
    return-object p0
.end method

.method public blacklist setIconTint(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1509
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    .line 1510
    return-object p0
.end method

.method public blacklist setId(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1432
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    .line 1433
    return-object p0
.end method

.method public blacklist setMcc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1559
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    .line 1560
    return-object p0
.end method

.method public blacklist setMnc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1571
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    .line 1572
    return-object p0
.end method

.method public blacklist setNativeAccessRules([Landroid/telephony/UiccAccessRule;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1632
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1633
    return-object p0
.end method

.method public blacklist setNumber(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1521
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    .line 1522
    return-object p0
.end method

.method public blacklist setOnlyNonTerrestrialNetwork(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1815
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    .line 1816
    return-object p0
.end method

.method public blacklist setOpportunistic(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1670
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    .line 1671
    return-object p0
.end method

.method public blacklist setPortIndex(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1790
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    .line 1791
    return-object p0
.end method

.method public blacklist setProfileClass(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1727
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    .line 1728
    return-object p0
.end method

.method public blacklist setSatelliteESOSSupported(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1866
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    .line 1867
    return-object p0
.end method

.method public blacklist setServiceCapabilities(Ljava/util/Set;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/telephony/SubscriptionInfo$Builder;"
        }
    .end annotation

    .line 1831
    nop

    .line 1832
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1833
    const/4 v2, 0x1

    if-lt v1, v2, :cond_22

    const/4 v2, 0x3

    if-gt v1, v2, :cond_22

    .line 1838
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->serviceCapabilityToBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 1839
    goto :goto_6

    .line 1835
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid service capability value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1840
    :cond_3b
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    .line 1841
    return-object p0
.end method

.method public blacklist setSimSlotIndex(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1457
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    .line 1458
    return-object p0
.end method

.method public blacklist setTransferStatus(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1852
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    .line 1853
    return-object p0
.end method

.method public blacklist setType(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1739
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    .line 1740
    return-object p0
.end method

.method public blacklist setUiccApplicationsEnabled(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1778
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    .line 1779
    return-object p0
.end method

.method public blacklist setUsageSetting(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2

    .line 1802
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    .line 1803
    return-object p0
.end method
