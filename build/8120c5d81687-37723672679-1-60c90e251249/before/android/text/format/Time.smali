.class public Landroid/text/format/Time;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Time$TimeCalculator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DAYS_PER_MONTH:[I

.field public static final whitelist EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final whitelist FRIDAY:I = 0x5

.field public static final whitelist HOUR:I = 0x3

.field public static final whitelist MINUTE:I = 0x2

.field public static final whitelist MONDAY:I = 0x1

.field public static final whitelist MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field public static final whitelist MONTH:I = 0x5

.field public static final whitelist MONTH_DAY:I = 0x4

.field public static final whitelist SATURDAY:I = 0x6

.field public static final whitelist SECOND:I = 0x1

.field public static final whitelist SUNDAY:I = 0x0

.field public static final whitelist THURSDAY:I = 0x4

.field public static final whitelist TIMEZONE_UTC:Ljava/lang/String; = "UTC"

.field public static final whitelist TUESDAY:I = 0x2

.field public static final whitelist WEDNESDAY:I = 0x3

.field public static final whitelist WEEK_DAY:I = 0x7

.field public static final whitelist WEEK_NUM:I = 0x9

.field public static final whitelist YEAR:I = 0x6

.field public static final whitelist YEAR_DAY:I = 0x8

.field private static final greylist-max-o Y_M_D:Ljava/lang/String; = "%Y-%m-%d"

.field private static final greylist-max-o Y_M_D_T_H_M_S_000:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000"

.field private static final greylist-max-o Y_M_D_T_H_M_S_000_Z:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000Z"

.field private static final greylist-max-o sThursdayOffset:[I


# instance fields
.field public whitelist allDay:Z

.field private greylist-max-o calculator:Landroid/text/format/Time$TimeCalculator;

.field public whitelist gmtoff:J

.field public whitelist hour:I

.field public whitelist isDst:I

.field public whitelist minute:I

.field public whitelist month:I

.field public whitelist monthDay:I

.field public whitelist second:I

.field public whitelist timezone:Ljava/lang/String;

.field public whitelist weekDay:I

.field public whitelist year:I

.field public whitelist yearDay:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 251
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    .line 876
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Landroid/text/format/Time;->sThursdayOffset:[I

    return-void

    :array_12
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_2e
    .array-data 4
        -0x3
        0x3
        0x2
        0x1
        0x0
        -0x1
        -0x2
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public constructor whitelist <init>(Landroid/text/format/Time;)V
    .registers 3

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 197
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    if-eqz p1, :cond_9

    .line 177
    invoke-direct {p0, p1}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 178
    return-void

    .line 175
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "timezoneId is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o checkChar(Ljava/lang/String;IC)V
    .registers 6

    .line 495
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 496
    if-ne p1, p3, :cond_7

    .line 501
    return-void

    .line 497
    :cond_7
    new-instance v0, Landroid/util/TimeFormatException;

    .line 499
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p1, p2, v1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 497
    const-string p2, "Unexpected character 0x%02d at pos=%d.  Expected 0x%02d (\'%c\')."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist compare(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .registers 3

    .line 338
    if-eqz p0, :cond_1f

    .line 340
    if-eqz p1, :cond_17

    .line 343
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 344
    iget-object v0, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 346
    iget-object p0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object p1, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-static {p0, p1}, Landroid/text/format/Time$TimeCalculator;->compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I

    move-result p0

    return p0

    .line 341
    :cond_17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "b == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 339
    :cond_1f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "a == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o getChar(Ljava/lang/String;II)I
    .registers 4

    .line 504
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 505
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 506
    invoke-static {p0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p0

    mul-int/2addr p0, p2

    return p0

    .line 508
    :cond_10
    new-instance p0, Landroid/util/TimeFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parse error at pos="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist getCurrentTimezone()Ljava/lang/String;
    .registers 1

    .line 686
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getJulianDay(JJ)I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 981
    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    .line 982
    add-long/2addr p0, p2

    .line 983
    const-wide/32 p2, 0x5265c00

    div-long v0, p0, p2

    .line 985
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-gez v4, :cond_17

    rem-long/2addr p0, p2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_17

    .line 986
    const-wide/16 p0, 0x1

    sub-long/2addr v0, p0

    .line 988
    :cond_17
    const-wide/32 p0, 0x253d8c

    add-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static whitelist getJulianMondayFromWeeksSinceEpoch(I)I
    .registers 2

    .line 1064
    mul-int/lit8 p0, p0, 0x7

    const v0, 0x253d89

    add-int/2addr p0, v0

    return p0
.end method

.method public static whitelist getWeeksSinceEpochFromJulianDay(II)I
    .registers 3

    .line 1045
    rsub-int/lit8 p1, p1, 0x4

    .line 1046
    if-gez p1, :cond_6

    .line 1047
    add-int/lit8 p1, p1, 0x7

    .line 1049
    :cond_6
    const v0, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v0, p1

    .line 1050
    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x7

    return p0
.end method

.method private greylist-max-o initialize(Ljava/lang/String;)V
    .registers 3

    .line 201
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 202
    const/16 v0, 0x7b2

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 203
    const/4 v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 209
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    invoke-direct {v0, p1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 210
    return-void
.end method

.method public static whitelist isEpoch(Landroid/text/format/Time;)Z
    .registers 6

    .line 955
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 956
    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p0

    const v1, 0x253d8c    # 3.419992E-39f

    if-ne p0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private greylist-max-o parse3339Internal(Ljava/lang/String;)Z
    .registers 13

    .line 555
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 556
    const/16 v1, 0xa

    if-lt v0, v1, :cond_12b

    .line 559
    nop

    .line 562
    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    .line 563
    const/16 v4, 0x64

    const/4 v5, 0x1

    invoke-static {p1, v5, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v4

    add-int/2addr v2, v4

    .line 564
    const/4 v4, 0x2

    invoke-static {p1, v4, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v4

    add-int/2addr v2, v4

    .line 565
    const/4 v4, 0x3

    invoke-static {p1, v4, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v4

    add-int/2addr v2, v4

    .line 566
    iput v2, p0, Landroid/text/format/Time;->year:I

    .line 568
    const/4 v2, 0x4

    const/16 v4, 0x2d

    invoke-direct {p0, p1, v2, v4}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 571
    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v6

    .line 572
    const/4 v7, 0x6

    invoke-static {p1, v7, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v7

    add-int/2addr v6, v7

    .line 573
    const/4 v7, -0x1

    add-int/2addr v6, v7

    .line 574
    iput v6, p0, Landroid/text/format/Time;->month:I

    .line 576
    const/4 v6, 0x7

    invoke-direct {p0, p1, v6, v4}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 579
    const/16 v4, 0x8

    invoke-static {p1, v4, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v4

    .line 580
    const/16 v6, 0x9

    invoke-static {p1, v6, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v6

    add-int/2addr v4, v6

    .line 581
    iput v4, p0, Landroid/text/format/Time;->monthDay:I

    .line 583
    const/16 v4, 0x13

    if-lt v0, v4, :cond_117

    .line 585
    const/16 v6, 0x54

    invoke-direct {p0, p1, v1, v6}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 586
    iput-boolean v3, p0, Landroid/text/format/Time;->allDay:Z

    .line 589
    const/16 v6, 0xb

    invoke-static {p1, v6, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v6

    .line 590
    const/16 v8, 0xc

    invoke-static {p1, v8, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v6, v8

    .line 593
    nop

    .line 595
    const/16 v8, 0xd

    const/16 v9, 0x3a

    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 598
    const/16 v8, 0xe

    invoke-static {p1, v8, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    .line 599
    const/16 v10, 0xf

    invoke-static {p1, v10, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v10

    add-int/2addr v8, v10

    .line 601
    nop

    .line 603
    const/16 v10, 0x10

    invoke-direct {p0, p1, v10, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 606
    const/16 v9, 0x11

    invoke-static {p1, v9, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v9

    .line 607
    const/16 v10, 0x12

    invoke-static {p1, v10, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v10

    add-int/2addr v9, v10

    .line 608
    iput v9, p0, Landroid/text/format/Time;->second:I

    .line 612
    nop

    .line 613
    if-ge v4, v0, :cond_a8

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_a8

    .line 615
    :cond_9b
    add-int/2addr v4, v5

    .line 616
    if-ge v4, v0, :cond_a8

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_9b

    .line 619
    :cond_a8
    nop

    .line 620
    if-le v0, v4, :cond_10b

    .line 621
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 624
    sparse-switch v9, :sswitch_data_134

    .line 636
    new-instance p1, Landroid/util/TimeFormatException;

    .line 638
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 636
    const-string v1, "Unexpected character 0x%02d at position %d.  Expected + or -"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 627
    :sswitch_ca
    nop

    .line 628
    move v9, v3

    goto :goto_d2

    .line 630
    :sswitch_cd
    nop

    .line 631
    move v9, v5

    goto :goto_d2

    .line 633
    :sswitch_d0
    nop

    .line 634
    move v9, v7

    .line 640
    :goto_d2
    nop

    .line 642
    if-eqz v9, :cond_10d

    .line 643
    add-int/lit8 v10, v4, 0x6

    if-lt v0, v10, :cond_f7

    .line 650
    add-int/lit8 v0, v4, 0x1

    invoke-static {p1, v0, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v0

    .line 651
    add-int/lit8 v10, v4, 0x2

    invoke-static {p1, v10, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v10

    add-int/2addr v0, v10

    .line 652
    mul-int/2addr v0, v9

    .line 653
    add-int/2addr v6, v0

    .line 656
    add-int/lit8 v0, v4, 0x4

    invoke-static {p1, v0, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v0

    .line 657
    add-int/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result p1

    add-int/2addr v0, p1

    .line 658
    mul-int/2addr v0, v9

    .line 659
    add-int/2addr v8, v0

    goto :goto_10d

    .line 644
    :cond_f7
    new-instance p1, Landroid/util/TimeFormatException;

    .line 646
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 645
    const-string v1, "Unexpected length; should be %d characters"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 620
    :cond_10b
    move v5, v3

    move v9, v5

    .line 662
    :cond_10d
    :goto_10d
    iput v6, p0, Landroid/text/format/Time;->hour:I

    .line 663
    iput v8, p0, Landroid/text/format/Time;->minute:I

    .line 665
    if-eqz v9, :cond_116

    .line 666
    invoke-virtual {p0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 668
    :cond_116
    goto :goto_120

    .line 669
    :cond_117
    iput-boolean v5, p0, Landroid/text/format/Time;->allDay:Z

    .line 670
    iput v3, p0, Landroid/text/format/Time;->hour:I

    .line 671
    iput v3, p0, Landroid/text/format/Time;->minute:I

    .line 672
    iput v3, p0, Landroid/text/format/Time;->second:I

    move v5, v3

    .line 675
    :goto_120
    iput v3, p0, Landroid/text/format/Time;->weekDay:I

    .line 676
    iput v3, p0, Landroid/text/format/Time;->yearDay:I

    .line 677
    iput v7, p0, Landroid/text/format/Time;->isDst:I

    .line 678
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 679
    return v5

    .line 557
    :cond_12b
    new-instance p1, Landroid/util/TimeFormatException;

    const-string v0, "String too short --- expected at least 10 characters."

    invoke-direct {p1, v0}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_134
    .sparse-switch
        0x2b -> :sswitch_d0
        0x2d -> :sswitch_cd
        0x5a -> :sswitch_ca
    .end sparse-switch
.end method

.method private greylist-max-o parseInternal(Ljava/lang/String;)Z
    .registers 11

    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 425
    const-string v1, "String is too short: \""

    const/16 v2, 0x8

    if-lt v0, v2, :cond_b7

    .line 430
    nop

    .line 433
    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    .line 434
    const/16 v5, 0x64

    const/4 v6, 0x1

    invoke-static {p1, v6, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    .line 435
    const/4 v5, 0x2

    const/16 v7, 0xa

    invoke-static {p1, v5, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    .line 436
    const/4 v5, 0x3

    invoke-static {p1, v5, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    .line 437
    iput v3, p0, Landroid/text/format/Time;->year:I

    .line 440
    const/4 v3, 0x4

    invoke-static {p1, v3, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    .line 441
    const/4 v5, 0x5

    invoke-static {p1, v5, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    .line 442
    const/4 v5, -0x1

    add-int/2addr v3, v5

    .line 443
    iput v3, p0, Landroid/text/format/Time;->month:I

    .line 446
    const/4 v3, 0x6

    invoke-static {p1, v3, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    .line 447
    const/4 v8, 0x7

    invoke-static {p1, v8, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v3, v8

    .line 448
    iput v3, p0, Landroid/text/format/Time;->monthDay:I

    .line 450
    if-le v0, v2, :cond_a3

    .line 451
    const/16 v3, 0xf

    if-lt v0, v3, :cond_86

    .line 457
    const/16 v1, 0x54

    invoke-direct {p0, p1, v2, v1}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 458
    iput-boolean v4, p0, Landroid/text/format/Time;->allDay:Z

    .line 461
    const/16 v1, 0x9

    invoke-static {p1, v1, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    .line 462
    invoke-static {p1, v7, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    add-int/2addr v1, v2

    .line 463
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 466
    const/16 v1, 0xb

    invoke-static {p1, v1, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    .line 467
    const/16 v2, 0xc

    invoke-static {p1, v2, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    add-int/2addr v1, v2

    .line 468
    iput v1, p0, Landroid/text/format/Time;->minute:I

    .line 471
    const/16 v1, 0xd

    invoke-static {p1, v1, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    .line 472
    const/16 v2, 0xe

    invoke-static {p1, v2, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    add-int/2addr v1, v2

    .line 473
    iput v1, p0, Landroid/text/format/Time;->second:I

    .line 475
    if-le v0, v3, :cond_ab

    .line 477
    const/16 v0, 0x5a

    invoke-direct {p0, p1, v3, v0}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 478
    goto :goto_ac

    .line 452
    :cond_86
    new-instance v0, Landroid/util/TimeFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" If there are more than 8 characters there must be at least 15."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_a3
    iput-boolean v6, p0, Landroid/text/format/Time;->allDay:Z

    .line 482
    iput v4, p0, Landroid/text/format/Time;->hour:I

    .line 483
    iput v4, p0, Landroid/text/format/Time;->minute:I

    .line 484
    iput v4, p0, Landroid/text/format/Time;->second:I

    .line 487
    :cond_ab
    move v6, v4

    :goto_ac
    iput v4, p0, Landroid/text/format/Time;->weekDay:I

    .line 488
    iput v4, p0, Landroid/text/format/Time;->yearDay:I

    .line 489
    iput v5, p0, Landroid/text/format/Time;->isDst:I

    .line 490
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 491
    return v6

    .line 426
    :cond_b7
    new-instance v0, Landroid/util/TimeFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" Expected at least 8 characters."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist after(Landroid/text/format/Time;)Z
    .registers 2

    .line 868
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result p1

    if-lez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public whitelist before(Landroid/text/format/Time;)Z
    .registers 2

    .line 852
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result p1

    if-gez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public whitelist clear(Ljava/lang/String;)V
    .registers 4

    .line 302
    if-eqz p1, :cond_1f

    .line 305
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 306
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/text/format/Time;->allDay:Z

    .line 307
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 308
    iput p1, p0, Landroid/text/format/Time;->minute:I

    .line 309
    iput p1, p0, Landroid/text/format/Time;->hour:I

    .line 310
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 311
    iput p1, p0, Landroid/text/format/Time;->month:I

    .line 312
    iput p1, p0, Landroid/text/format/Time;->year:I

    .line 313
    iput p1, p0, Landroid/text/format/Time;->weekDay:I

    .line 314
    iput p1, p0, Landroid/text/format/Time;->yearDay:I

    .line 315
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 316
    const/4 p1, -0x1

    iput p1, p0, Landroid/text/format/Time;->isDst:I

    .line 317
    return-void

    .line 303
    :cond_1f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "timezone is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist format(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 357
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 358
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist format2445()Ljava/lang/String;
    .registers 3

    .line 777
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 778
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-boolean v1, p0, Landroid/text/format/Time;->allDay:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time$TimeCalculator;->format2445(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist format3339(Z)Ljava/lang/String;
    .registers 6

    .line 925
    if-eqz p1, :cond_9

    .line 926
    const-string p1, "%Y-%m-%d"

    invoke-virtual {p0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 927
    :cond_9
    const-string p1, "UTC"

    iget-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 928
    const-string p1, "%Y-%m-%dT%H:%M:%S.000Z"

    invoke-virtual {p0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 930
    :cond_1a
    const-string p1, "%Y-%m-%dT%H:%M:%S.000"

    invoke-virtual {p0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 931
    iget-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    const-string v0, "-"

    goto :goto_2d

    :cond_2b
    const-string v0, "+"

    .line 932
    :goto_2d
    iget-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    long-to-int v1, v1

    .line 933
    rem-int/lit16 v2, v1, 0xe10

    div-int/lit8 v2, v2, 0x3c

    .line 934
    div-int/lit16 v1, v1, 0xe10

    .line 936
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s%s%02d:%02d"

    invoke-static {v3, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getActualMaximum(I)I
    .registers 5

    .line 262
    const/16 v0, 0x3b

    packed-switch p1, :pswitch_data_64

    .line 292
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad field="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :pswitch_1e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "WEEK_NUM not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    :pswitch_26
    iget p1, p0, Landroid/text/format/Time;->year:I

    .line 287
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_37

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_34

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_37

    :cond_34
    const/16 p1, 0x16d

    goto :goto_39

    :cond_37
    const/16 p1, 0x16c

    :goto_39
    return p1

    .line 283
    :pswitch_3a
    const/4 p1, 0x6

    return p1

    .line 281
    :pswitch_3c
    const/16 p1, 0x7f5

    return p1

    .line 279
    :pswitch_3f
    const/16 p1, 0xb

    return p1

    .line 270
    :pswitch_42
    sget-object p1, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    iget v0, p0, Landroid/text/format/Time;->month:I

    aget p1, p1, v0

    .line 271
    const/16 v0, 0x1c

    if-eq p1, v0, :cond_4d

    .line 272
    return p1

    .line 274
    :cond_4d
    iget p1, p0, Landroid/text/format/Time;->year:I

    .line 275
    rem-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_5d

    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_5b

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_5d

    :cond_5b
    const/16 v0, 0x1d

    :cond_5d
    return v0

    .line 268
    :pswitch_5e
    const/16 p1, 0x17

    return p1

    .line 266
    :pswitch_61
    return v0

    .line 264
    :pswitch_62
    return v0

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_62
        :pswitch_61
        :pswitch_5e
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_3a
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method

.method public whitelist getWeekNumber()I
    .registers 6

    .line 900
    iget v0, p0, Landroid/text/format/Time;->yearDay:I

    sget-object v1, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v2, p0, Landroid/text/format/Time;->weekDay:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 903
    const/4 v1, 0x1

    if-ltz v0, :cond_14

    const/16 v2, 0x16c

    if-gt v0, v2, :cond_14

    .line 904
    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    .line 908
    :cond_14
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 909
    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    sget-object v3, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v4, p0, Landroid/text/format/Time;->weekDay:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 910
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 911
    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist normalize(Z)J
    .registers 4

    .line 231
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 232
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    .line 233
    iget-object p1, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {p1, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 234
    return-wide v0
.end method

.method public whitelist parse(Ljava/lang/String;)Z
    .registers 3

    .line 410
    if-eqz p1, :cond_10

    .line 413
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parseInternal(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 414
    const-string p1, "UTC"

    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 415
    const/4 p1, 0x1

    return p1

    .line 417
    :cond_e
    const/4 p1, 0x0

    return p1

    .line 411
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "time string is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist parse3339(Ljava/lang/String;)Z
    .registers 3

    .line 544
    if-eqz p1, :cond_10

    .line 547
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parse3339Internal(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 548
    const-string p1, "UTC"

    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 549
    const/4 p1, 0x1

    return p1

    .line 551
    :cond_e
    const/4 p1, 0x0

    return p1

    .line 545
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "time string is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist set(III)V
    .registers 5

    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 828
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 829
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 830
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 831
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 832
    iput p2, p0, Landroid/text/format/Time;->month:I

    .line 833
    iput p3, p0, Landroid/text/format/Time;->year:I

    .line 834
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 835
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 836
    const/4 p1, -0x1

    iput p1, p0, Landroid/text/format/Time;->isDst:I

    .line 837
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroid/text/format/Time;->gmtoff:J

    .line 838
    return-void
.end method

.method public whitelist set(IIIIII)V
    .registers 8

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 805
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 806
    iput p2, p0, Landroid/text/format/Time;->minute:I

    .line 807
    iput p3, p0, Landroid/text/format/Time;->hour:I

    .line 808
    iput p4, p0, Landroid/text/format/Time;->monthDay:I

    .line 809
    iput p5, p0, Landroid/text/format/Time;->month:I

    .line 810
    iput p6, p0, Landroid/text/format/Time;->year:I

    .line 811
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 812
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 813
    const/4 p1, -0x1

    iput p1, p0, Landroid/text/format/Time;->isDst:I

    .line 814
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroid/text/format/Time;->gmtoff:J

    .line 815
    return-void
.end method

.method public whitelist set(J)V
    .registers 5

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 765
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 766
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time$TimeCalculator;->setTimeInMillis(J)V

    .line 767
    iget-object p1, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {p1, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 768
    return-void
.end method

.method public whitelist set(Landroid/text/format/Time;)V
    .registers 4

    .line 785
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 786
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 787
    iget v0, p1, Landroid/text/format/Time;->second:I

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 788
    iget v0, p1, Landroid/text/format/Time;->minute:I

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 789
    iget v0, p1, Landroid/text/format/Time;->hour:I

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 790
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 791
    iget v0, p1, Landroid/text/format/Time;->month:I

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 792
    iget v0, p1, Landroid/text/format/Time;->year:I

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 793
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 794
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 795
    iget v0, p1, Landroid/text/format/Time;->isDst:I

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 796
    iget-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 797
    return-void
.end method

.method public whitelist setJulianDay(I)J
    .registers 6

    .line 1015
    const v0, 0x253d8c    # 3.419992E-39f

    sub-int v0, p1, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 1016
    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1020
    iget-wide v2, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1021
    sub-int/2addr p1, v0

    .line 1022
    iget v0, p0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 1025
    const/4 p1, 0x0

    iput p1, p0, Landroid/text/format/Time;->hour:I

    .line 1026
    iput p1, p0, Landroid/text/format/Time;->minute:I

    .line 1027
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 1028
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1029
    return-wide v0
.end method

.method public whitelist setToNow()V
    .registers 3

    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 694
    return-void
.end method

.method public whitelist switchTimezone(Ljava/lang/String;)V
    .registers 3

    .line 245
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 246
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->switchTimeZone(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 248
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public whitelist toMillis(Z)J
    .registers 4

    .line 752
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 753
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 368
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 370
    invoke-virtual {v0}, Landroid/text/format/Time$TimeCalculator;->toStringInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
