.class public Landroid/widget/Chronometer;
.super Landroid/widget/TextView;
.source "Chronometer.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Chronometer$OnChronometerTickListener;
    }
.end annotation


# static fields
.field private static final blacklist ADAPTIVE_MINUTES_WITHOUT_SECONDS:I = 0x3

.field private static final greylist-max-o HOUR_IN_SEC:I = 0xe10

.field private static final greylist-max-o MIN_IN_SEC:I = 0x3c

.field private static final blacklist SIGNIFICANT_DRIFT_MILLIS:J = 0x1f4L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Chronometer"


# instance fields
.field private greylist-max-o mBase:J

.field private blacklist mBaseInstant:Ljava/time/Instant;

.field private greylist-max-o mCountDown:Z

.field private final blacklist mElapsedRealtimeClock:Ljava/util/function/LongSupplier;

.field private greylist-max-o mFormat:Ljava/lang/String;

.field private greylist-max-o mFormatBuilder:Ljava/lang/StringBuilder;

.field private greylist-max-o mFormatter:Ljava/util/Formatter;

.field private greylist-max-o mFormatterArgs:[Ljava/lang/Object;

.field private greylist-max-o mFormatterLocale:Ljava/util/Locale;

.field private greylist-max-o mLogged:Z

.field private greylist-max-o mNow:J

.field private greylist-max-o mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

.field private greylist-max-o mRecycle:Ljava/lang/StringBuilder;

.field private greylist-max-o mRunning:Z

.field private greylist-max-o mStarted:Z

.field private final blacklist mSystemClock:Ljava/time/InstantSource;

.field private final greylist-max-o mTickRunnable:Ljava/lang/Runnable;

.field private blacklist mUseAdaptiveFormat:Z

.field private greylist-max-o mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmElapsedRealtimeClock(Landroid/widget/Chronometer;)Ljava/util/function/LongSupplier;
    .registers 1

    iget-object p0, p0, Landroid/widget/Chronometer;->mElapsedRealtimeClock:Ljava/util/function/LongSupplier;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunning(Landroid/widget/Chronometer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Chronometer;->mRunning:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpostTickOnNextChange(Landroid/widget/Chronometer;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Chronometer;->postTickOnNextChange()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateText(Landroid/widget/Chronometer;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4

    .line 120
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 137
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12

    .line 140
    new-instance v2, Landroid/widget/Chronometer$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/widget/Chronometer$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {}, Ljava/time/InstantSource;->system()Ljava/time/InstantSource;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Ljava/util/function/LongSupplier;Ljava/time/InstantSource;Landroid/util/AttributeSet;II)V

    .line 142
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/function/LongSupplier;Ljava/time/InstantSource;Landroid/util/AttributeSet;II)V
    .registers 16

    .line 148
    invoke-direct {p0, p1, p4, p5, p6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mUseAdaptiveFormat:Z

    .line 109
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    .line 488
    new-instance v2, Landroid/widget/Chronometer$1;

    invoke-direct {v2, p0}, Landroid/widget/Chronometer$1;-><init>(Landroid/widget/Chronometer;)V

    iput-object v2, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    .line 149
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/function/LongSupplier;

    iput-object p2, p0, Landroid/widget/Chronometer;->mElapsedRealtimeClock:Ljava/util/function/LongSupplier;

    .line 150
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/time/InstantSource;

    iput-object p2, p0, Landroid/widget/Chronometer;->mSystemClock:Ljava/time/InstantSource;

    .line 152
    sget-object p2, Lcom/android/internal/R$styleable;->Chronometer:[I

    invoke-virtual {p1, p4, p2, p5, p6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 154
    sget-object v4, Lcom/android/internal/R$styleable;->Chronometer:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/widget/Chronometer;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 156
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->setCountDown(Z)V

    .line 158
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    invoke-direct {p0}, Landroid/widget/Chronometer;->init()V

    .line 161
    return-void
.end method

.method private static greylist-max-o formatDuration(J)Ljava/lang/String;
    .registers 6

    .line 534
    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    long-to-int p0, p0

    .line 535
    if-gez p0, :cond_7

    .line 536
    neg-int p0, p0

    .line 539
    :cond_7
    nop

    .line 540
    nop

    .line 542
    const/4 p1, 0x0

    const/16 v0, 0xe10

    if-lt p0, v0, :cond_14

    .line 543
    div-int/lit16 v0, p0, 0xe10

    .line 544
    mul-int/lit16 v1, v0, 0xe10

    sub-int/2addr p0, v1

    goto :goto_15

    .line 542
    :cond_14
    move v0, p1

    .line 546
    :goto_15
    const/16 v1, 0x3c

    if-lt p0, v1, :cond_1e

    .line 547
    div-int/lit8 p1, p0, 0x3c

    .line 548
    mul-int/lit8 v1, p1, 0x3c

    sub-int/2addr p0, v1

    .line 550
    :cond_1e
    nop

    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 553
    if-lez v0, :cond_34

    .line 554
    new-instance v2, Landroid/icu/util/Measure;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v2, v0, v3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_34
    if-lez p1, :cond_44

    .line 557
    new-instance v0, Landroid/icu/util/Measure;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v2, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v0, p1, v2}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_44
    new-instance p1, Landroid/icu/util/Measure;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {p1, p0, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    sget-object p1, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p0, p1}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    .line 562
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/icu/util/Measure;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/icu/util/Measure;

    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p0

    .line 561
    return-object p0
.end method

.method private blacklist formatTextWithAdaptiveTimeFormat(Ljava/time/Duration;)Ljava/lang/String;
    .registers 8

    .line 426
    new-instance v0, Landroid/icu/util/Measure;

    invoke-virtual {p1}, Ljava/time/Duration;->toDaysPart()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v0, v1, v2}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 427
    new-instance v1, Landroid/icu/util/Measure;

    invoke-virtual {p1}, Ljava/time/Duration;->toHoursPart()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v1, v2, v3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 428
    new-instance v2, Landroid/icu/util/Measure;

    invoke-virtual {p1}, Ljava/time/Duration;->toMinutesPart()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v2, v3, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 429
    new-instance v3, Landroid/icu/util/Measure;

    invoke-virtual {p1}, Ljava/time/Duration;->toSecondsPart()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v4, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, p1, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 430
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    sget-object v4, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p1, v4}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p1

    .line 433
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 434
    invoke-virtual {v0}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eqz v5, :cond_66

    .line 435
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {v1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_9c

    .line 437
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 439
    :cond_66
    invoke-virtual {v1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_81

    .line 440
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v2}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_9c

    .line 442
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 444
    :cond_81
    invoke-virtual {v2}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_9c

    .line 445
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v2}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9c

    .line 447
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_9c
    :goto_9c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 452
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_a5
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/icu/util/Measure;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/Measure;

    invoke-virtual {p1, v0}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o init()V
    .registers 3

    .line 164
    iget-object v0, p0, Landroid/widget/Chronometer;->mElapsedRealtimeClock:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    .line 165
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 166
    return-void
.end method

.method private blacklist instantToElapsedRealtime(Ljava/time/Instant;)J
    .registers 8

    .line 235
    iget-object v0, p0, Landroid/widget/Chronometer;->mElapsedRealtimeClock:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    .line 236
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    iget-object p1, p0, Landroid/widget/Chronometer;->mSystemClock:Ljava/time/InstantSource;

    invoke-interface {p1}, Ljava/time/InstantSource;->millis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 235
    return-wide v0
.end method

.method private blacklist postTickOnNextChange()V
    .registers 7

    .line 500
    iget-wide v0, p0, Landroid/widget/Chronometer;->mNow:J

    .line 506
    iget-boolean v2, p0, Landroid/widget/Chronometer;->mUseAdaptiveFormat:Z

    if-eqz v2, :cond_19

    iget-wide v2, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-lez v2, :cond_19

    .line 507
    const-wide/32 v2, 0xea60

    goto :goto_1b

    .line 508
    :cond_19
    const-wide/16 v2, 0x3e8

    .line 511
    :goto_1b
    iget-boolean v4, p0, Landroid/widget/Chronometer;->mCountDown:Z

    if-eqz v4, :cond_2b

    .line 512
    iget-wide v4, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v4, v0

    rem-long/2addr v4, v2

    .line 513
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_35

    .line 514
    add-long/2addr v4, v2

    goto :goto_35

    .line 517
    :cond_2b
    iget-wide v4, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    rem-long/2addr v0, v2

    sub-long v4, v2, v0

    .line 521
    :cond_35
    :goto_35
    const-wide/16 v0, 0x3

    add-long/2addr v4, v0

    .line 522
    iget-object v0, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/Chronometer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 523
    return-void
.end method

.method private blacklist updateBaseTimeIfSystemClockChanged()V
    .registers 7

    .line 461
    iget-object v0, p0, Landroid/widget/Chronometer;->mBaseInstant:Ljava/time/Instant;

    if-nez v0, :cond_5

    .line 462
    return-void

    .line 464
    :cond_5
    iget-object v0, p0, Landroid/widget/Chronometer;->mBaseInstant:Ljava/time/Instant;

    invoke-direct {p0, v0}, Landroid/widget/Chronometer;->instantToElapsedRealtime(Ljava/time/Instant;)J

    move-result-wide v0

    .line 465
    iget-wide v2, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 466
    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-lez v4, :cond_38

    .line 467
    nop

    .line 469
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Landroid/widget/Chronometer;->mBase:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 467
    const-string v3, "Detected system clock change of %s millis; adjusting mBase (%s -> %s)"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Chronometer"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iput-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    .line 472
    :cond_38
    return-void
.end method

.method private greylist-max-o updateRunning()V
    .registers 4

    .line 475
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/Chronometer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 476
    :goto_11
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mRunning:Z

    if-eq v0, v1, :cond_2e

    .line 477
    if-eqz v0, :cond_27

    .line 478
    iget-object v1, p0, Landroid/widget/Chronometer;->mElapsedRealtimeClock:Ljava/util/function/LongSupplier;

    invoke-interface {v1}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/widget/Chronometer;->updateText(J)V

    .line 479
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 480
    invoke-direct {p0}, Landroid/widget/Chronometer;->postTickOnNextChange()V

    goto :goto_2c

    .line 482
    :cond_27
    iget-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 484
    :goto_2c
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    .line 486
    :cond_2e
    return-void
.end method

.method private declared-synchronized greylist-max-o updateText(J)V
    .registers 7

    monitor-enter p0

    .line 383
    :try_start_1
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateBaseTimeIfSystemClockChanged()V

    .line 384
    iput-wide p1, p0, Landroid/widget/Chronometer;->mNow:J

    .line 386
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mCountDown:Z

    if-eqz v0, :cond_11

    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x1f3

    sub-long/2addr v0, p1

    goto :goto_15

    :cond_11
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long v0, p1, v0

    :goto_15
    long-to-float p1, v0

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    .line 387
    nop

    .line 388
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_2a

    .line 389
    neg-long p1, p1

    .line 390
    move v0, v1

    goto :goto_2b

    .line 388
    :cond_2a
    move v0, v2

    .line 393
    :goto_2b
    iget-boolean v3, p0, Landroid/widget/Chronometer;->mUseAdaptiveFormat:Z

    if-eqz v3, :cond_38

    .line 394
    invoke-static {p1, p2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/Chronometer;->formatTextWithAdaptiveTimeFormat(Ljava/time/Duration;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3e

    .line 396
    :cond_38
    iget-object v3, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    invoke-static {v3, p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object p1

    .line 399
    :goto_3e
    if-eqz v0, :cond_4f

    .line 400
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x10406a6

    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 403
    :cond_4f
    iget-object p2, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    if-eqz p2, :cond_a8

    .line 404
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 405
    iget-object v0, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    if-eqz v0, :cond_63

    iget-object v0, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 406
    :cond_63
    iput-object p2, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    .line 407
    new-instance v0, Ljava/util/Formatter;

    iget-object v3, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v3, p2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    .line 409
    :cond_6e
    iget-object p2, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 410
    iget-object p2, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    aput-object p1, p2, v2
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_ad

    .line 412
    :try_start_77
    iget-object p2, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    iget-object v0, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 413
    iget-object p2, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_86
    .catch Ljava/util/IllegalFormatException; {:try_start_77 .. :try_end_86} :catch_87
    .catchall {:try_start_77 .. :try_end_86} :catchall_ad

    .line 419
    goto :goto_a8

    .line 414
    :catch_87
    move-exception p2

    .line 415
    :try_start_88
    iget-boolean p2, p0, Landroid/widget/Chronometer;->mLogged:Z

    if-nez p2, :cond_a8

    .line 416
    const-string p2, "Chronometer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal format string: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput-boolean v1, p0, Landroid/widget/Chronometer;->mLogged:Z

    .line 422
    :cond_a8
    :goto_a8
    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V
    :try_end_ab
    .catchall {:try_start_88 .. :try_end_ab} :catchall_ad

    .line 423
    monitor-exit p0

    return-void

    .line 382
    :catchall_ad
    move-exception p1

    :try_start_ae
    monitor-exit p0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw p1
.end method


# virtual methods
.method greylist-max-o dispatchChronometerTick()V
    .registers 2

    .line 526
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    if-eqz v0, :cond_9

    .line 527
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    invoke-interface {v0, p0}, Landroid/widget/Chronometer$OnChronometerTickListener;->onChronometerTick(Landroid/widget/Chronometer;)V

    .line 529
    :cond_9
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 572
    const-class v0, Landroid/widget/Chronometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBase()J
    .registers 3

    .line 259
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    return-wide v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .registers 5

    .line 567
    iget-wide v0, p0, Landroid/widget/Chronometer;->mNow:J

    iget-wide v2, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/widget/Chronometer;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFormat()Ljava/lang/String;
    .registers 2

    .line 301
    iget-object v0, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOnChronometerTickListener()Landroid/widget/Chronometer$OnChronometerTickListener;
    .registers 2

    .line 318
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    return-object v0
.end method

.method public whitelist isCountDown()Z
    .registers 2

    .line 188
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mCountDown:Z

    return v0
.end method

.method public whitelist isTheFinalCountDown()Z
    .registers 5

    .line 196
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://youtu.be/9jK-NcRmVcw"

    .line 197
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.BROWSABLE"

    .line 198
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 199
    const v2, 0x81000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    .line 201
    const/4 v0, 0x1

    return v0

    .line 202
    :catch_23
    move-exception v0

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUseAdaptiveFormat()Z
    .registers 2

    .line 285
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mUseAdaptiveFormat:Z

    return v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 358
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    .line 360
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 361
    return-void
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 372
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 373
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 374
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .registers 2

    .line 365
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 366
    if-nez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mVisible:Z

    .line 367
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 368
    return-void
.end method

.method public whitelist setBase(J)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 213
    iput-wide p1, p0, Landroid/widget/Chronometer;->mBase:J

    .line 214
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/Chronometer;->mBaseInstant:Ljava/time/Instant;

    .line 216
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 217
    iget-object p1, p0, Landroid/widget/Chronometer;->mElapsedRealtimeClock:Ljava/util/function/LongSupplier;

    invoke-interface {p1}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroid/widget/Chronometer;->updateText(J)V

    .line 218
    return-void
.end method

.method public blacklist setBase(Ljava/time/Instant;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 227
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    iput-object v0, p0, Landroid/widget/Chronometer;->mBaseInstant:Ljava/time/Instant;

    .line 228
    invoke-direct {p0, p1}, Landroid/widget/Chronometer;->instantToElapsedRealtime(Ljava/time/Instant;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    .line 230
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 231
    iget-object p1, p0, Landroid/widget/Chronometer;->mElapsedRealtimeClock:Ljava/util/function/LongSupplier;

    invoke-interface {p1}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 232
    return-void
.end method

.method public whitelist setCountDown(Z)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 177
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mCountDown:Z

    .line 178
    iget-object p1, p0, Landroid/widget/Chronometer;->mElapsedRealtimeClock:Ljava/util/function/LongSupplier;

    invoke-interface {p1}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 179
    return-void
.end method

.method public whitelist setFormat(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 275
    iput-object p1, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    .line 276
    if-eqz p1, :cond_15

    iget-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_15

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 279
    :cond_15
    return-void
.end method

.method public whitelist setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V
    .registers 2

    .line 310
    iput-object p1, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    .line 311
    return-void
.end method

.method public blacklist setPausedDuration(Ljava/time/Duration;)V
    .registers 8
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 248
    invoke-virtual {p0}, Landroid/widget/Chronometer;->stop()V

    .line 249
    iget-object v0, p0, Landroid/widget/Chronometer;->mElapsedRealtimeClock:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    .line 250
    invoke-virtual {p0}, Landroid/widget/Chronometer;->isCountDown()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, -0x1

    :goto_12
    int-to-long v2, v2

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/widget/Chronometer;->mBase:J

    .line 251
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/Chronometer;->mBaseInstant:Ljava/time/Instant;

    .line 252
    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 253
    return-void
.end method

.method public greylist-max-o setStarted(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 352
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 353
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 354
    return-void
.end method

.method public blacklist setUseAdaptiveFormat(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 293
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mUseAdaptiveFormat:Z

    .line 294
    return-void
.end method

.method public whitelist start()V
    .registers 2

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 331
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 332
    return-void
.end method

.method public whitelist stop()V
    .registers 2

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 343
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 344
    return-void
.end method

.method public blacklist updateText()V
    .registers 3

    .line 379
    iget-object v0, p0, Landroid/widget/Chronometer;->mElapsedRealtimeClock:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 380
    return-void
.end method
