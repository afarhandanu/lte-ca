.class public final Landroid/text/format/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Formatter$RoundedBytesResult;,
        Landroid/text/format/Formatter$BytesResult;
    }
.end annotation


# static fields
.field public static final greylist-max-o FLAG_CALCULATE_ROUNDED:I = 0x2

.field public static final greylist-max-o FLAG_IEC_UNITS:I = 0x8

.field public static final greylist-max-o FLAG_SHORTER:I = 0x1

.field public static final greylist-max-o FLAG_SI_UNITS:I = 0x4

.field private static final greylist-max-o MILLIS_PER_MINUTE:I = 0xea60

.field private static final greylist-max-o SECONDS_PER_DAY:I = 0x15180

.field private static final greylist-max-o SECONDS_PER_HOUR:I = 0xe10

.field private static final greylist-max-o SECONDS_PER_MINUTE:I = 0x3c

.field private static final blacklist SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 165
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    const-string v2, "[[:Zs:][:Cf:]]"

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSetSpanner;-><init>(Landroid/icu/text/UnicodeSet;)V

    sput-object v0, Landroid/text/format/Formatter;->SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;

    .line 165
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 84
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    .line 86
    invoke-static {v0}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 88
    :cond_14
    return-object p1
.end method

.method private static blacklist deleteFirstFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 150
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 151
    return-object p0

    .line 153
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 153
    return-object p0
.end method

.method public static greylist formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .registers 12

    .line 278
    invoke-static {p1, p2, p3}, Landroid/text/format/Formatter$RoundedBytesResult;->roundBytes(JI)Landroid/text/format/Formatter$RoundedBytesResult;

    move-result-object p1

    .line 279
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p2

    .line 280
    iget p3, p1, Landroid/text/format/Formatter$RoundedBytesResult;->fractionDigits:I

    invoke-static {p2, p3}, Landroid/text/format/Formatter;->getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;

    move-result-object p3

    .line 281
    iget v0, p1, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    float-to-double v0, v0

    invoke-virtual {p3, v0, v1}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 285
    iget v0, p1, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    iget-object v1, p1, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {p2, p3, v0, v1}, Landroid/text/format/Formatter;->formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object p2

    .line 287
    invoke-static {p2, v3}, Landroid/text/format/Formatter;->deleteFirstFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 288
    sget-object p3, Landroid/text/format/Formatter;->SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;

    invoke-virtual {p3, p2}, Landroid/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 289
    nop

    .line 290
    iget-object p2, p1, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    sget-object p3, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    if-ne p2, p3, :cond_41

    .line 292
    invoke-static {p0}, Landroid/text/format/Formatter;->getByteSuffixOverride(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    goto :goto_42

    .line 290
    :cond_41
    move-object v4, v5

    .line 294
    :goto_42
    new-instance v2, Landroid/text/format/Formatter$BytesResult;

    iget-wide v6, p1, Landroid/text/format/Formatter$RoundedBytesResult;->roundedBytes:J

    invoke-direct/range {v2 .. v7}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method public static whitelist formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4

    .line 111
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 4

    .line 116
    if-nez p0, :cond_5

    .line 117
    const-string p0, ""

    return-object p0

    .line 119
    :cond_5
    invoke-static {p1, p2, p3}, Landroid/text/format/Formatter$RoundedBytesResult;->roundBytes(JI)Landroid/text/format/Formatter$RoundedBytesResult;

    move-result-object p1

    .line 120
    invoke-static {p0, p1}, Landroid/text/format/Formatter;->formatRoundedBytesResult(Landroid/content/Context;Landroid/text/format/Formatter$RoundedBytesResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/format/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist formatIpAddress(I)Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    invoke-static {p0}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;
    .registers 5

    .line 160
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p0, v0, p1}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    .line 162
    new-instance p1, Landroid/icu/util/Measure;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist formatRoundedBytesResult(Landroid/content/Context;Landroid/text/format/Formatter$RoundedBytesResult;)Ljava/lang/String;
    .registers 6

    .line 170
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 171
    iget v1, p1, Landroid/text/format/Formatter$RoundedBytesResult;->fractionDigits:I

    invoke-static {v0, v1}, Landroid/text/format/Formatter;->getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;

    move-result-object v1

    .line 172
    iget-object v2, p1, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    sget-object v3, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    if-ne v2, v3, :cond_2c

    .line 174
    iget p1, p1, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 175
    nop

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/Formatter;->getByteSuffixOverride(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 175
    const v0, 0x1040429

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :cond_2c
    iget p0, p1, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    iget-object p1, p1, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {v0, v1, p0, p1}, Landroid/text/format/Formatter;->formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    .registers 9

    .line 326
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    .line 328
    nop

    .line 329
    const-wide/32 v0, 0x15180

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-ltz v2, :cond_16

    .line 330
    div-long v0, p1, v0

    long-to-int v0, v0

    .line 331
    const v1, 0x15180

    mul-int/2addr v1, v0

    int-to-long v1, v1

    sub-long/2addr p1, v1

    goto :goto_17

    .line 329
    :cond_16
    move v0, v3

    .line 333
    :goto_17
    const-wide/16 v1, 0xe10

    cmp-long v4, p1, v1

    if-ltz v4, :cond_25

    .line 334
    div-long v1, p1, v1

    long-to-int v1, v1

    .line 335
    mul-int/lit16 v2, v1, 0xe10

    int-to-long v4, v2

    sub-long/2addr p1, v4

    goto :goto_26

    .line 333
    :cond_25
    move v1, v3

    .line 337
    :goto_26
    const-wide/16 v4, 0x3c

    cmp-long v2, p1, v4

    if-ltz v2, :cond_34

    .line 338
    div-long v4, p1, v4

    long-to-int v2, v4

    .line 339
    mul-int/lit8 v4, v2, 0x3c

    int-to-long v4, v4

    sub-long/2addr p1, v4

    goto :goto_35

    .line 337
    :cond_34
    move v2, v3

    .line 341
    :goto_35
    long-to-int p1, p1

    .line 343
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    .line 344
    sget-object p2, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p0, p2}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    .line 346
    const/4 p2, 0x2

    if-ge v0, p2, :cond_fb

    if-lez v0, :cond_49

    if-nez v1, :cond_49

    goto/16 :goto_fb

    .line 349
    :cond_49
    const/4 v4, 0x1

    if-lez v0, :cond_6d

    .line 350
    new-array p1, p2, [Landroid/icu/util/Measure;

    new-instance p2, Landroid/icu/util/Measure;

    .line 351
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {p2, v0, v2}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object p2, p1, v3

    new-instance p2, Landroid/icu/util/Measure;

    .line 352
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {p2, v0, v1}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object p2, p1, v4

    .line 350
    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 353
    :cond_6d
    if-ge v1, p2, :cond_e6

    if-lez v1, :cond_74

    if-nez v2, :cond_74

    goto :goto_e6

    .line 356
    :cond_74
    if-lez v1, :cond_97

    .line 357
    new-array p1, p2, [Landroid/icu/util/Measure;

    new-instance p2, Landroid/icu/util/Measure;

    .line 358
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {p2, v0, v1}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object p2, p1, v3

    new-instance p2, Landroid/icu/util/Measure;

    .line 359
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {p2, v0, v1}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object p2, p1, v4

    .line 357
    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 360
    :cond_97
    if-ge v2, p2, :cond_d1

    if-lez v2, :cond_9e

    if-nez p1, :cond_9e

    goto :goto_d1

    .line 363
    :cond_9e
    if-lez v2, :cond_c1

    .line 364
    new-array p2, p2, [Landroid/icu/util/Measure;

    new-instance v0, Landroid/icu/util/Measure;

    .line 365
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v0, v1, v2}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v0, p2, v3

    new-instance v0, Landroid/icu/util/Measure;

    .line 366
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v0, p1, v1}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v0, p2, v4

    .line 364
    invoke-virtual {p0, p2}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 368
    :cond_c1
    new-instance p2, Landroid/icu/util/Measure;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {p2, p1, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {p0, p2}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 361
    :cond_d1
    :goto_d1
    add-int/lit8 p1, p1, 0x1e

    div-int/lit8 p1, p1, 0x3c

    add-int/2addr v2, p1

    .line 362
    new-instance p1, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {p1, p2, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 354
    :cond_e6
    :goto_e6
    add-int/lit8 v2, v2, 0x1e

    div-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    .line 355
    new-instance p1, Landroid/icu/util/Measure;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {p1, p2, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 347
    :cond_fb
    :goto_fb
    add-int/lit8 v1, v1, 0xc

    div-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    .line 348
    new-instance p1, Landroid/icu/util/Measure;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {p1, p2, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;
    .registers 9

    .line 382
    const-wide/32 v0, 0xea60

    add-long/2addr p1, v0

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    div-long/2addr p1, v0

    .line 384
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_19

    cmp-long v2, p1, v2

    if-nez v2, :cond_13

    goto :goto_19

    .line 391
    :cond_13
    mul-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 385
    :cond_19
    :goto_19
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    .line 386
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p0, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    .line 388
    new-instance v0, Landroid/icu/util/Measure;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object p2, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4

    .line 128
    const/4 v0, 0x5

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getByteSuffixOverride(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 132
    const v0, 0x10401c6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;
    .registers 2

    .line 136
    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object p0

    .line 137
    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 138
    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 139
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    .line 140
    instance-of p1, p0, Landroid/icu/text/DecimalFormat;

    if-eqz p1, :cond_16

    .line 143
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormat;->setRoundingMode(I)V

    .line 145
    :cond_16
    return-object p0
.end method

.method private static greylist-max-o localeFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .registers 2

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method
