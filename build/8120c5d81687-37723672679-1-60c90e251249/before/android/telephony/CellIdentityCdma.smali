.class public final Landroid/telephony/CellIdentityCdma;
.super Landroid/telephony/CellIdentity;
.source "CellIdentityCdma.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist BASESTATION_ID_MAX:I = 0xffff

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentityCdma;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist LATITUDE_MAX:I = 0x13c680

.field private static final blacklist LATITUDE_MIN:I = -0x13c680

.field private static final blacklist LONGITUDE_MAX:I = 0x278d00

.field private static final blacklist LONGITUDE_MIN:I = -0x278d00

.field private static final blacklist NETWORK_ID_MAX:I = 0xffff

.field private static final blacklist SYSTEM_ID_MAX:I = 0x7fff

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private final greylist-max-o mBasestationId:I

.field private final greylist-max-o mLatitude:I

.field private final greylist-max-o mLongitude:I

.field private final greylist-max-o mNetworkId:I

.field private final greylist-max-o mSystemId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const-class v0, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    .line 312
    new-instance v0, Landroid/telephony/CellIdentityCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 8

    .line 80
    sget-object v1, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const v1, 0x7fffffff

    iput v1, v0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 82
    iput v1, v0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 83
    iput v1, v0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 84
    iput v1, v0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 85
    iput v1, v0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 86
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/telephony/CellIdentityCdma;->mGlobalCellId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor greylist-max-o <init>(IIIIILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 105
    sget-object p2, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    const/4 p6, 0x0

    const/4 p7, 0x0

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 p5, 0x0

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const p2, 0x7fffffff

    iput p2, p1, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 107
    iput p2, p1, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 108
    iput p2, p1, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 109
    iput p2, p1, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 110
    iput p2, p1, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 111
    const/4 p2, 0x0

    iput-object p2, p1, Landroid/telephony/CellIdentityCdma;->mGlobalCellId:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 285
    sget-object v0, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILandroid/os/Parcel;)V

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 288
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 291
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 294
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 297
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 300
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 302
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/telephony/CellIdentityCdma;->mGlobalCellId:Ljava/lang/String;

    .line 303
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/telephony/CellIdentityCdma;)V
    .registers 10

    .line 115
    iget v1, p1, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    iget v2, p1, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    iget v3, p1, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    iget v4, p1, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    iget v5, p1, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iget-object v6, p1, Landroid/telephony/CellIdentityCdma;->mAlphaLong:Ljava/lang/String;

    iget-object v7, p1, Landroid/telephony/CellIdentityCdma;->mAlphaShort:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method protected static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityCdma;
    .registers 2

    .line 328
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private greylist-max-o isNullIsland(II)Z
    .registers 4

    .line 153
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_e

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public bridge synthetic whitelist asCellLocation()Landroid/telephony/CellLocation;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->asCellLocation()Landroid/telephony/cdma/CdmaCellLocation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist asCellLocation()Landroid/telephony/cdma/CdmaCellLocation;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    .line 230
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    const/4 v2, -0x1

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_10

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    goto :goto_11

    :cond_10
    move v1, v2

    .line 231
    :goto_11
    iget v4, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    if-eq v4, v3, :cond_18

    iget v4, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    goto :goto_19

    :cond_18
    move v4, v2

    .line 232
    :goto_19
    iget v5, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    if-eq v5, v3, :cond_1f

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    :cond_1f
    move v5, v2

    .line 234
    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 235
    return-object v0
.end method

.method greylist-max-o copy()Landroid/telephony/CellIdentityCdma;
    .registers 2

    .line 120
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/telephony/CellIdentityCdma;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 240
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 241
    return v0

    .line 244
    :cond_4
    instance-of v1, p1, Landroid/telephony/CellIdentityCdma;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 245
    return v2

    .line 248
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityCdma;

    .line 250
    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    iget v4, v1, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    iget v4, v1, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    iget v4, v1, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iget v4, v1, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    iget v1, v1, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    if-ne v3, v1, :cond_32

    .line 255
    invoke-super {p0, p1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    move v0, v2

    .line 250
    :goto_33
    return v0
.end method

.method public whitelist getBasestationId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    return v0
.end method

.method public whitelist getLatitude()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    return v0
.end method

.method public whitelist getLongitude()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    return v0
.end method

.method public whitelist getNetworkId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    return v0
.end method

.method public whitelist getSystemId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 218
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 219
    invoke-super {p0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 218
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->sanitizeLocationInfo()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    return-object v0
.end method

.method public whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentityCdma;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    iget-object v6, p0, Landroid/telephony/CellIdentityCdma;->mAlphaLong:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/CellIdentityCdma;->mAlphaShort:Ljava/lang/String;

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    const-string v1, ":{ mNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 262
    const-string v1, " mSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    const-string v1, " mBasestationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    const-string v1, " mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    const-string v1, " mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    const-string v1, " mAlphaLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityCdma;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    const-string v1, " mAlphaShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityCdma;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    return-object v0
.end method

.method protected blacklist updateGlobalCellId()V
    .registers 4

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityCdma;->mGlobalCellId:Ljava/lang/String;

    .line 138
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_32

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    if-eq v0, v1, :cond_32

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    if-ne v0, v1, :cond_13

    goto :goto_32

    .line 141
    :cond_13
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%04x%04x%04x"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellIdentityCdma;->mGlobalCellId:Ljava/lang/String;

    .line 142
    return-void

    .line 139
    :cond_32
    :goto_32
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 275
    const/4 p2, 0x2

    invoke-super {p0, p1, p2}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 276
    iget p2, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget p2, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget p2, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget p2, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget p2, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    return-void
.end method
