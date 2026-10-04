.class public final Landroid/webkit/URLUtil;
.super Ljava/lang/Object;
.source "URLUtil.java"


# static fields
.field static final greylist-max-o ASSET_BASE:Ljava/lang/String; = "file:///android_asset/"

.field static final greylist-max-o CONTENT_BASE:Ljava/lang/String; = "content:"

.field private static final greylist-max-o CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field static final greylist-max-o FILE_BASE:Ljava/lang/String; = "file:"

.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "webkit"

.field static final blacklist PARSE_CONTENT_DISPOSITION_USING_RFC_6266:J = 0x1309ab41L

.field static final greylist-max-o PROXY_BASE:Ljava/lang/String; = "file:///cookieless_proxy/"

.field static final greylist-max-o RESOURCE_BASE:Ljava/lang/String; = "file:///android_res/"

.field private static final greylist-max-o TRACE:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 565
    nop

    .line 566
    const-string v0, "attachment;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 599
    nop

    .line 600
    const-string v0, "\\s*(\\S+?) # Group 1: parameter name\n\\s*=\\s* # Match equals sign\n(?: # non-capturing group of options\n   \'( (?: [^\'\\\\] | \\\\. )* )\' # Group 2: single-quoted\n | \"( (?: [^\"\\\\] | \\\\. )*  )\" # Group 3: double-quoted\n | ( [^\'\"][^;\\s]* ) # Group 4: un-quoted parameter\n)\\s*;? # Optional end semicolon"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/URLUtil;->DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 599
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 112
    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 113
    return-object v1

    .line 117
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :try_start_15
    const-string/jumbo v3, "utf-8"

    invoke-static {p0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 122
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1f} :catch_31

    .line 125
    nop

    .line 127
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 123
    :catch_31
    move-exception p0

    .line 124
    return-object v1
.end method

.method public static whitelist decode([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 133
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 134
    new-array p0, v1, [B

    return-object p0

    .line 138
    :cond_7
    array-length v0, p0

    new-array v0, v0, [B

    .line 140
    nop

    .line 141
    move v2, v1

    move v3, v2

    :goto_d
    array-length v4, p0

    if-ge v2, v4, :cond_40

    .line 142
    aget-byte v4, p0, v2

    .line 143
    const/16 v5, 0x25

    if-ne v4, v5, :cond_38

    .line 144
    array-length v4, p0

    sub-int/2addr v4, v2

    const/4 v5, 0x2

    if-le v4, v5, :cond_30

    .line 145
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    add-int/lit8 v2, v2, 0x2

    aget-byte v5, p0, v2

    invoke-static {v5}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    .line 146
    goto :goto_38

    .line 148
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid format"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    :cond_38
    :goto_38
    add-int/lit8 v5, v3, 0x1

    aput-byte v4, v0, v3

    .line 141
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_d

    .line 153
    :cond_40
    new-array p0, v3, [B

    .line 154
    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    return-object p0
.end method

.method private static blacklist encodePlusCharacters(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 7

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_29

    aget-byte v3, p1, v2

    .line 717
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 719
    :cond_29
    const-string p1, "\\+"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist extensionDifferentFromMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 511
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 513
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 514
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 515
    if-eqz p0, :cond_1d

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    return v2
.end method

.method private static blacklist getFilenameFromContentDispositionRfc6266(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 630
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, ";"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 631
    array-length v0, p0

    const/4 v2, 0x0

    if-ge v0, v1, :cond_10

    .line 633
    return-object v2

    .line 635
    :cond_10
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 636
    const-string v3, "inline"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 640
    return-object v2

    .line 642
    :cond_20
    const/4 v0, 0x1

    aget-object p0, p0, v0

    .line 643
    sget-object v3, Landroid/webkit/URLUtil;->DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 644
    nop

    .line 645
    move-object v3, v2

    .line 646
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 647
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 649
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_44

    .line 650
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/URLUtil;->removeSlashEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_59

    .line 651
    :cond_44
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_54

    .line 652
    invoke-virtual {p0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/URLUtil;->removeSlashEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_59

    .line 654
    :cond_54
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 657
    :goto_59
    if-eqz v4, :cond_2b

    if-nez v5, :cond_5e

    .line 658
    goto :goto_2b

    .line 661
    :cond_5e
    const-string v6, "filename*"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 662
    invoke-static {v5}, Landroid/webkit/URLUtil;->parseExtValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_74

    .line 663
    :cond_6b
    const-string v6, "filename"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 664
    move-object v3, v5

    .line 666
    :cond_74
    :goto_74
    goto :goto_2b

    .line 669
    :cond_75
    if-eqz v2, :cond_78

    .line 670
    return-object v2

    .line 672
    :cond_78
    return-object v3
.end method

.method private static blacklist getFilenameSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 476
    if-eqz p1, :cond_d

    .line 477
    invoke-static {p1}, Landroid/webkit/URLUtil;->getFilenameFromContentDispositionRfc6266(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 478
    if-eqz p1, :cond_d

    .line 479
    invoke-static {p1}, Landroid/webkit/URLUtil;->replacePathSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 484
    :cond_d
    if-eqz p0, :cond_1e

    .line 485
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 486
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 487
    if-eqz p0, :cond_1e

    .line 488
    invoke-static {p0}, Landroid/webkit/URLUtil;->replacePathSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 493
    :cond_1e
    const-string p0, "downloadfile"

    return-object p0
.end method

.method public static whitelist guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 348
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->androidOsBuildVanillaIceCream()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 349
    const-wide/32 v0, 0x1309ab41

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 350
    invoke-static {p0, p1, p2}, Landroid/webkit/URLUtil;->guessFileNameRfc6266(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 354
    :cond_14
    invoke-static {p0, p1, p2}, Landroid/webkit/URLUtil;->guessFileNameRfc2616(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist guessFileNameRfc2616(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 360
    nop

    .line 361
    nop

    .line 364
    const/16 v0, 0x2f

    const/4 v1, 0x0

    if-eqz p1, :cond_1a

    .line 365
    invoke-static {p1}, Landroid/webkit/URLUtil;->parseContentDispositionRfc2616(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 366
    if-eqz p1, :cond_1b

    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 368
    if-lez v2, :cond_1b

    .line 369
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    .line 364
    :cond_1a
    move-object p1, v1

    .line 375
    :cond_1b
    :goto_1b
    const/4 v2, 0x0

    if-nez p1, :cond_44

    .line 376
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 377
    if-eqz p0, :cond_44

    .line 378
    const/16 v3, 0x3f

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 380
    if-lez v3, :cond_30

    .line 381
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 383
    :cond_30
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 384
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 385
    if-lez v0, :cond_44

    .line 386
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 393
    :cond_44
    if-nez p1, :cond_48

    .line 394
    const-string p1, "downloadfile"

    .line 399
    :cond_48
    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 400
    const-string v3, "."

    if-gez v0, :cond_94

    .line 401
    if-eqz p2, :cond_6f

    .line 402
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    if-eqz v1, :cond_6f

    .line 404
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    :cond_6f
    if-nez v1, :cond_d6

    .line 408
    if-eqz p2, :cond_91

    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_91

    .line 409
    const-string/jumbo p0, "text/html"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8e

    .line 410
    const-string v1, ".html"

    goto :goto_d6

    .line 412
    :cond_8e
    const-string v1, ".txt"

    goto :goto_d6

    .line 415
    :cond_91
    const-string v1, ".bin"

    goto :goto_d6

    .line 419
    :cond_94
    if-eqz p2, :cond_cb

    .line 422
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    .line 424
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    add-int/lit8 p0, p0, 0x1

    .line 425
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 426
    if-eqz p0, :cond_cb

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_cb

    .line 427
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    if-eqz v1, :cond_cb

    .line 429
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    :cond_cb
    if-nez v1, :cond_d2

    .line 434
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    .line 436
    :cond_d2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 439
    :cond_d6
    :goto_d6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist guessFileNameRfc6266(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 449
    invoke-static {p0, p1}, Landroid/webkit/URLUtil;->getFilenameSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 452
    invoke-static {p2}, Landroid/webkit/URLUtil;->suggestExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 454
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_22

    .line 456
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 462
    :cond_22
    if-eqz p2, :cond_3c

    invoke-static {p0, p2}, Landroid/webkit/URLUtil;->extensionDifferentFromMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 463
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 465
    :cond_3c
    return-object p0
.end method

.method public static whitelist guessUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 68
    nop

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    return-object p0

    .line 74
    :cond_8
    const-string v0, "about:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p0

    .line 76
    :cond_11
    const-string v0, "data:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return-object p0

    .line 78
    :cond_1a
    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    return-object p0

    .line 80
    :cond_23
    const-string v0, "javascript:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    return-object p0

    .line 83
    :cond_2c
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    .line 83
    :cond_40
    move-object v0, p0

    .line 88
    :goto_41
    :try_start_41
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, v0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catch Landroid/net/ParseException; {:try_start_41 .. :try_end_46} :catch_7a

    .line 95
    nop

    .line 98
    invoke-virtual {v1}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_75

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "www."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".com"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/net/WebAddress;->setHost(Ljava/lang/String;)V

    .line 102
    :cond_75
    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 89
    :catch_7a
    move-exception v0

    .line 94
    return-object p0
.end method

.method public static whitelist isAboutUrl(Ljava/lang/String;)Z
    .registers 2

    .line 233
    if-eqz p0, :cond_c

    const-string v0, "about:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static whitelist isAssetUrl(Ljava/lang/String;)Z
    .registers 2

    .line 197
    if-eqz p0, :cond_c

    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static whitelist isContentUrl(Ljava/lang/String;)Z
    .registers 2

    .line 282
    if-eqz p0, :cond_c

    const-string v0, "content:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static whitelist isCookielessProxyUrl(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    if-eqz p0, :cond_c

    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static whitelist isDataUrl(Ljava/lang/String;)Z
    .registers 2

    .line 240
    if-eqz p0, :cond_c

    const-string v0, "data:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static whitelist isFileUrl(Ljava/lang/String;)Z
    .registers 2

    .line 223
    if-eqz p0, :cond_1c

    .line 224
    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 225
    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 226
    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    .line 223
    :goto_1d
    return p0
.end method

.method public static whitelist isHttpUrl(Ljava/lang/String;)Z
    .registers 4

    .line 254
    const/4 v0, 0x0

    if-eqz p0, :cond_19

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_19

    .line 256
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    nop

    .line 254
    :goto_1a
    return v0
.end method

.method public static whitelist isHttpsUrl(Ljava/lang/String;)Z
    .registers 4

    .line 263
    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_1a

    .line 265
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    nop

    .line 263
    :goto_1b
    return v0
.end method

.method public static whitelist isJavaScriptUrl(Ljava/lang/String;)Z
    .registers 2

    .line 247
    if-eqz p0, :cond_c

    const-string v0, "javascript:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static whitelist isNetworkUrl(Ljava/lang/String;)Z
    .registers 3

    .line 272
    const/4 v0, 0x0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_18

    .line 275
    :cond_a
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    :cond_16
    const/4 v0, 0x1

    :cond_17
    return v0

    .line 273
    :cond_18
    :goto_18
    return v0
.end method

.method public static greylist isResourceUrl(Ljava/lang/String;)Z
    .registers 2

    .line 206
    if-eqz p0, :cond_c

    const-string v0, "file:///android_res/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static whitelist isValidUrl(Ljava/lang/String;)Z
    .registers 3

    .line 289
    const/4 v0, 0x0

    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3c

    .line 293
    :cond_a
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 294
    invoke-static {p0}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 295
    invoke-static {p0}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 296
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 297
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 298
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 299
    invoke-static {p0}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 300
    invoke-static {p0}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3b

    :cond_3a
    const/4 v0, 0x1

    .line 293
    :cond_3b
    return v0

    .line 290
    :cond_3c
    :goto_3c
    return v0
.end method

.method static greylist parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 556
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->androidOsBuildVanillaIceCream()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 557
    const-wide/32 v0, 0x1309ab41

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 558
    invoke-static {p0}, Landroid/webkit/URLUtil;->getFilenameFromContentDispositionRfc6266(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 561
    :cond_14
    invoke-static {p0}, Landroid/webkit/URLUtil;->parseContentDispositionRfc2616(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseContentDispositionRfc2616(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 580
    :try_start_0
    sget-object v0, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 581
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 582
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_11} :catch_13

    return-object p0

    .line 586
    :cond_12
    goto :goto_14

    .line 584
    :catch_13
    move-exception p0

    .line 587
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist parseExtValueString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 688
    const-string v0, "\'"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 689
    array-length v0, p0

    const/4 v2, 0x0

    if-ge v0, v1, :cond_c

    .line 690
    return-object v2

    .line 693
    :cond_c
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 695
    const/4 v1, 0x2

    aget-object p0, p0, v1

    .line 700
    :try_start_12
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 701
    invoke-static {p0, v0}, Landroid/webkit/URLUtil;->encodePlusCharacters(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    .line 702
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1e} :catch_1f

    return-object p0

    .line 703
    :catch_1f
    move-exception p0

    .line 704
    return-object v2
.end method

.method private static greylist-max-o parseHex(B)I
    .registers 4

    .line 186
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    .line 187
    :cond_a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_16

    const/16 v1, 0x46

    if-gt p0, v1, :cond_16

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 188
    :cond_16
    const/16 v0, 0x61

    if-lt p0, v0, :cond_22

    const/16 v1, 0x66

    if-gt p0, v1, :cond_22

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 190
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist removeSlashEscapes(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 677
    if-nez p0, :cond_4

    .line 678
    const/4 p0, 0x0

    return-object p0

    .line 680
    :cond_4
    const-string v0, "\\\\(.)"

    const-string v1, "$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist replacePathSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 502
    const-string v0, "/"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist stripAnchor(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 305
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 306
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 307
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 309
    :cond_f
    return-object p0
.end method

.method private static blacklist suggestExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 527
    const-string v0, ".bin"

    if-nez p0, :cond_5

    .line 528
    return-object v0

    .line 531
    :cond_5
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    if-eqz v1, :cond_23

    .line 533
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 535
    :cond_23
    const-string/jumbo v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 536
    const-string p0, ".html"

    return-object p0

    .line 537
    :cond_2f
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "text/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 538
    const-string p0, ".txt"

    return-object p0

    .line 540
    :cond_41
    return-object v0
.end method

.method static greylist verifyURLEncoding(Ljava/lang/String;)Z
    .registers 6

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 164
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 165
    return v1

    .line 168
    :cond_8
    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 169
    :goto_e
    if-ltz v3, :cond_35

    if-ge v3, v0, :cond_35

    .line 170
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_34

    .line 172
    add-int/lit8 v3, v3, 0x1

    :try_start_18
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I

    .line 173
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_2a} :catch_32

    .line 176
    nop

    .line 180
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_e

    .line 174
    :catch_32
    move-exception p0

    .line 175
    return v1

    .line 178
    :cond_34
    return v1

    .line 182
    :cond_35
    const/4 p0, 0x1

    return p0
.end method
