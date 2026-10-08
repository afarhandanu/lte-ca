.class public final Landroid/telephony/satellite/SystemSelectionSpecifier;
.super Ljava/lang/Object;
.source "SystemSelectionSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SystemSelectionSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBands:[I

.field private blacklist mEarfcns:[I

.field private blacklist mMccMnc:Ljava/lang/String;

.field private blacklist mSatelliteInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTagIds:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 197
    new-instance v0, Landroid/telephony/satellite/SystemSelectionSpecifier$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SystemSelectionSpecifier$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SystemSelectionSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-direct {p0, p1}, Landroid/telephony/satellite/SystemSelectionSpecifier;->readFromParcel(Landroid/os/Parcel;)V

    .line 155
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SystemSelectionSpecifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SystemSelectionSpecifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->-$$Nest$fgetmMccMnc(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->-$$Nest$fgetmBands(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    .line 85
    invoke-static {p1}, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->-$$Nest$fgetmEarfcns(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    .line 86
    invoke-static {p1}, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->-$$Nest$fgetmSatelliteInfos(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    .line 87
    invoke-static {p1}, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->-$$Nest$fgetmTagIds(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/util/IntArray;Landroid/util/IntArray;[Landroid/telephony/satellite/SatelliteInfo;Landroid/util/IntArray;)V
    .registers 6

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    .line 73
    invoke-virtual {p2}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    .line 74
    invoke-virtual {p3}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    .line 75
    invoke-static {p4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    .line 76
    invoke-virtual {p5}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    .line 77
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    .line 321
    const/4 v1, 0x0

    if-lez v0, :cond_1f

    .line 322
    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_1f

    .line 323
    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 327
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 328
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    .line 329
    if-lez v0, :cond_37

    .line 330
    move v2, v1

    :goto_2a
    if-ge v2, v0, :cond_37

    .line 331
    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 335
    :cond_37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    .line 336
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    const-class v2, Landroid/telephony/satellite/SatelliteInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/telephony/satellite/SatelliteInfo;

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 339
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    .line 340
    if-lez v0, :cond_63

    .line 341
    nop

    :goto_56
    if-ge v1, v0, :cond_63

    .line 342
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 345
    :cond_63
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 262
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 263
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_52

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_52

    .line 264
    :cond_12
    check-cast p1, Landroid/telephony/satellite/SystemSelectionSpecifier;

    .line 265
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    iget-object v3, p1, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    .line 266
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    iget-object v3, p1, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    .line 267
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    if-nez v2, :cond_3b

    iget-object v2, p1, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    if-nez v2, :cond_50

    goto :goto_45

    :cond_3b
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    .line 269
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    :goto_45
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    iget-object p1, p1, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    .line 270
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_50

    goto :goto_51

    :cond_50
    move v0, v1

    .line 265
    :goto_51
    return v0

    .line 263
    :cond_52
    :goto_52
    return v1
.end method

.method public whitelist getBands()[I
    .registers 2

    .line 289
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    return-object v0
.end method

.method public whitelist getEarfcns()[I
    .registers 2

    .line 297
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    return-object v0
.end method

.method public whitelist getMccMnc()Ljava/lang/String;
    .registers 2

    .line 280
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

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

    .line 303
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTagIds()[I
    .registers 2

    .line 313
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 275
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    const-string/jumbo v1, "mccmnc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v2, "bands:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    const/4 v3, 0x0

    if-eqz v2, :cond_37

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    array-length v2, v2

    if-lez v2, :cond_37

    .line 219
    move v2, v3

    :goto_25
    iget-object v4, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3d

    .line 220
    iget-object v4, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 224
    :cond_37
    const-string/jumbo v2, "none,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_3d
    const-string v2, "earfcs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    const-string/jumbo v4, "none"

    if-eqz v2, :cond_61

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    array-length v2, v2

    if-lez v2, :cond_61

    .line 229
    move v2, v3

    :goto_4f
    iget-object v5, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    array-length v5, v5

    if-ge v2, v5, :cond_64

    .line 230
    iget-object v5, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    aget v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 234
    :cond_61
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_64
    const-string v2, "mSatelliteInfos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    if-eqz v2, :cond_8f

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8f

    .line 239
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/satellite/SatelliteInfo;

    .line 240
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    goto :goto_7b

    :cond_8e
    goto :goto_92

    .line 244
    :cond_8f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :goto_92
    const-string v2, "mTagIds:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    if-eqz v2, :cond_b3

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    array-length v2, v2

    if-lez v2, :cond_b3

    .line 249
    nop

    :goto_a1
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    array-length v2, v2

    if-ge v3, v2, :cond_b6

    .line 250
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_a1

    .line 254
    :cond_b3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_b6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 164
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    array-length v0, v0

    if-lez v0, :cond_2d

    .line 168
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    move v0, v1

    :goto_1e
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    array-length v2, v2

    if-ge v0, v2, :cond_30

    .line 170
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 173
    :cond_2d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    :cond_30
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    array-length v0, v0

    if-lez v0, :cond_4f

    .line 177
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    move v0, v1

    :goto_40
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    array-length v2, v2

    if-ge v0, v2, :cond_52

    .line 179
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 182
    :cond_4f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    :cond_52
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    new-array v2, v1, [Landroid/telephony/satellite/SatelliteInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/satellite/SatelliteInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 187
    iget-object p2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    if-eqz p2, :cond_79

    .line 188
    iget-object p2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    nop

    :goto_6a
    iget-object p2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    array-length p2, p2

    if-ge v1, p2, :cond_7c

    .line 190
    iget-object p2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 193
    :cond_79
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    :cond_7c
    return-void
.end method
