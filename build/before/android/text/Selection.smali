.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$MemoryTextWatcher;,
        Landroid/text/Selection$PositionIterator;,
        Landroid/text/Selection$MEMORY;,
        Landroid/text/Selection$START;,
        Landroid/text/Selection$END;
    }
.end annotation


# static fields
.field private static final blacklist PARAGRAPH_SEPARATOR:C = '\n'

.field public static final whitelist SELECTION_END:Ljava/lang/Object;

.field private static final greylist-max-o SELECTION_MEMORY:Ljava/lang/Object;

.field public static final whitelist SELECTION_START:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetSELECTION_MEMORY()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 640
    new-instance v0, Landroid/text/Selection$MEMORY;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/Selection$MEMORY;-><init>(Landroid/text/Selection-IA;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    .line 646
    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection-IA;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 647
    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection-IA;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o chooseHorizontal(Landroid/text/Layout;III)I
    .registers 6

    .line 596
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 597
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 599
    if-ne v0, v1, :cond_20

    .line 602
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 603
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p0

    .line 605
    if-gez p1, :cond_1a

    .line 608
    cmpg-float p0, v0, p0

    if-gez p0, :cond_19

    .line 609
    return p2

    .line 611
    :cond_19
    return p3

    .line 615
    :cond_1a
    cmpl-float p0, v0, p0

    if-lez p0, :cond_1f

    .line 616
    return p2

    .line 618
    :cond_1f
    return p3

    .line 627
    :cond_20
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 628
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p0

    .line 630
    if-ne p0, p1, :cond_2f

    .line 631
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 633
    :cond_2f
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static whitelist extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 9

    .line 469
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 470
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 472
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    if-ge v2, v0, :cond_18

    .line 473
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    .line 474
    return v6

    .line 475
    :cond_18
    move-object v0, p0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result p0

    if-eq v3, p0, :cond_28

    .line 476
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result p0

    const/4 p1, -0x1

    invoke-static {v0, p0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    .line 477
    return v6

    .line 480
    :cond_28
    return v6
.end method

.method public static whitelist extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 4

    .line 488
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 489
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result p1

    .line 491
    const/4 v1, 0x1

    if-eq p1, v0, :cond_f

    .line 492
    invoke-static {p0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 493
    return v1

    .line 496
    :cond_f
    return v1
.end method

.method public static whitelist extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 4

    .line 504
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 505
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result p1

    .line 507
    const/4 v1, 0x1

    if-eq p1, v0, :cond_f

    .line 508
    invoke-static {p0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 509
    return v1

    .line 512
    :cond_f
    return v1
.end method

.method public static final whitelist extendSelection(Landroid/text/Spannable;I)V
    .registers 3

    .line 169
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    .line 170
    return-void
.end method

.method private static greylist-max-o extendSelection(Landroid/text/Spannable;II)V
    .registers 5

    .line 176
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 177
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 179
    :cond_f
    invoke-static {p0, p2}, Landroid/text/Selection;->updateMemory(Landroid/text/Spannable;I)V

    .line 180
    return-void
.end method

.method public static whitelist extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 3

    .line 516
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result p1

    .line 517
    invoke-static {p0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 518
    const/4 p0, 0x1

    return p0
.end method

.method public static whitelist extendToParagraphEnd(Landroid/text/Spannable;)Z
    .registers 4

    .line 433
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 434
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    invoke-static {p0, v2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    .line 435
    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 436
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    .line 438
    :cond_13
    if-eq v1, v0, :cond_1a

    .line 439
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 440
    const/4 p0, 0x1

    return p0

    .line 442
    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static whitelist extendToParagraphStart(Landroid/text/Spannable;)Z
    .registers 5

    .line 414
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 415
    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0xa

    invoke-static {p0, v2, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    .line 416
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_11

    .line 417
    move v1, v3

    .line 419
    :cond_11
    if-eq v1, v0, :cond_18

    .line 420
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 421
    const/4 p0, 0x1

    return p0

    .line 423
    :cond_18
    return v3
.end method

.method public static whitelist extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 3

    .line 522
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result p1

    .line 523
    invoke-static {p0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 524
    return v0
.end method

.method public static whitelist extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 9

    .line 450
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 451
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 453
    const/4 v6, 0x1

    if-lez v2, :cond_13

    .line 454
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    .line 455
    return v6

    .line 456
    :cond_13
    move-object v0, p0

    if-eqz v3, :cond_1b

    .line 457
    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 458
    return v6

    .line 461
    :cond_1b
    return v6
.end method

.method private static greylist-max-o findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .registers 4

    .line 578
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p0

    .line 579
    invoke-virtual {p1, p0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p0

    .line 580
    invoke-virtual {p1, p0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 582
    mul-int/2addr p2, v0

    if-gez p2, :cond_14

    .line 583
    invoke-virtual {p1, p0}, Landroid/text/Layout;->getLineStart(I)I

    move-result p0

    return p0

    .line 585
    :cond_14
    invoke-virtual {p1, p0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p2

    .line 587
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p0, p1, :cond_21

    .line 588
    return p2

    .line 590
    :cond_21
    add-int/lit8 p2, p2, -0x1

    return p2
.end method

.method public static final whitelist getSelectionEnd(Ljava/lang/CharSequence;)I
    .registers 2

    .line 54
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_d

    .line 55
    check-cast p0, Landroid/text/Spanned;

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 57
    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method private static greylist-max-o getSelectionMemory(Ljava/lang/CharSequence;)I
    .registers 2

    .line 61
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_d

    .line 62
    check-cast p0, Landroid/text/Spanned;

    sget-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 64
    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public static final whitelist getSelectionStart(Ljava/lang/CharSequence;)I
    .registers 2

    .line 43
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_d

    .line 44
    check-cast p0, Landroid/text/Spanned;

    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 46
    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public static whitelist moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 10

    .line 272
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 273
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 275
    const/4 v1, 0x0

    const/4 v7, 0x1

    if-eq v0, v4, :cond_21

    .line 276
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 277
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 279
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 281
    if-nez p1, :cond_20

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p0

    if-ne v0, p0, :cond_20

    .line 282
    return v1

    .line 285
    :cond_20
    return v7

    .line 287
    :cond_21
    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 289
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    sub-int/2addr v0, v7

    if-ge v3, v0, :cond_34

    .line 290
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    .line 292
    return v7

    .line 293
    :cond_34
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p1

    if-eq v4, p1, :cond_42

    .line 294
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 295
    return v7

    .line 299
    :cond_42
    return v1
.end method

.method public static whitelist moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 6

    .line 308
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 309
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 311
    const/4 v2, 0x1

    if-eq v0, v1, :cond_14

    .line 312
    const/4 v3, -0x1

    invoke-static {p1, v3, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 313
    return v2

    .line 315
    :cond_14
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result p1

    .line 317
    if-eq p1, v1, :cond_1e

    .line 318
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 319
    return v2

    .line 323
    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static whitelist moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 5

    .line 333
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 334
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 336
    const/4 v2, 0x1

    if-eq v0, v1, :cond_13

    .line 337
    invoke-static {p1, v2, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 338
    return v2

    .line 340
    :cond_13
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result p1

    .line 342
    if-eq p1, v1, :cond_1d

    .line 343
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 344
    return v2

    .line 348
    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .registers 4

    .line 566
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/text/Selection$PositionIterator;->following(I)I

    move-result p1

    .line 567
    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    .line 568
    if-eqz p2, :cond_11

    .line 569
    invoke-static {p0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_14

    .line 571
    :cond_11
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 574
    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public static whitelist moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 3

    .line 528
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result p1

    .line 529
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 530
    const/4 p0, 0x1

    return p0
.end method

.method public static whitelist moveToParagraphEnd(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 5

    .line 388
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 389
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 391
    const/4 v2, 0x1

    if-eq v0, v1, :cond_13

    .line 392
    invoke-static {p1, v2, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 393
    return v2

    .line 395
    :cond_13
    add-int/lit8 p1, v1, 0x1

    const/16 v0, 0xa

    invoke-static {p0, v0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p1

    .line 396
    const/4 v0, -0x1

    if-ne p1, v0, :cond_22

    .line 397
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p1

    .line 399
    :cond_22
    if-eq p1, v1, :cond_28

    .line 400
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 401
    return v2

    .line 404
    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public static whitelist moveToParagraphStart(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 6

    .line 361
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 362
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 364
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_14

    .line 365
    invoke-static {p1, v2, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 366
    return v3

    .line 368
    :cond_14
    const/16 p1, 0xa

    sub-int/2addr v0, v3

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result p1

    .line 369
    const/4 v0, 0x0

    if-ne p1, v2, :cond_1f

    .line 370
    move p1, v0

    .line 372
    :cond_1f
    if-eq p1, v1, :cond_25

    .line 373
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 374
    return v3

    .line 377
    :cond_25
    return v0
.end method

.method public static greylist moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .registers 4

    .line 551
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/text/Selection$PositionIterator;->preceding(I)I

    move-result p1

    .line 552
    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    .line 553
    if-eqz p2, :cond_11

    .line 554
    invoke-static {p0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_14

    .line 556
    :cond_11
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 559
    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public static whitelist moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 3

    .line 534
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result p1

    .line 535
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 536
    return v0
.end method

.method public static whitelist moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 10

    .line 201
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 202
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 204
    const/4 v1, 0x0

    const/4 v7, 0x1

    if-eq v0, v4, :cond_21

    .line 205
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 206
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 208
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 210
    if-nez p1, :cond_20

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p0

    if-ne v0, p0, :cond_20

    .line 211
    return v1

    .line 214
    :cond_20
    return v7

    .line 216
    :cond_21
    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 218
    if-lez v3, :cond_2f

    .line 219
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    .line 221
    return v7

    .line 222
    :cond_2f
    if-eqz v4, :cond_35

    .line 223
    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 224
    return v7

    .line 228
    :cond_35
    return v1
.end method

.method private static greylist-max-o removeMemory(Landroid/text/Spannable;)V
    .registers 5

    .line 125
    sget-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 126
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/Selection$MemoryTextWatcher;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Selection$MemoryTextWatcher;

    .line 127
    array-length v1, v0

    :goto_13
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 128
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 130
    :cond_1d
    return-void
.end method

.method public static final whitelist removeSelection(Landroid/text/Spannable;)V
    .registers 3

    .line 186
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v1, 0x200

    invoke-interface {p0, v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;I)V

    .line 187
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 188
    invoke-static {p0}, Landroid/text/Selection;->removeMemory(Landroid/text/Spannable;)V

    .line 189
    return-void
.end method

.method public static final whitelist selectAll(Landroid/text/Spannable;)V
    .registers 3

    .line 162
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 163
    return-void
.end method

.method public static final whitelist setSelection(Landroid/text/Spannable;I)V
    .registers 2

    .line 155
    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 156
    return-void
.end method

.method public static whitelist setSelection(Landroid/text/Spannable;II)V
    .registers 4

    .line 80
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 81
    return-void
.end method

.method private static greylist-max-o setSelection(Landroid/text/Spannable;III)V
    .registers 6

    .line 92
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 93
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 95
    if-ne v0, p1, :cond_c

    if-eq v1, p2, :cond_1d

    .line 96
    :cond_c
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v1, 0x222

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 98
    sget-object p1, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v0, 0x22

    invoke-interface {p0, p1, p2, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 99
    invoke-static {p0, p3}, Landroid/text/Selection;->updateMemory(Landroid/text/Spannable;I)V

    .line 101
    :cond_1d
    return-void
.end method

.method private static greylist-max-o setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V
    .registers 8

    .line 239
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    add-int/2addr p2, p4

    .line 240
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p4

    const/4 v1, -0x1

    if-ne v0, p4, :cond_28

    .line 241
    invoke-static {p0}, Landroid/text/Selection;->getSelectionMemory(Ljava/lang/CharSequence;)I

    move-result p4

    .line 242
    if-le p4, v1, :cond_1d

    .line 244
    invoke-virtual {p1, p4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p3

    .line 245
    invoke-virtual {p1, p2, p3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 246
    nop

    .line 247
    move p3, p4

    goto :goto_26

    .line 249
    :cond_1d
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p4

    .line 250
    invoke-virtual {p1, p2, p4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 251
    nop

    .line 253
    :goto_26
    move v1, p3

    goto :goto_2d

    .line 254
    :cond_28
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineStart(I)I

    move-result p1

    .line 255
    nop

    .line 258
    :goto_2d
    if-eqz p5, :cond_33

    .line 259
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    goto :goto_36

    .line 261
    :cond_33
    invoke-static {p0, p1, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 263
    :goto_36
    return-void
.end method

.method private static greylist-max-o updateMemory(Landroid/text/Spannable;I)V
    .registers 6

    .line 109
    const/4 v0, -0x1

    if-le p1, v0, :cond_22

    .line 110
    invoke-static {p0}, Landroid/text/Selection;->getSelectionMemory(Ljava/lang/CharSequence;)I

    move-result v1

    .line 111
    if-eq p1, v1, :cond_21

    .line 112
    sget-object v2, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    const/16 v3, 0x22

    invoke-interface {p0, v2, p1, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 113
    if-ne v1, v0, :cond_21

    .line 115
    new-instance p1, Landroid/text/Selection$MemoryTextWatcher;

    invoke-direct {p1}, Landroid/text/Selection$MemoryTextWatcher;-><init>()V

    .line 116
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 119
    :cond_21
    goto :goto_25

    .line 120
    :cond_22
    invoke-static {p0}, Landroid/text/Selection;->removeMemory(Landroid/text/Spannable;)V

    .line 122
    :goto_25
    return-void
.end method
