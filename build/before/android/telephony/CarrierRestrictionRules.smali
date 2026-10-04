.class public final Landroid/telephony/CarrierRestrictionRules;
.super Ljava/lang/Object;
.source "CarrierRestrictionRules.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CarrierRestrictionRules$Builder;,
        Landroid/telephony/CarrierRestrictionRules$CarrierRestrictionDefault;,
        Landroid/telephony/CarrierRestrictionRules$MultiSimPolicy;
    }
.end annotation


# static fields
.field public static final whitelist CARRIER_RESTRICTION_DEFAULT_ALLOWED:I = 0x1

.field public static final whitelist CARRIER_RESTRICTION_DEFAULT_NOT_ALLOWED:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CarrierRestrictionRules;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MULTISIM_POLICY_ACTIVE_SERVICE_ON_ANY_SLOT_TO_UNBLOCK_OTHER_SLOTS:I = 0x6

.field public static final blacklist MULTISIM_POLICY_ACTIVE_SERVICE_ON_SLOT_1_TO_UNBLOCK_OTHER_SLOTS:I = 0x5

.field public static final blacklist MULTISIM_POLICY_ALL_SIMS_MUST_BE_VALID:I = 0x7

.field public static final blacklist MULTISIM_POLICY_APPLY_TO_ALL_SLOTS:I = 0x2

.field public static final blacklist MULTISIM_POLICY_APPLY_TO_ONLY_SLOT_1:I = 0x3

.field public static final whitelist MULTISIM_POLICY_NONE:I = 0x0

.field public static final whitelist MULTISIM_POLICY_ONE_VALID_SIM_MUST_BE_PRESENT:I = 0x1

.field public static final blacklist MULTISIM_POLICY_SLOT_POLICY_OTHER:I = 0x8

.field public static final blacklist MULTISIM_POLICY_VALID_SIM_MUST_PRESENT_ON_SLOT_1:I = 0x4

.field private static final blacklist WILD_CHARACTER:C = '?'


# instance fields
.field private blacklist mAllowedCarrierInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CarrierInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAllowedCarriers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCarrierRestrictionDefault:I

.field private blacklist mCarrierRestrictionStatus:I

.field private blacklist mExcludedCarrierInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CarrierInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExcludedCarriers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMultiSimPolicy:I

.field private blacklist mUseCarrierLockInfo:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowedCarrierInfo(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarrierInfo:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExcludedCarrierInfo(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarrierInfo:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExcludedCarriers(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowedCarrierInfo(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarrierInfo:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierRestrictionDefault(Landroid/telephony/CarrierRestrictionRules;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierRestrictionStatus(Landroid/telephony/CarrierRestrictionRules;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExcludedCarrierInfo(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarrierInfo:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExcludedCarriers(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMultiSimPolicy(Landroid/telephony/CarrierRestrictionRules;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CarrierRestrictionRules;->mMultiSimPolicy:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUseCarrierLockInfo(Landroid/telephony/CarrierRestrictionRules;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/CarrierRestrictionRules;->mUseCarrierLockInfo:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 444
    new-instance v0, Landroid/telephony/CarrierRestrictionRules$1;

    invoke-direct {v0}, Landroid/telephony/CarrierRestrictionRules$1;-><init>()V

    sput-object v0, Landroid/telephony/CarrierRestrictionRules;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarrierInfo:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarrierInfo:Ljava/util/List;

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    .line 185
    iput v0, p0, Landroid/telephony/CarrierRestrictionRules;->mMultiSimPolicy:I

    .line 186
    iput v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionStatus:I

    .line 187
    iput-boolean v0, p0, Landroid/telephony/CarrierRestrictionRules;->mUseCarrierLockInfo:Z

    .line 188
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarrierInfo:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarrierInfo:Ljava/util/List;

    .line 195
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    sget-object v1, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 196
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    sget-object v1, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CarrierRestrictionRules;->mMultiSimPolicy:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionStatus:I

    .line 200
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarrierInfo:Ljava/util/List;

    sget-object v1, Landroid/telephony/CarrierInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 201
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarrierInfo:Ljava/util/List;

    sget-object v1, Landroid/telephony/CarrierInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/telephony/CarrierRestrictionRules;->mUseCarrierLockInfo:Z

    .line 203
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CarrierRestrictionRules-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CarrierRestrictionRules;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/CarrierRestrictionRules-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/CarrierRestrictionRules;-><init>()V

    return-void
.end method

.method private static blacklist convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 371
    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCarrierInfoList()Ljava/lang/String;
    .registers 3

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",  allowedCarrierInfoList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarrierInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", excludedCarrierInfoList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarrierInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCarrierRestrictionStatusToLog()Ljava/lang/String;
    .registers 3

    .line 473
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", CarrierRestrictionStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 476
    :cond_1c
    const-string v0, ""

    return-object v0
.end method

.method private static blacklist isCarrierIdInList(Landroid/service/carrier/CarrierIdentifier;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/carrier/CarrierIdentifier;",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)Z"
        }
    .end annotation

    .line 320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/carrier/CarrierIdentifier;

    .line 322
    invoke-virtual {p0}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/CarrierRestrictionRules;->patternMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 323
    invoke-virtual {p0}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/CarrierRestrictionRules;->patternMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 324
    goto :goto_4

    .line 329
    :cond_2e
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {p0}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 332
    invoke-static {v3, v2}, Landroid/telephony/CarrierRestrictionRules;->patternMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 333
    goto :goto_4

    .line 338
    :cond_4b
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {p0}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    nop

    .line 341
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-static {v3, v2}, Landroid/telephony/CarrierRestrictionRules;->patternMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 343
    goto :goto_4

    .line 347
    :cond_73
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-virtual {p0}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    nop

    .line 350
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-static {v3, v2}, Landroid/telephony/CarrierRestrictionRules;->patternMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 352
    goto/16 :goto_4

    .line 356
    :cond_9c
    invoke-virtual {v0}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    nop

    .line 359
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-static {v1, v0}, Landroid/telephony/CarrierRestrictionRules;->patternMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 361
    goto/16 :goto_4

    .line 365
    :cond_c5
    const/4 p0, 0x1

    return p0

    .line 367
    :cond_c7
    return v1
.end method

.method static synthetic blacklist lambda$areCarrierIdentifiersAllowed$0(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 1

    .line 306
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newBuilder()Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 1

    .line 210
    new-instance v0, Landroid/telephony/CarrierRestrictionRules$Builder;

    invoke-direct {v0}, Landroid/telephony/CarrierRestrictionRules$Builder;-><init>()V

    return-object v0
.end method

.method private static blacklist patternMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 384
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 385
    return v2

    .line 387
    :cond_c
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 388
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 390
    move v0, v2

    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 391
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_32

    .line 392
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3f

    if-eq v1, v3, :cond_32

    .line 393
    return v2

    .line 390
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 396
    :cond_35
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist areCarrierIdentifiersAllowed(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    const/4 v1, 0x0

    move v2, v1

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4b

    .line 294
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/carrier/CarrierIdentifier;

    iget-object v5, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    invoke-static {v3, v5}, Landroid/telephony/CarrierRestrictionRules;->isCarrierIdInList(Landroid/service/carrier/CarrierIdentifier;Ljava/util/List;)Z

    move-result v3

    .line 295
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/carrier/CarrierIdentifier;

    iget-object v6, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    invoke-static {v5, v6}, Landroid/telephony/CarrierRestrictionRules;->isCarrierIdInList(Landroid/service/carrier/CarrierIdentifier;Ljava/util/List;)Z

    move-result v5

    .line 296
    iget v6, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    if-nez v6, :cond_3c

    .line 297
    if-eqz v3, :cond_33

    if-nez v5, :cond_33

    goto :goto_34

    :cond_33
    move v4, v1

    :goto_34
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 299
    :cond_3c
    if-eqz v5, :cond_41

    if-nez v3, :cond_41

    move v4, v1

    :cond_41
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 303
    :cond_4b
    iget p1, p0, Landroid/telephony/CarrierRestrictionRules;->mMultiSimPolicy:I

    if-ne p1, v4, :cond_6f

    .line 304
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 305
    if-eqz v1, :cond_6e

    .line 306
    new-instance p1, Landroid/telephony/CarrierRestrictionRules$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroid/telephony/CarrierRestrictionRules$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 307
    goto :goto_6f

    .line 309
    :cond_6e
    goto :goto_53

    .line 311
    :cond_6f
    :goto_6f
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAllowedCarriers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAllowedCarriersInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CarrierInfo;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarrierInfo:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCarrierRestrictionStatus()I
    .registers 2

    .line 415
    iget v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionStatus:I

    return v0
.end method

.method public whitelist getDefaultCarrierRestriction()I
    .registers 2

    .line 270
    iget v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    return v0
.end method

.method public whitelist getExcludedCarriers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getExcludedCarriersInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CarrierInfo;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarrierInfo:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMultiSimPolicy()I
    .registers 2

    .line 277
    iget v0, p0, Landroid/telephony/CarrierRestrictionRules;->mMultiSimPolicy:I

    return v0
.end method

.method public whitelist isAllCarriersAllowed()Z
    .registers 4

    .line 217
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->carrierRestrictionStatus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionStatus:I

    if-ne v0, v1, :cond_c

    .line 219
    return v1

    .line 221
    :cond_c
    iget-boolean v0, p0, Landroid/telephony/CarrierRestrictionRules;->mUseCarrierLockInfo:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 222
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarrierInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarrierInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    if-ne v0, v1, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1

    .line 225
    :cond_28
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    if-ne v0, v1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v2

    :goto_3e
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierRestrictionRules(allowed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", excluded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", default:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MultiSim policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CarrierRestrictionRules;->mMultiSimPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 462
    invoke-direct {p0}, Landroid/telephony/CarrierRestrictionRules;->getCarrierInfoList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsCarrierLockInfoSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/CarrierRestrictionRules;->mUseCarrierLockInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 464
    invoke-direct {p0}, Landroid/telephony/CarrierRestrictionRules;->getCarrierRestrictionStatusToLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 423
    iget-object p2, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 424
    iget-object p2, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 425
    iget p2, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget p2, p0, Landroid/telephony/CarrierRestrictionRules;->mMultiSimPolicy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget p2, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget-object p2, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarrierInfo:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 429
    iget-object p2, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarrierInfo:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 430
    iget-boolean p2, p0, Landroid/telephony/CarrierRestrictionRules;->mUseCarrierLockInfo:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 431
    return-void
.end method
