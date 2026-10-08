.class public final Landroid/text/format/DateIntervalFormat;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"


# static fields
.field private static final blacklist CACHED_FORMATTERS:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/text/format/DateIntervalFormat;->CACHED_FORMATTERS:Landroid/util/LruCache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static blacklist formatDateRange(JJILjava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 54
    and-int/lit16 v0, p4, 0x2000

    if-eqz v0, :cond_6

    .line 55
    const-string p5, "UTC"

    .line 59
    :cond_6
    if-eqz p5, :cond_d

    invoke-static {p5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p5

    goto :goto_11

    :cond_d
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p5

    .line 60
    :goto_11
    invoke-static {p5}, Landroid/text/format/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 61
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 62
    move-wide v2, p0

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateIntervalFormat;->formatDateRange(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist formatDateRange(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJI)Ljava/lang/String;
    .registers 10

    .line 72
    invoke-static {p1, p0, p2, p3}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 74
    cmp-long p2, p2, p4

    if-nez p2, :cond_a

    .line 75
    move-object p3, v0

    goto :goto_e

    .line 77
    :cond_a
    invoke-static {p1, p0, p4, p5}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object p3

    .line 89
    :goto_e
    invoke-static {p3}, Landroid/text/format/DateIntervalFormat;->isExactlyMidnight(Landroid/icu/util/Calendar;)Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_36

    .line 90
    and-int/lit8 p4, p6, 0x1

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1c

    move p4, v1

    goto :goto_1d

    :cond_1c
    move p4, p5

    .line 91
    :goto_1d
    invoke-static {v0, p3}, Landroid/text/format/DateUtilsBridge;->dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v2

    if-ne v2, v1, :cond_24

    goto :goto_25

    :cond_24
    move v1, p5

    .line 93
    :goto_25
    if-nez p4, :cond_29

    if-nez p2, :cond_31

    :cond_29
    if-eqz v1, :cond_36

    .line 95
    invoke-static {v0}, Landroid/text/format/DateUtilsBridge;->isDisplayMidnightUsingSkeleton(Landroid/icu/util/Calendar;)Z

    move-result p2

    if-nez p2, :cond_36

    .line 96
    :cond_31
    const/4 p2, 0x5

    const/4 p4, -0x1

    invoke-virtual {p3, p2, p4}, Landroid/icu/util/Calendar;->add(II)V

    .line 100
    :cond_36
    invoke-static {v0, p3, p6}, Landroid/text/format/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;

    move-result-object p2

    .line 101
    sget-object p4, Landroid/text/format/DateIntervalFormat;->CACHED_FORMATTERS:Landroid/util/LruCache;

    monitor-enter p4

    .line 102
    nop

    .line 103
    :try_start_3e
    invoke-static {p2, p0, p1}, Landroid/text/format/DateIntervalFormat;->getFormatter(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;)Landroid/icu/text/DateIntervalFormat;

    move-result-object p0

    .line 104
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance p2, Ljava/text/FieldPosition;

    invoke-direct {p2, p5}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, v0, p3, p1, p2}, Landroid/icu/text/DateIntervalFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit p4

    .line 104
    return-object p0

    .line 106
    :catchall_56
    move-exception p0

    monitor-exit p4
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_56

    throw p0
.end method

.method private static blacklist getFormatter(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;)Landroid/icu/text/DateIntervalFormat;
    .registers 5

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 112
    sget-object v1, Landroid/text/format/DateIntervalFormat;->CACHED_FORMATTERS:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateIntervalFormat;

    .line 113
    if-eqz v1, :cond_2a

    .line 114
    return-object v1

    .line 116
    :cond_2a
    invoke-static {p0, p1}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;

    move-result-object p0

    .line 117
    invoke-virtual {p0, p2}, Landroid/icu/text/DateIntervalFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 118
    sget-object p1, Landroid/text/format/DateIntervalFormat;->CACHED_FORMATTERS:Landroid/util/LruCache;

    invoke-virtual {p1, v0, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-object p0
.end method

.method private static blacklist isExactlyMidnight(Landroid/icu/util/Calendar;)Z
    .registers 2

    .line 123
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_22

    .line 124
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_22

    .line 125
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_22

    .line 126
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    .line 123
    :goto_23
    return p0
.end method

.method public static blacklist isLibcoreVFlagEnabled()Z
    .registers 1

    .line 136
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;->vApis()Z

    move-result v0

    return v0
.end method
