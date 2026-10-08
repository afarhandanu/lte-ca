.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DigitsKeyListener.java"


# static fields
.field private static final greylist-max-o COMPATIBILITY_CHARACTERS:[[C

.field private static final greylist-max-o DECIMAL:I = 0x2

.field private static final greylist-max-o DEFAULT_DECIMAL_POINT_CHARS:Ljava/lang/String; = "."

.field private static final greylist-max-o DEFAULT_SIGN_CHARS:Ljava/lang/String; = "-+"

.field private static final greylist-max-o EN_DASH:C = '\u2013'

.field private static final greylist-max-o HYPHEN_MINUS:C = '-'

.field private static final greylist-max-o MINUS_SIGN:C = '\u2212'

.field private static final greylist-max-o SIGN:I = 0x1

.field private static final greylist-max-o sLocaleCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sLocaleInstanceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "[",
            "Landroid/text/method/DigitsKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sStringCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sStringInstanceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/method/DigitsKeyListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAccepted:[C

.field private final greylist-max-o mDecimal:Z

.field private greylist-max-o mDecimalPointChars:Ljava/lang/String;

.field private final greylist-max-o mLocale:Ljava/util/Locale;

.field private greylist-max-o mNeedsAdvancedInput:Z

.field private final greylist-max-o mSign:Z

.field private greylist-max-o mSignChars:Ljava/lang/String;

.field private final greylist-max-o mStringMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 80
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_40

    const/16 v1, 0xc

    new-array v1, v1, [C

    fill-array-data v1, :array_4e

    const/16 v2, 0xb

    new-array v2, v2, [C

    fill-array-data v2, :array_5e

    const/16 v3, 0xd

    new-array v3, v3, [C

    fill-array-data v3, :array_6e

    filled-new-array {v0, v1, v2, v3}, [[C

    move-result-object v0

    sput-object v0, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sLocaleCacheLock:Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    .line 281
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sStringCacheLock:Ljava/lang/Object;

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    return-void

    nop

    :array_40
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_4e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
    .end array-data

    :array_5e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
    .end array-data

    nop

    :array_6e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    .line 103
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 5

    .line 210
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 63
    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    .line 64
    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    .line 212
    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mLocale:Ljava/util/Locale;

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p1, v0, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 219
    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    .line 220
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;)V
    .registers 3

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    .line 119
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;ZZ)V
    .registers 10

    .line 156
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 63
    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    .line 64
    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    .line 157
    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    .line 158
    iput-boolean p3, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    .line 160
    iput-object p1, p0, Landroid/text/method/DigitsKeyListener;->mLocale:Ljava/util/Locale;

    .line 161
    if-nez p1, :cond_1a

    .line 162
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    .line 163
    return-void

    .line 165
    :cond_1a
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 166
    invoke-static {v1, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v2

    .line 167
    if-nez v2, :cond_29

    .line 168
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    .line 169
    return-void

    .line 171
    :cond_29
    if-nez p2, :cond_2d

    if-eqz p3, :cond_cc

    .line 172
    :cond_2d
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p1

    .line 173
    const/4 v2, 0x1

    if-eqz p2, :cond_ab

    .line 174
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/method/DigitsKeyListener;->stripBidiControls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/method/DigitsKeyListener;->stripBidiControls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v2, :cond_a7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_51

    goto :goto_a7

    .line 181
    :cond_51
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 182
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 183
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    .line 187
    const/16 v3, 0x2212

    if-eq p2, v3, :cond_88

    const/16 v3, 0x2013

    if-ne p2, v3, :cond_ab

    .line 190
    :cond_88
    const/16 p2, 0x2d

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    goto :goto_ab

    .line 178
    :cond_a7
    :goto_a7
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    .line 179
    return-void

    .line 194
    :cond_ab
    :goto_ab
    if-eqz p3, :cond_cc

    .line 195
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v2, :cond_bb

    .line 198
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    .line 199
    return-void

    .line 201
    :cond_bb
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    .line 202
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    .line 206
    :cond_cc
    invoke-static {v1}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object p1

    iput-object p1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 207
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->calculateNeedForAdvancedInput()V

    .line 208
    return-void
.end method

.method public constructor whitelist <init>(ZZ)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    .line 115
    return-void
.end method

.method private greylist-max-o calculateNeedForAdvancedInput()V
    .registers 3

    .line 130
    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v0, v1

    .line 131
    sget-object v1, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    aget-object v0, v1, v0

    iget-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    .line 132
    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/DigitsKeyListener;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .registers 4

    .line 293
    sget-object v0, Landroid/text/method/DigitsKeyListener;->sStringCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/method/DigitsKeyListener;

    .line 295
    if-nez v1, :cond_17

    .line 296
    new-instance v1, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v1, p0}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/lang/String;)V

    .line 297
    sget-object v2, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_17
    monitor-exit v0

    .line 300
    return-object v1

    .line 299
    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public static whitelist getInstance(Ljava/util/Locale;)Landroid/text/method/DigitsKeyListener;
    .registers 2

    .line 251
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getInstance(Ljava/util/Locale;Landroid/text/method/DigitsKeyListener;)Landroid/text/method/DigitsKeyListener;
    .registers 3

    .line 313
    iget-boolean v0, p1, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    if-eqz v0, :cond_5

    .line 314
    return-object p1

    .line 316
    :cond_5
    iget-boolean v0, p1, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean p1, p1, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    invoke-static {p0, v0, p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;
    .registers 7

    .line 267
    if-eqz p2, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    or-int/2addr v0, p1

    .line 268
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sLocaleCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_9
    sget-object v2, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/method/DigitsKeyListener;

    .line 270
    if-eqz v2, :cond_1b

    aget-object v3, v2, v0

    if-eqz v3, :cond_1b

    .line 271
    aget-object p0, v2, v0

    monitor-exit v1

    return-object p0

    .line 273
    :cond_1b
    if-nez v2, :cond_25

    .line 274
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/text/method/DigitsKeyListener;

    .line 275
    sget-object v3, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_25
    new-instance v3, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v3, p0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    aput-object v3, v2, v0

    monitor-exit v1

    return-object v3

    .line 278
    :catchall_2e
    move-exception p0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public static whitelist getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o isDecimalPointChar(C)Z
    .registers 3

    .line 92
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method private greylist-max-o isSignChar(C)Z
    .registers 3

    .line 88
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method private greylist-max-o setToCompat()V
    .registers 4

    .line 122
    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    .line 123
    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    .line 124
    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    or-int/2addr v0, v1

    .line 125
    sget-object v1, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    aget-object v0, v1, v0

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 126
    iput-boolean v2, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    .line 127
    return-void
.end method

.method private static greylist-max-o stripBidiControls(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 140
    nop

    .line 141
    const-string v0, ""

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 143
    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v3

    if-nez v3, :cond_31

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 145
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 149
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 153
    :cond_34
    return-object v0
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 23

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 344
    iget-boolean v4, v0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-nez v4, :cond_13

    iget-boolean v4, v0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-nez v4, :cond_13

    .line 345
    return-object v3

    .line 348
    :cond_13
    const/4 v4, 0x0

    if-eqz v3, :cond_20

    .line 349
    nop

    .line 350
    nop

    .line 351
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v6, v4

    move v7, v5

    move-object v5, v3

    goto :goto_26

    .line 348
    :cond_20
    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    .line 354
    :goto_26
    nop

    .line 355
    nop

    .line 356
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v8

    .line 362
    const/4 v9, -0x1

    move v11, v4

    move v10, v9

    :goto_2f
    if-ge v11, v2, :cond_47

    .line 363
    invoke-interface {v1, v11}, Landroid/text/Spanned;->charAt(I)C

    move-result v12

    .line 365
    invoke-direct {v0, v12}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v13

    if-eqz v13, :cond_3d

    .line 366
    move v10, v11

    goto :goto_44

    .line 367
    :cond_3d
    invoke-direct {v0, v12}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v12

    if-eqz v12, :cond_44

    .line 368
    move v9, v11

    .line 362
    :cond_44
    :goto_44
    add-int/lit8 v11, v11, 0x1

    goto :goto_2f

    .line 371
    :cond_47
    move v11, v9

    move/from16 v9, p6

    :goto_4a
    const-string v12, ""

    if-ge v9, v8, :cond_63

    .line 372
    invoke-interface {v1, v9}, Landroid/text/Spanned;->charAt(I)C

    move-result v13

    .line 374
    invoke-direct {v0, v13}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v14

    if-eqz v14, :cond_59

    .line 375
    return-object v12

    .line 376
    :cond_59
    invoke-direct {v0, v13}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v12

    if-eqz v12, :cond_60

    .line 377
    move v11, v9

    .line 371
    :cond_60
    add-int/lit8 v9, v9, 0x1

    goto :goto_4a

    .line 388
    :cond_63
    nop

    .line 390
    add-int/lit8 v1, v7, -0x1

    const/4 v8, 0x0

    move-object v9, v8

    :goto_68
    if-lt v1, v6, :cond_a8

    .line 391
    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 392
    nop

    .line 394
    invoke-direct {v0, v13}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_82

    .line 395
    if-ne v1, v6, :cond_81

    if-eqz v2, :cond_7b

    goto :goto_81

    .line 397
    :cond_7b
    if-ltz v10, :cond_7e

    .line 398
    goto :goto_8f

    .line 400
    :cond_7e
    move v10, v1

    move v15, v4

    goto :goto_8f

    .line 396
    :cond_81
    :goto_81
    goto :goto_8f

    .line 402
    :cond_82
    invoke-direct {v0, v13}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v13

    if-eqz v13, :cond_8e

    .line 403
    if-ltz v11, :cond_8b

    .line 404
    goto :goto_8f

    .line 406
    :cond_8b
    move v11, v1

    move v15, v4

    goto :goto_8f

    .line 402
    :cond_8e
    move v15, v4

    .line 410
    :goto_8f
    if-eqz v15, :cond_a5

    .line 411
    add-int/lit8 v13, v6, 0x1

    if-ne v7, v13, :cond_96

    .line 412
    return-object v12

    .line 415
    :cond_96
    if-nez v9, :cond_9d

    .line 416
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v5, v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 419
    :cond_9d
    sub-int v13, v1, v6

    add-int/lit8 v14, v1, 0x1

    sub-int/2addr v14, v6

    invoke-virtual {v9, v13, v14}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 390
    :cond_a5
    add-int/lit8 v1, v1, -0x1

    goto :goto_68

    .line 423
    :cond_a8
    if-eqz v9, :cond_ab

    .line 424
    return-object v9

    .line 425
    :cond_ab
    if-eqz v3, :cond_ae

    .line 426
    return-object v3

    .line 428
    :cond_ae
    return-object v8
.end method

.method protected whitelist getAcceptedChars()[C
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-object v0
.end method

.method public whitelist getInputType()I
    .registers 3

    .line 325
    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    if-eqz v0, :cond_6

    .line 326
    const/4 v0, 0x1

    goto :goto_15

    .line 328
    :cond_6
    nop

    .line 329
    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v0, :cond_e

    .line 330
    const/16 v0, 0x1002

    goto :goto_f

    .line 329
    :cond_e
    const/4 v0, 0x2

    .line 332
    :goto_f
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_15

    .line 333
    or-int/lit16 v0, v0, 0x2000

    .line 336
    :cond_15
    :goto_15
    return v0
.end method
