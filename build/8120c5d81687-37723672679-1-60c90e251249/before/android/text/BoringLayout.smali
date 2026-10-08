.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# instance fields
.field greylist-max-o mBottom:I

.field private greylist-max-o mBottomPadding:I

.field greylist-max-o mDesc:I

.field private greylist-max-o mDirect:Ljava/lang/String;

.field private final blacklist mDrawingBounds:Landroid/graphics/RectF;

.field private greylist-max-o mEllipsizedCount:I

.field private greylist-max-o mEllipsizedStart:I

.field private greylist-max-o mEllipsizedWidth:I

.field private greylist-max-o mMax:F

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mTopPadding:I

.field private blacklist mUseFallbackLineSpacing:Z


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .registers 31

    .line 274
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v10, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 770
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    .line 281
    iput v3, v0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 282
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 283
    iput v1, v0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 284
    iput-boolean v1, v0, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 286
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 287
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 23

    .line 310
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V

    .line 312
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V
    .registers 35

    .line 347
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v19, p7

    move/from16 v8, p8

    move-object/from16 v11, p9

    move/from16 v10, p10

    move/from16 v9, p11

    invoke-direct/range {v0 .. v22}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 354
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZILandroid/text/TextUtils$TruncateAt;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V
    .registers 38

    .line 372
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/16 v17, 0x0

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v19, p11

    move/from16 v20, p12

    move/from16 v21, p13

    move-object/from16 v22, p14

    invoke-direct/range {v0 .. v22}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 378
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V
    .registers 45

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p20

    move/from16 v20, p21

    move-object/from16 v21, p22

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 770
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    .line 413
    const/4 v1, 0x0

    if-eqz v11, :cond_64

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v11, v2, :cond_3e

    goto :goto_64

    .line 419
    :cond_3e
    int-to-float v2, v10

    const/4 v3, 0x1

    move-object/from16 p12, p1

    move-object/from16 p13, p2

    move-object/from16 p17, v0

    move/from16 p14, v2

    move/from16 p16, v3

    move-object/from16 p15, v11

    invoke-static/range {p12 .. p17}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    move/from16 p14, p3

    move-object/from16 p15, p4

    move/from16 p16, p6

    move-object/from16 p11, p17

    move-object/from16 p12, v0

    move/from16 p17, p7

    invoke-virtual/range {p11 .. p17}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 422
    move-object/from16 v0, p11

    iput v10, v0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 423
    goto :goto_6d

    .line 414
    :cond_64
    :goto_64
    move/from16 v3, p3

    iput v3, v0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 415
    iput v1, v0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 416
    iput v1, v0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 417
    const/4 v1, 0x1

    .line 426
    :goto_6d
    move/from16 v9, p9

    iput-boolean v9, v0, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 427
    invoke-virtual {v0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 p12, p2

    move-object/from16 p13, p4

    move/from16 p15, p8

    move-object/from16 p14, p19

    move-object/from16 p10, v0

    move/from16 p16, v1

    move-object/from16 p11, v2

    move/from16 p17, v9

    invoke-virtual/range {p10 .. p17}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 428
    return-void
.end method

.method private static greylist-max-o hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z
    .registers 9

    .line 511
    const/16 v0, 0x1f4

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 513
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, p1, :cond_38

    .line 514
    add-int/lit16 v3, v2, 0x1f4

    :try_start_c
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 518
    invoke-static {p0, v2, v4, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 520
    sub-int/2addr v4, v2

    .line 521
    move v2, v1

    :goto_15
    if-ge v2, v4, :cond_31

    .line 522
    aget-char v5, v0, v2

    .line 523
    const/16 v6, 0xa

    if-eq v5, v6, :cond_2b

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2b

    invoke-static {v5}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    move-result v5
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_33

    if-eqz v5, :cond_28

    goto :goto_2b

    .line 521
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 524
    :cond_2b
    :goto_2b
    nop

    .line 530
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 524
    const/4 p0, 0x1

    return p0

    .line 513
    :cond_31
    move v2, v3

    goto :goto_8

    .line 530
    :catchall_33
    move-exception p0

    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 531
    throw p0

    .line 528
    :cond_38
    nop

    .line 530
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 528
    return v1
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .registers 4

    .line 487
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .registers 4

    .line 502
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, v0, p2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p0

    return-object p0
.end method

.method public static greylist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .registers 5

    .line 543
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/graphics/Paint$FontMetrics;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .registers 21

    .line 573
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 574
    invoke-static {p0, v4}, Landroid/text/BoringLayout;->hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_10

    .line 575
    return-object v12

    .line 577
    :cond_10
    const/4 v13, 0x0

    if-eqz v0, :cond_1a

    invoke-interface {v0, p0, v13, v4}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 578
    return-object v12

    .line 580
    :cond_1a
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_2b

    .line 581
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 582
    const-class v2, Landroid/text/style/ParagraphStyle;

    invoke-interface {v0, v13, v4, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 583
    array-length v0, v0

    if-lez v0, :cond_2b

    .line 584
    return-object v12

    .line 588
    :cond_2b
    nop

    .line 589
    if-nez p5, :cond_35

    .line 590
    new-instance v0, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v0}, Landroid/text/BoringLayout$Metrics;-><init>()V

    move-object v14, v0

    goto :goto_3a

    .line 592
    :cond_35
    invoke-static/range {p5 .. p5}, Landroid/text/BoringLayout$Metrics;->-$$Nest$mreset(Landroid/text/BoringLayout$Metrics;)V

    move-object/from16 v14, p5

    .line 595
    :goto_3a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->fixLineHeightForLocale()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 596
    if-eqz v1, :cond_59

    .line 597
    invoke-virtual {v14, v1}, Landroid/text/BoringLayout$Metrics;->set(Landroid/graphics/Paint$FontMetrics;)V

    .line 601
    iget v0, v14, Landroid/text/BoringLayout$Metrics;->top:I

    iget v1, v14, Landroid/text/BoringLayout$Metrics;->ascent:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v14, Landroid/text/BoringLayout$Metrics;->top:I

    .line 602
    iget v0, v14, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v1, v14, Landroid/text/BoringLayout$Metrics;->descent:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v14, Landroid/text/BoringLayout$Metrics;->bottom:I

    .line 606
    :cond_59
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 607
    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object/from16 v1, p1

    move/from16 v11, p3

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 612
    invoke-static {v14}, Landroid/text/BoringLayout$Metrics;->-$$Nest$fgetmDrawingBounds(Landroid/text/BoringLayout$Metrics;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, v14, p0, v13, v12}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    iput p0, v14, Landroid/text/BoringLayout$Metrics;->width:I

    .line 613
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 615
    return-object v14
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .registers 11

    .line 564
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/graphics/Paint$FontMetrics;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .registers 17

    .line 68
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v0
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .registers 21

    .line 94
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v0
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;
    .registers 21

    .line 129
    new-instance v0, Landroid/text/BoringLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V

    return-object v0
.end method


# virtual methods
.method public whitelist computeDrawingBoundingBox()Landroid/graphics/RectF;
    .registers 2

    .line 714
    iget-object v0, p0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 7

    .line 721
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_6a

    if-nez p2, :cond_6a

    .line 722
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->fixShiftDrawingAmount()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_35

    .line 723
    nop

    .line 724
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getUseBoundsForWidth()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-virtual {p0}, Landroid/text/BoringLayout;->getShiftDrawingOffsetForStartOverhang()Z

    move-result p2

    if-eqz p2, :cond_27

    .line 725
    invoke-virtual {p0}, Landroid/text/BoringLayout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object p2

    .line 726
    iget p4, p2, Landroid/graphics/RectF;->left:F

    cmpg-float p4, p4, p3

    if-gez p4, :cond_27

    .line 727
    iget p2, p2, Landroid/graphics/RectF;->left:F

    neg-float p3, p2

    .line 730
    :cond_27
    iget-object p2, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    iget p4, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr p4, v0

    int-to-float p4, p4

    iget-object v0, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 731
    goto :goto_6d

    .line 732
    :cond_35
    nop

    .line 733
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getUseBoundsForWidth()Z

    move-result p2

    if-eqz p2, :cond_53

    invoke-virtual {p0}, Landroid/text/BoringLayout;->getShiftDrawingOffsetForStartOverhang()Z

    move-result p2

    if-eqz p2, :cond_53

    .line 734
    invoke-virtual {p0}, Landroid/text/BoringLayout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object p2

    .line 735
    iget p4, p2, Landroid/graphics/RectF;->left:F

    cmpg-float p4, p4, p3

    if-gez p4, :cond_53

    .line 736
    iget p2, p2, Landroid/graphics/RectF;->left:F

    neg-float p2, p2

    .line 737
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_54

    .line 741
    :cond_53
    move p2, p3

    :goto_54
    iget-object p4, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v1, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 743
    cmpl-float p4, p2, p3

    if-eqz p4, :cond_69

    .line 746
    neg-float p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 748
    :cond_69
    goto :goto_6d

    .line 750
    :cond_6a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 752
    :goto_6d
    return-void
.end method

.method public whitelist ellipsized(II)V
    .registers 3

    .line 758
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 759
    sub-int/2addr p2, p1

    iput p2, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 760
    return-void
.end method

.method public whitelist getBottomPadding()I
    .registers 2

    .line 689
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method public whitelist getEllipsisCount(I)I
    .registers 2

    .line 694
    iget p1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return p1
.end method

.method public whitelist getEllipsisStart(I)I
    .registers 2

    .line 699
    iget p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return p1
.end method

.method public whitelist getEllipsizedWidth()I
    .registers 2

    .line 704
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 620
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public whitelist getLineContainsTab(I)Z
    .registers 2

    .line 656
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getLineCount()I
    .registers 2

    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getLineDescent(I)I
    .registers 2

    .line 638
    iget p1, p0, Landroid/text/BoringLayout;->mDesc:I

    return p1
.end method

.method public final whitelist getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 2

    .line 679
    sget-object p1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object p1
.end method

.method public whitelist getLineMax(I)F
    .registers 3

    .line 661
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getUseBoundsForWidth()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 662
    invoke-super {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    return p1

    .line 664
    :cond_b
    iget p1, p0, Landroid/text/BoringLayout;->mMax:F

    return p1
.end method

.method public whitelist getLineStart(I)I
    .registers 2

    .line 643
    if-nez p1, :cond_4

    .line 644
    const/4 p1, 0x0

    return p1

    .line 646
    :cond_4
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    return p1
.end method

.method public whitelist getLineTop(I)I
    .registers 2

    .line 630
    if-nez p1, :cond_4

    .line 631
    const/4 p1, 0x0

    return p1

    .line 633
    :cond_4
    iget p1, p0, Landroid/text/BoringLayout;->mBottom:I

    return p1
.end method

.method public whitelist getLineWidth(I)F
    .registers 3

    .line 670
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getUseBoundsForWidth()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 671
    invoke-super {p0, p1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    return p1

    .line 673
    :cond_b
    if-nez p1, :cond_10

    iget p1, p0, Landroid/text/BoringLayout;->mMax:F

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public whitelist getParagraphDirection(I)I
    .registers 2

    .line 651
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist getTopPadding()I
    .registers 2

    .line 684
    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method blacklist init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V
    .registers 22

    .line 435
    move-object/from16 v0, p4

    instance-of v1, p1, Ljava/lang/String;

    const/4 v13, 0x0

    if-eqz v1, :cond_14

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v2, p3

    if-ne v2, v1, :cond_14

    .line 436
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_16

    .line 438
    :cond_14
    iput-object v13, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    .line 441
    :goto_16
    move-object/from16 v2, p2

    iput-object v2, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    .line 443
    if-eqz p5, :cond_26

    .line 444
    iget v1, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v4, v0, Landroid/text/BoringLayout$Metrics;->top:I

    sub-int/2addr v1, v4

    .line 445
    iget v4, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    iput v4, p0, Landroid/text/BoringLayout;->mDesc:I

    goto :goto_2f

    .line 447
    :cond_26
    iget v1, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    iget v4, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v1, v4

    .line 448
    iget v4, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    iput v4, p0, Landroid/text/BoringLayout;->mDesc:I

    .line 451
    :goto_2f
    iput v1, p0, Landroid/text/BoringLayout;->mBottom:I

    .line 453
    if-eqz p6, :cond_39

    .line 454
    iget v1, v0, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v1, v1

    iput v1, p0, Landroid/text/BoringLayout;->mMax:F

    goto :goto_66

    .line 461
    :cond_39
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 462
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    iget v10, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    iget v4, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    iget v6, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    add-int v11, v4, v6

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move/from16 v12, p7

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 465
    const/4 v2, 0x0

    invoke-virtual {v1, v13, v13, v2, v13}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/text/BoringLayout;->mMax:F

    .line 466
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 469
    :goto_66
    if-eqz p5, :cond_76

    .line 470
    iget v1, v0, Landroid/text/BoringLayout$Metrics;->top:I

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/text/BoringLayout;->mTopPadding:I

    .line 471
    iget v1, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    .line 474
    :cond_76
    iget-object v1, p0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    invoke-static {v0}, Landroid/text/BoringLayout$Metrics;->-$$Nest$fgetmDrawingBounds(Landroid/text/BoringLayout$Metrics;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 475
    iget-object v0, p0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    iget v1, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v2, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 476
    return-void
.end method

.method public whitelist isFallbackLineSpacingEnabled()Z
    .registers 2

    .line 709
    iget-boolean v0, p0, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    return v0
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .registers 9

    .line 152
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 154
    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    iput p4, p1, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 155
    const/4 p4, 0x0

    iput p4, p1, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 156
    iput p4, p1, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 157
    iput-boolean p4, p1, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 159
    move-object p4, p5

    move-object p5, p7

    const/4 p7, 0x1

    move p6, p8

    const/4 p8, 0x0

    invoke-virtual/range {p1 .. p8}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 160
    return-object p1
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .registers 11

    .line 256
    move-object p6, p7

    move p7, p8

    move-object p8, p9

    move p9, p10

    const/4 p10, 0x0

    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p10}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;

    move-result-object p1

    return-object p1
.end method

.method public blacklist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZZLandroid/graphics/Paint$FontMetrics;)Landroid/text/BoringLayout;
    .registers 23

    .line 210
    move-object/from16 v3, p9

    move/from16 v7, p10

    const/4 v8, 0x0

    if-eqz v3, :cond_23

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v0, :cond_c

    goto :goto_23

    .line 218
    :cond_c
    int-to-float v2, v7

    const/4 v4, 0x1

    move-object v5, p0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    move v3, p3

    move-object v4, p4

    move v6, p6

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 221
    iput v7, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 222
    move v6, v8

    goto :goto_36

    .line 211
    :cond_23
    :goto_23
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 213
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 214
    iput v8, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 215
    iput v8, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 216
    const/4 v8, 0x1

    move v6, v8

    .line 225
    :goto_36
    move/from16 v7, p11

    iput-boolean v7, p0, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 227
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 229
    return-object p0
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;
    .registers 24

    .line 195
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZZLandroid/graphics/Paint$FontMetrics;)Landroid/text/BoringLayout;

    move-result-object p1

    return-object p1
.end method
