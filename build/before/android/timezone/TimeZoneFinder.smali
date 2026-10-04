.class public final Landroid/timezone/TimeZoneFinder;
.super Ljava/lang/Object;
.source "TimeZoneFinder.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static blacklist sInstance:Landroid/timezone/TimeZoneFinder;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/TimeZoneFinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/timezone/TimeZoneFinder;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/i18n/timezone/TimeZoneFinder;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/i18n/timezone/TimeZoneFinder;

    iput-object p1, p0, Landroid/timezone/TimeZoneFinder;->mDelegate:Lcom/android/i18n/timezone/TimeZoneFinder;

    .line 63
    return-void
.end method

.method public static blacklist getInstance()Landroid/timezone/TimeZoneFinder;
    .registers 3

    .line 49
    sget-object v0, Landroid/timezone/TimeZoneFinder;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_3
    sget-object v1, Landroid/timezone/TimeZoneFinder;->sInstance:Landroid/timezone/TimeZoneFinder;

    if-nez v1, :cond_12

    .line 51
    new-instance v1, Landroid/timezone/TimeZoneFinder;

    .line 52
    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/timezone/TimeZoneFinder;-><init>(Lcom/android/i18n/timezone/TimeZoneFinder;)V

    sput-object v1, Landroid/timezone/TimeZoneFinder;->sInstance:Landroid/timezone/TimeZoneFinder;

    .line 54
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    .line 55
    sget-object v0, Landroid/timezone/TimeZoneFinder;->sInstance:Landroid/timezone/TimeZoneFinder;

    return-object v0

    .line 54
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public blacklist getIanaVersion()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/timezone/TimeZoneFinder;->mDelegate:Lcom/android/i18n/timezone/TimeZoneFinder;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/TimeZoneFinder;->getIanaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist lookupCountryTimeZones(Ljava/lang/String;)Landroid/timezone/CountryTimeZones;
    .registers 3

    .line 81
    iget-object v0, p0, Landroid/timezone/TimeZoneFinder;->mDelegate:Lcom/android/i18n/timezone/TimeZoneFinder;

    .line 82
    invoke-virtual {v0, p1}, Lcom/android/i18n/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object p1

    .line 83
    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_10

    :cond_a
    new-instance v0, Landroid/timezone/CountryTimeZones;

    invoke-direct {v0, p1}, Landroid/timezone/CountryTimeZones;-><init>(Lcom/android/i18n/timezone/CountryTimeZones;)V

    move-object p1, v0

    :goto_10
    return-object p1
.end method
