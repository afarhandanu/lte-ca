.class public final Landroid/telephony/data/TrafficDescriptor;
.super Ljava/lang/Object;
.source "TrafficDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/TrafficDescriptor$OsAppId;,
        Landroid/telephony/data/TrafficDescriptor$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDnn:Ljava/lang/String;

.field private final blacklist mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 286
    new-instance v0, Landroid/telephony/data/TrafficDescriptor$1;

    invoke-direct {v0}, Landroid/telephony/data/TrafficDescriptor$1;-><init>()V

    sput-object v0, Landroid/telephony/data/TrafficDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 207
    nop

    .line 208
    if-eqz p1, :cond_16

    .line 209
    new-instance v0, Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-direct {v0, p1}, Landroid/telephony/data/TrafficDescriptor$OsAppId;-><init>([B)V

    goto :goto_17

    .line 208
    :cond_16
    const/4 v0, 0x0

    .line 211
    :goto_17
    iput-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    .line 213
    invoke-direct {p0}, Landroid/telephony/data/TrafficDescriptor;->enforceAllowedIds()V

    .line 214
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/TrafficDescriptor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/TrafficDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .registers 3

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    .line 225
    nop

    .line 226
    if-eqz p2, :cond_e

    .line 227
    new-instance p1, Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-direct {p1, p2}, Landroid/telephony/data/TrafficDescriptor$OsAppId;-><init>([B)V

    goto :goto_f

    .line 226
    :cond_e
    const/4 p1, 0x0

    .line 229
    :goto_f
    iput-object p1, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    .line 231
    invoke-direct {p0}, Landroid/telephony/data/TrafficDescriptor;->enforceAllowedIds()V

    .line 232
    return-void
.end method

.method private blacklist enforceAllowedIds()V
    .registers 4

    .line 240
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getOsId()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ANDROID_OS_ID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3e

    .line 241
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OS id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v2}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getOsId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ANDROID_OS_ID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    if-eqz v0, :cond_80

    invoke-static {}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->-$$Nest$sfgetALLOWED_APP_IDS()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v1}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    goto :goto_80

    .line 246
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal app id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v2}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only allowing one of the following "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->-$$Nest$sfgetALLOWED_APP_IDS()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_80
    :goto_80
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 301
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 302
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 303
    :cond_12
    check-cast p1, Landroid/telephony/data/TrafficDescriptor;

    .line 304
    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    iget-object p1, p1, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    .line 302
    :cond_2b
    :goto_2b
    return v1
.end method

.method public whitelist getDataNetworkName()Ljava/lang/String;
    .registers 2

    .line 257
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOsAppId()[B
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getBytes()[B

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 309
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrafficDescriptor={mDnn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

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
    .registers 3

    .line 282
    iget-object p2, p0, Landroid/telephony/data/TrafficDescriptor;->mDnn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object p2, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    if-eqz p2, :cond_10

    iget-object p2, p0, Landroid/telephony/data/TrafficDescriptor;->mOsAppId:Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {p2}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getBytes()[B

    move-result-object p2

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 284
    return-void
.end method
