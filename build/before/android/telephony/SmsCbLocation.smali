.class public final Landroid/telephony/SmsCbLocation;
.super Ljava/lang/Object;
.source "SmsCbLocation.java"

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
            "Landroid/telephony/SmsCbLocation;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SmsCbLocation"


# instance fields
.field private final greylist-max-o mCid:I

.field private final greylist-max-o mLac:I

.field private final greylist-max-o mPlmn:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 194
    new-instance v0, Landroid/telephony/SmsCbLocation$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbLocation$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    .line 52
    iput v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    .line 62
    const/4 p1, -0x1

    iput p1, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    .line 63
    iput p1, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    .line 64
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    .line 76
    iput p2, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    .line 77
    iput p3, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    .line 78
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 125
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 126
    return v0

    .line 128
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    instance-of v2, p1, Landroid/telephony/SmsCbLocation;

    if-nez v2, :cond_c

    goto :goto_27

    .line 131
    :cond_c
    check-cast p1, Landroid/telephony/SmsCbLocation;

    .line 132
    iget-object v2, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    iget v3, p1, Landroid/telephony/SmsCbLocation;->mLac:I

    if-ne v2, v3, :cond_25

    iget v2, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    iget p1, p1, Landroid/telephony/SmsCbLocation;->mCid:I

    if-ne v2, p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    .line 129
    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist getCid()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    return v0
.end method

.method public whitelist getLac()I
    .registers 2

    .line 104
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    return v0
.end method

.method public whitelist getPlmn()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 117
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 118
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    add-int/2addr v0, v1

    .line 119
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    add-int/2addr v0, v1

    .line 120
    return v0
.end method

.method public whitelist isInLocationArea(Landroid/telephony/SmsCbLocation;)Z
    .registers 6

    .line 147
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    iget v3, p1, Landroid/telephony/SmsCbLocation;->mCid:I

    if-eq v0, v3, :cond_d

    .line 148
    return v1

    .line 150
    :cond_d
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    if-eq v0, v2, :cond_18

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    iget v2, p1, Landroid/telephony/SmsCbLocation;->mLac:I

    if-eq v0, v2, :cond_18

    .line 151
    return v1

    .line 153
    :cond_18
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    iget-object p1, p1, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist isInLocationArea(Ljava/lang/String;II)Z
    .registers 6

    .line 165
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 166
    return v0

    .line 169
    :cond_a
    iget p1, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_14

    iget p1, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    if-eq p1, p2, :cond_14

    .line 170
    return v0

    .line 173
    :cond_14
    iget p1, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    if-eq p1, v1, :cond_1d

    iget p1, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    if-eq p1, p3, :cond_1d

    .line 174
    return v0

    .line 177
    :cond_1d
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SmsCbLocation"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 188
    iget-object p2, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget p2, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget p2, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return-void
.end method
