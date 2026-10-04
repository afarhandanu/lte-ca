.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$Builder;,
        Landroid/text/StaticLayout$LineBreaks;
    }
.end annotation


# static fields
.field private static final greylist-max-o CHAR_NEW_LINE:C = '\n'

.field private static final greylist-max-o COLUMNS_ELLIPSIZE:I = 0x7

.field private static final greylist-max-o COLUMNS_NORMAL:I = 0x5

.field private static final greylist-max-o DEFAULT_MAX_LINE_HEIGHT:I = -0x1

.field private static final greylist-max-o DESCENT:I = 0x2

.field private static final greylist-max-o DIR:I = 0x0

.field private static final greylist-max-o DIR_SHIFT:I = 0x1e

.field private static final greylist-max-o ELLIPSIS_COUNT:I = 0x6

.field private static final greylist ELLIPSIS_START:I = 0x5

.field private static final blacklist END_HYPHEN_MASK:I = 0x7

.field private static final greylist-max-o EXTRA:I = 0x3

.field private static final greylist-max-o EXTRA_ROUNDING:D = 0.5

.field private static final greylist-max-o HYPHEN:I = 0x4

.field private static final greylist-max-o HYPHEN_MASK:I = 0xff

.field private static final greylist-max-o START:I = 0x0

.field private static final blacklist START_HYPHEN_BITS_SHIFT:I = 0x3

.field private static final blacklist START_HYPHEN_MASK:I = 0x18

.field private static final greylist-max-o START_MASK:I = 0x1fffffff

.field private static final greylist-max-o TAB:I = 0x0

.field private static final blacklist TAB_INCREMENT:F = 20.0f

.field private static final greylist-max-o TAB_MASK:I = 0x20000000

.field static final greylist-max-o TAG:Ljava/lang/String; = "StaticLayout"

.field private static final greylist-max-o TOP:I = 0x1


# instance fields
.field private greylist-max-o mBottomPadding:I

.field private greylist mColumns:I

.field private blacklist mDrawingBounds:Landroid/graphics/RectF;

.field private greylist-max-o mEllipsized:Z

.field private greylist-max-o mLeftIndents:[I

.field private greylist mLineCount:I

.field private greylist mLineDirections:[Landroid/text/Layout$Directions;

.field private greylist mLines:[I

.field private greylist-max-o mMaxLineHeight:I

.field private greylist mMaximumVisibleLineCount:I

.field private greylist-max-o mRightIndents:[I

.field private greylist-max-o mTopPadding:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 23

    .line 617
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 1611
    iput-object v1, v0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    .line 1626
    const/4 v1, -0x1

    iput v1, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1645
    const v1, 0x7fffffff

    iput v1, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 641
    const/4 v1, 0x7

    iput v1, v0, Landroid/text/StaticLayout;->mColumns:I

    .line 642
    const-class v1, Landroid/text/Layout$Directions;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iput-object v1, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 643
    iget v1, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    .line 644
    return-void
.end method

.method private constructor blacklist <init>(Landroid/text/StaticLayout$Builder;ZI)V
    .registers 26

    .line 710
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    goto :goto_28

    :cond_c
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1e

    .line 711
    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_1e
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    :goto_27
    move-object v1, v0

    :goto_28
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmAlignment(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F

    move-result v6

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMaxLines(Landroid/text/StaticLayout$Builder;)I

    move-result v12

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v14

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLeftIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v15

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmRightIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v16

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I

    move-result v17

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmUseBoundsForWidth(Landroid/text/StaticLayout$Builder;)Z

    move-result v19

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmShiftDrawingOffsetForStartOverhang(Landroid/text/StaticLayout$Builder;)Z

    move-result v20

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v21

    .line 710
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 1611
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    .line 1626
    const/4 v1, -0x1

    iput v1, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1645
    const v1, 0x7fffffff

    iput v1, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 718
    move/from16 v1, p3

    iput v1, v0, Landroid/text/StaticLayout;->mColumns:I

    .line 719
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    if-eqz v1, :cond_a6

    .line 720
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Layout$Ellipsizer;

    .line 722
    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 723
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    iput v2, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 724
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    iput-object v2, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 727
    :cond_a6
    const-class v1, Landroid/text/Layout$Directions;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iput-object v1, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 728
    iget v1, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    .line 729
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMaxLines(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 731
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLeftIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 732
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmRightIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 734
    const-string v1, "Constructing StaticLayout"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 736
    :try_start_d1
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V
    :try_end_dc
    .catchall {:try_start_d1 .. :try_end_dc} :catchall_e1

    .line 738
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 739
    nop

    .line 740
    return-void

    .line 738
    :catchall_e1
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 739
    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/text/StaticLayout$Builder;ZILandroid/text/StaticLayout-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;ZI)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/text/StaticLayout-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/text/StaticLayout;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 667
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 669
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 681
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 684
    return-void
.end method

.method public constructor greylist-max-p <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    invoke-static {p1, p2, p3, p4, p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 699
    invoke-virtual {p1, p6}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 700
    invoke-virtual {p1, p7}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 701
    invoke-virtual {p1, p9, p8}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 702
    invoke-virtual {p1, p10}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 703
    invoke-virtual {p1, p11}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 704
    invoke-virtual {p1, p12}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 705
    invoke-virtual {p1, p13}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 706
    if-eqz p11, :cond_24

    const/4 p2, 0x7

    goto :goto_25

    :cond_24
    const/4 p2, 0x5

    .line 698
    :goto_25
    invoke-direct {p0, p1, p10, p2}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;ZI)V

    .line 707
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 654
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 656
    return-void
.end method

.method private blacklist calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .registers 16

    .line 1291
    invoke-direct {p0, p7}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v0

    sub-float/2addr p5, v0

    .line 1292
    cmpg-float p8, p8, p5

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-gtz p8, :cond_1f

    if-nez p10, :cond_1f

    .line 1294
    iget-object p1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p2, p7

    add-int/2addr p2, v0

    aput v1, p1, p2

    .line 1295
    iget-object p1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p2, p7

    add-int/lit8 p2, p2, 0x6

    aput v1, p1, p2

    .line 1296
    return-void

    .line 1299
    :cond_1f
    invoke-static {p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p9, p8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p8

    .line 1300
    nop

    .line 1301
    nop

    .line 1302
    sub-int/2addr p2, p1

    .line 1305
    sget-object p9, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    const-string v2, "StaticLayout"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p6, p9, :cond_70

    .line 1306
    iget p6, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne p6, v4, :cond_63

    .line 1307
    nop

    .line 1310
    move p6, p2

    move p9, v3

    :goto_39
    if-lez p6, :cond_5e

    .line 1311
    add-int/lit8 p10, p6, -0x1

    add-int/2addr p10, p1

    sub-int/2addr p10, p4

    invoke-virtual {p3, p10}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result p10

    .line 1312
    add-float/2addr p9, p10

    add-float p10, p9, p8

    cmpl-float p10, p10, p5

    if-lez p10, :cond_5a

    .line 1313
    :goto_4a
    if-ge p6, p2, :cond_5e

    add-int p5, p6, p1

    sub-int/2addr p5, p4

    .line 1314
    invoke-virtual {p3, p5}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result p5

    cmpl-float p5, p5, v3

    if-nez p5, :cond_5e

    .line 1315
    add-int/lit8 p6, p6, 0x1

    goto :goto_4a

    .line 1320
    :cond_5a
    nop

    .line 1310
    add-int/lit8 p6, p6, -0x1

    goto :goto_39

    .line 1323
    :cond_5e
    nop

    .line 1324
    nop

    .line 1325
    move p1, p6

    goto/16 :goto_f8

    .line 1326
    :cond_63
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 1327
    const-string p1, "Start Ellipsis only supported with one line"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d2

    .line 1330
    :cond_70
    sget-object p9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq p6, p9, :cond_d4

    sget-object p9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p6, p9, :cond_d4

    sget-object p9, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p6, p9, :cond_7d

    goto :goto_d4

    .line 1353
    :cond_7d
    iget p6, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne p6, v4, :cond_c7

    .line 1354
    nop

    .line 1355
    nop

    .line 1357
    sub-float/2addr p5, p8

    const/high16 p6, 0x40000000    # 2.0f

    div-float p6, p5, p6

    .line 1358
    move p8, p2

    move p9, v3

    :goto_8a
    if-lez p8, :cond_ae

    .line 1359
    add-int/lit8 p10, p8, -0x1

    add-int/2addr p10, p1

    sub-int/2addr p10, p4

    invoke-virtual {p3, p10}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result p10

    .line 1361
    add-float/2addr p10, p9

    cmpl-float v2, p10, p6

    if-lez v2, :cond_a9

    .line 1362
    :goto_99
    if-ge p8, p2, :cond_ae

    add-int p6, p8, p1

    sub-int/2addr p6, p4

    .line 1363
    invoke-virtual {p3, p6}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result p6

    cmpl-float p6, p6, v3

    if-nez p6, :cond_ae

    .line 1365
    add-int/lit8 p8, p8, 0x1

    goto :goto_99

    .line 1369
    :cond_a9
    nop

    .line 1358
    add-int/lit8 p8, p8, -0x1

    move p9, p10

    goto :goto_8a

    .line 1372
    :cond_ae
    sub-float/2addr p5, p9

    .line 1373
    nop

    :goto_b0
    if-ge v1, p8, :cond_c3

    .line 1374
    add-int p2, v1, p1

    sub-int/2addr p2, p4

    invoke-virtual {p3, p2}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result p2

    .line 1376
    add-float/2addr v3, p2

    cmpl-float p2, v3, p5

    if-lez p2, :cond_bf

    .line 1377
    goto :goto_c3

    .line 1380
    :cond_bf
    nop

    .line 1373
    add-int/lit8 v1, v1, 0x1

    goto :goto_b0

    .line 1383
    :cond_c3
    :goto_c3
    nop

    .line 1384
    sub-int p1, p8, v1

    .line 1385
    goto :goto_f8

    .line 1386
    :cond_c7
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 1387
    const-string p1, "Middle Ellipsis only supported with one line"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_d2
    :goto_d2
    move p1, v1

    goto :goto_f8

    .line 1332
    :cond_d4
    :goto_d4
    nop

    .line 1335
    nop

    :goto_d6
    if-ge v1, p2, :cond_eb

    .line 1336
    add-int p6, v1, p1

    sub-int/2addr p6, p4

    invoke-virtual {p3, p6}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result p6

    .line 1338
    add-float/2addr v3, p6

    add-float p6, v3, p8

    cmpl-float p6, p6, p5

    if-lez p6, :cond_e7

    .line 1339
    goto :goto_eb

    .line 1342
    :cond_e7
    nop

    .line 1335
    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    .line 1345
    :cond_eb
    :goto_eb
    nop

    .line 1346
    sub-int p1, p2, v1

    .line 1347
    if-eqz p10, :cond_f7

    if-nez p1, :cond_f7

    if-lez p2, :cond_f7

    .line 1348
    sub-int/2addr p2, v4

    .line 1349
    move v1, p2

    move p1, v4

    .line 1351
    :cond_f7
    nop

    .line 1391
    :goto_f8
    iput-boolean v4, p0, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 1392
    iget-object p2, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p3, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p3, p7

    add-int/2addr p3, v0

    aput v1, p2, p3

    .line 1393
    iget-object p2, p0, Landroid/text/StaticLayout;->mLines:[I

    iget p3, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr p3, p7

    add-int/lit8 p3, p3, 0x6

    aput p1, p2, p3

    .line 1394
    return-void
.end method

.method private static blacklist getBaseHyphenationFrequency(I)I
    .registers 1

    .line 743
    packed-switch p0, :pswitch_data_a

    .line 752
    const/4 p0, 0x0

    return p0

    .line 746
    :pswitch_5
    const/4 p0, 0x2

    return p0

    .line 749
    :pswitch_7
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o getTotalInsets(I)F
    .registers 5

    .line 1397
    nop

    .line 1398
    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v0, :cond_13

    .line 1399
    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    goto :goto_14

    .line 1398
    :cond_13
    const/4 v0, 0x0

    .line 1401
    :goto_14
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_26

    .line 1402
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p1, v1, p1

    add-int/2addr v0, p1

    .line 1404
    :cond_26
    int-to-float p1, v0

    return p1
.end method

.method private blacklist out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .registers 52

    .line 1131
    move-object/from16 v0, p0

    move-object/from16 v9, p11

    move-object/from16 v7, p13

    move/from16 v11, p18

    move-object/from16 v10, p24

    iget v12, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1132
    iget v1, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v13, v12, v1

    .line 1133
    iget v1, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int/2addr v1, v13

    const/4 v14, 0x1

    add-int/2addr v1, v14

    .line 1134
    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    .line 1135
    invoke-virtual/range {p17 .. p17}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v15

    .line 1137
    array-length v3, v2

    const/4 v4, 0x0

    if-lt v1, v3, :cond_30

    .line 1138
    invoke-static {v1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    .line 1139
    array-length v3, v2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1140
    iput-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    .line 1141
    move-object/from16 v16, v1

    goto :goto_32

    .line 1137
    :cond_30
    move-object/from16 v16, v2

    .line 1144
    :goto_32
    iget-object v1, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v1, v1

    if-lt v12, v1, :cond_4d

    .line 1145
    const-class v1, Landroid/text/Layout$Directions;

    .line 1146
    invoke-static {v12}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v2

    .line 1145
    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    .line 1147
    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v3, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    iput-object v1, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 1151
    :cond_4d
    if-eqz v9, :cond_aa

    .line 1152
    move/from16 v1, p4

    iput v1, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1153
    move/from16 v2, p5

    iput v2, v7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1154
    move/from16 v3, p6

    iput v3, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1155
    move/from16 v5, p7

    iput v5, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1157
    move v1, v4

    :goto_60
    array-length v2, v9

    if-ge v1, v2, :cond_99

    .line 1158
    aget-object v2, v9, v1

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_82

    .line 1159
    aget-object v2, v9, v1

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v5, p12, v1

    .line 1160
    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p8

    move-object/from16 v8, p27

    move/from16 v17, v1

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v8}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    move-object/from16 v7, p13

    goto :goto_95

    .line 1162
    :cond_82
    move/from16 v17, v1

    aget-object v1, v9, v17

    aget v5, p12, v17

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p8

    move-object/from16 v7, p13

    invoke-interface/range {v1 .. v7}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    .line 1157
    :goto_95
    add-int/lit8 v1, v17, 0x1

    const/4 v4, 0x0

    goto :goto_60

    .line 1166
    :cond_99
    iget v1, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1167
    iget v2, v7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1168
    iget v3, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1169
    iget v4, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v20, v4

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    goto :goto_ba

    .line 1151
    :cond_aa
    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v5, p7

    move/from16 v20, v5

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    .line 1172
    :goto_ba
    if-nez v12, :cond_bf

    move/from16 v21, v14

    goto :goto_c1

    :cond_bf
    const/16 v21, 0x0

    .line 1173
    :goto_c1
    add-int/lit8 v1, v12, 0x1

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v1, v2, :cond_ca

    move/from16 v22, v14

    goto :goto_cc

    :cond_ca
    const/16 v22, 0x0

    .line 1175
    :goto_cc
    if-eqz v10, :cond_12c

    .line 1178
    if-eqz p28, :cond_d9

    iget v1, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v1, v14

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v1, v2, :cond_d9

    move v4, v14

    goto :goto_da

    :cond_d9
    const/4 v4, 0x0

    .line 1180
    :goto_da
    iget v1, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v1, v14, :cond_e0

    if-nez p28, :cond_e4

    :cond_e0
    if-eqz v21, :cond_e8

    if-nez p28, :cond_e8

    :cond_e4
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v10, v1, :cond_f2

    :cond_e8
    if-nez v21, :cond_f4

    if-nez v22, :cond_ee

    if-nez p28, :cond_f4

    :cond_ee
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v10, v1, :cond_f4

    :cond_f2
    move v1, v14

    goto :goto_f5

    :cond_f4
    const/4 v1, 0x0

    .line 1185
    :goto_f5
    if-eqz v1, :cond_110

    .line 1186
    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p17

    move/from16 v5, p25

    move/from16 v8, p26

    move-object/from16 v9, p27

    move-object v6, v10

    move v7, v12

    move v10, v4

    move/from16 v4, p23

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;->calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    move v3, v1

    move v1, v4

    move v4, v2

    const/4 v8, 0x0

    goto :goto_135

    .line 1190
    :cond_110
    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v1, p23

    move-object v6, v10

    move v7, v12

    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v5, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x5

    const/4 v8, 0x0

    aput v8, v2, v5

    .line 1191
    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v5, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x6

    aput v8, v2, v5

    goto :goto_135

    .line 1175
    :cond_12c
    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v1, p23

    move-object v6, v10

    move v7, v12

    const/4 v8, 0x0

    .line 1196
    :goto_135
    iget-boolean v2, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v2, :cond_13b

    .line 1197
    move v2, v14

    goto :goto_15b

    .line 1199
    :cond_13b
    if-eq v1, v11, :cond_14d

    if-lez v11, :cond_14d

    add-int/lit8 v2, v11, -0x1

    .line 1200
    move-object/from16 v5, p1

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_14d

    move v2, v14

    goto :goto_14e

    :cond_14d
    move v2, v8

    .line 1201
    :goto_14e
    if-ne v4, v11, :cond_154

    if-nez v2, :cond_154

    .line 1202
    move v2, v14

    goto :goto_15b

    .line 1203
    :cond_154
    if-ne v3, v11, :cond_15a

    if-eqz v2, :cond_15a

    .line 1204
    move v2, v14

    goto :goto_15b

    .line 1206
    :cond_15a
    move v2, v8

    .line 1210
    :goto_15b
    if-eqz v21, :cond_167

    .line 1211
    if-eqz p20, :cond_163

    .line 1212
    sub-int v5, v19, v17

    iput v5, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 1215
    :cond_163
    if-eqz p19, :cond_167

    .line 1216
    move/from16 v17, v19

    .line 1222
    :cond_167
    if-eqz v2, :cond_173

    .line 1223
    if-eqz p20, :cond_16f

    .line 1224
    sub-int v5, v20, v18

    iput v5, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 1227
    :cond_16f
    if-eqz p19, :cond_173

    .line 1228
    move/from16 v18, v20

    .line 1232
    :cond_173
    if-eqz p16, :cond_194

    if-nez p21, :cond_179

    if-nez v2, :cond_194

    .line 1233
    :cond_179
    sub-int v2, v18, v17

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, p9, v5

    mul-float/2addr v2, v5

    add-float v2, v2, p10

    float-to-double v9, v2

    .line 1234
    const-wide/16 v11, 0x0

    cmpl-double v2, v9, v11

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    if-ltz v2, :cond_18f

    .line 1235
    add-double/2addr v9, v11

    double-to-int v2, v9

    goto :goto_193

    .line 1237
    :cond_18f
    neg-double v9, v9

    add-double/2addr v9, v11

    double-to-int v2, v9

    neg-int v2, v2

    .line 1239
    :goto_193
    goto :goto_195

    .line 1240
    :cond_194
    move v2, v8

    .line 1243
    :goto_195
    add-int/lit8 v5, v13, 0x0

    aput v3, v16, v5

    .line 1244
    add-int/lit8 v9, v13, 0x1

    aput p8, v16, v9

    .line 1245
    add-int/lit8 v9, v13, 0x2

    add-int v10, v18, v2

    aput v10, v16, v9

    .line 1246
    add-int/lit8 v9, v13, 0x3

    aput v2, v16, v9

    .line 1250
    iget-boolean v9, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v9, :cond_1b8

    if-eqz v22, :cond_1b8

    .line 1252
    if-eqz p19, :cond_1b0

    goto :goto_1b2

    :cond_1b0
    move/from16 v20, v18

    .line 1254
    :goto_1b2
    sub-int v20, v20, v17

    add-int v9, p8, v20

    iput v9, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1257
    :cond_1b8
    sub-int v18, v18, v17

    add-int v18, v18, v2

    add-int v2, p8, v18

    .line 1258
    iget v9, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int/2addr v9, v13

    add-int/2addr v9, v8

    aput v4, v16, v9

    .line 1259
    iget v9, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int/2addr v9, v13

    add-int/2addr v9, v14

    aput v2, v16, v9

    .line 1263
    aget v9, v16, v5

    if-eqz p14, :cond_1d1

    const/high16 v10, 0x20000000

    goto :goto_1d2

    :cond_1d1
    move v10, v8

    :goto_1d2
    or-int/2addr v9, v10

    aput v9, v16, v5

    .line 1264
    iget-boolean v9, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v9, :cond_204

    .line 1265
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v9, :cond_1ea

    .line 1266
    add-int/lit8 v13, v13, 0x4

    .line 1267
    invoke-static/range {p15 .. p15}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result v6

    .line 1266
    invoke-static {v8, v6}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v6

    aput v6, v16, v13

    goto :goto_208

    .line 1268
    :cond_1ea
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v9, :cond_1fb

    .line 1269
    add-int/lit8 v13, v13, 0x4

    invoke-static/range {p15 .. p15}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result v6

    invoke-static {v6, v8}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v6

    aput v6, v16, v13

    goto :goto_208

    .line 1272
    :cond_1fb
    add-int/lit8 v13, v13, 0x4

    invoke-static {v8, v8}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v6

    aput v6, v16, v13

    goto :goto_208

    .line 1276
    :cond_204
    add-int/lit8 v13, v13, 0x4

    aput p15, v16, v13

    .line 1279
    :goto_208
    aget v6, v16, v5

    shl-int/lit8 v8, v15, 0x1e

    or-int/2addr v6, v8

    aput v6, v16, v5

    .line 1280
    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int/2addr v3, v1

    sub-int v1, v4, v1

    move-object/from16 v4, p17

    invoke-virtual {v4, v3, v1}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v1

    aput-object v1, v5, v7

    .line 1282
    iget v1, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v1, v14

    iput v1, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1283
    return v2
.end method

.method static blacklist packHyphenEdit(II)I
    .registers 2

    .line 1491
    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method static blacklist unpackEndHyphenEdit(I)I
    .registers 1

    .line 1499
    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static blacklist unpackStartHyphenEdit(I)I
    .registers 1

    .line 1495
    and-int/lit8 p0, p0, 0x18

    shr-int/lit8 p0, p0, 0x3

    return p0
.end method


# virtual methods
.method public whitelist computeDrawingBoundingBox()Landroid/graphics/RectF;
    .registers 2

    .line 1580
    iget-object v0, p0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_a

    .line 1581
    invoke-super {p0}, Landroid/text/Layout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    .line 1583
    :cond_a
    iget-object v0, p0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method greylist-max-o generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .registers 66

    .line 757
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 758
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmStart(Landroid/text/StaticLayout$Builder;)I

    move-result v3

    .line 759
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEnd(Landroid/text/StaticLayout$Builder;)I

    move-result v4

    .line 760
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v6

    .line 761
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v30

    .line 762
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v5

    .line 763
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F

    move-result v11

    .line 764
    move v12, v11

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F

    move-result v11

    .line 765
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    int-to-float v13, v2

    .line 766
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v14

    .line 767
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmAddLastLineLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v21

    .line 769
    nop

    .line 770
    nop

    .line 771
    nop

    .line 772
    nop

    .line 773
    nop

    .line 774
    nop

    .line 775
    nop

    .line 777
    const/4 v15, 0x0

    iput v15, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 778
    iput-boolean v15, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 779
    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v10, 0x1

    if-ge v2, v10, :cond_43

    move v2, v15

    goto :goto_44

    :cond_43
    const/4 v2, -0x1

    :goto_44
    iput v2, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 780
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    .line 781
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v31

    .line 783
    nop

    .line 784
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v12, v7

    const/16 v32, 0x0

    if-nez v7, :cond_5e

    cmpl-float v7, v11, v32

    if-eqz v7, :cond_5b

    goto :goto_5e

    :cond_5b
    move/from16 v16, v15

    goto :goto_60

    :cond_5e
    :goto_5e
    move/from16 v16, v10

    .line 786
    :goto_60
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFontMetricsInt(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    .line 787
    nop

    .line 790
    iget-object v8, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v8, :cond_6f

    iget-object v8, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v8, :cond_6e

    goto :goto_6f

    .line 802
    :cond_6e
    goto :goto_a4

    .line 791
    :cond_6f
    :goto_6f
    iget-object v8, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v8, :cond_75

    move v8, v15

    goto :goto_78

    :cond_75
    iget-object v8, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v8, v8

    .line 792
    :goto_78
    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_7e

    move v9, v15

    goto :goto_81

    :cond_7e
    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v9, v9

    .line 793
    :goto_81
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 794
    new-array v2, v2, [I

    .line 795
    move v10, v15

    :goto_88
    if-ge v10, v8, :cond_94

    .line 796
    iget-object v15, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    aget v15, v15, v10

    aput v15, v2, v10

    .line 795
    add-int/lit8 v10, v10, 0x1

    const/4 v15, 0x0

    goto :goto_88

    .line 798
    :cond_94
    const/4 v8, 0x0

    :goto_95
    if-ge v8, v9, :cond_a3

    .line 799
    aget v10, v2, v8

    iget-object v15, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    aget v15, v15, v8

    add-int/2addr v10, v15

    aput v10, v2, v8

    .line 798
    add-int/lit8 v8, v8, 0x1

    goto :goto_95

    .line 801
    :cond_a3
    nop

    .line 809
    :goto_a4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->fixLineHeightForLocale()Z

    move-result v8

    if-eqz v8, :cond_ec

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    if-eqz v8, :cond_ec

    .line 810
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->top:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 811
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 812
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 813
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v23, v3

    move/from16 v20, v4

    float-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 817
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 818
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v15, v3

    move v3, v10

    move v10, v4

    goto :goto_f7

    .line 809
    :cond_ec
    move/from16 v23, v3

    move/from16 v20, v4

    .line 820
    nop

    .line 821
    nop

    .line 822
    nop

    .line 823
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 826
    :goto_f7
    new-instance v4, Landroid/graphics/text/LineBreaker$Builder;

    invoke-direct {v4}, Landroid/graphics/text/LineBreaker$Builder;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v8

    .line 827
    invoke-virtual {v4, v8}, Landroid/graphics/text/LineBreaker$Builder;->setBreakStrategy(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v8

    .line 828
    invoke-static {v8}, Landroid/text/StaticLayout;->getBaseHyphenationFrequency(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/text/LineBreaker$Builder;->setHyphenationFrequency(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I

    move-result v8

    .line 830
    invoke-virtual {v4, v8}, Landroid/graphics/text/LineBreaker$Builder;->setJustificationMode(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v4

    .line 831
    invoke-virtual {v4, v2}, Landroid/graphics/text/LineBreaker$Builder;->setIndents([I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmUseBoundsForWidth(Landroid/text/StaticLayout$Builder;)Z

    move-result v4

    .line 832
    invoke-virtual {v2, v4}, Landroid/graphics/text/LineBreaker$Builder;->setUseBoundsForWidth(Z)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v2

    .line 833
    invoke-virtual {v2}, Landroid/graphics/text/LineBreaker$Builder;->build()Landroid/graphics/text/LineBreaker;

    move-result-object v2

    .line 835
    new-instance v4, Landroid/graphics/text/LineBreaker$ParagraphConstraints;

    invoke-direct {v4}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;-><init>()V

    .line 838
    nop

    .line 839
    instance-of v8, v1, Landroid/text/Spanned;

    if-eqz v8, :cond_136

    move-object v8, v1

    check-cast v8, Landroid/text/Spanned;

    goto :goto_137

    :cond_136
    const/4 v8, 0x0

    .line 840
    :goto_137
    move-object/from16 v22, v2

    instance-of v2, v1, Landroid/text/PrecomputedText;

    if-eqz v2, :cond_1a5

    .line 841
    move-object v2, v1

    check-cast v2, Landroid/text/PrecomputedText;

    .line 842
    move-object/from16 v24, v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v7

    move-object/from16 v25, v8

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v8

    move/from16 v26, v9

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v9

    .line 843
    move/from16 v33, v3

    move/from16 v17, v11

    move/from16 v3, v23

    move-object/from16 v11, v24

    move/from16 v34, v26

    move/from16 v26, v13

    move-object v13, v4

    move/from16 v4, v20

    move/from16 v20, v12

    move-object/from16 v12, v22

    move/from16 v22, v15

    move-object/from16 v15, v25

    invoke-virtual/range {v2 .. v9}, Landroid/text/PrecomputedText;->checkResultUsable(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;IILandroid/graphics/text/LineBreakConfig;)I

    move-result v7

    .line 845
    packed-switch v7, :pswitch_data_6e6

    goto :goto_1ba

    .line 861
    :pswitch_171
    invoke-virtual {v2}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v2

    goto :goto_1bb

    .line 849
    :pswitch_176
    new-instance v7, Landroid/text/PrecomputedText$Params$Builder;

    invoke-direct {v7, v6}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v8

    .line 851
    invoke-virtual {v7, v8}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v8

    .line 852
    invoke-virtual {v7, v8}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v7

    .line 853
    invoke-virtual {v7, v5}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v8

    .line 854
    invoke-virtual {v7, v8}, Landroid/text/PrecomputedText$Params$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v7

    .line 855
    invoke-virtual {v7}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    move-result-object v7

    .line 856
    invoke-static {v2, v7}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v2

    .line 857
    invoke-virtual {v2}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v2

    .line 858
    goto :goto_1bb

    .line 847
    :pswitch_1a4
    goto :goto_1ba

    .line 840
    :cond_1a5
    move/from16 v33, v3

    move/from16 v34, v9

    move/from16 v17, v11

    move/from16 v26, v13

    move/from16 v3, v23

    move-object v13, v4

    move-object v11, v7

    move/from16 v4, v20

    move/from16 v20, v12

    move-object/from16 v12, v22

    move/from16 v22, v15

    move-object v15, v8

    .line 866
    :goto_1ba
    const/4 v2, 0x0

    :goto_1bb
    if-nez v2, :cond_1eb

    .line 867
    new-instance v2, Landroid/text/PrecomputedText$Params;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v9

    move v8, v10

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    move-object/from16 v24, v5

    move-object v5, v2

    move v2, v8

    move-object/from16 v8, v24

    move-object/from16 v24, v11

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v10}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/text/TextDirectionHeuristic;II)V

    .line 869
    move-object/from16 v28, v6

    move v6, v2

    move-object v2, v5

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmCalculateBounds(Landroid/text/StaticLayout$Builder;)Z

    move-result v7

    move/from16 v61, v7

    move v7, v6

    move/from16 v6, v61

    invoke-static/range {v1 .. v6}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v2

    goto :goto_1f2

    .line 866
    :cond_1eb
    move-object v8, v5

    move-object/from16 v28, v6

    move v7, v10

    move-object/from16 v24, v11

    const/4 v11, 0x1

    .line 873
    :goto_1f2
    move-object/from16 p1, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v29, 0x0

    :goto_202
    move/from16 v35, v3

    array-length v3, v2

    if-ge v11, v3, :cond_668

    .line 874
    if-nez v11, :cond_20c

    .line 875
    move/from16 v3, v35

    goto :goto_212

    :cond_20c
    add-int/lit8 v3, v11, -0x1

    aget-object v3, v2, v3

    iget v3, v3, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    .line 876
    :goto_212
    move-object/from16 v36, v2

    aget-object v2, v36, v11

    iget v2, v2, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    .line 878
    nop

    .line 879
    nop

    .line 880
    nop

    .line 882
    nop

    .line 883
    if-eqz v15, :cond_2a3

    .line 884
    move-object/from16 v37, v6

    const-class v6, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v15, v3, v2, v6}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/LeadingMarginSpan;

    .line 886
    move/from16 v38, v7

    move-object/from16 v39, v8

    move/from16 v40, v30

    move/from16 v41, v40

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_232
    move-object/from16 v42, v9

    array-length v9, v6

    if-ge v8, v9, :cond_266

    .line 887
    aget-object v9, v6, v8

    .line 888
    move-object/from16 v43, v6

    aget-object v6, v43, v8

    move/from16 v44, v8

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    sub-int v40, v40, v6

    .line 889
    aget-object v6, v43, v44

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    sub-int v41, v41, v6

    .line 893
    instance-of v6, v9, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v6, :cond_25f

    .line 894
    check-cast v9, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 895
    nop

    .line 896
    invoke-interface {v9}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v6

    .line 895
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v7, v6

    .line 886
    :cond_25f
    add-int/lit8 v8, v44, 0x1

    move-object/from16 v9, v42

    move-object/from16 v6, v43

    goto :goto_232

    .line 900
    :cond_266
    const-class v6, Landroid/text/style/LineHeightSpan;

    invoke-static {v15, v3, v2, v6}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/LineHeightSpan;

    .line 902
    array-length v8, v6

    if-nez v8, :cond_277

    .line 903
    move/from16 v8, v40

    move/from16 v9, v41

    const/4 v6, 0x0

    goto :goto_2b0

    .line 905
    :cond_277
    if-eqz v5, :cond_27d

    array-length v8, v5

    array-length v9, v6

    if-ge v8, v9, :cond_282

    .line 906
    :cond_27d
    array-length v5, v6

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v5

    .line 909
    :cond_282
    const/4 v8, 0x0

    :goto_283
    array-length v9, v6

    if-ge v8, v9, :cond_29e

    .line 910
    aget-object v9, v6, v8

    invoke-interface {v15, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 912
    if-ge v9, v3, :cond_299

    .line 916
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    aput v9, v5, v8

    goto :goto_29b

    .line 920
    :cond_299
    aput v29, v5, v8

    .line 909
    :goto_29b
    add-int/lit8 v8, v8, 0x1

    goto :goto_283

    :cond_29e
    move/from16 v8, v40

    move/from16 v9, v41

    goto :goto_2b0

    .line 883
    :cond_2a3
    move-object/from16 v37, v6

    move/from16 v38, v7

    move-object/from16 v39, v8

    move-object/from16 v42, v9

    move/from16 v8, v30

    move v9, v8

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 926
    :goto_2b0
    nop

    .line 927
    if-eqz v15, :cond_2ea

    .line 928
    move-object/from16 v40, v5

    const-class v5, Landroid/text/style/TabStopSpan;

    invoke-static {v15, v3, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/TabStopSpan;

    .line 930
    move/from16 v41, v3

    array-length v3, v5

    if-lez v3, :cond_2e2

    .line 931
    array-length v3, v5

    move-object/from16 v43, v6

    new-array v6, v3, [F

    .line 932
    move-object/from16 v44, v10

    const/4 v10, 0x0

    :goto_2ca
    move/from16 v45, v11

    array-length v11, v5

    if-ge v10, v11, :cond_2dd

    .line 933
    aget-object v11, v5, v10

    invoke-interface {v11}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v11

    int-to-float v11, v11

    aput v11, v6, v10

    .line 932
    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v45

    goto :goto_2ca

    .line 935
    :cond_2dd
    const/4 v5, 0x0

    invoke-static {v6, v5, v3}, Ljava/util/Arrays;->sort([FII)V

    .line 936
    goto :goto_2f6

    .line 930
    :cond_2e2
    move-object/from16 v43, v6

    move-object/from16 v44, v10

    move/from16 v45, v11

    const/4 v5, 0x0

    goto :goto_2f5

    .line 927
    :cond_2ea
    move/from16 v41, v3

    move-object/from16 v40, v5

    move-object/from16 v43, v6

    move-object/from16 v44, v10

    move/from16 v45, v11

    const/4 v5, 0x0

    .line 940
    :goto_2f5
    const/4 v6, 0x0

    :goto_2f6
    aget-object v3, v36, v45

    iget-object v3, v3, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    .line 941
    move-object/from16 v10, v23

    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v23

    .line 942
    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v11

    invoke-virtual {v11}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v46

    .line 943
    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getFontMetrics()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v11

    invoke-virtual {v11}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v47

    .line 945
    int-to-float v9, v9

    invoke-virtual {v13, v9}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setWidth(F)V

    .line 946
    int-to-float v8, v8

    invoke-virtual {v13, v8, v7}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setIndent(FI)V

    .line 947
    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v13, v6, v7}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setTabStops([FF)V

    .line 949
    nop

    .line 950
    invoke-virtual {v3}, Landroid/text/MeasuredParagraph;->getMeasuredText()Landroid/graphics/text/MeasuredText;

    move-result-object v6

    iget v7, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 949
    invoke-virtual {v12, v6, v13, v7}, Landroid/graphics/text/LineBreaker;->computeLineBreaks(Landroid/graphics/text/MeasuredText;Landroid/graphics/text/LineBreaker$ParagraphConstraints;I)Landroid/graphics/text/LineBreaker$Result;

    move-result-object v6

    .line 951
    invoke-virtual {v6}, Landroid/graphics/text/LineBreaker$Result;->getLineCount()I

    move-result v7

    .line 952
    if-ge v1, v7, :cond_34a

    .line 953
    nop

    .line 954
    new-array v1, v7, [I

    .line 955
    new-array v8, v7, [F

    .line 956
    new-array v9, v7, [F

    .line 957
    new-array v10, v7, [F

    .line 958
    new-array v11, v7, [Z

    .line 959
    new-array v5, v7, [I

    move-object/from16 v42, v1

    move-object/from16 v51, v5

    move/from16 v37, v7

    move-object/from16 v44, v8

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    move-object/from16 v50, v11

    goto :goto_358

    .line 952
    :cond_34a
    move-object/from16 v50, v10

    move-object/from16 v49, v18

    move-object/from16 v51, v25

    move-object/from16 v48, v44

    move-object/from16 v44, v42

    move-object/from16 v42, v37

    move/from16 v37, v1

    .line 962
    :goto_358
    const/4 v8, 0x0

    :goto_359
    if-ge v8, v7, :cond_38b

    .line 963
    invoke-virtual {v6, v8}, Landroid/graphics/text/LineBreaker$Result;->getLineBreakOffset(I)I

    move-result v1

    aput v1, v42, v8

    .line 964
    invoke-virtual {v6, v8}, Landroid/graphics/text/LineBreaker$Result;->getLineWidth(I)F

    move-result v1

    aput v1, v44, v8

    .line 965
    invoke-virtual {v6, v8}, Landroid/graphics/text/LineBreaker$Result;->getLineAscent(I)F

    move-result v1

    aput v1, v48, v8

    .line 966
    invoke-virtual {v6, v8}, Landroid/graphics/text/LineBreaker$Result;->getLineDescent(I)F

    move-result v1

    aput v1, v49, v8

    .line 967
    invoke-virtual {v6, v8}, Landroid/graphics/text/LineBreaker$Result;->hasLineTab(I)Z

    move-result v1

    aput-boolean v1, v50, v8

    .line 968
    nop

    .line 969
    invoke-virtual {v6, v8}, Landroid/graphics/text/LineBreaker$Result;->getStartLineHyphenEdit(I)I

    move-result v1

    invoke-virtual {v6, v8}, Landroid/graphics/text/LineBreaker$Result;->getEndLineHyphenEdit(I)I

    move-result v5

    invoke-static {v1, v5}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v1

    aput v1, v51, v8

    .line 962
    add-int/lit8 v8, v8, 0x1

    goto :goto_359

    .line 972
    :cond_38b
    iget v1, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v1, v5

    .line 973
    if-eqz v14, :cond_3a1

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v14, v5, :cond_39f

    iget v5, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_3a1

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v14, v5, :cond_3a1

    :cond_39f
    const/4 v10, 0x1

    goto :goto_3a2

    :cond_3a1
    const/4 v10, 0x0

    .line 977
    :goto_3a2
    if-lez v1, :cond_3df

    if-ge v1, v7, :cond_3df

    if-eqz v10, :cond_3df

    .line 980
    nop

    .line 981
    nop

    .line 982
    add-int/lit8 v5, v1, -0x1

    move v6, v5

    move/from16 v9, v32

    const/4 v8, 0x0

    :goto_3b0
    if-ge v6, v7, :cond_3d4

    .line 983
    add-int/lit8 v10, v7, -0x1

    if-ne v6, v10, :cond_3ba

    .line 984
    aget v10, v44, v6

    add-float/2addr v9, v10

    goto :goto_3ce

    .line 986
    :cond_3ba
    if-nez v6, :cond_3be

    const/4 v10, 0x0

    goto :goto_3c2

    :cond_3be
    add-int/lit8 v10, v6, -0x1

    aget v10, v42, v10

    :goto_3c2
    aget v11, v42, v6

    if-ge v10, v11, :cond_3ce

    .line 987
    invoke-virtual {v3, v10}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v11

    add-float/2addr v9, v11

    .line 986
    add-int/lit8 v10, v10, 0x1

    goto :goto_3c2

    .line 990
    :cond_3ce
    :goto_3ce
    aget-boolean v10, v50, v6

    or-int/2addr v8, v10

    .line 982
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b0

    .line 993
    :cond_3d4
    add-int/lit8 v7, v7, -0x1

    aget v6, v42, v7

    aput v6, v42, v5

    .line 994
    aput v9, v44, v5

    .line 995
    aput-boolean v8, v50, v5

    .line 997
    goto :goto_3e0

    .line 1002
    :cond_3df
    move v1, v7

    :goto_3e0
    nop

    .line 1004
    nop

    .line 1005
    nop

    .line 1006
    nop

    .line 1007
    nop

    .line 1008
    nop

    .line 1009
    nop

    .line 1010
    nop

    .line 1011
    move/from16 v0, v22

    move/from16 v5, v33

    move/from16 v9, v34

    move/from16 v10, v38

    move/from16 v11, v41

    move/from16 v18, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3f7
    if-ge v11, v2, :cond_5f9

    .line 1013
    add-int/lit8 v52, v8, 0x1

    aget v8, v46, v8

    .line 1016
    mul-int/lit8 v25, v6, 0x4

    add-int/lit8 v53, v25, 0x0

    move/from16 v54, v2

    aget v2, v47, v53

    move-object/from16 v53, v3

    move-object/from16 v3, v24

    iput v2, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1017
    add-int/lit8 v2, v25, 0x1

    aget v2, v47, v2

    iput v2, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1018
    add-int/lit8 v2, v25, 0x2

    aget v2, v47, v2

    iput v2, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1019
    add-int/lit8 v25, v25, 0x3

    aget v2, v47, v25

    iput v2, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1020
    const/16 v27, 0x1

    add-int/lit8 v55, v6, 0x1

    .line 1022
    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge v2, v10, :cond_427

    .line 1023
    iget v10, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1025
    :cond_427
    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ge v2, v9, :cond_42d

    .line 1026
    iget v9, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1028
    :cond_42d
    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le v2, v5, :cond_433

    .line 1029
    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1031
    :cond_433
    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v2, v0, :cond_439

    .line 1032
    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1036
    :cond_439
    :goto_439
    if-ge v7, v1, :cond_444

    aget v2, v42, v7

    add-int v2, v41, v2

    if-ge v2, v11, :cond_444

    .line 1037
    add-int/lit8 v7, v7, 0x1

    goto :goto_439

    .line 1040
    :cond_444
    move v2, v7

    :goto_445
    if-ge v2, v1, :cond_574

    aget v6, v42, v2

    add-int v6, v41, v6

    if-gt v6, v8, :cond_574

    .line 1041
    aget v6, v42, v2

    add-int v6, v41, v6

    .line 1043
    move/from16 v7, v29

    if-ge v6, v4, :cond_458

    move/from16 v29, v27

    goto :goto_45a

    :cond_458
    const/16 v29, 0x0

    .line 1045
    :goto_45a
    if-eqz v31, :cond_467

    .line 1046
    aget v11, v48, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_468

    .line 1047
    :cond_467
    nop

    .line 1048
    :goto_468
    if-eqz v31, :cond_475

    .line 1049
    aget v11, v49, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_476

    .line 1050
    :cond_475
    nop

    .line 1055
    :goto_476
    if-eqz v31, :cond_47e

    .line 1056
    if-ge v9, v10, :cond_47b

    .line 1057
    move v10, v9

    .line 1059
    :cond_47b
    if-le v5, v0, :cond_47e

    .line 1060
    move v0, v5

    .line 1064
    :cond_47e
    move-object/from16 v25, v15

    aget-boolean v15, v50, v2

    move/from16 v11, v17

    move/from16 v17, v16

    aget v16, v51, v2

    move/from16 v24, v27

    aget v27, v44, v2

    move/from16 v19, v8

    move v8, v0

    move/from16 v0, v19

    move/from16 v19, v4

    move v4, v6

    move/from16 v60, v22

    move/from16 v56, v35

    move/from16 v59, v38

    move-object/from16 v57, v39

    move/from16 v58, v54

    const/16 v35, 0x0

    move v6, v5

    move v5, v9

    move-object/from16 v38, v13

    move/from16 v22, v21

    move-object/from16 v39, v25

    move-object/from16 v13, v40

    move/from16 v21, p3

    move v9, v7

    move v7, v10

    move-object/from16 v25, v14

    move/from16 v10, v20

    move-object/from16 v40, v36

    move/from16 v20, p2

    move-object v14, v3

    move-object/from16 v36, v12

    move/from16 v3, v18

    move-object/from16 v12, v43

    move-object/from16 v18, v53

    move/from16 v43, v1

    move/from16 v53, v24

    move/from16 v24, v41

    move-object/from16 v1, p0

    move/from16 v41, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v29

    .line 1072
    move-object v8, v12

    move/from16 v3, v19

    move/from16 v21, v22

    move/from16 v7, v24

    move-object/from16 v24, v25

    move-object/from16 v6, v28

    move v12, v10

    if-ge v4, v0, :cond_50f

    .line 1074
    iget v5, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v15, v59

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1075
    iget v9, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v10, v60

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1076
    move/from16 v16, v0

    iget v0, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v19, v4

    move/from16 v4, v34

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1077
    move/from16 p1, v0

    iget v0, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v20, v5

    move/from16 v5, v33

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v22, v9

    move v9, v0

    move/from16 v0, v22

    move/from16 v22, v20

    move/from16 v20, p1

    goto :goto_522

    .line 1079
    :cond_50f
    move/from16 v16, v0

    move/from16 v19, v4

    move/from16 v5, v33

    move/from16 v4, v34

    move/from16 v15, v59

    move/from16 v10, v60

    move/from16 v0, v35

    move v9, v0

    move/from16 v20, v9

    move/from16 v22, v20

    .line 1082
    :goto_522
    nop

    .line 1083
    add-int/lit8 v25, v41, 0x1

    .line 1085
    move/from16 p1, v0

    iget v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v27, v7

    iget v7, v1, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v0, v7, :cond_534

    iget-boolean v0, v1, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v0, :cond_534

    .line 1086
    return-void

    .line 1088
    :cond_534
    move/from16 v0, v22

    move/from16 v22, v10

    move v10, v0

    move/from16 v0, p1

    move-object/from16 p1, v2

    move/from16 v34, v4

    move/from16 v33, v5

    move-object/from16 v28, v6

    move v5, v9

    move/from16 v9, v20

    move/from16 v2, v25

    move/from16 v41, v27

    move/from16 v1, v43

    move/from16 v27, v53

    move/from16 v35, v56

    move/from16 v54, v58

    move v4, v3

    move-object/from16 v43, v8

    move/from16 v20, v12

    move-object v3, v14

    move/from16 v8, v16

    move/from16 v16, v17

    move-object/from16 v53, v18

    move/from16 v18, v19

    move-object/from16 v14, v24

    move-object/from16 v12, v36

    move-object/from16 v36, v40

    move/from16 v17, v11

    move-object/from16 v40, v13

    move-object/from16 v13, v38

    move/from16 v38, v15

    move-object/from16 v15, v39

    move-object/from16 v39, v57

    goto/16 :goto_445

    .line 1040
    :cond_574
    move-object/from16 v24, v14

    move/from16 v11, v17

    move/from16 v19, v18

    move-object/from16 v6, v28

    move/from16 v7, v29

    move/from16 v56, v35

    move-object/from16 v57, v39

    move-object/from16 v18, v53

    move/from16 v58, v54

    const/16 v35, 0x0

    move-object v14, v3

    move v3, v4

    move-object/from16 v39, v15

    move/from16 v17, v16

    move/from16 v53, v27

    move/from16 v4, v34

    move/from16 v15, v38

    move/from16 v27, v41

    move/from16 v41, v2

    move/from16 v16, v8

    move-object/from16 v38, v13

    move-object/from16 v13, v40

    move-object/from16 v8, v43

    move-object/from16 v2, p1

    move/from16 v43, v1

    move-object/from16 v40, v36

    move-object/from16 v1, p0

    move-object/from16 v36, v12

    move/from16 v12, v20

    move/from16 v20, v0

    move/from16 v0, v22

    move/from16 v22, v5

    move/from16 v5, v33

    .line 1011
    move/from16 p1, v17

    move/from16 v17, v11

    move/from16 v11, v16

    move/from16 v16, p1

    move-object/from16 p1, v24

    move-object/from16 v24, v14

    move-object/from16 v14, p1

    move-object/from16 p1, v2

    move/from16 v34, v4

    move/from16 v33, v5

    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v5, v22

    move/from16 v7, v41

    move/from16 v1, v43

    move/from16 v6, v55

    move/from16 v35, v56

    move/from16 v2, v58

    move/from16 v22, v0

    move v4, v3

    move-object/from16 v43, v8

    move-object/from16 v3, v18

    move/from16 v18, v19

    move/from16 v0, v20

    move/from16 v41, v27

    move/from16 v8, v52

    move/from16 v20, v12

    move-object/from16 v12, v36

    move-object/from16 v36, v40

    move-object/from16 v40, v13

    move-object/from16 v13, v38

    move/from16 v38, v15

    move-object/from16 v15, v39

    move-object/from16 v39, v57

    goto/16 :goto_3f7

    .line 1091
    :cond_5f9
    move-object/from16 v0, v24

    move-object/from16 v24, v14

    move-object v14, v0

    move-object/from16 v1, p0

    move/from16 v58, v2

    move v3, v4

    move/from16 v11, v17

    move/from16 v0, v22

    move-object/from16 v6, v28

    move/from16 v5, v33

    move/from16 v4, v34

    move/from16 v56, v35

    move-object/from16 v57, v39

    const/16 v35, 0x0

    const/16 v53, 0x1

    move-object/from16 v2, p1

    move-object/from16 v39, v15

    move/from16 v17, v16

    move/from16 v15, v38

    move-object/from16 v38, v13

    move-object/from16 v13, v40

    move-object/from16 v40, v36

    move-object/from16 v36, v12

    move/from16 v12, v20

    move/from16 v7, v58

    if-ne v7, v3, :cond_62f

    .line 1092
    move/from16 v8, v29

    goto/16 :goto_686

    .line 873
    :cond_62f
    add-int/lit8 v7, v45, 0x1

    move-object/from16 p1, v24

    move-object/from16 v24, v14

    move-object/from16 v14, p1

    move/from16 v22, v0

    move-object v0, v1

    move-object/from16 p1, v2

    move/from16 v34, v4

    move/from16 v33, v5

    move-object/from16 v28, v6

    move/from16 v20, v12

    move-object v5, v13

    move/from16 v16, v17

    move-object/from16 v12, v36

    move/from16 v1, v37

    move-object/from16 v13, v38

    move-object/from16 v2, v40

    move-object/from16 v6, v42

    move-object/from16 v9, v44

    move-object/from16 v10, v48

    move-object/from16 v18, v49

    move-object/from16 v23, v50

    move-object/from16 v25, v51

    move-object/from16 v8, v57

    move v4, v3

    move/from16 v17, v11

    move/from16 v3, v56

    move v11, v7

    move v7, v15

    move-object/from16 v15, v39

    goto/16 :goto_202

    :cond_668
    move-object/from16 v1, v24

    move-object/from16 v24, v14

    move-object v14, v1

    move-object/from16 v2, p1

    move-object v1, v0

    move v3, v4

    move v15, v7

    move-object/from16 v57, v8

    move/from16 v11, v17

    move/from16 v12, v20

    move/from16 v0, v22

    move-object/from16 v6, v28

    move/from16 v5, v33

    move/from16 v4, v34

    move/from16 v56, v35

    move/from16 v17, v16

    move/from16 v8, v29

    .line 1096
    :goto_686
    move/from16 v7, v56

    if-eq v3, v7, :cond_694

    add-int/lit8 v9, v3, -0x1

    invoke-interface {v2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_6e5

    :cond_694
    iget v9, v1, Landroid/text/StaticLayout;->mLineCount:I

    iget v10, v1, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v9, v10, :cond_6e5

    .line 1098
    nop

    .line 1099
    move-object/from16 v9, v57

    const/4 v10, 0x0

    invoke-static {v2, v3, v3, v9, v10}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v9

    .line 1100
    if-eqz v4, :cond_6af

    if-eqz v5, :cond_6af

    .line 1101
    iput v15, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1102
    iput v4, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1103
    iput v5, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1104
    iput v0, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_6b2

    .line 1106
    :cond_6af
    invoke-virtual {v6, v14}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1109
    :goto_6b2
    iget v4, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v5, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v28, v6

    iget v6, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v23, v7

    iget v7, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v26

    const/16 v26, 0x0

    move-object/from16 v27, v28

    const/16 v28, 0x0

    move v10, v11

    const/4 v11, 0x0

    move/from16 v20, v12

    const/4 v12, 0x0

    move-object v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    move/from16 v19, v3

    move/from16 v18, v19

    move-object v0, v1

    move-object v1, v2

    move/from16 v16, v17

    move/from16 v2, v19

    move/from16 v19, p2

    move-object/from16 v17, v9

    move/from16 v9, v20

    move/from16 v20, p3

    invoke-direct/range {v0 .. v28}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    .line 1120
    :cond_6e5
    return-void

    :pswitch_data_6e6
    .packed-switch 0x0
        :pswitch_1a4
        :pswitch_176
        :pswitch_171
    .end packed-switch
.end method

.method public whitelist getBottomPadding()I
    .registers 2

    .line 1485
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public whitelist getEllipsisCount(I)I
    .registers 4

    .line 1560
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_7

    .line 1561
    const/4 p1, 0x0

    return p1

    .line 1564
    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x6

    aget p1, v0, v1

    return p1
.end method

.method public whitelist getEllipsisStart(I)I
    .registers 4

    .line 1569
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_7

    .line 1570
    const/4 p1, 0x0

    return p1

    .line 1573
    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x5

    aget p1, v0, v1

    return p1
.end method

.method public blacklist getEndHyphenEdit(I)I
    .registers 4

    .line 1523
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result p1

    return p1
.end method

.method public greylist-max-p getHeight(Z)I
    .registers 6

    .line 1595
    const/4 v0, -0x1

    if-eqz p1, :cond_3b

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v2, :cond_3b

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v1, v0, :cond_3b

    .line 1596
    const-string v1, "StaticLayout"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxLineHeight should not be -1.  maxLines:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lineCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/text/StaticLayout;->mLineCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_3b
    if-eqz p1, :cond_4a

    iget p1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le p1, v1, :cond_4a

    iget p1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq p1, v0, :cond_4a

    .line 1603
    iget p1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    goto :goto_4e

    :cond_4a
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result p1

    .line 1602
    :goto_4e
    return p1
.end method

.method public greylist-max-o getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .registers 5

    .line 1531
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_18

    .line 1532
    iget-object p2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez p2, :cond_a

    .line 1533
    return v1

    .line 1535
    :cond_a
    iget-object p2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p1, p2, p1

    return p1

    .line 1537
    :cond_18
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_30

    .line 1538
    iget-object p2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez p2, :cond_21

    .line 1539
    return v1

    .line 1541
    :cond_21
    iget-object p2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    return p1

    .line 1543
    :cond_30
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_5e

    .line 1544
    nop

    .line 1545
    iget-object p2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz p2, :cond_47

    .line 1546
    iget-object p2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget p2, p2, v0

    goto :goto_48

    .line 1545
    :cond_47
    move p2, v1

    .line 1548
    :goto_48
    nop

    .line 1549
    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v0, :cond_5a

    .line 1550
    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget v1, v0, p1

    .line 1552
    :cond_5a
    sub-int/2addr p2, v1

    shr-int/lit8 p1, p2, 0x1

    return p1

    .line 1554
    :cond_5e
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unhandled alignment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public whitelist getLineContainsTab(I)Z
    .registers 4

    .line 1467
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    const/4 p1, 0x0

    add-int/2addr v1, p1

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 p1, 0x1

    :cond_f
    return p1
.end method

.method public whitelist getLineCount()I
    .registers 2

    .line 1434
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public whitelist getLineDescent(I)I
    .registers 4

    .line 1452
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget p1, v0, v1

    return p1
.end method

.method public final whitelist getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 3

    .line 1472
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt p1, v0, :cond_b

    .line 1475
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object p1, v0, p1

    return-object p1

    .line 1473
    :cond_b
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public greylist-max-o getLineExtra(I)I
    .registers 4

    .line 1447
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget p1, v0, v1

    return p1
.end method

.method public whitelist getLineForVertical(I)I
    .registers 8

    .line 1413
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1414
    nop

    .line 1416
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    const/4 v2, -0x1

    .line 1417
    :goto_6
    sub-int v3, v0, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1a

    .line 1418
    add-int v3, v0, v2

    shr-int/2addr v3, v4

    .line 1419
    iget v5, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    aget v4, v1, v5

    if-le v4, p1, :cond_18

    .line 1420
    move v0, v3

    goto :goto_6

    .line 1422
    :cond_18
    move v2, v3

    goto :goto_6

    .line 1425
    :cond_1a
    if-gez v2, :cond_1e

    .line 1426
    const/4 p1, 0x0

    return p1

    .line 1428
    :cond_1e
    return v2
.end method

.method public whitelist getLineStart(I)I
    .registers 4

    .line 1457
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget p1, v0, v1

    const v0, 0x1fffffff

    and-int/2addr p1, v0

    return p1
.end method

.method public whitelist getLineTop(I)I
    .registers 4

    .line 1439
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget p1, v0, v1

    return p1
.end method

.method public whitelist getParagraphDirection(I)I
    .registers 4

    .line 1462
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget p1, v0, v1

    shr-int/lit8 p1, p1, 0x1e

    return p1
.end method

.method public blacklist getStartHyphenEdit(I)I
    .registers 4

    .line 1511
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result p1

    return p1
.end method

.method public whitelist getTopPadding()I
    .registers 2

    .line 1480
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
