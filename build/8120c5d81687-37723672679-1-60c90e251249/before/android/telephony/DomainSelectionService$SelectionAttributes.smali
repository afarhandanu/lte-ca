.class public final Landroid/telephony/DomainSelectionService$SelectionAttributes;
.super Ljava/lang/Object;
.source "DomainSelectionService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DomainSelectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/DomainSelectionService$SelectionAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SelectionAttributes"


# instance fields
.field private blacklist mAddress:Landroid/net/Uri;

.field private blacklist mCallId:Ljava/lang/String;

.field private blacklist mCause:I

.field private blacklist mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

.field private blacklist mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mIsEmergency:Z

.field private blacklist mIsExitedFromAirplaneMode:Z

.field private blacklist mIsTestEmergencyNumber:Z

.field private blacklist mIsVideoCall:Z

.field private blacklist mSelectorType:I

.field private blacklist mSlotIndex:I

.field private blacklist mSubId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 386
    new-instance v0, Landroid/telephony/DomainSelectionService$SelectionAttributes$1;

    invoke-direct {v0}, Landroid/telephony/DomainSelectionService$SelectionAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILjava/lang/String;Landroid/net/Uri;IZZZZLandroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/EmergencyRegistrationResult;)V
    .registers 13

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    .line 178
    iput p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    .line 179
    iput-object p3, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    .line 180
    iput-object p4, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    .line 181
    iput p5, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    .line 182
    iput-boolean p6, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    .line 183
    iput-boolean p7, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    .line 184
    iput-boolean p8, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    .line 185
    iput-boolean p9, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    .line 186
    iput-object p10, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 187
    iput p11, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    .line 188
    iput-object p12, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    .line 189
    return-void
.end method

.method synthetic constructor blacklist <init>(IILjava/lang/String;Landroid/net/Uri;IZZZZLandroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/EmergencyRegistrationResult;Landroid/telephony/DomainSelectionService-IA;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Landroid/telephony/DomainSelectionService$SelectionAttributes;-><init>(IILjava/lang/String;Landroid/net/Uri;IZZZZLandroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/EmergencyRegistrationResult;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-direct {p0, p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->readFromParcel(Landroid/os/Parcel;)V

    .line 216
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/DomainSelectionService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V
    .registers 3

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iget v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    .line 199
    iget v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    .line 200
    iget-object v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    .line 201
    iget-object v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    .line 202
    iget v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    .line 203
    iget-boolean v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    iput-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    .line 204
    iget-boolean v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    iput-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    .line 205
    iget-boolean v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    iput-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    .line 206
    iget-object v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 207
    iget v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    .line 208
    iget-object p1, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    .line 209
    return-void
.end method

.method private static blacklist equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    .line 400
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_c

    :cond_6
    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_c
    return p0
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    .line 371
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    .line 378
    const-class v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsReasonInfo;

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    .line 381
    const-class v0, Landroid/telephony/EmergencyRegistrationResult;

    .line 382
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/EmergencyRegistrationResult;

    .line 381
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/EmergencyRegistrationResult;

    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    .line 384
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 323
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 324
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6f

    .line 325
    :cond_12
    check-cast p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;

    .line 326
    iget v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    iget v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    if-ne v2, v3, :cond_6d

    iget v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    iget v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    if-ne v2, v3, :cond_6d

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    .line 327
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    iget-object v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    .line 328
    invoke-static {v2, v3}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    iget v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    if-ne v2, v3, :cond_6d

    iget-boolean v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    iget-boolean v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    if-ne v2, v3, :cond_6d

    iget-boolean v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    iget-boolean v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    if-ne v2, v3, :cond_6d

    iget-boolean v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    iget-boolean v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    if-ne v2, v3, :cond_6d

    iget-boolean v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    iget-boolean v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    if-ne v2, v3, :cond_6d

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 333
    invoke-static {v2, v3}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    iget v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    if-ne v2, v3, :cond_6d

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    iget-object p1, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    .line 335
    invoke-static {v2, p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    goto :goto_6e

    :cond_6d
    move v0, v1

    .line 326
    :goto_6e
    return v0

    .line 324
    :cond_6f
    :goto_6f
    return v1
.end method

.method public whitelist getAddress()Landroid/net/Uri;
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getCallId()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCsDisconnectCause()I
    .registers 2

    .line 294
    iget v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    return v0
.end method

.method public whitelist getEmergencyRegistrationResult()Landroid/telephony/EmergencyRegistrationResult;
    .registers 2

    .line 301
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    return-object v0
.end method

.method public whitelist getPsDisconnectCause()Landroid/telephony/ims/ImsReasonInfo;
    .registers 2

    .line 286
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object v0
.end method

.method public whitelist getSelectorType()I
    .registers 2

    .line 250
    iget v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    return v0
.end method

.method public whitelist getSlotIndex()I
    .registers 2

    .line 222
    iget v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    return v0
.end method

.method public whitelist getSubscriptionId()I
    .registers 2

    .line 229
    iget v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 13

    .line 341
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    iget-boolean v3, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    .line 342
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    iget v8, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    .line 343
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 341
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEmergency()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    return v0
.end method

.method public whitelist isExitedFromAirplaneMode()Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    return v0
.end method

.method public whitelist isTestEmergencyNumber()Z
    .registers 2

    .line 271
    iget-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    return v0
.end method

.method public whitelist isVideoCall()Z
    .registers 2

    .line 257
    iget-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ slotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 309
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    goto :goto_39

    :cond_37
    const-string v1, "***"

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airplaneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 353
    iget p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-object p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 356
    iget-object p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 357
    iget p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget-boolean p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 359
    iget-boolean p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 360
    iget-boolean p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 361
    iget-boolean p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 362
    iget-object p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 363
    iget p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget-object p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 365
    return-void
.end method
