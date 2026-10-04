.class public final Landroid/telephony/ims/SrvccCall;
.super Ljava/lang/Object;
.source "SrvccCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/SrvccCall;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SrvccCall"


# instance fields
.field private blacklist mCallId:Ljava/lang/String;

.field private blacklist mCallState:I

.field private blacklist mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 141
    new-instance v0, Landroid/telephony/ims/SrvccCall$1;

    invoke-direct {v0}, Landroid/telephony/ims/SrvccCall$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/SrvccCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0, p1}, Landroid/telephony/ims/SrvccCall;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/SrvccCall-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/SrvccCall;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ILandroid/telephony/ims/ImsCallProfile;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-eqz p1, :cond_16

    .line 62
    if-eqz p3, :cond_e

    .line 64
    iput-object p1, p0, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    .line 65
    iput p2, p0, Landroid/telephony/ims/SrvccCall;->mCallState:I

    .line 66
    iput-object p3, p0, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 67
    return-void

    .line 62
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "imsCallProfile is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callId is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SrvccCall;->mCallState:I

    .line 137
    const-class v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    iput-object p1, p0, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 139
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 107
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 108
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_31

    .line 109
    :cond_12
    check-cast p1, Landroid/telephony/ims/SrvccCall;

    .line 110
    iget-object v2, p0, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, p1, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget v2, p0, Landroid/telephony/ims/SrvccCall;->mCallState:I

    iget p1, p1, Landroid/telephony/ims/SrvccCall;->mCallState:I

    if-ne v2, p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    .line 110
    :goto_30
    return v0

    .line 108
    :cond_31
    :goto_31
    return v1
.end method

.method public whitelist getCallId()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImsCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public whitelist getPreciseCallState()I
    .registers 2

    .line 93
    iget v0, p0, Landroid/telephony/ims/SrvccCall;->mCallState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 117
    iget-object v0, p0, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, p0, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 118
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/telephony/ims/SrvccCall;->mCallState:I

    add-int/2addr v0, v1

    .line 119
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SrvccCall;->mCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imsCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 129
    iget-object p2, p0, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget p2, p0, Landroid/telephony/ims/SrvccCall;->mCallState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object p2, p0, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 132
    return-void
.end method
