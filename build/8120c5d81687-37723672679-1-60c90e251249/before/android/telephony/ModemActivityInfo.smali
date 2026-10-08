.class public final Landroid/telephony/ModemActivityInfo;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ModemActivityInfo$TxPowerLevel;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ModemActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TX_POWER_LEVELS:I = 0x5

.field public static final whitelist TX_POWER_LEVEL_0:I = 0x0

.field public static final whitelist TX_POWER_LEVEL_1:I = 0x1

.field public static final whitelist TX_POWER_LEVEL_2:I = 0x2

.field public static final whitelist TX_POWER_LEVEL_3:I = 0x3

.field public static final whitelist TX_POWER_LEVEL_4:I = 0x4

.field private static final blacklist TX_POWER_RANGES:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

.field private greylist-max-o mIdleTimeMs:I

.field private blacklist mSizeOfSpecificInfo:I

.field private greylist-max-o mSleepTimeMs:I

.field private greylist-max-o mTimestamp:J

.field private blacklist mTotalRxTimeMs:I

.field private blacklist mTotalTxTimeMs:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 88
    const/4 v0, 0x5

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 88
    new-array v0, v0, [Landroid/util/Range;

    new-instance v2, Landroid/util/Range;

    .line 89
    const/high16 v3, -0x80000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v2, v0, v4

    new-instance v2, Landroid/util/Range;

    .line 90
    invoke-direct {v2, v5, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Landroid/util/Range;

    .line 91
    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v1, 0x2

    aput-object v2, v0, v1

    new-instance v1, Landroid/util/Range;

    .line 92
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Landroid/util/Range;

    .line 93
    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/telephony/ModemActivityInfo;->TX_POWER_RANGES:[Landroid/util/Range;

    .line 190
    new-instance v0, Landroid/telephony/ModemActivityInfo$1;

    invoke-direct {v0}, Landroid/telephony/ModemActivityInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JII[II)V
    .registers 9

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    array-length v0, p5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_29

    .line 114
    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    .line 115
    iput p3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    .line 116
    iput p4, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    .line 117
    iput-object p5, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    .line 118
    iput p6, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 120
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    iput-object p1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 121
    iget-object p1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length p1, p1

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    .line 122
    iget-object p1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    new-instance p2, Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p5, p6}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object p2, p1, p3

    .line 128
    return-void

    .line 112
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "txTimeMs must have length == TX_POWER_LEVELS"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V
    .registers 8

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    .line 144
    iput p3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    .line 145
    iput p4, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    .line 146
    iput-object p5, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 147
    iget-object p1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length p1, p1

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    .line 148
    const/4 p1, 0x5

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    .line 149
    const/4 p1, 0x0

    move p2, p1

    :goto_17
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result p3

    if-ge p2, p3, :cond_3c

    .line 150
    move p3, p1

    :goto_1e
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result p4

    if-ge p3, p4, :cond_39

    .line 151
    iget-object p4, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    iget-object p5, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    aget p5, p5, p2

    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v0, v0, p3

    .line 152
    invoke-virtual {v0, p2}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr p5, v0

    aput p5, p4, p2

    .line 150
    add-int/lit8 p3, p3, 0x1

    goto :goto_1e

    .line 149
    :cond_39
    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    .line 155
    :cond_3c
    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 156
    nop

    :goto_3f
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result p2

    if-ge p1, p2, :cond_56

    .line 157
    iget p2, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    iget-object p3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object p3, p3, p1

    .line 158
    invoke-virtual {p3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide p3

    long-to-int p3, p3

    add-int/2addr p2, p3

    iput p2, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 156
    add-int/lit8 p1, p1, 0x1

    goto :goto_3f

    .line 160
    :cond_56
    return-void
.end method

.method public constructor blacklist <init>(JJJ[IJ)V
    .registers 10

    .line 137
    long-to-int p4, p3

    long-to-int p5, p5

    long-to-int p3, p8

    move-object p6, p7

    move p7, p3

    move-wide p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    .line 138
    return-void
.end method

.method public constructor blacklist <init>(JJJ[Landroid/telephony/ActivityStatsTechSpecificInfo;)V
    .registers 8

    .line 169
    long-to-int p4, p3

    long-to-int p5, p5

    move-wide p2, p1

    move-object p6, p7

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Landroid/telephony/ModemActivityInfo;-><init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    .line 170
    return-void
.end method

.method public static whitelist getNumTxPowerLevels()I
    .registers 1

    .line 74
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 587
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 588
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3b

    .line 589
    :cond_12
    check-cast p1, Landroid/telephony/ModemActivityInfo;

    .line 590
    iget-wide v2, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    iget-wide v4, p1, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_39

    iget v2, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    iget v3, p1, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    if-ne v2, v3, :cond_39

    iget v2, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    iget v3, p1, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    if-ne v2, v3, :cond_39

    iget v2, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    iget v3, p1, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    iget-object p1, p1, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 594
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    move v0, v1

    .line 590
    :goto_3a
    return v0

    .line 588
    :cond_3b
    :goto_3b
    return v1
.end method

.method public whitelist getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;
    .registers 16

    .line 388
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v0

    new-array v8, v0, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 391
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v2

    if-ge v1, v2, :cond_b3

    .line 392
    nop

    .line 393
    move v2, v0

    move v3, v2

    :goto_11
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v4

    if-ge v2, v4, :cond_a7

    .line 394
    iget-object v4, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v4

    .line 395
    iget-object v5, p1, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v5

    if-ne v4, v5, :cond_a3

    if-nez v3, :cond_a3

    .line 396
    iget-object v5, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v9, 0x1

    if-ne v5, v6, :cond_7b

    .line 398
    iget-object v5, p1, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v5

    iget-object v6, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v6, v6, v2

    .line 399
    invoke-virtual {v6}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v6

    if-ne v5, v6, :cond_a3

    .line 400
    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v3

    .line 401
    new-array v5, v7, [I

    .line 402
    move v6, v0

    :goto_55
    if-ge v6, v7, :cond_67

    .line 403
    nop

    .line 404
    invoke-virtual {p1, v6, v4, v3}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(III)J

    move-result-wide v10

    .line 406
    invoke-virtual {p0, v6, v4, v3}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(III)J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v10, v10

    aput v10, v5, v6

    .line 402
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    .line 409
    :cond_67
    nop

    .line 410
    new-instance v6, Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 415
    invoke-virtual {p1, v4, v3}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v10

    .line 416
    invoke-virtual {p0, v4, v3}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v7, v10

    invoke-direct {v6, v4, v3, v5, v7}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v6, v8, v1

    .line 417
    move v3, v9

    goto :goto_a3

    .line 419
    :cond_7b
    new-array v3, v7, [I

    .line 420
    move v5, v0

    :goto_7e
    if-ge v5, v7, :cond_90

    .line 421
    nop

    .line 422
    invoke-virtual {p1, v5, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(II)J

    move-result-wide v10

    .line 423
    invoke-virtual {p0, v5, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(II)J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v6, v10

    aput v6, v3, v5

    .line 420
    add-int/lit8 v5, v5, 0x1

    goto :goto_7e

    .line 425
    :cond_90
    nop

    .line 426
    new-instance v5, Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 431
    invoke-virtual {p1, v4}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide v6

    .line 432
    invoke-virtual {p0, v4}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide v10

    sub-long/2addr v6, v10

    long-to-int v6, v6

    invoke-direct {v5, v4, v0, v3, v6}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v5, v8, v1

    move v3, v9

    .line 393
    :cond_a3
    :goto_a3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    .line 436
    :cond_a7
    if-nez v3, :cond_af

    .line 437
    iget-object v2, p1, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v2, v2, v1

    aput-object v2, v8, v1

    .line 391
    :cond_af
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 440
    :cond_b3
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    .line 441
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v2

    .line 442
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 443
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v9

    sub-long/2addr v6, v9

    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JJJ[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    .line 440
    return-object v1
.end method

.method public whitelist getIdleTimeMillis()J
    .registers 3

    .line 454
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getReceiveTimeMillis()J
    .registers 3

    .line 478
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getReceiveTimeMillis(I)J
    .registers 4

    .line 483
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 484
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 485
    iget-object p1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 483
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    :cond_1c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getReceiveTimeMillis(II)J
    .registers 5

    .line 492
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 493
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_23

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 494
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_23

    .line 495
    iget-object p1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide p1

    return-wide p1

    .line 492
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 498
    :cond_26
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public whitelist getSleepTimeMillis()J
    .registers 3

    .line 357
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getSpecificInfoFrequencyRange(I)I
    .registers 3

    .line 297
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result p1

    return p1
.end method

.method public blacklist getSpecificInfoLength()I
    .registers 2

    .line 537
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    return v0
.end method

.method public blacklist getSpecificInfoRat(I)I
    .registers 3

    .line 292
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result p1

    return p1
.end method

.method public whitelist getTimestampMillis()J
    .registers 3

    .line 232
    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    return-wide v0
.end method

.method public whitelist getTransmitDurationMillisAtPowerLevel(I)J
    .registers 7

    .line 249
    nop

    .line 250
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v3

    if-ge v2, v3, :cond_16

    .line 251
    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, v3, v2

    .line 252
    invoke-virtual {v3, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 254
    :cond_16
    return-wide v0
.end method

.method public blacklist getTransmitDurationMillisAtPowerLevel(II)J
    .registers 5

    .line 260
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 261
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p2, :cond_1a

    .line 262
    iget-object p2, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide p1

    return-wide p1

    .line 260
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    :cond_1d
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public blacklist getTransmitDurationMillisAtPowerLevel(III)J
    .registers 6

    .line 271
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 272
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p2, :cond_24

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 273
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p3, :cond_24

    .line 274
    iget-object p2, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide p1

    return-wide p1

    .line 271
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    :cond_27
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public whitelist getTransmitPowerRange(I)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 287
    sget-object v0, Landroid/telephony/ModemActivityInfo;->TX_POWER_RANGES:[Landroid/util/Range;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public blacklist getTransmitTimeMillis()[I
    .registers 2

    .line 326
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    return-object v0
.end method

.method public blacklist getTransmitTimeMillis(I)[I
    .registers 4

    .line 331
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 332
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 333
    iget-object p1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis()[I

    move-result-object p1

    return-object p1

    .line 331
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 336
    :cond_1c
    const/4 p1, 0x5

    new-array p1, p1, [I

    return-object p1
.end method

.method public blacklist getTransmitTimeMillis(II)[I
    .registers 5

    .line 342
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 343
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_23

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 344
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_23

    .line 345
    iget-object p1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis()[I

    move-result-object p1

    return-object p1

    .line 342
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    :cond_26
    const/4 p1, 0x5

    new-array p1, p1, [I

    return-object p1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 600
    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 601
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 602
    return v0
.end method

.method public greylist-max-o isEmpty()Z
    .registers 8

    .line 571
    nop

    .line 572
    nop

    .line 573
    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v4, v3

    move v2, v1

    :goto_7
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v5

    if-ge v2, v5, :cond_26

    .line 574
    iget-object v5, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isTxPowerEmpty()Z

    move-result v5

    if-nez v5, :cond_18

    .line 575
    move v3, v1

    .line 577
    :cond_18
    iget-object v5, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isRxPowerEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    .line 578
    move v4, v1

    .line 573
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 581
    :cond_26
    if-eqz v3, :cond_3d

    .line 582
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-nez v2, :cond_3d

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-nez v2, :cond_3d

    if-eqz v4, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v1

    .line 581
    :goto_3e
    return v0
.end method

.method public greylist-max-o isValid()Z
    .registers 7

    .line 549
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 550
    return v1

    .line 552
    :cond_6
    nop

    .line 553
    nop

    .line 554
    const/4 v0, 0x1

    move v3, v0

    move v4, v3

    move v2, v1

    :goto_c
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v5

    if-ge v2, v5, :cond_2b

    .line 555
    iget-object v5, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isTxPowerValid()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 556
    move v3, v1

    .line 558
    :cond_1d
    iget-object v5, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isRxPowerValid()Z

    move-result v5

    if-nez v5, :cond_28

    .line 559
    move v4, v1

    .line 554
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 562
    :cond_2b
    if-eqz v3, :cond_49

    if-eqz v4, :cond_49

    .line 564
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_49

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_49

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    move v1, v0

    goto :goto_4a

    :cond_49
    nop

    .line 562
    :goto_4a
    return v1
.end method

.method public greylist-max-o setIdleTimeMillis(I)V
    .registers 2

    .line 459
    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    .line 460
    return-void
.end method

.method public blacklist setIdleTimeMillis(J)V
    .registers 3

    .line 469
    long-to-int p1, p1

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    .line 470
    return-void
.end method

.method public blacklist setReceiveTimeMillis(I)V
    .registers 2

    .line 503
    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 504
    return-void
.end method

.method public blacklist setReceiveTimeMillis(IIJ)V
    .registers 7

    .line 527
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 528
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_21

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 529
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_21

    .line 530
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setReceiveTimeMillis(J)V

    .line 527
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 533
    :cond_24
    return-void
.end method

.method public blacklist setReceiveTimeMillis(IJ)V
    .registers 6

    .line 518
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 519
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_17

    .line 520
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setReceiveTimeMillis(J)V

    .line 518
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 523
    :cond_1a
    return-void
.end method

.method public blacklist setReceiveTimeMillis(J)V
    .registers 3

    .line 513
    long-to-int p1, p1

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 514
    return-void
.end method

.method public greylist-max-o setSleepTimeMillis(I)V
    .registers 2

    .line 362
    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    .line 363
    return-void
.end method

.method public blacklist setSleepTimeMillis(J)V
    .registers 3

    .line 372
    long-to-int p1, p1

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    .line 373
    return-void
.end method

.method public greylist-max-o setTimestamp(J)V
    .registers 3

    .line 237
    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    .line 238
    return-void
.end method

.method public blacklist setTransmitTimeMillis(II[I)V
    .registers 6

    .line 313
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 314
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_22

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 315
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_22

    .line 316
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setTransmitTimeMillis([I)V

    .line 313
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    :cond_25
    return-void
.end method

.method public blacklist setTransmitTimeMillis(I[I)V
    .registers 5

    .line 305
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 306
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 307
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setTransmitTimeMillis([I)V

    .line 305
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_1b
    return-void
.end method

.method public blacklist setTransmitTimeMillis([I)V
    .registers 3

    .line 301
    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    .line 302
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModemActivityInfo{ mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSleepTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIdleTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActivityStatsTechSpecificInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 182
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 219
    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 220
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 223
    return-void
.end method
