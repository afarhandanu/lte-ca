.class public final Landroid/telephony/ims/ImsRegistrationAttributes;
.super Ljava/lang/Object;
.source "ImsRegistrationAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsRegistrationAttributes$Builder;,
        Landroid/telephony/ims/ImsRegistrationAttributes$ImsAttributeFlag;
    }
.end annotation


# static fields
.field public static final whitelist ATTR_EPDG_OVER_CELL_INTERNET:I = 0x1

.field public static final whitelist ATTR_REGISTRATION_TYPE_EMERGENCY:I = 0x2

.field public static final whitelist ATTR_VIRTUAL_FOR_ANONYMOUS_EMERGENCY_CALL:I = 0x4

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsRegistrationAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFeatureTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsAttributeFlags:I

.field private final blacklist mPcscfAddress:Ljava/lang/String;

.field private final blacklist mRegistrationTech:I

.field private final blacklist mSipDetails:Landroid/telephony/ims/SipDetails;

.field private final blacklist mTransportType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 375
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsRegistrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    .line 207
    iput p2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    .line 208
    iput p3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    .line 209
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    .line 210
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    .line 211
    iput-object p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mPcscfAddress:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/Set;Landroid/telephony/ims/SipDetails;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/SipDetails;",
            ")V"
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    .line 232
    iput p2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    .line 233
    iput p3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    .line 234
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    .line 235
    iput-object p5, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    .line 236
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mPcscfAddress:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/Set;Landroid/telephony/ims/SipDetails;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/SipDetails;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    .line 259
    iput p2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    .line 260
    iput p3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    .line 261
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    .line 262
    iput-object p5, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    .line 263
    iput-object p6, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mPcscfAddress:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    .line 272
    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 273
    const-class v0, Landroid/telephony/ims/SipDetails;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/SipDetails;

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mPcscfAddress:Ljava/lang/String;

    .line 276
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 390
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 391
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_47

    .line 392
    :cond_12
    check-cast p1, Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 393
    iget v2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    iget v3, p1, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    iget v3, p1, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    iget v3, p1, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    if-ne v2, v3, :cond_45

    iget-object v2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    .line 396
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    iget-object v3, p1, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    .line 397
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mPcscfAddress:Ljava/lang/String;

    iget-object p1, p1, Landroid/telephony/ims/ImsRegistrationAttributes;->mPcscfAddress:Ljava/lang/String;

    .line 398
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    goto :goto_46

    :cond_45
    move v0, v1

    .line 393
    :goto_46
    return v0

    .line 391
    :cond_47
    :goto_47
    return v1
.end method

.method public whitelist getAttributeFlags()I
    .registers 2

    .line 298
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    return v0
.end method

.method public whitelist getFeatureTags()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 339
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 341
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getFlagRegistrationTypeEmergency()Z
    .registers 2

    .line 308
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getFlagVirtualRegistrationForEmergencyCall()Z
    .registers 2

    .line 318
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist getPcscfAddress()Ljava/lang/String;
    .registers 2

    .line 357
    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mPcscfAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRegistrationTechnology()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 284
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    return v0
.end method

.method public whitelist getSipDetails()Landroid/telephony/ims/SipDetails;
    .registers 2

    .line 348
    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    return-object v0
.end method

.method public whitelist getTransportType()I
    .registers 2

    .line 291
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 403
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    iget-object v6, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mPcscfAddress:Ljava/lang/String;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsRegistrationAttributes { transportType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributeFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", featureTags=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],SipDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 367
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 371
    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 372
    iget-object p2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mPcscfAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    return-void
.end method
