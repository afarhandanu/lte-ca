.class public final Landroid/timezone/TelephonyNetworkFinder;
.super Ljava/lang/Object;
.source "TelephonyNetworkFinder.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static blacklist sInstance:Landroid/timezone/TelephonyNetworkFinder;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/timezone/TelephonyNetworkFinder;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/i18n/timezone/TelephonyNetworkFinder;)V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    iput-object p1, p0, Landroid/timezone/TelephonyNetworkFinder;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    .line 68
    return-void
.end method

.method public static blacklist getInstance()Landroid/timezone/TelephonyNetworkFinder;
    .registers 3

    .line 52
    sget-object v0, Landroid/timezone/TelephonyNetworkFinder;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Landroid/timezone/TelephonyNetworkFinder;->sInstance:Landroid/timezone/TelephonyNetworkFinder;

    if-nez v1, :cond_16

    .line 54
    new-instance v1, Landroid/timezone/TelephonyNetworkFinder;

    .line 56
    invoke-static {}, Lcom/android/i18n/timezone/TelephonyLookup;->getInstance()Lcom/android/i18n/timezone/TelephonyLookup;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/android/i18n/timezone/TelephonyLookup;->getTelephonyNetworkFinder()Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/timezone/TelephonyNetworkFinder;-><init>(Lcom/android/i18n/timezone/TelephonyNetworkFinder;)V

    sput-object v1, Landroid/timezone/TelephonyNetworkFinder;->sInstance:Landroid/timezone/TelephonyNetworkFinder;

    .line 59
    :cond_16
    sget-object v1, Landroid/timezone/TelephonyNetworkFinder;->sInstance:Landroid/timezone/TelephonyNetworkFinder;

    monitor-exit v0

    return-object v1

    .line 60
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method


# virtual methods
.method public blacklist findCountriesByMcc(Ljava/lang/String;)Landroid/timezone/MobileCountries;
    .registers 3

    .line 91
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Landroid/timezone/TelephonyNetworkFinder;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    .line 94
    invoke-virtual {v0, p1}, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->findCountriesByMcc(Ljava/lang/String;)Lcom/android/i18n/timezone/MobileCountries;

    move-result-object p1

    .line 95
    if-eqz p1, :cond_11

    new-instance v0, Landroid/timezone/MobileCountries;

    invoke-direct {v0, p1}, Landroid/timezone/MobileCountries;-><init>(Lcom/android/i18n/timezone/MobileCountries;)V

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public blacklist findCountriesByMccMnc(Ljava/lang/String;Ljava/lang/String;)Landroid/timezone/MobileCountries;
    .registers 4

    .line 77
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Landroid/timezone/TelephonyNetworkFinder;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    .line 81
    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->findCountriesByMccMnc(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/MobileCountries;

    move-result-object p1

    .line 82
    if-eqz p1, :cond_14

    .line 83
    new-instance p2, Landroid/timezone/MobileCountries;

    invoke-direct {p2, p1}, Landroid/timezone/MobileCountries;-><init>(Lcom/android/i18n/timezone/MobileCountries;)V

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    .line 82
    :goto_15
    return-object p2
.end method
