.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static final greylist-max-o CARRIAGE_RETURN:I = 0xd

.field private static final greylist-max-o LINE_FEED:I = 0xa

.field static final greylist-max-o OLD_SEL_START:Ljava/lang/Object;

.field static greylist-max-o sCachedPaint:Landroid/graphics/Paint;


# instance fields
.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static greylist-max-o adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I
    .registers 7

    .line 95
    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_5

    .line 96
    return p1

    .line 99
    :cond_5
    check-cast p0, Landroid/text/Spanned;

    const-class v0, Landroid/text/style/ReplacementSpan;

    invoke-interface {p0, p1, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 100
    const/4 v1, 0x0

    :goto_10
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    .line 101
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 102
    aget-object v3, v0, v1

    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 104
    if-ge v2, p1, :cond_28

    if-le v3, p1, :cond_28

    .line 105
    if-eqz p2, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    move p1, v2

    .line 100
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 108
    :cond_2b
    return p1
.end method

.method private greylist-max-o backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .registers 10

    .line 325
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p3

    and-int/lit16 p3, p3, -0x70f4

    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_e

    .line 327
    return v0

    .line 331
    :cond_e
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_16

    .line 332
    return v1

    .line 336
    :cond_16
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p3

    and-int/lit16 p3, p3, 0x1000

    if-eqz p3, :cond_20

    move p3, v1

    goto :goto_21

    :cond_20
    move p3, v0

    .line 337
    :goto_21
    invoke-static {p2, v1, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v2

    if-ne v2, v1, :cond_29

    move v2, v1

    goto :goto_2a

    :cond_29
    move v2, v0

    .line 338
    :goto_2a
    const/4 v3, 0x2

    invoke-static {p2, v3, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result p4

    if-ne p4, v1, :cond_33

    move p4, v1

    goto :goto_34

    :cond_33
    move p4, v0

    .line 340
    :goto_34
    if-eqz p3, :cond_41

    .line 341
    if-nez p4, :cond_40

    if-eqz v2, :cond_3b

    goto :goto_40

    .line 345
    :cond_3b
    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result p1

    return p1

    .line 343
    :cond_40
    :goto_40
    return v0

    .line 349
    :cond_41
    if-eqz p4, :cond_4a

    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteLineFromCursor(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result p3

    if-eqz p3, :cond_4a

    .line 350
    return v1

    .line 354
    :cond_4a
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p3

    .line 356
    if-eqz p5, :cond_75

    .line 358
    instance-of p4, p1, Landroid/widget/TextView;

    if-eqz p4, :cond_5b

    .line 359
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    goto :goto_6d

    .line 361
    :cond_5b
    iget-object p1, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 362
    :try_start_5e
    sget-object p4, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    if-nez p4, :cond_69

    .line 363
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    sput-object p4, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 365
    :cond_69
    sget-object p4, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 366
    monitor-exit p1
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_72

    move-object p1, p4

    .line 368
    :goto_6d
    invoke-static {p2, p3, p1}, Landroid/text/method/BaseKeyListener;->getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I

    move-result p1

    .line 369
    goto :goto_79

    .line 366
    :catchall_72
    move-exception p2

    :try_start_73
    monitor-exit p1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p2

    .line 370
    :cond_75
    invoke-static {p2, p3}, Landroid/text/method/BaseKeyListener;->getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 372
    :goto_79
    if-eq p3, p1, :cond_87

    .line 373
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p2, p4, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 374
    return v1

    .line 376
    :cond_87
    return v0
.end method

.method private blacklist deleteLineFromCursor(Landroid/view/View;Landroid/text/Editable;Z)Z
    .registers 9

    .line 443
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3e

    .line 444
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 445
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 448
    if-ge v0, v1, :cond_13

    .line 449
    nop

    .line 450
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_15

    .line 452
    :cond_13
    nop

    .line 453
    nop

    .line 456
    :goto_15
    check-cast p1, Landroid/widget/TextView;

    .line 457
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 458
    if-eqz v2, :cond_3e

    invoke-virtual {p1}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 459
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    .line 460
    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 461
    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    .line 463
    if-eqz p3, :cond_39

    .line 464
    invoke-interface {p2, v1, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_3c

    .line 466
    :cond_39
    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 469
    :goto_3c
    const/4 p1, 0x1

    return p1

    .line 472
    :cond_3e
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .registers 5

    .line 428
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 429
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 430
    if-ge v0, p1, :cond_f

    .line 431
    nop

    .line 432
    nop

    .line 433
    move v1, v0

    move v0, p1

    move p1, v1

    .line 435
    :cond_f
    if-eq p1, v0, :cond_16

    .line 436
    invoke-interface {p2, p1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 437
    const/4 p1, 0x1

    return p1

    .line 439
    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .registers 8

    .line 380
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 383
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 384
    return v2

    .line 388
    :cond_c
    if-nez p3, :cond_10

    if-eqz v0, :cond_18

    :cond_10
    if-eqz p3, :cond_19

    .line 389
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 390
    :cond_18
    return v2

    .line 393
    :cond_19
    nop

    .line 394
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_25

    .line 395
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object p1

    goto :goto_26

    .line 394
    :cond_25
    const/4 p1, 0x0

    .line 398
    :goto_26
    if-nez p1, :cond_2d

    .line 402
    new-instance p1, Landroid/text/method/WordIterator;

    invoke-direct {p1}, Landroid/text/method/WordIterator;-><init>()V

    .line 408
    :cond_2d
    const/4 v1, -0x1

    if-eqz p3, :cond_43

    .line 409
    nop

    .line 410
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p3

    invoke-virtual {p1, p2, v0, p3}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 411
    invoke-virtual {p1, v0}, Landroid/text/method/WordIterator;->following(I)I

    move-result p1

    .line 412
    if-ne p1, v1, :cond_53

    .line 413
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p1

    goto :goto_53

    .line 416
    :cond_43
    nop

    .line 417
    invoke-virtual {p1, p2, v2, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 418
    invoke-virtual {p1, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result p1

    .line 419
    if-ne p1, v1, :cond_50

    .line 420
    move p1, v0

    move v0, v2

    goto :goto_53

    .line 419
    :cond_50
    move v3, v0

    move v0, p1

    move p1, v3

    .line 423
    :cond_53
    :goto_53
    invoke-interface {p2, v0, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 424
    const/4 p1, 0x1

    return p1
.end method

.method private static greylist-max-o getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I
    .registers 14

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, v1, :cond_5

    .line 114
    return v0

    .line 155
    :cond_5
    nop

    .line 156
    nop

    .line 158
    nop

    .line 160
    move v2, p1

    move v3, v0

    move v4, v3

    move v5, v4

    .line 162
    :cond_c
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 163
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    sub-int/2addr v2, v7

    .line 165
    const/4 v7, 0x4

    const/16 v8, 0xa

    const/4 v9, 0x2

    const/4 v10, 0x7

    const/16 v11, 0xd

    packed-switch v3, :pswitch_data_192

    .line 301
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "state "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is unknown"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 287
    :pswitch_3f
    invoke-static {v6}, Landroid/text/Emoji;->isTagSpecChar(I)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 288
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_187

    .line 290
    :cond_49
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 291
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v4, v3

    .line 292
    move v3, v11

    goto/16 :goto_187

    .line 295
    :cond_57
    nop

    .line 296
    nop

    .line 299
    move v4, v9

    move v3, v11

    goto/16 :goto_187

    .line 201
    :pswitch_5d
    invoke-static {v6}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 202
    add-int/lit8 v4, v4, -0x2

    .line 203
    move v3, v8

    goto/16 :goto_187

    .line 205
    :cond_68
    nop

    .line 207
    move v3, v11

    goto/16 :goto_187

    .line 193
    :pswitch_6c
    invoke-static {v6}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 194
    add-int/lit8 v4, v4, 0x2

    .line 195
    const/16 v3, 0xb

    goto/16 :goto_187

    .line 197
    :cond_78
    nop

    .line 199
    move v3, v11

    goto/16 :goto_187

    .line 277
    :pswitch_7c
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 279
    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    .line 280
    nop

    .line 281
    move v5, v0

    move v3, v10

    goto/16 :goto_187

    .line 283
    :cond_8f
    nop

    .line 285
    move v3, v11

    goto/16 :goto_187

    .line 265
    :pswitch_93
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 266
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v4, v3

    .line 267
    invoke-static {v6}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 268
    move v3, v7

    goto/16 :goto_187

    :cond_a8
    move v3, v10

    goto/16 :goto_187

    .line 269
    :cond_ab
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 270
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 271
    const/16 v3, 0x9

    goto/16 :goto_187

    .line 273
    :cond_b9
    nop

    .line 275
    move v3, v11

    goto/16 :goto_187

    .line 258
    :pswitch_bd
    sget v3, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    if-ne v6, v3, :cond_c5

    .line 259
    const/16 v3, 0x8

    goto/16 :goto_187

    .line 261
    :cond_c5
    nop

    .line 263
    move v3, v11

    goto/16 :goto_187

    .line 245
    :pswitch_c9
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 246
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v4, v3

    .line 247
    nop

    .line 248
    move v3, v10

    goto/16 :goto_187

    .line 251
    :cond_d8
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-nez v3, :cond_e9

    .line 252
    invoke-static {v6}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v3

    if-nez v3, :cond_e9

    .line 253
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v4, v3

    .line 255
    :cond_e9
    nop

    .line 256
    move v3, v11

    goto/16 :goto_187

    .line 239
    :pswitch_ed
    invoke-static {v6}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 240
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 242
    :cond_f9
    nop

    .line 243
    move v3, v11

    goto/16 :goto_187

    .line 227
    :pswitch_fd
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 228
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 229
    nop

    .line 230
    const/4 v3, 0x5

    goto/16 :goto_187

    .line 231
    :cond_10b
    invoke-static {v6}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 232
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v4, v3

    .line 233
    nop

    .line 234
    move v3, v10

    goto/16 :goto_187

    .line 236
    :cond_11a
    nop

    .line 237
    move v3, v11

    goto/16 :goto_187

    .line 221
    :pswitch_11e
    invoke-static {v6}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 222
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 224
    :cond_12a
    nop

    .line 225
    move v3, v11

    goto/16 :goto_187

    .line 209
    :pswitch_12e
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 210
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 211
    nop

    .line 212
    const/4 v3, 0x3

    goto :goto_187

    .line 215
    :cond_13b
    invoke-static {v6}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v3

    if-eqz v3, :cond_146

    .line 216
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v4, v3

    .line 218
    :cond_146
    nop

    .line 219
    move v3, v11

    goto :goto_187

    .line 187
    :pswitch_149
    if-ne v6, v11, :cond_14d

    .line 188
    add-int/lit8 v4, v4, 0x1

    .line 190
    :cond_14d
    nop

    .line 191
    move v3, v11

    goto :goto_187

    .line 167
    :pswitch_150
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    .line 168
    if-ne v6, v8, :cond_158

    .line 169
    move v3, v1

    goto :goto_187

    .line 170
    :cond_158
    invoke-static {v6}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-eqz v3, :cond_160

    .line 171
    const/4 v3, 0x6

    goto :goto_187

    .line 172
    :cond_160
    invoke-static {v6}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_168

    .line 173
    move v3, v8

    goto :goto_187

    .line 174
    :cond_168
    invoke-static {v6}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v3

    if-eqz v3, :cond_170

    .line 175
    move v3, v7

    goto :goto_187

    .line 176
    :cond_170
    sget v3, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    if-ne v6, v3, :cond_176

    .line 177
    move v3, v9

    goto :goto_187

    .line 178
    :cond_176
    invoke-static {v6}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v3

    if-eqz v3, :cond_17e

    .line 179
    move v3, v10

    goto :goto_187

    .line 180
    :cond_17e
    sget v3, Landroid/text/Emoji;->CANCEL_TAG:I

    if-ne v6, v3, :cond_185

    .line 181
    const/16 v3, 0xc

    goto :goto_187

    .line 183
    :cond_185
    nop

    .line 185
    move v3, v11

    .line 303
    :goto_187
    if-lez v2, :cond_18b

    if-ne v3, v11, :cond_c

    .line 305
    :cond_18b
    sub-int/2addr p1, v4

    invoke-static {p0, p1, v1}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result p0

    return p0

    nop

    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_150
        :pswitch_149
        :pswitch_12e
        :pswitch_11e
        :pswitch_fd
        :pswitch_ed
        :pswitch_c9
        :pswitch_bd
        :pswitch_93
        :pswitch_7c
        :pswitch_6c
        :pswitch_5d
        :pswitch_3f
    .end packed-switch
.end method

.method private static greylist-max-o getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I
    .registers 10

    .line 310
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 312
    add-int/lit8 v0, v3, -0x1

    if-lt p1, v0, :cond_9

    .line 313
    return v3

    .line 316
    :cond_9
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p1

    move-object v1, p0

    move v2, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result p0

    .line 319
    const/4 p1, 0x0

    invoke-static {v1, p0, p1}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result p0

    return p0
.end method

.method private static greylist-max-o isVariationSelector(I)Z
    .registers 2

    .line 89
    const/16 v0, 0x24

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method static greylist-max-o makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .registers 3

    .line 476
    nop

    .line 477
    sget-object v0, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_20

    const/4 p0, 0x1

    goto :goto_18

    .line 485
    :pswitch_e
    const/16 p0, 0x4001

    goto :goto_18

    .line 482
    :pswitch_11
    nop

    .line 483
    const/16 p0, 0x2001

    goto :goto_18

    .line 479
    :pswitch_15
    nop

    .line 480
    const/16 p0, 0x1001

    .line 488
    :goto_18
    if-eqz p1, :cond_1e

    .line 489
    const p1, 0x8000

    or-int/2addr p0, p1

    .line 491
    :cond_1e
    return p0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public whitelist backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11

    .line 72
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11

    .line 84
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 497
    sparse-switch p3, :sswitch_data_1c

    .line 505
    const/4 v0, 0x0

    goto :goto_f

    .line 502
    :sswitch_5
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 503
    goto :goto_f

    .line 499
    :sswitch_a
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 500
    nop

    .line 509
    :goto_f
    if-eqz v0, :cond_16

    .line 510
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 511
    const/4 p1, 0x1

    return p1

    .line 514
    :cond_16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_1c
    .sparse-switch
        0x43 -> :sswitch_a
        0x70 -> :sswitch_5
    .end sparse-switch
.end method

.method public whitelist onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 7

    .line 522
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2a

    .line 523
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_2a

    .line 528
    :cond_f
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 529
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 530
    if-ge v0, p1, :cond_1e

    .line 531
    nop

    .line 532
    nop

    .line 533
    move v2, v0

    move v0, p1

    move p1, v2

    .line 536
    :cond_1e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p3

    .line 537
    if-nez p3, :cond_25

    .line 538
    return v1

    .line 541
    :cond_25
    invoke-interface {p2, p1, v0, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 542
    const/4 p1, 0x1

    return p1

    .line 525
    :cond_2a
    :goto_2a
    return v1
.end method
