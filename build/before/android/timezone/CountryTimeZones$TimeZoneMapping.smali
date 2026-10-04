.class public final Landroid/timezone/CountryTimeZones$TimeZoneMapping;
.super Ljava/lang/Object;
.source "CountryTimeZones.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/timezone/CountryTimeZones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeZoneMapping"
.end annotation


# instance fields
.field private blacklist mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    iput-object p1, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 82
    if-ne p0, p1, :cond_4

    .line 83
    const/4 p1, 0x1

    return p1

    .line 85
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 88
    :cond_11
    check-cast p1, Landroid/timezone/CountryTimeZones$TimeZoneMapping;

    .line 89
    iget-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    iget-object p1, p1, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 86
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getTimeZone()Landroid/icu/util/TimeZone;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimeZoneId()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
