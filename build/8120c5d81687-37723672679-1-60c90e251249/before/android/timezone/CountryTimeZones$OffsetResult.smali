.class public final Landroid/timezone/CountryTimeZones$OffsetResult;
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
    name = "OffsetResult"
.end annotation


# instance fields
.field private final blacklist mCountryIsoCode:Ljava/lang/String;

.field private final blacklist mIsOnlyMatch:Z

.field private final blacklist mTimeZone:Landroid/icu/util/TimeZone;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/util/TimeZone;Ljava/lang/String;Z)V
    .registers 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/util/TimeZone;

    iput-object p1, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mTimeZone:Landroid/icu/util/TimeZone;

    .line 120
    iput-object p2, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mCountryIsoCode:Ljava/lang/String;

    .line 121
    iput-boolean p3, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mIsOnlyMatch:Z

    .line 122
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 147
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 148
    return v0

    .line 150
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_39

    .line 153
    :cond_12
    check-cast p1, Landroid/timezone/CountryTimeZones$OffsetResult;

    .line 154
    iget-boolean v2, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mIsOnlyMatch:Z

    iget-boolean v3, p1, Landroid/timezone/CountryTimeZones$OffsetResult;->mIsOnlyMatch:Z

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mTimeZone:Landroid/icu/util/TimeZone;

    .line 155
    invoke-virtual {v2}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/timezone/CountryTimeZones$OffsetResult;->mTimeZone:Landroid/icu/util/TimeZone;

    invoke-virtual {v3}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mCountryIsoCode:Ljava/lang/String;

    iget-object p1, p1, Landroid/timezone/CountryTimeZones$OffsetResult;->mCountryIsoCode:Ljava/lang/String;

    .line 156
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    move v0, v1

    .line 154
    :goto_38
    return v0

    .line 151
    :cond_39
    :goto_39
    return v1
.end method

.method public blacklist getCountryIsoCode()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mCountryIsoCode:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTimeZone()Landroid/icu/util/TimeZone;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mTimeZone:Landroid/icu/util/TimeZone;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 161
    iget-object v0, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mTimeZone:Landroid/icu/util/TimeZone;

    iget-object v1, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mCountryIsoCode:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mIsOnlyMatch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isOnlyMatch()Z
    .registers 2

    .line 142
    iget-boolean v0, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mIsOnlyMatch:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OffsetResult{mTimeZone(ID)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mTimeZone:Landroid/icu/util/TimeZone;

    .line 167
    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCountryIsoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mCountryIsoCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsOnlyMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mIsOnlyMatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    return-object v0
.end method
