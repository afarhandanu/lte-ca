.class public final Landroid/telephony/satellite/SatelliteAccessConfiguration;
.super Ljava/lang/Object;
.source "SatelliteAccessConfiguration.java"

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
            "Landroid/telephony/satellite/SatelliteAccessConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCarrierIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSatelliteInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTagIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 102
    new-instance v0, Landroid/telephony/satellite/SatelliteAccessConfiguration$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteAccessConfiguration$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Landroid/telephony/satellite/SatelliteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    .line 96
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mCarrierIdList:Ljava/util/List;

    .line 98
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mCarrierIdList:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 99
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/telephony/satellite/SatelliteAccessConfiguration;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    .line 84
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    .line 85
    iput-object p3, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mCarrierIdList:Ljava/util/List;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 167
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 168
    :cond_4
    instance-of v1, p1, Landroid/telephony/satellite/SatelliteAccessConfiguration;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    check-cast p1, Landroid/telephony/satellite/SatelliteAccessConfiguration;

    .line 170
    iget-object v1, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    .line 171
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mCarrierIdList:Ljava/util/List;

    iget-object p1, p1, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mCarrierIdList:Ljava/util/List;

    .line 172
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 170
    :goto_2b
    return v0

    .line 168
    :cond_2c
    return v2
.end method

.method public blacklist getCarrierIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mCarrierIdList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSatelliteInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTagIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 177
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 178
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mCarrierIdList:Ljava/util/List;

    .line 179
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const-string v1, "SatelliteAccessConfiguration{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "mSatelliteInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, ", mTagIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, ", mCarrierIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mCarrierIdList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 127
    iget-object p2, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 128
    iget-object p2, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 129
    iget-object p2, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mCarrierIdList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 130
    return-void
.end method
