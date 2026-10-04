.class public final Landroid/text/format/RelativeDateTimeFormatter;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;
    }
.end annotation


# static fields
.field private static final blacklist CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

.field public static final blacklist DAY_IN_MILLIS:J = 0x5265c00L

.field private static final blacklist DAY_IN_MS:I = 0x5265c00

.field private static final blacklist EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final blacklist HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final blacklist MINUTE_IN_MILLIS:J = 0xea60L

.field public static final blacklist SECOND_IN_MILLIS:J = 0x3e8L

.field public static final blacklist WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final blacklist YEAR_IN_MILLIS:J = 0x7528ad000L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    invoke-direct {v0}, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;-><init>()V

    sput-object v0, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method private static blacklist dayDistance(Landroid/icu/util/TimeZone;JJ)I
    .registers 5

    .line 353
    invoke-static {p0, p3, p4}, Landroid/text/format/RelativeDateTimeFormatter;->julianDay(Landroid/icu/util/TimeZone;J)I

    move-result p3

    invoke-static {p0, p1, p2}, Landroid/text/format/RelativeDateTimeFormatter;->julianDay(Landroid/icu/util/TimeZone;J)I

    move-result p0

    sub-int/2addr p3, p0

    return p3
.end method

.method private static blacklist getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;
    .registers 5

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    sget-object v1, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    invoke-virtual {v1, v0}, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RelativeDateTimeFormatter;

    .line 342
    if-nez v1, :cond_33

    .line 343
    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v1

    .line 345
    sget-object p0, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    invoke-virtual {p0, v0, v1}, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_33
    return-object v1
.end method

.method public static blacklist getRelativeDateTimeString(Ljava/util/Locale;Ljava/util/TimeZone;JJJJI)Ljava/lang/String;
    .registers 25

    .line 264
    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    if-eqz p0, :cond_8e

    .line 267
    if-eqz p1, :cond_85

    .line 270
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 271
    invoke-static {p1}, Landroid/text/format/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 273
    sub-long v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 275
    const-wide/32 v8, 0x240c8400

    cmp-long p0, p8, v8

    if-lez p0, :cond_1e

    .line 276
    goto :goto_20

    .line 275
    :cond_1e
    move-wide/from16 v8, p8

    .line 279
    :goto_20
    const/high16 p0, 0xc0000

    and-int p0, p10, p0

    if-eqz p0, :cond_29

    .line 280
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    goto :goto_2b

    .line 282
    :cond_29
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 285
    :goto_2b
    invoke-static {v1, v0, v2, v3}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v10

    .line 286
    invoke-static {v1, v0, v4, v5}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v11

    .line 288
    invoke-static {v10, v11}, Landroid/text/format/DateUtilsBridge;->dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 292
    cmp-long v6, v6, v8

    const/4 v13, 0x1

    if-gez v6, :cond_55

    .line 296
    if-lez v12, :cond_4a

    const-wide/32 v6, 0x5265c00

    cmp-long v8, p6, v6

    if-gez v8, :cond_4a

    .line 297
    goto :goto_4c

    .line 299
    :cond_4a
    move-wide/from16 v6, p6

    :goto_4c
    sget-object v9, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    move/from16 v8, p10

    invoke-static/range {v0 .. v9}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6c

    .line 304
    :cond_55
    invoke-virtual {v10, v13}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v11, v13}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_63

    .line 306
    const v1, 0x20014

    goto :goto_66

    .line 309
    :cond_63
    const v1, 0x10018

    .line 312
    :goto_66
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    invoke-static {v0, v10, v1, v2}, Landroid/text/format/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v1

    .line 316
    :goto_6c
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-static {v0, v10, v13, v2}, Landroid/text/format/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v2

    .line 322
    sget-object v3, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    .line 325
    sget-object v4, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v4

    .line 326
    :try_start_77
    invoke-static {v0, p0, v3}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    .line 327
    invoke-virtual {p0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->combineDateAndTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v4

    .line 326
    return-object p0

    .line 328
    :catchall_81
    move-exception v0

    move-object p0, v0

    monitor-exit v4
    :try_end_84
    .catchall {:try_start_77 .. :try_end_84} :catchall_81

    throw p0

    .line 268
    :cond_85
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "tz == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    :cond_8e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "locale == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .registers 30

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p9

    sub-long v7, v4, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 125
    cmp-long v9, v4, v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ltz v9, :cond_18

    move v9, v11

    goto :goto_19

    :cond_18
    move v9, v10

    .line 128
    :goto_19
    const/high16 v12, 0xc0000

    and-int v12, p8, v12

    if-eqz v12, :cond_22

    .line 129
    sget-object v12, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    goto :goto_24

    .line 131
    :cond_22
    sget-object v12, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 135
    :goto_24
    if-eqz v9, :cond_29

    .line 136
    sget-object v13, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    goto :goto_2b

    .line 138
    :cond_29
    sget-object v13, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 144
    :goto_2b
    nop

    .line 147
    nop

    .line 149
    const-wide/32 v14, 0xea60

    cmp-long v16, v7, v14

    const/16 v17, 0x0

    if-gez v16, :cond_45

    cmp-long v16, p6, v14

    if-gez v16, :cond_45

    .line 150
    const-wide/16 v1, 0x3e8

    div-long/2addr v7, v1

    long-to-int v1, v7

    .line 151
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move v10, v11

    move-object/from16 v3, v17

    goto/16 :goto_d8

    .line 152
    :cond_45
    const-wide/32 v18, 0x36ee80

    cmp-long v16, v7, v18

    if-gez v16, :cond_59

    cmp-long v16, p6, v18

    if-gez v16, :cond_59

    .line 153
    div-long/2addr v7, v14

    long-to-int v1, v7

    .line 154
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move v10, v11

    move-object/from16 v3, v17

    goto/16 :goto_d8

    .line 155
    :cond_59
    const-wide/32 v14, 0x5265c00

    cmp-long v16, v7, v14

    if-gez v16, :cond_6e

    cmp-long v14, p6, v14

    if-gez v14, :cond_6e

    .line 159
    div-long v7, v7, v18

    long-to-int v1, v7

    .line 160
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move v10, v11

    move-object/from16 v3, v17

    goto/16 :goto_d8

    .line 161
    :cond_6e
    const-wide/32 v14, 0x240c8400

    cmp-long v16, v7, v14

    if-gez v16, :cond_cd

    cmp-long v16, p6, v14

    if-gez v16, :cond_cd

    .line 162
    invoke-static/range {p1 .. p5}, Landroid/text/format/RelativeDateTimeFormatter;->dayDistance(Landroid/icu/util/TimeZone;JJ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 163
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 165
    const/4 v3, 0x2

    if-ne v1, v3, :cond_b9

    .line 173
    if-eqz v9, :cond_9c

    .line 174
    sget-object v3, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v3

    .line 175
    :try_start_8b
    invoke-static {v0, v12, v6}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v4

    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v7, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v4, v5, v7}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v4

    .line 178
    monitor-exit v3

    goto :goto_ac

    :catchall_99
    move-exception v0

    monitor-exit v3
    :try_end_9b
    .catchall {:try_start_8b .. :try_end_9b} :catchall_99

    throw v0

    .line 180
    :cond_9c
    sget-object v3, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v3

    .line 181
    :try_start_9f
    invoke-static {v0, v12, v6}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v4

    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v7, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v4, v5, v7}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v4

    .line 184
    monitor-exit v3
    :try_end_ac
    .catchall {:try_start_9f .. :try_end_ac} :catchall_b6

    .line 186
    :goto_ac
    if-eqz v4, :cond_b5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b5

    .line 187
    return-object v4

    .line 190
    :cond_b5
    goto :goto_c9

    .line 184
    :catchall_b6
    move-exception v0

    :try_start_b7
    monitor-exit v3
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v0

    .line 190
    :cond_b9
    if-ne v1, v11, :cond_c0

    .line 192
    sget-object v17, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 193
    move-object/from16 v3, v17

    goto :goto_d8

    .line 194
    :cond_c0
    if-nez v1, :cond_c9

    .line 196
    sget-object v17, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 197
    sget-object v13, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 198
    move-object/from16 v3, v17

    goto :goto_d8

    .line 226
    :cond_c9
    :goto_c9
    move v10, v11

    move-object/from16 v3, v17

    goto :goto_d8

    .line 200
    :cond_cd
    cmp-long v9, p6, v14

    if-nez v9, :cond_f2

    .line 201
    div-long/2addr v7, v14

    long-to-int v1, v7

    .line 202
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move v10, v11

    move-object/from16 v3, v17

    .line 226
    :goto_d8
    sget-object v7, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v7

    .line 227
    nop

    .line 228
    :try_start_dc
    invoke-static {v0, v12, v6}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    .line 229
    if-eqz v10, :cond_e9

    .line 230
    int-to-double v3, v1

    invoke-virtual {v0, v3, v4, v13, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v7

    return-object v0

    .line 232
    :cond_e9
    invoke-virtual {v0, v13, v3}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v7

    return-object v0

    .line 234
    :catchall_ef
    move-exception v0

    monitor-exit v7
    :try_end_f1
    .catchall {:try_start_dc .. :try_end_f1} :catchall_ef

    throw v0

    .line 204
    :cond_f2
    invoke-static {v1, v0, v2, v3}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v2

    .line 213
    and-int/lit8 v3, p8, 0xc

    if-nez v3, :cond_10e

    .line 214
    invoke-static {v1, v0, v4, v5}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v1

    .line 217
    invoke-virtual {v2, v11}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v11}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v3, v1, :cond_10b

    .line 218
    or-int/lit8 v1, p8, 0x4

    goto :goto_110

    .line 220
    :cond_10b
    or-int/lit8 v1, p8, 0x8

    goto :goto_110

    .line 213
    :cond_10e
    move/from16 v1, p8

    .line 223
    :goto_110
    invoke-static {v0, v2, v1, v6}, Landroid/text/format/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJI)Ljava/lang/String;
    .registers 19

    .line 99
    sget-object v9, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .line 101
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .registers 10

    .line 107
    if-eqz p0, :cond_1a

    .line 110
    if-eqz p1, :cond_11

    .line 113
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    .line 114
    invoke-static {p1}, Landroid/text/format/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object p1

    .line 115
    invoke-static/range {p0 .. p9}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_11
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "tz == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "locale == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist julianDay(Landroid/icu/util/TimeZone;J)I
    .registers 5

    .line 357
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result p0

    int-to-long v0, p0

    add-long/2addr p1, v0

    .line 358
    const-wide/32 v0, 0x5265c00

    div-long/2addr p1, v0

    long-to-int p0, p1

    const p1, 0x253d8c    # 3.419992E-39f

    add-int/2addr p0, p1

    return p0
.end method
