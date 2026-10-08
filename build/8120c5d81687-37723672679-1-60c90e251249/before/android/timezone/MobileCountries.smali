.class public final Landroid/timezone/MobileCountries;
.super Ljava/lang/Object;
.source "MobileCountries.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/MobileCountries;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/timezone/MobileCountries;)V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/i18n/timezone/MobileCountries;

    iput-object p1, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    .line 74
    return-void
.end method

.method public static blacklist createForTest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Landroid/timezone/MobileCountries;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/timezone/MobileCountries;"
        }
    .end annotation

    .line 67
    new-instance v0, Landroid/timezone/MobileCountries;

    .line 68
    invoke-static {p0, p1, p2, p3}, Lcom/android/i18n/timezone/MobileCountries;->create(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/android/i18n/timezone/MobileCountries;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/timezone/MobileCountries;-><init>(Lcom/android/i18n/timezone/MobileCountries;)V

    .line 67
    return-object v0
.end method

.method public static blacklist createTestCell(Ljava/lang/String;)Landroid/timezone/MobileCountries;
    .registers 4

    .line 51
    new-instance v0, Landroid/timezone/MobileCountries;

    .line 52
    const-string v1, ""

    invoke-static {v1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/android/i18n/timezone/MobileCountries;->create(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/android/i18n/timezone/MobileCountries;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/timezone/MobileCountries;-><init>(Lcom/android/i18n/timezone/MobileCountries;)V

    .line 51
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 117
    if-ne p0, p1, :cond_4

    .line 118
    const/4 p1, 0x1

    return p1

    .line 120
    :cond_4
    instance-of v0, p1, Landroid/timezone/MobileCountries;

    if-eqz v0, :cond_13

    check-cast p1, Landroid/timezone/MobileCountries;

    .line 121
    iget-object v0, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    iget-object p1, p1, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 123
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getCountryIsoCodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/MobileCountries;->getCountryIsoCodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultCountryIsoCode()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/MobileCountries;->getDefaultCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMcc()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/MobileCountries;->getMcc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMnc()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/MobileCountries;->getMnc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileCountries{mDelegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/timezone/MobileCountries;->mDelegate:Lcom/android/i18n/timezone/MobileCountries;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
