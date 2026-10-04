.class Landroid/util/Base64$Decoder;
.super Landroid/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static final greylist-max-o DECODE:[I

.field private static final greylist-max-o DECODE_WEBSAFE:[I

.field private static final greylist-max-o EQUALS:I = -0x2

.field private static final greylist-max-o SKIP:I = -0x1


# instance fields
.field private final greylist-max-o alphabet:[I

.field private greylist-max-o state:I

.field private greylist-max-o value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 184
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Landroid/util/Base64$Decoder;->DECODE:[I

    .line 207
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_218

    sput-object v0, Landroid/util/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    nop

    :array_14
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_218
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor greylist-max-o <init>(I[B)V
    .registers 3

    .line 244
    invoke-direct {p0}, Landroid/util/Base64$Coder;-><init>()V

    .line 245
    iput-object p2, p0, Landroid/util/Base64$Decoder;->output:[B

    .line 247
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_c

    sget-object p1, Landroid/util/Base64$Decoder;->DECODE:[I

    goto :goto_e

    :cond_c
    sget-object p1, Landroid/util/Base64$Decoder;->DECODE_WEBSAFE:[I

    :goto_e
    iput-object p1, p0, Landroid/util/Base64$Decoder;->alphabet:[I

    .line 248
    const/4 p1, 0x0

    iput p1, p0, Landroid/util/Base64$Decoder;->state:I

    .line 249
    iput p1, p0, Landroid/util/Base64$Decoder;->value:I

    .line 250
    return-void
.end method


# virtual methods
.method public greylist-max-o maxOutputSize(I)I
    .registers 2

    .line 257
    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public greylist-max-o process([BIIZ)Z
    .registers 16

    .line 267
    iget v0, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    return v1

    .line 269
    :cond_7
    nop

    .line 270
    add-int/2addr p3, p2

    .line 277
    iget v0, p0, Landroid/util/Base64$Decoder;->state:I

    .line 278
    iget v3, p0, Landroid/util/Base64$Decoder;->value:I

    .line 279
    nop

    .line 280
    iget-object v4, p0, Landroid/util/Base64$Decoder;->output:[B

    .line 281
    iget-object v5, p0, Landroid/util/Base64$Decoder;->alphabet:[I

    move v6, v1

    .line 283
    :goto_13
    const/4 v7, 0x4

    if-ge p2, p3, :cond_e6

    .line 298
    if-nez v0, :cond_5d

    .line 299
    :goto_18
    add-int/lit8 v8, p2, 0x4

    if-gt v8, p3, :cond_59

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    aget v3, v5, v3

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v9, p2, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v5, v9

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr v3, v9

    add-int/lit8 v9, p2, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v5, v9

    shl-int/2addr v9, v2

    or-int/2addr v3, v9

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v5, v9

    or-int/2addr v3, v9

    if-ltz v3, :cond_59

    .line 304
    add-int/lit8 p2, v6, 0x2

    int-to-byte v9, v3

    aput-byte v9, v4, p2

    .line 305
    add-int/lit8 p2, v6, 0x1

    shr-int/lit8 v9, v3, 0x8

    int-to-byte v9, v9

    aput-byte v9, v4, p2

    .line 306
    shr-int/lit8 p2, v3, 0x10

    int-to-byte p2, p2

    aput-byte p2, v4, v6

    .line 307
    add-int/lit8 v6, v6, 0x3

    .line 308
    move p2, v8

    goto :goto_18

    .line 310
    :cond_59
    if-lt p2, p3, :cond_5d

    goto/16 :goto_e6

    .line 318
    :cond_5d
    add-int/lit8 v8, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    aget p2, v5, p2

    .line 320
    const/4 v9, -0x2

    const/4 v10, -0x1

    packed-switch v0, :pswitch_data_118

    goto/16 :goto_e3

    .line 388
    :pswitch_6c
    if-eq p2, v10, :cond_e3

    .line 389
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 390
    return v1

    .line 379
    :pswitch_71
    if-ne p2, v9, :cond_77

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e3

    .line 381
    :cond_77
    if-eq p2, v10, :cond_e3

    .line 382
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 383
    return v1

    .line 357
    :pswitch_7c
    if-ltz p2, :cond_97

    .line 359
    shl-int/lit8 v0, v3, 0x6

    or-int/2addr p2, v0

    .line 360
    add-int/lit8 v0, v6, 0x2

    int-to-byte v3, p2

    aput-byte v3, v4, v0

    .line 361
    add-int/lit8 v0, v6, 0x1

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 362
    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    .line 363
    add-int/lit8 v6, v6, 0x3

    .line 364
    move v3, p2

    move v0, v1

    goto :goto_e3

    .line 365
    :cond_97
    if-ne p2, v9, :cond_aa

    .line 368
    add-int/lit8 p2, v6, 0x1

    shr-int/lit8 v0, v3, 0x2

    int-to-byte v0, v0

    aput-byte v0, v4, p2

    .line 369
    shr-int/lit8 p2, v3, 0xa

    int-to-byte p2, p2

    aput-byte p2, v4, v6

    .line 370
    add-int/lit8 v6, v6, 0x2

    .line 371
    const/4 p2, 0x5

    move v0, p2

    goto :goto_e3

    .line 372
    :cond_aa
    if-eq p2, v10, :cond_e3

    .line 373
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 374
    return v1

    .line 342
    :pswitch_af
    if-ltz p2, :cond_b8

    .line 343
    shl-int/lit8 v3, v3, 0x6

    or-int/2addr p2, v3

    .line 344
    add-int/lit8 v0, v0, 0x1

    move v3, p2

    goto :goto_e3

    .line 345
    :cond_b8
    if-ne p2, v9, :cond_c4

    .line 348
    add-int/lit8 p2, v6, 0x1

    shr-int/lit8 v0, v3, 0x4

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    .line 349
    move v6, p2

    move v0, v7

    goto :goto_e3

    .line 350
    :cond_c4
    if-eq p2, v10, :cond_e3

    .line 351
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 352
    return v1

    .line 332
    :pswitch_c9
    if-ltz p2, :cond_d2

    .line 333
    shl-int/lit8 v3, v3, 0x6

    or-int/2addr p2, v3

    .line 334
    add-int/lit8 v0, v0, 0x1

    move v3, p2

    goto :goto_e3

    .line 335
    :cond_d2
    if-eq p2, v10, :cond_e3

    .line 336
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 337
    return v1

    .line 322
    :pswitch_d7
    if-ltz p2, :cond_de

    .line 323
    nop

    .line 324
    add-int/lit8 v0, v0, 0x1

    move v3, p2

    goto :goto_e3

    .line 325
    :cond_de
    if-eq p2, v10, :cond_e3

    .line 326
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 327
    return v1

    .line 394
    :cond_e3
    :goto_e3
    move p2, v8

    goto/16 :goto_13

    .line 396
    :cond_e6
    :goto_e6
    const/4 p1, 0x1

    if-nez p4, :cond_f0

    .line 399
    iput v0, p0, Landroid/util/Base64$Decoder;->state:I

    .line 400
    iput v3, p0, Landroid/util/Base64$Decoder;->value:I

    .line 401
    iput v6, p0, Landroid/util/Base64$Decoder;->op:I

    .line 402
    return p1

    .line 408
    :cond_f0
    packed-switch v0, :pswitch_data_128

    goto :goto_113

    .line 430
    :pswitch_f4
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 431
    return v1

    .line 425
    :pswitch_f7
    add-int/lit8 p2, v6, 0x1

    shr-int/lit8 p3, v3, 0xa

    int-to-byte p3, p3

    aput-byte p3, v4, v6

    .line 426
    add-int/lit8 v6, p2, 0x1

    shr-int/lit8 p3, v3, 0x2

    int-to-byte p3, p3

    aput-byte p3, v4, p2

    .line 427
    goto :goto_113

    .line 420
    :pswitch_106
    add-int/lit8 p2, v6, 0x1

    shr-int/lit8 p3, v3, 0x4

    int-to-byte p3, p3

    aput-byte p3, v4, v6

    .line 421
    move v6, p2

    goto :goto_113

    .line 415
    :pswitch_10f
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 416
    return v1

    .line 411
    :pswitch_112
    nop

    .line 438
    :goto_113
    iput v0, p0, Landroid/util/Base64$Decoder;->state:I

    .line 439
    iput v6, p0, Landroid/util/Base64$Decoder;->op:I

    .line 440
    return p1

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_c9
        :pswitch_af
        :pswitch_7c
        :pswitch_71
        :pswitch_6c
    .end packed-switch

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_112
        :pswitch_10f
        :pswitch_106
        :pswitch_f7
        :pswitch_f4
    .end packed-switch
.end method
