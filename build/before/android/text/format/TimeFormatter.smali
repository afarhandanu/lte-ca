.class Landroid/text/format/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# static fields
.field private static final blacklist DAYSPERLYEAR:I = 0x16e

.field private static final blacklist DAYSPERNYEAR:I = 0x16d

.field private static final blacklist DAYSPERWEEK:I = 0x7

.field private static final blacklist FORCE_LOWER_CASE:I = -0x1

.field private static final blacklist HOURSPERDAY:I = 0x18

.field private static final blacklist MINSPERHOUR:I = 0x3c

.field private static final blacklist MONSPERYEAR:I = 0xc

.field private static final blacklist SECSPERMIN:I = 0x3c

.field private static blacklist sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private static blacklist sDateOnlyFormat:Ljava/lang/String;

.field private static blacklist sDateTimeFormat:Ljava/lang/String;

.field private static blacklist sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private static blacklist sLocale:Ljava/util/Locale;

.field private static blacklist sTimeOnlyFormat:Ljava/lang/String;


# instance fields
.field private final blacklist dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private final blacklist dateOnlyFormat:Ljava/lang/String;

.field private final blacklist dateTimeFormat:Ljava/lang/String;

.field private final blacklist decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private blacklist numberFormatter:Ljava/util/Formatter;

.field private blacklist outputBuilder:Ljava/lang/StringBuilder;

.field private final blacklist timeOnlyFormat:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-class v0, Landroid/text/format/TimeFormatter;

    monitor-enter v0

    .line 77
    :try_start_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 79
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    if-eqz v2, :cond_16

    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 80
    :cond_16
    sput-object v1, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    .line 81
    invoke-static {v1}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 82
    invoke-static {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    sput-object v1, Landroid/text/format/TimeFormatter;->sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 84
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 85
    const v2, 0x1040a5f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    .line 86
    const v2, 0x1040697

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    .line 87
    const v2, 0x1040339

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    .line 90
    :cond_43
    sget-object v1, Landroid/text/format/TimeFormatter;->sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 91
    sget-object v1, Landroid/text/format/TimeFormatter;->sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 92
    sget-object v1, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    .line 93
    sget-object v1, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    .line 94
    sget-object v1, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    .line 95
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_6 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method private static blacklist append2DigitNumber(Ljava/lang/StringBuilder;I)V
    .registers 3

    .line 145
    const/16 v0, 0xa

    if-ge p1, v0, :cond_9

    .line 146
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    return-void
.end method

.method private static blacklist brokenIsLower(C)Z
    .registers 2

    .line 554
    const/16 v0, 0x61

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static blacklist brokenIsUpper(C)Z
    .registers 2

    .line 546
    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static blacklist brokenToLower(C)C
    .registers 3

    .line 562
    const/16 v0, 0x41

    if-lt p0, v0, :cond_d

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_d

    .line 563
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x61

    int-to-char p0, p0

    return p0

    .line 565
    :cond_d
    return p0
.end method

.method private static blacklist brokenToUpper(C)C
    .registers 3

    .line 573
    const/16 v0, 0x61

    if-lt p0, v0, :cond_d

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_d

    .line 574
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x41

    int-to-char p0, p0

    return p0

    .line 576
    :cond_d
    return p0
.end method

.method private blacklist formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V
    .registers 7

    .line 199
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 200
    :goto_4
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_36

    .line 201
    nop

    .line 202
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    .line 203
    const/16 v1, 0x25

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1d

    .line 204
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->handleToken(Ljava/nio/CharBuffer;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Z

    move-result v0

    goto :goto_1e

    .line 203
    :cond_1d
    move v0, v2

    .line 206
    :goto_1e
    if-eqz v0, :cond_2d

    .line 207
    iget-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    :cond_2d
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 210
    goto :goto_4

    .line 211
    :cond_36
    return-void
.end method

.method private static blacklist getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 526
    sparse-switch p0, :sswitch_data_8

    .line 534
    return-object p1

    .line 528
    :sswitch_4
    return-object p2

    .line 532
    :sswitch_5
    return-object p4

    .line 530
    :sswitch_6
    return-object p3

    nop

    :sswitch_data_8
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_5
        0x5f -> :sswitch_4
    .end sparse-switch
.end method

.method private blacklist handleToken(Ljava/nio/CharBuffer;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Z
    .registers 21

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    move v5, v4

    .line 218
    :goto_a
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3a1

    .line 220
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v1, v6}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/nio/CharBuffer;->get(I)C

    move-result v6

    .line 222
    const/16 v8, 0x2d

    const-string v9, "?"

    const/4 v10, 0x7

    const/16 v11, 0xc

    const-string v12, "%2d"

    const-string v13, "%d"

    const-string v14, "%02d"

    packed-switch v6, :pswitch_data_3a2

    .line 462
    :pswitch_31
    return v7

    .line 438
    :pswitch_32
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v1

    if-gez v1, :cond_39

    .line 439
    return v4

    .line 441
    :cond_39
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getGmtOffset()I

    move-result v1

    .line 443
    if-gez v1, :cond_42

    .line 444
    nop

    .line 445
    neg-int v1, v1

    goto :goto_44

    .line 447
    :cond_42
    const/16 v8, 0x2b

    .line 449
    :goto_44
    iget-object v2, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    div-int/lit8 v1, v1, 0x3c

    .line 451
    div-int/lit8 v2, v1, 0x3c

    mul-int/lit8 v2, v2, 0x64

    rem-int/lit8 v1, v1, 0x3c

    add-int/2addr v2, v1

    .line 452
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v1, "%4d"

    const-string v3, "%04d"

    invoke-static {v5, v3, v1, v13, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 453
    return v4

    .line 424
    :pswitch_68
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v1

    invoke-direct {v0, v1, v4, v7, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 425
    return v4

    .line 421
    :pswitch_70
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 422
    return v4

    .line 415
    :pswitch_76
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 416
    return v4

    .line 406
    :pswitch_88
    const-string v1, "%e-%b-%Y"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 407
    return v4

    .line 363
    :pswitch_8e
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    if-nez v1, :cond_95

    goto :goto_99

    :cond_95
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v10

    .line 364
    :goto_99
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 365
    return v4

    .line 355
    :pswitch_a7
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    return v4

    .line 348
    :pswitch_af
    invoke-virtual/range {p2 .. p3}, Lcom/android/i18n/timezone/WallTime;->mktime(Lcom/android/i18n/timezone/ZoneInfoData;)I

    move-result v1

    .line 349
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    return v4

    .line 341
    :pswitch_bd
    const-string v1, "%I:%M:%S %p"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 342
    return v4

    .line 328
    :pswitch_c3
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    if-lt v1, v11, :cond_d2

    .line 329
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    goto :goto_da

    .line 330
    :cond_d2
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    .line 328
    :goto_da
    invoke-direct {v0, v1, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 331
    return v4

    .line 325
    :pswitch_de
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    return v4

    .line 321
    :pswitch_e6
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v14, v12, v13, v14}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v2

    add-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 321
    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 323
    return v4

    .line 313
    :pswitch_fd
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    rem-int/2addr v1, v11

    if-eqz v1, :cond_10a

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    rem-int/lit8 v11, v1, 0xc

    .line 314
    :cond_10a
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v12, v12, v13, v14}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 315
    return v4

    .line 309
    :pswitch_11c
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v12, v12, v13, v14}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 309
    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 311
    return v4

    .line 304
    :pswitch_132
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v1

    add-int/2addr v1, v7

    .line 305
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v2, "%3d"

    const-string v3, "%03d"

    invoke-static {v5, v3, v2, v13, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 305
    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 307
    return v4

    .line 289
    :pswitch_14d
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v12, v12, v13, v14}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 289
    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 291
    return v4

    .line 274
    :pswitch_163
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v14, v12, v13, v14}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 274
    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 276
    return v4

    .line 268
    :pswitch_179
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 269
    return v4

    .line 258
    :pswitch_17f
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-ltz v1, :cond_199

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-lt v1, v11, :cond_18c

    goto :goto_199

    .line 261
    :cond_18c
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 260
    invoke-virtual {v1, v4, v4}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v2

    aget-object v9, v1, v2

    goto :goto_19a

    .line 259
    :cond_199
    :goto_199
    nop

    .line 258
    :goto_19a
    invoke-direct {v0, v9, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 263
    return v4

    .line 232
    :pswitch_19e
    nop

    .line 233
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    if-ltz v1, :cond_1ba

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    if-lt v1, v10, :cond_1ac

    goto :goto_1ba

    .line 236
    :cond_1ac
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 235
    invoke-virtual {v1, v4, v4}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v2

    add-int/2addr v2, v7

    aget-object v9, v1, v2

    goto :goto_1bb

    .line 234
    :cond_1ba
    :goto_1ba
    nop

    .line 232
    :goto_1bb
    invoke-direct {v0, v9, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 238
    return v4

    .line 430
    :pswitch_1bf
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v1

    if-gez v1, :cond_1c6

    .line 431
    return v4

    .line 433
    :cond_1c6
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v1

    if-eqz v1, :cond_1cd

    goto :goto_1ce

    :cond_1cd
    move v7, v4

    .line 434
    :goto_1ce
    invoke-virtual {v3}, Lcom/android/i18n/timezone/ZoneInfoData;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 435
    invoke-virtual {v1, v7, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-direct {v0, v1, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 436
    return v4

    .line 427
    :pswitch_1de
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v1

    invoke-direct {v0, v1, v7, v7, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 428
    return v4

    .line 418
    :pswitch_1e6
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 419
    return v4

    .line 409
    :pswitch_1ec
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v1

    add-int/2addr v1, v10

    .line 410
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v3

    if-eqz v3, :cond_1fd

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v2

    sub-int/2addr v2, v7

    goto :goto_1fe

    .line 411
    :cond_1fd
    const/4 v2, 0x6

    :goto_1fe
    sub-int/2addr v1, v2

    div-int/2addr v1, v10

    .line 412
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v14, v12, v13, v14}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 413
    return v4

    .line 358
    :pswitch_212
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v14, v12, v13, v14}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v2

    sub-int/2addr v3, v2

    div-int/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 358
    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 361
    return v4

    .line 352
    :pswitch_22f
    const-string v1, "%H:%M:%S"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 353
    return v4

    .line 344
    :pswitch_235
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v14, v12, v13, v14}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 344
    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 346
    return v4

    .line 338
    :pswitch_24b
    const-string v1, "%H:%M"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 339
    return v4

    .line 333
    :pswitch_251
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    if-lt v1, v11, :cond_260

    .line 334
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    goto :goto_268

    .line 335
    :cond_260
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    :goto_268
    nop

    .line 333
    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 336
    return v4

    .line 317
    :pswitch_26e
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v14, v12, v13, v14}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 317
    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 319
    return v4

    .line 300
    :pswitch_284
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    rem-int/2addr v1, v11

    if-eqz v1, :cond_291

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    rem-int/lit8 v11, v1, 0xc

    .line 301
    :cond_291
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v14, v12, v13, v14}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 302
    return v4

    .line 296
    :pswitch_2a3
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v14, v12, v13, v14}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 296
    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 298
    return v4

    .line 370
    :pswitch_2b9
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v1

    .line 371
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v3

    .line 372
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v8

    .line 375
    :goto_2c5
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v2

    if-eqz v2, :cond_2ce

    const/16 v2, 0x16e

    goto :goto_2d0

    :cond_2ce
    const/16 v2, 0x16d

    .line 377
    :goto_2d0
    add-int/lit8 v15, v3, 0xb

    sub-int/2addr v15, v8

    rem-int/2addr v15, v10

    add-int/lit8 v15, v15, -0x3

    .line 379
    rem-int/lit8 v16, v2, 0x7

    sub-int v9, v15, v16

    .line 380
    const/4 v11, -0x3

    if-ge v9, v11, :cond_2df

    .line 381
    add-int/lit8 v9, v9, 0x7

    .line 383
    :cond_2df
    add-int/2addr v9, v2

    .line 384
    if-lt v3, v9, :cond_2e7

    .line 385
    add-int/lit8 v1, v1, 0x1

    .line 386
    nop

    .line 387
    move v3, v7

    goto :goto_2ed

    .line 389
    :cond_2e7
    if-lt v3, v15, :cond_30f

    .line 390
    sub-int/2addr v3, v15

    div-int/2addr v3, v10

    add-int/2addr v3, v7

    .line 391
    nop

    .line 396
    :goto_2ed
    const/16 v2, 0x56

    if-ne v6, v2, :cond_303

    .line 397
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v14, v12, v13, v14}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_30e

    .line 398
    :cond_303
    const/16 v2, 0x67

    if-ne v6, v2, :cond_30b

    .line 399
    invoke-direct {v0, v1, v4, v7, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_30e

    .line 401
    :cond_30b
    invoke-direct {v0, v1, v7, v7, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 403
    :goto_30e
    return v4

    .line 393
    :cond_30f
    add-int/lit8 v1, v1, -0x1

    .line 394
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v2

    if-eqz v2, :cond_31a

    const/16 v9, 0x16e

    goto :goto_31c

    :cond_31a
    const/16 v9, 0x16d

    :goto_31c
    add-int/2addr v3, v9

    .line 395
    goto :goto_2c5

    .line 293
    :pswitch_31e
    const-string v1, "%Y-%m-%d"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 294
    return v4

    .line 280
    :pswitch_324
    goto/16 :goto_a

    .line 271
    :pswitch_326
    const-string v1, "%m/%d/%y"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 272
    return v4

    .line 265
    :pswitch_32c
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v1

    invoke-direct {v0, v1, v7, v4, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 266
    return v4

    .line 240
    :pswitch_334
    if-ne v5, v8, :cond_356

    .line 241
    nop

    .line 242
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-ltz v1, :cond_351

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-lt v1, v11, :cond_344

    goto :goto_351

    .line 245
    :cond_344
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 244
    invoke-virtual {v1, v7, v7}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v2

    aget-object v9, v1, v2

    goto :goto_352

    .line 243
    :cond_351
    :goto_351
    nop

    .line 241
    :goto_352
    invoke-direct {v0, v9, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    goto :goto_375

    .line 248
    :cond_356
    nop

    .line 249
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-ltz v1, :cond_371

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-lt v1, v11, :cond_364

    goto :goto_371

    .line 252
    :cond_364
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 251
    invoke-virtual {v1, v4, v7}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v2

    aget-object v9, v1, v2

    goto :goto_372

    .line 250
    :cond_371
    :goto_371
    nop

    .line 248
    :goto_372
    invoke-direct {v0, v9, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 255
    :goto_375
    return v4

    .line 224
    :pswitch_376
    nop

    .line 225
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    if-ltz v1, :cond_392

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    if-lt v1, v10, :cond_384

    goto :goto_392

    .line 228
    :cond_384
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 227
    invoke-virtual {v1, v4, v7}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v2

    add-int/2addr v2, v7

    aget-object v9, v1, v2

    goto :goto_393

    .line 226
    :cond_392
    :goto_392
    nop

    .line 224
    :goto_393
    invoke-direct {v0, v9, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 230
    return v4

    .line 456
    :pswitch_397
    const-string v1, "%a %b %e %H:%M:%S %Z %Y"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 457
    return v4

    .line 286
    :pswitch_39d
    nop

    .line 287
    move v5, v6

    goto/16 :goto_a

    .line 465
    :cond_3a1
    return v7

    :pswitch_data_3a2
    .packed-switch 0x23
        :pswitch_39d
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_397
        :pswitch_31
        :pswitch_39d
        :pswitch_31
        :pswitch_31
        :pswitch_39d
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_376
        :pswitch_334
        :pswitch_32c
        :pswitch_326
        :pswitch_324
        :pswitch_31e
        :pswitch_2b9
        :pswitch_2a3
        :pswitch_284
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_26e
        :pswitch_31
        :pswitch_324
        :pswitch_251
        :pswitch_31
        :pswitch_24b
        :pswitch_235
        :pswitch_22f
        :pswitch_212
        :pswitch_2b9
        :pswitch_1ec
        :pswitch_1e6
        :pswitch_1de
        :pswitch_1bf
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_39d
        :pswitch_39d
        :pswitch_31
        :pswitch_19e
        :pswitch_17f
        :pswitch_179
        :pswitch_163
        :pswitch_14d
        :pswitch_31
        :pswitch_2b9
        :pswitch_17f
        :pswitch_31
        :pswitch_132
        :pswitch_11c
        :pswitch_fd
        :pswitch_e6
        :pswitch_de
        :pswitch_31
        :pswitch_c3
        :pswitch_31
        :pswitch_bd
        :pswitch_af
        :pswitch_a7
        :pswitch_8e
        :pswitch_88
        :pswitch_76
        :pswitch_70
        :pswitch_68
        :pswitch_32
    .end packed-switch
.end method

.method private static blacklist isLeap(I)Z
    .registers 2

    .line 538
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_e

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_c

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private blacklist localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 176
    iget-object v0, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_b

    .line 177
    return-object p1

    .line 180
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 181
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    sub-int/2addr v2, v1

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 183
    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v0, :cond_30

    .line 184
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 185
    if-lt v5, v1, :cond_2a

    const/16 v6, 0x39

    if-gt v5, v6, :cond_2a

    .line 186
    add-int/2addr v5, v2

    int-to-char v5, v5

    .line 188
    :cond_2a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 190
    :cond_30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist modifyAndAppend(Ljava/lang/CharSequence;I)V
    .registers 5

    .line 469
    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_64

    .line 492
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 476
    :sswitch_a
    nop

    :goto_b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v0, p2, :cond_21

    .line 477
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 479
    :cond_21
    goto :goto_63

    .line 481
    :sswitch_22
    nop

    :goto_23
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v0, p2, :cond_4a

    .line 482
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 483
    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenIsUpper(C)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 484
    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result p2

    goto :goto_42

    .line 485
    :cond_38
    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenIsLower(C)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 486
    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result p2

    .line 488
    :cond_42
    :goto_42
    iget-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 490
    :cond_4a
    goto :goto_63

    .line 471
    :sswitch_4b
    nop

    :goto_4c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v0, p2, :cond_62

    .line 472
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 474
    :cond_62
    nop

    .line 494
    :goto_63
    return-void

    :sswitch_data_64
    .sparse-switch
        -0x1 -> :sswitch_4b
        0x23 -> :sswitch_22
        0x5e -> :sswitch_a
    .end sparse-switch
.end method

.method private blacklist outputYear(IZZI)V
    .registers 10

    .line 501
    rem-int/lit8 v0, p1, 0x64

    .line 502
    div-int/lit8 p1, p1, 0x64

    div-int/lit8 v1, v0, 0x64

    add-int/2addr p1, v1

    .line 503
    rem-int/lit8 v0, v0, 0x64

    .line 504
    if-gez v0, :cond_12

    if-lez p1, :cond_12

    .line 505
    add-int/lit8 v0, v0, 0x64

    .line 506
    add-int/lit8 p1, p1, -0x1

    goto :goto_1a

    .line 507
    :cond_12
    if-gez p1, :cond_1a

    if-lez v0, :cond_1a

    .line 508
    add-int/lit8 v0, v0, -0x64

    .line 509
    add-int/lit8 p1, p1, 0x1

    .line 511
    :cond_1a
    :goto_1a
    const-string v1, "%d"

    const-string v2, "%2d"

    const-string v3, "%02d"

    if-eqz p2, :cond_3f

    .line 512
    if-nez p1, :cond_2e

    if-gez v0, :cond_2e

    .line 513
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const-string p2, "-0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 515
    :cond_2e
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {p4, v3, v2, v1, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 518
    :cond_3f
    :goto_3f
    if-eqz p3, :cond_55

    .line 519
    if-gez v0, :cond_44

    neg-int v0, v0

    .line 520
    :cond_44
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {p4, v3, v2, v1, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 522
    :cond_55
    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Ljava/lang/String;
    .registers 8

    .line 157
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    iput-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 162
    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-direct {p0, p1}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_21

    .line 170
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 171
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 168
    return-object p1

    .line 170
    :catchall_21
    move-exception p1

    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 171
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 172
    throw p1
.end method

.method blacklist formatMillisWithFixedFormat(J)Ljava/lang/String;
    .registers 5

    .line 113
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 116
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x13

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const/16 v0, 0x2d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v1

    invoke-static {p2, v1}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 130
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 132
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 134
    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v1

    invoke-static {p2, v1}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 136
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result p1

    invoke-static {p2, p1}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 139
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-direct {p0, p1}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
