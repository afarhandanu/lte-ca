.class public Landroid/text/PrecomputedText;
.super Ljava/lang/Object;
.source "PrecomputedText.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/PrecomputedText$Params;,
        Landroid/text/PrecomputedText$ParagraphInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o LINE_FEED:C = '\n'


# instance fields
.field private final greylist-max-o mEnd:I

.field private final greylist-max-o mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

.field private final greylist-max-o mParams:Landroid/text/PrecomputedText$Params;

.field private final greylist-max-o mStart:I

.field private final greylist-max-o mText:Landroid/text/SpannableString;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/CharSequence;IILandroid/text/PrecomputedText$Params;[Landroid/text/PrecomputedText$ParagraphInfo;)V
    .registers 8

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    new-instance v0, Landroid/text/SpannableString;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;Z)V

    iput-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    .line 541
    iput p2, p0, Landroid/text/PrecomputedText;->mStart:I

    .line 542
    iput p3, p0, Landroid/text/PrecomputedText;->mEnd:I

    .line 543
    iput-object p4, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    .line 544
    iput-object p5, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    .line 545
    return-void
.end method

.method public static whitelist create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;
    .registers 9

    .line 409
    nop

    .line 410
    instance-of v0, p0, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_43

    .line 411
    move-object v0, p0

    check-cast v0, Landroid/text/PrecomputedText;

    .line 412
    invoke-virtual {v0}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    .line 413
    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmPaint(Landroid/text/PrecomputedText$Params;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmTextDir(Landroid/text/PrecomputedText$Params;)Landroid/text/TextDirectionHeuristic;

    move-result-object v3

    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmBreakStrategy(Landroid/text/PrecomputedText$Params;)I

    move-result v4

    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/PrecomputedText$Params;)I

    move-result v5

    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmLineBreakConfig(Landroid/text/PrecomputedText$Params;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v6

    .line 414
    invoke-virtual/range {v1 .. v6}, Landroid/text/PrecomputedText$Params;->checkResultUsable(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;IILandroid/graphics/text/LineBreakConfig;)I

    move-result v2

    .line 417
    packed-switch v2, :pswitch_data_66

    goto :goto_43

    .line 419
    :pswitch_28
    return-object v0

    .line 423
    :pswitch_29
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v2

    invoke-virtual {v1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v3

    if-ne v2, v3, :cond_43

    .line 424
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v2

    .line 425
    invoke-virtual {v1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v1

    if-ne v2, v1, :cond_43

    .line 426
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/text/PrecomputedText;->createMeasuredParagraphsFromPrecomputedText(Landroid/text/PrecomputedText;Landroid/text/PrecomputedText$Params;Z)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v0

    goto :goto_44

    .line 436
    :cond_43
    :goto_43
    const/4 v0, 0x0

    :goto_44
    if-nez v0, :cond_56

    .line 437
    nop

    .line 438
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 437
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v0

    move-object v6, v0

    goto :goto_59

    .line 436
    :cond_56
    move-object v1, p0

    move-object v2, p1

    move-object v6, v0

    .line 441
    :goto_59
    move-object v5, v2

    move-object v2, v1

    new-instance v1, Landroid/text/PrecomputedText;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct/range {v1 .. v6}, Landroid/text/PrecomputedText;-><init>(Ljava/lang/CharSequence;IILandroid/text/PrecomputedText$Params;[Landroid/text/PrecomputedText$ParagraphInfo;)V

    return-object v1

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
    .end packed-switch
.end method

.method public static blacklist createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZZ)[Landroid/text/PrecomputedText$ParagraphInfo;
    .registers 23

    .line 487
    move/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1d

    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v2

    if-eqz v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    move v2, v4

    .line 494
    :goto_1e
    const/4 v5, 0x2

    if-eqz v2, :cond_30

    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v2

    invoke-static {v2}, Landroid/text/PrecomputedText;->isFastHyphenation(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 496
    move v3, v5

    goto :goto_2e

    .line 497
    :cond_2d
    nop

    :goto_2e
    move v12, v3

    goto :goto_31

    .line 499
    :cond_30
    move v12, v4

    .line 502
    :goto_31
    nop

    .line 503
    nop

    .line 504
    const/4 v2, 0x0

    move/from16 v9, p2

    :goto_36
    if-ge v9, v0, :cond_91

    .line 505
    const/16 v3, 0xa

    move-object/from16 v8, p0

    invoke-static {v8, v3, v9, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    .line 506
    if-gez v3, :cond_44

    .line 509
    move v10, v0

    goto :goto_47

    .line 511
    :cond_44
    add-int/lit8 v3, v3, 0x1

    move v10, v3

    .line 514
    :goto_47
    if-nez v2, :cond_70

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v2

    .line 516
    invoke-virtual {v2}, Landroid/graphics/text/LineBreakConfig;->getLineBreakWordStyle()I

    move-result v3

    if-ne v3, v5, :cond_6c

    move/from16 v3, p2

    if-ne v9, v3, :cond_59

    if-eq v10, v0, :cond_6e

    .line 520
    :cond_59
    new-instance v6, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v6}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    .line 521
    invoke-virtual {v6, v2}, Landroid/graphics/text/LineBreakConfig$Builder;->merge(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v2

    .line 522
    invoke-virtual {v2, v4}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v2

    .line 523
    invoke-virtual {v2}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v2

    move-object v7, v2

    goto :goto_73

    .line 516
    :cond_6c
    move/from16 v3, p2

    .line 527
    :cond_6e
    move-object v7, v2

    goto :goto_73

    .line 514
    :cond_70
    move/from16 v3, p2

    move-object v7, v2

    .line 527
    :goto_73
    new-instance v2, Landroid/text/PrecomputedText$ParagraphInfo;

    .line 528
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 529
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v11

    .line 527
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-static/range {v6 .. v16}, Landroid/text/MeasuredParagraph;->buildForStaticLayout(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v6

    invoke-direct {v2, v10, v6}, Landroid/text/PrecomputedText$ParagraphInfo;-><init>(ILandroid/text/MeasuredParagraph;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    move-object v2, v7

    move v9, v10

    goto :goto_36

    .line 533
    :cond_91
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/text/PrecomputedText$ParagraphInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/PrecomputedText$ParagraphInfo;

    return-object v0
.end method

.method private static blacklist createMeasuredParagraphsFromPrecomputedText(Landroid/text/PrecomputedText;Landroid/text/PrecomputedText$Params;Z)[Landroid/text/PrecomputedText$ParagraphInfo;
    .registers 17

    .line 451
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    .line 452
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v3

    .line 454
    :goto_11
    const/4 v4, 0x2

    if-eqz v0, :cond_23

    .line 455
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v0

    invoke-static {v0}, Landroid/text/PrecomputedText;->isFastHyphenation(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 456
    move v0, v4

    goto :goto_21

    .line 457
    :cond_20
    move v0, v1

    :goto_21
    move v6, v0

    goto :goto_24

    .line 459
    :cond_23
    move v6, v3

    .line 461
    :goto_24
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig;->getLineBreakWordStyle()I

    move-result v5

    if-ne v5, v4, :cond_47

    .line 463
    invoke-virtual {p0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v4

    if-eq v4, v1, :cond_47

    .line 465
    new-instance v1, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v1}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    .line 466
    invoke-virtual {v1, v0}, Landroid/graphics/text/LineBreakConfig$Builder;->merge(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    .line 467
    invoke-virtual {v0, v3}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    move-object v1, v0

    goto :goto_48

    .line 470
    :cond_47
    move-object v1, v0

    :goto_48
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 471
    move v12, v3

    :goto_4e
    invoke-virtual {p0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v0

    if-ge v12, v0, :cond_7c

    .line 472
    invoke-virtual {p0, v12}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v3

    .line 473
    invoke-virtual {p0, v12}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v4

    .line 474
    new-instance v13, Landroid/text/PrecomputedText$ParagraphInfo;

    .line 475
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 476
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v5

    .line 477
    invoke-virtual {p0, v12}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v9

    .line 474
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v2, p0

    move/from16 v7, p2

    invoke-static/range {v0 .. v10}, Landroid/text/MeasuredParagraph;->buildForStaticLayout(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0

    invoke-direct {v13, v4, v0}, Landroid/text/PrecomputedText$ParagraphInfo;-><init>(ILandroid/text/MeasuredParagraph;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v12, v12, 0x1

    goto :goto_4e

    .line 479
    :cond_7c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/text/PrecomputedText$ParagraphInfo;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/PrecomputedText$ParagraphInfo;

    return-object v0
.end method

.method private static blacklist isFastHyphenation(I)Z
    .registers 2

    .line 445
    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 3

    .line 833
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->charAt(I)C

    move-result p1

    return p1
.end method

.method public blacklist checkResultUsable(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;IILandroid/graphics/text/LineBreakConfig;)I
    .registers 10

    .line 619
    iget v0, p0, Landroid/text/PrecomputedText;->mStart:I

    if-ne v0, p1, :cond_13

    iget p1, p0, Landroid/text/PrecomputedText;->mEnd:I

    if-eq p1, p2, :cond_9

    goto :goto_13

    .line 622
    :cond_9
    iget-object p2, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    move-object v1, p4

    move-object p4, p3

    move-object p3, v1

    invoke-virtual/range {p2 .. p7}, Landroid/text/PrecomputedText$Params;->checkResultUsable(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;IILandroid/graphics/text/LineBreakConfig;)I

    move-result p1

    return p1

    .line 620
    :cond_13
    :goto_13
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o findParaIndex(I)I
    .registers 6

    .line 630
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 631
    iget-object v1, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    if-ge p1, v1, :cond_f

    .line 632
    return v0

    .line 630
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 635
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pos must be less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    iget-object v3, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gave "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBounds(IILandroid/graphics/Rect;)V
    .registers 8

    .line 682
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_e

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p1, v2, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    const-string v3, "invalid start offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 683
    if-ltz p2, :cond_20

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p2, v2, :cond_20

    move v2, v0

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    const-string v3, "invalid end offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 684
    if-gt p1, p2, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    const-string/jumbo v2, "start offset can not be larger than end offset"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 685
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    if-ne p1, p2, :cond_39

    .line 687
    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 688
    return-void

    .line 690
    :cond_39
    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v0

    .line 691
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v1

    .line 692
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v2

    .line 693
    if-lt p1, v1, :cond_53

    if-lt v2, p2, :cond_53

    .line 698
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v0

    sub-int/2addr p1, v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/MeasuredParagraph;->getBounds(IILandroid/graphics/Rect;)V

    .line 699
    return-void

    .line 694
    :cond_53
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot measured across the paragraph:para: ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), request: ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public blacklist getCharWidthAt(I)F
    .registers 4

    .line 741
    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    if-ge p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string v1, "invalid offset"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 742
    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v0

    .line 743
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v1

    .line 744
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    .line 745
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v0

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result p1

    return p1
.end method

.method public greylist-max-o getEnd()I
    .registers 2

    .line 568
    iget v0, p0, Landroid/text/PrecomputedText;->mEnd:I

    return v0
.end method

.method public whitelist getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 8

    .line 713
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_e

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p1, v2, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    const-string v3, "invalid start offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 714
    if-ltz p2, :cond_20

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p2, v2, :cond_20

    move v2, v0

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    const-string v3, "invalid end offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 715
    if-gt p1, p2, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    const-string/jumbo v1, "start offset can not be larger than end offset"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 716
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    if-ne p1, p2, :cond_3f

    .line 718
    iget-object p1, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 719
    return-void

    .line 721
    :cond_3f
    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v0

    .line 722
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v1

    .line 723
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v2

    .line 724
    if-lt p1, v1, :cond_59

    if-lt v2, p2, :cond_59

    .line 729
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v0

    sub-int/2addr p1, v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/MeasuredParagraph;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    .line 731
    return-void

    .line 725
    :cond_59
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot measured across the paragraph:para: ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), request: ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public greylist-max-o getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;
    .registers 3

    .line 603
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    aget-object p1, v0, p1

    iget-object p1, p1, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    return-object p1
.end method

.method public greylist-max-o getMemoryUsage()I
    .registers 4

    .line 755
    nop

    .line 756
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {p0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 757
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/MeasuredParagraph;->getMemoryUsage()I

    move-result v2

    add-int/2addr v1, v2

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 759
    :cond_15
    return v1
.end method

.method public whitelist getParagraphCount()I
    .registers 2

    .line 582
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    array-length v0, v0

    return v0
.end method

.method public whitelist getParagraphEnd(I)I
    .registers 5

    .line 597
    invoke-virtual {p0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v0

    const-string/jumbo v1, "paraIndex"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 598
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    aget-object p1, v0, p1

    iget p1, p1, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    return p1
.end method

.method public greylist-max-o getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;
    .registers 2

    .line 608
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    return-object v0
.end method

.method public whitelist getParagraphStart(I)I
    .registers 5

    .line 589
    invoke-virtual {p0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v0

    const-string/jumbo v1, "paraIndex"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 590
    if-nez p1, :cond_10

    iget p1, p0, Landroid/text/PrecomputedText;->mStart:I

    goto :goto_16

    :cond_10
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result p1

    :goto_16
    return p1
.end method

.method public whitelist getParams()Landroid/text/PrecomputedText$Params;
    .registers 2

    .line 575
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    return-object v0
.end method

.method public whitelist getSpanEnd(Ljava/lang/Object;)I
    .registers 3

    .line 808
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public whitelist getSpanFlags(Ljava/lang/Object;)I
    .registers 3

    .line 813
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public whitelist getSpanStart(Ljava/lang/Object;)I
    .registers 3

    .line 803
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 798
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getStart()I
    .registers 2

    .line 560
    iget v0, p0, Landroid/text/PrecomputedText;->mStart:I

    return v0
.end method

.method public greylist-max-o getText()Ljava/lang/CharSequence;
    .registers 2

    .line 552
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    return-object v0
.end method

.method public whitelist getWidth(II)F
    .registers 8

    .line 652
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_e

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p1, v2, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    const-string v3, "invalid start offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 653
    if-ltz p2, :cond_20

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p2, v2, :cond_20

    move v2, v0

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    const-string v3, "invalid end offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 654
    if-gt p1, p2, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    const-string/jumbo v1, "start offset can not be larger than end offset"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 656
    if-ne p1, p2, :cond_34

    .line 657
    const/4 p1, 0x0

    return p1

    .line 659
    :cond_34
    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v0

    .line 660
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v1

    .line 661
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v2

    .line 662
    if-lt p1, v1, :cond_4f

    if-lt v2, p2, :cond_4f

    .line 667
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v0

    sub-int/2addr p1, v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/text/MeasuredParagraph;->getWidth(II)F

    move-result p1

    return p1

    .line 663
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot measured across the paragraph:para: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), request: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 828
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    return v0
.end method

.method public whitelist nextSpanTransition(IILjava/lang/Class;)I
    .registers 5

    .line 818
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableString;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public whitelist removeSpan(Ljava/lang/Object;)V
    .registers 3

    .line 784
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_a

    .line 788
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 789
    return-void

    .line 785
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MetricAffectingSpan can not be removed from PrecomputedText."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSpan(Ljava/lang/Object;III)V
    .registers 6

    .line 772
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_a

    .line 776
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 777
    return-void

    .line 773
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetricAffectingSpan can not be set to PrecomputedText."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    .line 838
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1, p2}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    invoke-static {p1, p2}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 843
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
