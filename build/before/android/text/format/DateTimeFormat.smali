.class Landroid/text/format/DateTimeFormat;
.super Ljava/lang/Object;
.source "DateTimeFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/DateTimeFormat$FormatterCache;
    }
.end annotation


# static fields
.field private static final blacklist CACHED_FORMATTERS:Landroid/text/format/DateTimeFormat$FormatterCache;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroid/text/format/DateTimeFormat$FormatterCache;

    invoke-direct {v0}, Landroid/text/format/DateTimeFormat$FormatterCache;-><init>()V

    sput-object v0, Landroid/text/format/DateTimeFormat;->CACHED_FORMATTERS:Landroid/text/format/DateTimeFormat$FormatterCache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static blacklist format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .registers 8

    .line 47
    invoke-static {p1, p2}, Landroid/text/format/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;I)Ljava/lang/String;

    move-result-object p2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    sget-object v1, Landroid/text/format/DateTimeFormat;->CACHED_FORMATTERS:Landroid/text/format/DateTimeFormat$FormatterCache;

    monitor-enter v1

    .line 50
    :try_start_2c
    sget-object v2, Landroid/text/format/DateTimeFormat;->CACHED_FORMATTERS:Landroid/text/format/DateTimeFormat$FormatterCache;

    invoke-virtual {v2, v0}, Landroid/text/format/DateTimeFormat$FormatterCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DateFormat;

    .line 51
    if-nez v2, :cond_49

    .line 52
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v2

    .line 54
    new-instance v3, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v2, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2, p0}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 55
    sget-object p0, Landroid/text/format/DateTimeFormat;->CACHED_FORMATTERS:Landroid/text/format/DateTimeFormat$FormatterCache;

    invoke-virtual {p0, v0, v3}, Landroid/text/format/DateTimeFormat$FormatterCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 57
    :cond_49
    invoke-virtual {v2, p3}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 58
    invoke-virtual {v2, p1}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 59
    :catchall_52
    move-exception p0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_2c .. :try_end_54} :catchall_52

    throw p0
.end method
