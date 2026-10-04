.class public final Landroid/telephony/CellSignalStrengthNr;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthNr.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellSignalStrengthNr$SignalLevelAndReportCriteriaSource;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthNr;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "CellSignalStrengthNr"

.field public static final blacklist UNKNOWN_ASU_LEVEL:I = 0x63

.field public static final blacklist USE_SSRSRP:I = 0x1

.field public static final blacklist USE_SSRSRQ:I = 0x2

.field public static final blacklist USE_SSSINR:I = 0x4

.field private static final blacklist VDBG:Z = false

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthNr;


# instance fields
.field private blacklist mCsiCqiReport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCsiCqiTableIndex:I

.field private blacklist mCsiRsrp:I

.field private blacklist mCsiRsrq:I

.field private blacklist mCsiSinr:I

.field private blacklist mLevel:I

.field private blacklist mParametersUseForLevel:I

.field private blacklist mSsRsrp:I

.field private blacklist mSsRsrpThresholds:[I

.field private blacklist mSsRsrq:I

.field private blacklist mSsRsrqThresholds:[I

.field private blacklist mSsSinr:I

.field private blacklist mSsSinrThresholds:[I

.field private blacklist mTimingAdvance:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 544
    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthNr;->sInvalid:Landroid/telephony/CellSignalStrengthNr;

    .line 584
    new-instance v0, Landroid/telephony/CellSignalStrengthNr$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthNr$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthNr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 5

    .line 169
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 53
    const/16 v0, -0x50

    const/16 v1, -0x41

    const/16 v2, -0x6e

    const/16 v3, -0x5a

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    .line 62
    const/4 v0, -0x7

    const/4 v1, 0x6

    const/16 v2, -0x1f

    const/16 v3, -0x13

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    .line 71
    const/16 v0, 0xf

    const/16 v1, 0x1e

    const/4 v2, -0x5

    const/4 v3, 0x5

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    .line 170
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->setDefaultValues()V

    .line 171
    return-void
.end method

.method public constructor blacklist <init>(IIIIII)V
    .registers 17

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const v9, 0x7fffffff

    const v4, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Landroid/telephony/CellSignalStrengthNr;-><init>(IIIILjava/util/List;IIII)V

    .line 214
    return-void
.end method

.method public constructor blacklist <init>(IIIILjava/util/List;IIII)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;IIII)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 53
    const/16 v0, -0x50

    const/16 v1, -0x41

    const/16 v2, -0x6e

    const/16 v3, -0x5a

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    .line 62
    const/4 v0, -0x7

    const/4 v1, 0x6

    const/16 v2, -0x1f

    const/16 v3, -0x13

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    .line 71
    const/16 v0, 0xf

    const/16 v1, 0x1e

    const/4 v3, -0x5

    const/4 v4, 0x5

    filled-new-array {v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    .line 187
    const/16 v0, -0x9c

    invoke-static {p1, v0, v2}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    .line 188
    const/16 p1, -0x14

    const/4 v1, -0x3

    invoke-static {p2, p1, v1}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    .line 189
    const/16 p1, 0x17

    const/16 p2, -0x17

    invoke-static {p3, p2, p1}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    .line 190
    const/4 p1, 0x1

    const/4 p3, 0x3

    invoke-static {p4, p1, p3}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    .line 191
    invoke-interface {p5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Landroid/telephony/CellSignalStrengthNr$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Landroid/telephony/CellSignalStrengthNr$$ExternalSyntheticLambda0;-><init>()V

    .line 192
    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 193
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    .line 194
    invoke-static {p6, v0, v2}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    .line 195
    const/16 p1, -0x2b

    const/16 p3, 0x14

    invoke-static {p7, p1, p3}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    .line 196
    const/16 p1, 0x28

    invoke-static {p8, p2, p1}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    .line 197
    const/4 p1, 0x0

    const/16 p2, 0x502

    invoke-static {p9, p1, p2}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthNr;->mTimingAdvance:I

    .line 198
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/telephony/CellSignalStrengthNr;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 199
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 353
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 53
    const/16 v0, -0x50

    const/16 v1, -0x41

    const/16 v2, -0x6e

    const/16 v3, -0x5a

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    .line 62
    const/4 v0, -0x7

    const/4 v1, 0x6

    const/16 v2, -0x1f

    const/16 v3, -0x13

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    .line 71
    const/16 v0, 0xf

    const/16 v1, 0x1e

    const/4 v2, -0x5

    const/4 v3, 0x5

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    .line 358
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthNr;->mTimingAdvance:I

    .line 364
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthNr-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthNr;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellSignalStrengthNr;)V
    .registers 6

    .line 518
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 53
    const/16 v0, -0x50

    const/16 v1, -0x41

    const/16 v2, -0x6e

    const/16 v3, -0x5a

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    .line 62
    const/4 v0, -0x7

    const/4 v1, 0x6

    const/16 v2, -0x1f

    const/16 v3, -0x13

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    .line 71
    const/16 v0, 0xf

    const/16 v1, 0x1e

    const/4 v2, -0x5

    const/4 v3, 0x5

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    .line 519
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    .line 520
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    .line 521
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    .line 522
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    .line 523
    iget-object v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    .line 524
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    .line 525
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    .line 526
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    .line 527
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    .line 528
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    .line 529
    iget p1, p1, Landroid/telephony/CellSignalStrengthNr;->mTimingAdvance:I

    iput p1, p0, Landroid/telephony/CellSignalStrengthNr;->mTimingAdvance:I

    .line 530
    return-void
.end method

.method public static blacklist flip(I)I
    .registers 2

    .line 223
    const v0, 0x7fffffff

    if-eq p0, v0, :cond_6

    neg-int p0, p0

    :cond_6
    return p0
.end method

.method private blacklist isLevelForParameter(I)Z
    .registers 3

    .line 402
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method static synthetic blacklist lambda$new$0(Ljava/lang/Byte;)Ljava/lang/Integer;
    .registers 3

    .line 192
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private blacklist updateLevelWithMeasure(I[I)I
    .registers 7

    .line 470
    const v0, 0x7fffffff

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    .line 471
    goto :goto_23

    .line 472
    :cond_7
    const/4 v0, 0x3

    aget v2, p2, v0

    if-lt p1, v2, :cond_e

    .line 473
    const/4 v1, 0x4

    goto :goto_23

    .line 474
    :cond_e
    const/4 v2, 0x2

    aget v3, p2, v2

    if-lt p1, v3, :cond_15

    .line 475
    move v1, v0

    goto :goto_23

    .line 476
    :cond_15
    const/4 v0, 0x1

    aget v3, p2, v0

    if-lt p1, v3, :cond_1c

    .line 477
    move v1, v2

    goto :goto_23

    .line 478
    :cond_1c
    aget p2, p2, v1

    if-lt p1, p2, :cond_22

    .line 479
    move v1, v0

    goto :goto_23

    .line 481
    :cond_22
    nop

    .line 483
    :goto_23
    return v1
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 39
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->copy()Landroid/telephony/CellSignalStrengthNr;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copy()Landroid/telephony/CellSignalStrengthNr;
    .registers 2

    .line 535
    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthNr;-><init>(Landroid/telephony/CellSignalStrengthNr;)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 554
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthNr;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    .line 555
    check-cast p1, Landroid/telephony/CellSignalStrengthNr;

    .line 556
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    if-ne v0, v2, :cond_49

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    if-ne v0, v2, :cond_49

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    if-ne v0, v2, :cond_49

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    if-ne v0, v2, :cond_49

    iget-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    iget-object v2, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    .line 558
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    if-ne v0, v2, :cond_49

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    if-ne v0, v2, :cond_49

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    if-ne v0, v2, :cond_49

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    if-ne v0, v2, :cond_49

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mTimingAdvance:I

    iget p1, p1, Landroid/telephony/CellSignalStrengthNr;->mTimingAdvance:I

    if-ne v0, p1, :cond_49

    const/4 v1, 0x1

    goto :goto_4a

    :cond_49
    nop

    .line 556
    :goto_4a
    return v1

    .line 562
    :cond_4b
    return v1
.end method

.method public whitelist getAsuLevel()I
    .registers 3

    .line 496
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getDbm()I

    move-result v0

    .line 497
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_c

    .line 498
    const/16 v0, 0x63

    goto :goto_1b

    .line 499
    :cond_c
    const/16 v1, -0x8c

    if-gt v0, v1, :cond_12

    .line 500
    const/4 v0, 0x0

    goto :goto_1b

    .line 501
    :cond_12
    const/16 v1, -0x2b

    if-lt v0, v1, :cond_19

    .line 502
    const/16 v0, 0x61

    goto :goto_1b

    .line 504
    :cond_19
    add-int/lit16 v0, v0, 0x8c

    .line 506
    :goto_1b
    return v0
.end method

.method public whitelist getCsiCqiReport()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCsiCqiTableIndex()I
    .registers 2

    .line 297
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    return v0
.end method

.method public whitelist getCsiRsrp()I
    .registers 2

    .line 263
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    return v0
.end method

.method public whitelist getCsiRsrq()I
    .registers 2

    .line 273
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    return v0
.end method

.method public whitelist getCsiSinr()I
    .registers 2

    .line 283
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    return v0
.end method

.method public whitelist getDbm()I
    .registers 2

    .line 514
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    return v0
.end method

.method public whitelist getLevel()I
    .registers 2

    .line 386
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    return v0
.end method

.method public whitelist getSsRsrp()I
    .registers 2

    .line 233
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    return v0
.end method

.method public whitelist getSsRsrq()I
    .registers 2

    .line 243
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    return v0
.end method

.method public whitelist getSsSinr()I
    .registers 2

    .line 253
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    return v0
.end method

.method public whitelist getTimingAdvanceMicros()I
    .registers 2

    .line 330
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mTimingAdvance:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 12

    .line 540
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    .line 541
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mTimingAdvance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 540
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 549
    sget-object v0, Landroid/telephony/CellSignalStrengthNr;->sInvalid:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthNr;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist setDefaultValues()V
    .registers 3

    .line 369
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    .line 370
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    .line 371
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    .line 372
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    .line 373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    .line 374
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    .line 375
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    .line 376
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    .line 377
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    .line 378
    const/4 v1, 0x1

    iput v1, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    .line 379
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mTimingAdvance:I

    .line 380
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    const-string v1, "CellSignalStrengthNr:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " csiRsrp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " csiRsrq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " csiCqiTableIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " csiCqiReport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ssRsrp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ssRsrq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ssSinr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " parametersUseForLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " timingAdvance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mTimingAdvance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 579
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    return-object v0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 5

    .line 408
    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 409
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    goto :goto_27

    .line 411
    :cond_6
    const-string/jumbo v1, "parameters_use_for_5g_nr_signal_bar_int"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    .line 413
    const-string v1, "5g_nr_ssrsrp_thresholds_int_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    .line 419
    const-string v1, "5g_nr_ssrsrq_thresholds_int_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    .line 425
    const-string v1, "5g_nr_sssinr_thresholds_int_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    .line 432
    :goto_27
    nop

    .line 433
    nop

    .line 434
    nop

    .line 435
    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthNr;->isLevelForParameter(I)Z

    move-result p1

    const v0, 0x7fffffff

    if-eqz p1, :cond_46

    .line 436
    nop

    .line 437
    if-eqz p2, :cond_3b

    .line 438
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getArfcnRsrpBoost()I

    move-result p1

    goto :goto_3c

    .line 437
    :cond_3b
    const/4 p1, 0x0

    .line 440
    :goto_3c
    iget p2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    add-int/2addr p2, p1

    iget-object p1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    invoke-direct {p0, p2, p1}, Landroid/telephony/CellSignalStrengthNr;->updateLevelWithMeasure(I[I)I

    move-result p1

    goto :goto_47

    .line 435
    :cond_46
    move p1, v0

    .line 445
    :goto_47
    const/4 p2, 0x2

    invoke-direct {p0, p2}, Landroid/telephony/CellSignalStrengthNr;->isLevelForParameter(I)Z

    move-result p2

    if-eqz p2, :cond_57

    .line 446
    iget p2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    iget-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    invoke-direct {p0, p2, v1}, Landroid/telephony/CellSignalStrengthNr;->updateLevelWithMeasure(I[I)I

    move-result p2

    goto :goto_58

    .line 445
    :cond_57
    move p2, v0

    .line 451
    :goto_58
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/telephony/CellSignalStrengthNr;->isLevelForParameter(I)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 452
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    iget-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    invoke-direct {p0, v0, v1}, Landroid/telephony/CellSignalStrengthNr;->updateLevelWithMeasure(I[I)I

    move-result v0

    .line 458
    :cond_67
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    .line 459
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 341
    iget p2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget p2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget p2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget p2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object p2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 346
    iget p2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget p2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget p2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget p2, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget p2, p0, Landroid/telephony/CellSignalStrengthNr;->mTimingAdvance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    return-void
.end method
