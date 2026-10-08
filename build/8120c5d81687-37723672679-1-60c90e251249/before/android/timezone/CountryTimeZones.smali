.class public final Landroid/timezone/CountryTimeZones;
.super Ljava/lang/Object;
.source "CountryTimeZones.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/timezone/CountryTimeZones$OffsetResult;,
        Landroid/timezone/CountryTimeZones$TimeZoneMapping;
    }
.end annotation


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/timezone/CountryTimeZones;)V
    .registers 2

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    .line 179
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 299
    if-ne p0, p1, :cond_4

    .line 300
    const/4 p1, 0x1

    return p1

    .line 302
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 305
    :cond_11
    check-cast p1, Landroid/timezone/CountryTimeZones;

    .line 306
    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    iget-object p1, p1, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 303
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getCountryIso()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultTimeZone()Landroid/icu/util/TimeZone;
    .registers 2

    .line 202
    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones;->getDefaultTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultTimeZoneId()Ljava/lang/String;
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones;->getDefaultTimeZoneId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEffectiveTimeZoneMappingsAt(J)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/timezone/CountryTimeZones$TimeZoneMapping;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    .line 287
    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/timezone/CountryTimeZones;->getEffectiveTimeZoneMappingsAt(J)Ljava/util/List;

    move-result-object p1

    .line 289
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 292
    new-instance v1, Landroid/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-direct {v1, v0}, Landroid/timezone/CountryTimeZones$TimeZoneMapping;-><init>(Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    goto :goto_13

    .line 294
    :cond_28
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist hasUtcZone(J)Z
    .registers 4

    .line 227
    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/timezone/CountryTimeZones;->hasUtcZone(J)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 311
    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isDefaultTimeZoneBoosted()Z
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones;->isDefaultTimeZoneBoosted()Z

    move-result v0

    return v0
.end method

.method public blacklist lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;I)Landroid/timezone/CountryTimeZones$OffsetResult;
    .registers 6

    .line 270
    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    .line 271
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/i18n/timezone/CountryTimeZones;->lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;I)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;

    move-result-object p1

    .line 272
    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_1e

    .line 273
    :cond_a
    new-instance p2, Landroid/timezone/CountryTimeZones$OffsetResult;

    invoke-virtual {p1}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p3

    iget-object p4, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {p4}, Lcom/android/i18n/timezone/CountryTimeZones;->getCountryIso()Ljava/lang/String;

    move-result-object p4

    .line 274
    invoke-virtual {p1}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch()Z

    move-result p1

    invoke-direct {p2, p3, p4, p1}, Landroid/timezone/CountryTimeZones$OffsetResult;-><init>(Landroid/icu/util/TimeZone;Ljava/lang/String;Z)V

    move-object p1, p2

    .line 272
    :goto_1e
    return-object p1
.end method

.method public blacklist lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;IZ)Landroid/timezone/CountryTimeZones$OffsetResult;
    .registers 12

    .line 247
    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    .line 248
    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/timezone/CountryTimeZones;->lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;IZ)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;

    move-result-object p1

    .line 250
    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_22

    .line 251
    :cond_e
    new-instance p2, Landroid/timezone/CountryTimeZones$OffsetResult;

    invoke-virtual {p1}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p3

    iget-object p4, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {p4}, Lcom/android/i18n/timezone/CountryTimeZones;->getCountryIso()Ljava/lang/String;

    move-result-object p4

    .line 252
    invoke-virtual {p1}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch()Z

    move-result p1

    invoke-direct {p2, p3, p4, p1}, Landroid/timezone/CountryTimeZones$OffsetResult;-><init>(Landroid/icu/util/TimeZone;Ljava/lang/String;Z)V

    move-object p1, p2

    .line 250
    :goto_22
    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 316
    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
