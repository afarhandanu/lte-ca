.class public final Landroid/telephony/BarringInfo;
.super Ljava/lang/Object;
.source "BarringInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/BarringInfo$BarringServiceInfo;,
        Landroid/telephony/BarringInfo$BarringServiceType;
    }
.end annotation


# static fields
.field private static final blacklist BARRING_SERVICE_INFO_UNBARRED:Landroid/telephony/BarringInfo$BarringServiceInfo;

.field private static final blacklist BARRING_SERVICE_INFO_UNKNOWN:Landroid/telephony/BarringInfo$BarringServiceInfo;

.field public static final whitelist BARRING_SERVICE_TYPE_CS_FALLBACK:I = 0x5

.field public static final whitelist BARRING_SERVICE_TYPE_CS_SERVICE:I = 0x0

.field public static final whitelist BARRING_SERVICE_TYPE_CS_VOICE:I = 0x2

.field public static final whitelist BARRING_SERVICE_TYPE_EMERGENCY:I = 0x8

.field public static final whitelist BARRING_SERVICE_TYPE_MMTEL_VIDEO:I = 0x7

.field public static final whitelist BARRING_SERVICE_TYPE_MMTEL_VOICE:I = 0x6

.field public static final whitelist BARRING_SERVICE_TYPE_MO_DATA:I = 0x4

.field public static final whitelist BARRING_SERVICE_TYPE_MO_SIGNALLING:I = 0x3

.field public static final whitelist BARRING_SERVICE_TYPE_PS_SERVICE:I = 0x1

.field public static final whitelist BARRING_SERVICE_TYPE_SMS:I = 0x9

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/BarringInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBarringServiceInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCellIdentity:Landroid/telephony/CellIdentity;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 262
    new-instance v0, Landroid/telephony/BarringInfo$BarringServiceInfo;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(I)V

    sput-object v0, Landroid/telephony/BarringInfo;->BARRING_SERVICE_INFO_UNKNOWN:Landroid/telephony/BarringInfo$BarringServiceInfo;

    .line 265
    new-instance v0, Landroid/telephony/BarringInfo$BarringServiceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(I)V

    sput-object v0, Landroid/telephony/BarringInfo;->BARRING_SERVICE_INFO_UNBARRED:Landroid/telephony/BarringInfo$BarringServiceInfo;

    .line 341
    new-instance v0, Landroid/telephony/BarringInfo$1;

    invoke-direct {v0}, Landroid/telephony/BarringInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    .line 278
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const-class v0, Landroid/telephony/CellIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CellIdentity;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    iput-object v0, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 332
    const-class v0, Landroid/telephony/BarringInfo$BarringServiceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/BarringInfo$BarringServiceInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    .line 333
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellIdentity;",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p1, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 289
    iput-object p2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    .line 290
    return-void
.end method


# virtual methods
.method public whitelist createLocationInfoSanitizedCopy()Landroid/telephony/BarringInfo;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 324
    iget-object v0, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-nez v0, :cond_5

    return-object p0

    .line 326
    :cond_5
    new-instance v0, Landroid/telephony/BarringInfo;

    iget-object v1, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->sanitizeLocationInfo()Landroid/telephony/CellIdentity;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v2}, Landroid/telephony/BarringInfo;-><init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 371
    instance-of v0, p1, Landroid/telephony/BarringInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 373
    :cond_6
    check-cast p1, Landroid/telephony/BarringInfo;

    .line 375
    invoke-virtual {p0}, Landroid/telephony/BarringInfo;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/BarringInfo;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_13

    return v1

    .line 377
    :cond_13
    iget-object v0, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v2, p1, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v0, v2, :cond_22

    return v1

    .line 379
    :cond_22
    move v0, v1

    :goto_23
    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_50

    .line 380
    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p1, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-eq v2, v3, :cond_3a

    return v1

    .line 381
    :cond_3a
    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    .line 382
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 381
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 383
    return v1

    .line 379
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 386
    :cond_50
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist getBarringServiceInfo(I)Landroid/telephony/BarringInfo$BarringServiceInfo;
    .registers 3

    .line 298
    iget-object v0, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/BarringInfo$BarringServiceInfo;

    .line 303
    if-eqz p1, :cond_b

    goto :goto_18

    :cond_b
    iget-object p1, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_16

    .line 304
    sget-object p1, Landroid/telephony/BarringInfo;->BARRING_SERVICE_INFO_UNBARRED:Landroid/telephony/BarringInfo$BarringServiceInfo;

    goto :goto_18

    :cond_16
    sget-object p1, Landroid/telephony/BarringInfo;->BARRING_SERVICE_INFO_UNKNOWN:Landroid/telephony/BarringInfo$BarringServiceInfo;

    .line 303
    :goto_18
    return-object p1
.end method

.method public blacklist getCellIdentity()Landroid/telephony/CellIdentity;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 317
    iget-object v0, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 361
    iget-object v0, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x7

    .line 362
    :goto_c
    const/4 v1, 0x0

    :goto_d
    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 363
    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xf

    add-int/2addr v0, v2

    .line 364
    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/BarringInfo$BarringServiceInfo;

    invoke-virtual {v2}, Landroid/telephony/BarringInfo$BarringServiceInfo;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 366
    :cond_30
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarringInfo {mCellIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBarringServiceInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

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

    .line 337
    iget-object v0, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 338
    iget-object p2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 339
    return-void
.end method
