.class public Landroid/text/MeasuredParagraph;
.super Ljava/lang/Object;
.source "MeasuredParagraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/MeasuredParagraph$StyleRunCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o OBJECT_REPLACEMENT_CHARACTER:C = '\ufffc'

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/MeasuredParagraph;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBidi:Landroid/icu/text/Bidi;

.field private greylist-max-o mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

.field private final greylist-max-o mCachedPaint:Landroid/text/TextPaint;

.field private greylist-max-o mCopiedBuffer:[C

.field private greylist-max-o mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

.field private greylist-max-o mLevels:Landroid/text/AutoGrowArray$ByteArray;

.field private final blacklist mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

.field private greylist-max-o mLtrWithoutBidi:Z

.field private blacklist mMeasuredText:Landroid/graphics/text/MeasuredText;

.field private greylist-max-o mParaDir:I

.field private greylist-max-o mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

.field private greylist-max-o mSpanned:Landroid/text/Spanned;

.field private greylist-max-o mTextLength:I

.field private greylist-max-o mTextStart:I

.field private greylist-max-o mWholeWidth:F

.field private greylist-max-o mWidths:Landroid/text/AutoGrowArray$FloatArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 77
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/text/AutoGrowArray$ByteArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$ByteArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    .line 130
    new-instance v0, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 134
    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    .line 138
    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    .line 144
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    .line 146
    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    .line 75
    return-void
.end method

.method private blacklist applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .registers 16

    .line 822
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 824
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 826
    if-eqz p7, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    move p1, v0

    .line 828
    :goto_f
    if-eqz p1, :cond_1c

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v1, :cond_1c

    .line 829
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    .line 832
    :cond_1c
    nop

    .line 833
    const/4 v1, 0x0

    if-eqz p3, :cond_38

    .line 834
    move v2, v0

    :goto_21
    array-length v3, p3

    if-ge v2, v3, :cond_36

    .line 835
    aget-object v3, p3, v2

    .line 836
    instance-of v4, v3, Landroid/text/style/ReplacementSpan;

    if-eqz v4, :cond_2e

    .line 838
    move-object v1, v3

    check-cast v1, Landroid/text/style/ReplacementSpan;

    goto :goto_33

    .line 841
    :cond_2e
    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v4}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 834
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_36
    move-object p3, v1

    goto :goto_39

    .line 833
    :cond_38
    move-object p3, v1

    .line 846
    :goto_39
    if-eqz p4, :cond_59

    .line 847
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-virtual {v1, p2}, Landroid/graphics/text/LineBreakConfig$Builder;->reset(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    .line 848
    array-length p2, p4

    :goto_41
    if-ge v0, p2, :cond_51

    aget-object v1, p4, v0

    .line 849
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-virtual {v1}, Landroid/text/style/LineBreakConfigSpan;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->merge(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 851
    :cond_51
    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-virtual {p2}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object p2

    move-object v4, p2

    goto :goto_5a

    .line 846
    :cond_59
    move-object v4, p2

    .line 854
    :goto_5a
    iget p2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int p4, p5, p2

    .line 855
    iget p2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int p5, p6, p2

    .line 857
    if-eqz p7, :cond_6b

    .line 858
    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object p6, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p2, p6}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 861
    :cond_6b
    if-eqz p3, :cond_74

    .line 862
    iget-object p6, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object p2, p0

    invoke-direct/range {p2 .. p8}, Landroid/text/MeasuredParagraph;->applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    goto :goto_7f

    .line 865
    :cond_74
    move-object p2, p0

    iget-object v3, p2, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v0, p2

    move v1, p4

    move v2, p5

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    .line 869
    :goto_7f
    if-eqz p1, :cond_d8

    .line 870
    iget-object p1, p2, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p1, p1, Landroid/text/TextPaint;->baselineShift:I

    if-gez p1, :cond_9e

    .line 871
    iget-object p1, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object p4, p2, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p4, p4, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 872
    iget-object p1, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object p4, p2, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p4, p4, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_b4

    .line 874
    :cond_9e
    iget-object p1, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object p4, p2, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p4, p4, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 875
    iget-object p1, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object p4, p2, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget p4, p4, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 878
    :goto_b4
    iget-object p1, p2, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object p3, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {p1, p3}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 879
    iget-object p1, p2, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object p3, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {p1, p3}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 880
    iget-object p1, p2, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object p3, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p1, p3}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 881
    iget-object p1, p2, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object p2, p2, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p1, p2}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 883
    :cond_d8
    return-void
.end method

.method private blacklist applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .registers 13

    .line 732
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v3, p2, v0

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v4, p3, v0

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v0, p1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    int-to-float p1, p1

    .line 734
    if-nez p5, :cond_2e

    .line 736
    iget-object p4, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {p4, p2, p1}, Landroid/text/AutoGrowArray$FloatArray;->set(IF)V

    .line 737
    add-int/lit8 p4, p2, 0x1

    if-le p3, p4, :cond_28

    .line 738
    iget-object p5, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {p5}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object p5

    const/4 v0, 0x0

    invoke-static {p5, p4, p3, v0}, Ljava/util/Arrays;->fill([FIIF)V

    .line 740
    :cond_28
    iget p4, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    add-float/2addr p4, p1

    iput p4, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto :goto_33

    .line 742
    :cond_2e
    sub-int p4, p3, p2

    invoke-virtual {p5, v1, p4, p1}, Landroid/graphics/text/MeasuredText$Builder;->appendReplacementRun(Landroid/graphics/Paint;IF)Landroid/graphics/text/MeasuredText$Builder;

    .line 744
    :goto_33
    if-eqz p6, :cond_39

    .line 745
    sub-int/2addr p3, p2

    invoke-interface {p6, v1, p3, p1}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendReplacementRun(Landroid/graphics/Paint;IF)V

    .line 747
    :cond_39
    return-void
.end method

.method private blacklist applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .registers 25

    .line 756
    move-object/from16 v0, p0

    move/from16 v10, p2

    move-object/from16 v1, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    iget-boolean v2, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    const/4 v14, 0x0

    if-eqz v2, :cond_55

    .line 758
    if-nez v12, :cond_45

    .line 761
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v12

    .line 762
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x6000

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 765
    :try_start_20
    iget v15, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    sub-int v4, v10, p1

    iget-object v3, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 767
    invoke-virtual {v3}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v8

    .line 765
    const/4 v7, 0x0

    move/from16 v5, p1

    move v6, v4

    move/from16 v9, p1

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    add-float/2addr v15, v2

    iput v15, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_3b
    .catchall {:try_start_20 .. :try_end_3b} :catchall_40

    .line 769
    invoke-virtual {v1, v12}, Landroid/text/TextPaint;->setFlags(I)V

    .line 770
    nop

    .line 771
    goto :goto_4c

    .line 769
    :catchall_40
    move-exception v0

    invoke-virtual {v1, v12}, Landroid/text/TextPaint;->setFlags(I)V

    .line 770
    throw v0

    .line 772
    :cond_45
    move/from16 v3, p1

    sub-int v0, v10, v3

    invoke-virtual {v12, v1, v11, v0, v14}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    .line 774
    :goto_4c
    if-eqz v13, :cond_bf

    .line 775
    sub-int v0, v10, v3

    invoke-interface {v13, v1, v11, v0, v14}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)V

    goto/16 :goto_bf

    .line 779
    :cond_55
    move/from16 v3, p1

    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v2, v3}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v2

    .line 782
    add-int/lit8 v4, v3, 0x1

    move v15, v4

    .line 783
    :goto_60
    if-eq v15, v10, :cond_6a

    iget-object v4, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v4, v15}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v4

    if-eq v4, v2, :cond_c8

    .line 784
    :cond_6a
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_71

    const/4 v2, 0x1

    move v7, v2

    goto :goto_72

    :cond_71
    move v7, v14

    .line 785
    :goto_72
    if-nez v12, :cond_b0

    .line 786
    sub-int v4, v15, v3

    .line 787
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v2

    .line 788
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v5

    or-int/lit16 v5, v5, 0x6000

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setFlags(I)V

    .line 791
    :try_start_83
    iget v5, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_85
    .catchall {:try_start_83 .. :try_end_85} :catchall_aa

    move v6, v2

    :try_start_86
    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v8, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 793
    invoke-virtual {v8}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v8
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_a7

    .line 791
    move v9, v5

    move v5, v3

    move/from16 v16, v6

    move v6, v4

    move/from16 v17, v9

    move v9, v3

    move/from16 v14, v16

    :try_start_98
    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    add-float v5, v17, v2

    iput v5, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_a0
    .catchall {:try_start_98 .. :try_end_a0} :catchall_a5

    .line 795
    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->setFlags(I)V

    .line 796
    nop

    .line 797
    goto :goto_b5

    .line 795
    :catchall_a5
    move-exception v0

    goto :goto_ac

    :catchall_a7
    move-exception v0

    move v14, v6

    goto :goto_ac

    :catchall_aa
    move-exception v0

    move v14, v2

    :goto_ac
    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->setFlags(I)V

    .line 796
    throw v0

    .line 798
    :cond_b0
    sub-int v2, v15, v3

    invoke-virtual {v12, v1, v11, v2, v7}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    .line 800
    :goto_b5
    if-eqz v13, :cond_bc

    .line 801
    sub-int v2, v15, v3

    invoke-interface {v13, v1, v11, v2, v7}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)V

    .line 803
    :cond_bc
    if-ne v15, v10, :cond_c0

    .line 804
    nop

    .line 811
    :cond_bf
    :goto_bf
    return-void

    .line 806
    :cond_c0
    nop

    .line 807
    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v2, v15}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v2

    move v3, v15

    .line 782
    :cond_c8
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto :goto_60
.end method

.method public static greylist-max-o buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .registers 5

    .line 413
    if-nez p4, :cond_6

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object p4

    .line 414
    :cond_6
    invoke-direct {p4, p0, p1, p2, p3}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 415
    return-object p4
.end method

.method public static greylist-max-o buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .registers 15

    .line 440
    if-nez p5, :cond_6

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object p5

    :cond_6
    move-object v0, p5

    .line 441
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 443
    iget-object p1, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    iget p4, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {p1, p4}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    .line 444
    iget p1, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez p1, :cond_16

    .line 445
    return-object v0

    .line 448
    :cond_16
    iget-object p1, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez p1, :cond_26

    .line 450
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v8}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    goto :goto_71

    .line 456
    :cond_26
    move-object v1, p0

    move v5, p2

    move p0, p3

    :goto_29
    if-ge v5, p0, :cond_71

    .line 457
    iget-object p1, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p1, v5, p0, p2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    .line 459
    iget-object p2, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p3, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {p2, v5, p0, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p2

    .line 461
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 462
    iget-object p1, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p1, v5, v6, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/MetricAffectingSpan;

    .line 464
    iget-object p2, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p3, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {p2, v5, v6, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/LineBreakConfigSpan;

    .line 466
    iget-object p3, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p4, Landroid/text/style/MetricAffectingSpan;

    invoke-static {p1, p3, p4}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    .line 467
    iget-object p1, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p3, Landroid/text/style/LineBreakConfigSpan;

    invoke-static {p2, p1, p3}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Landroid/text/style/LineBreakConfigSpan;

    .line 469
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    .line 456
    move v5, v6

    goto :goto_29

    .line 474
    :cond_71
    :goto_71
    return-object v0
.end method

.method public static blacklist buildForStaticLayout(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .registers 23

    .line 532
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/text/MeasuredParagraph;->buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;
    .registers 12

    .line 585
    if-nez p10, :cond_6

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object p10

    .line 586
    :cond_6
    invoke-direct {p10, p2, p3, p4, p5}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 588
    if-nez p9, :cond_20

    .line 589
    new-instance p2, Landroid/graphics/text/MeasuredText$Builder;

    iget-object p5, p10, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-direct {p2, p5}, Landroid/graphics/text/MeasuredText$Builder;-><init>([C)V

    .line 590
    invoke-virtual {p2, p6}, Landroid/graphics/text/MeasuredText$Builder;->setComputeHyphenation(I)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object p2

    .line 591
    invoke-virtual {p2, p7}, Landroid/graphics/text/MeasuredText$Builder;->setComputeLayout(Z)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object p2

    .line 592
    invoke-virtual {p2, p8}, Landroid/graphics/text/MeasuredText$Builder;->setComputeBounds(Z)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object p2

    move-object p7, p2

    goto :goto_28

    .line 594
    :cond_20
    new-instance p2, Landroid/graphics/text/MeasuredText$Builder;

    iget-object p5, p9, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-direct {p2, p5}, Landroid/graphics/text/MeasuredText$Builder;-><init>(Landroid/graphics/text/MeasuredText;)V

    move-object p7, p2

    .line 596
    :goto_28
    iget p2, p10, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez p2, :cond_35

    .line 599
    invoke-virtual {p7}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object p0

    iput-object p0, p10, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    move-object p0, p10

    goto/16 :goto_9f

    .line 601
    :cond_35
    iget-object p2, p10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez p2, :cond_4b

    .line 603
    move p5, p3

    const/4 p3, 0x0

    move p6, p4

    const/4 p4, 0x0

    move-object p2, p1

    move-object p8, p11

    move-object p1, p0

    move-object p0, p10

    invoke-direct/range {p0 .. p8}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    .line 605
    move p9, p6

    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {p1, p9}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    goto :goto_99

    .line 610
    :cond_4b
    move-object p2, p1

    move p5, p3

    move p9, p4

    move-object p8, p11

    move-object p1, p0

    move-object p0, p10

    :goto_51
    if-ge p5, p9, :cond_99

    .line 611
    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p3, p5, p9, p4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p3

    .line 613
    iget-object p4, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p6, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {p4, p5, p9, p6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p4

    .line 615
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 616
    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p3, p5, p6, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/text/style/MetricAffectingSpan;

    .line 618
    iget-object p4, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p10, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {p4, p5, p6, p10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/text/style/LineBreakConfigSpan;

    .line 620
    iget-object p10, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p11, Landroid/text/style/MetricAffectingSpan;

    invoke-static {p3, p10, p11}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/text/style/MetricAffectingSpan;

    .line 622
    iget-object p10, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class p11, Landroid/text/style/LineBreakConfigSpan;

    invoke-static {p4, p10, p11}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/text/style/LineBreakConfigSpan;

    .line 624
    invoke-direct/range {p0 .. p8}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    .line 626
    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {p3, p6}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 610
    move p5, p6

    goto :goto_51

    .line 629
    :cond_99
    :goto_99
    invoke-virtual {p7}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object p1

    iput-object p1, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    .line 632
    :goto_9f
    return-object p0
.end method

.method public static blacklist buildForStaticLayoutTest(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZLandroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;
    .registers 21

    .line 568
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v11, p8

    invoke-static/range {v0 .. v11}, Landroid/text/MeasuredParagraph;->buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o obtain()Landroid/text/MeasuredParagraph;
    .registers 1

    .line 80
    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/MeasuredParagraph;

    .line 81
    if-eqz v0, :cond_b

    goto :goto_10

    :cond_b
    new-instance v0, Landroid/text/MeasuredParagraph;

    invoke-direct {v0}, Landroid/text/MeasuredParagraph;-><init>()V

    :goto_10
    return-object v0
.end method

.method private greylist-max-o reset()V
    .registers 3

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    .line 166
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 167
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    .line 168
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 169
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->clear()V

    .line 170
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 171
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 172
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    .line 173
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    .line 174
    return-void
.end method

.method private greylist-max-o resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .registers 14

    .line 647
    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    .line 648
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    .line 649
    iput p2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    .line 650
    sub-int v0, p3, p2

    iput v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 652
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-eq v0, v1, :cond_25

    .line 653
    :cond_1f
    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 655
    :cond_25
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 658
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const v0, 0xfffc

    if-eqz p1, :cond_63

    .line 659
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {p1, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ReplacementSpan;

    .line 661
    move p3, v1

    :goto_3d
    array-length v2, p1

    if-ge p3, v2, :cond_63

    .line 662
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v3, p1, p3

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v2, p2

    .line 663
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v4, p1, p3

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v3, p2

    .line 665
    if-gez v2, :cond_55

    move v2, v1

    .line 666
    :cond_55
    iget v4, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-le v3, v4, :cond_5b

    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 667
    :cond_5b
    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-static {v4, v2, v3, v0}, Ljava/util/Arrays;->fill([CIIC)V

    .line 661
    add-int/lit8 p3, p3, 0x1

    goto :goto_3d

    .line 671
    :cond_63
    sget-object p1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 p2, 0x1

    if-eq p4, p1, :cond_70

    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq p4, p1, :cond_70

    sget-object p1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_82

    :cond_70
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget p3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 674
    invoke-static {p1, v1, p3}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result p1

    if-eqz p1, :cond_82

    .line 675
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {p1}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 676
    iput-boolean p2, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    .line 677
    return-void

    .line 680
    :cond_82
    sget-object p1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_88

    .line 681
    move v8, v1

    goto :goto_a7

    .line 682
    :cond_88
    sget-object p1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_8e

    .line 683
    move v8, p2

    goto :goto_a7

    .line 684
    :cond_8e
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_96

    .line 685
    const/16 p1, 0x7e

    move v8, p1

    goto :goto_a7

    .line 686
    :cond_96
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, p1, :cond_9e

    .line 687
    const/16 p1, 0x7f

    move v8, p1

    goto :goto_a7

    .line 689
    :cond_9e
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget p3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-interface {p4, p1, v1, p3}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result p1

    .line 690
    move v8, p1

    .line 692
    :goto_a7
    new-instance v2, Landroid/icu/text/Bidi;

    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v7, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v2, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    .line 694
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length p1, p1

    if-lez p1, :cond_f8

    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length p3, p3

    sub-int/2addr p3, p2

    .line 695
    invoke-virtual {p1, p3}, Landroid/icu/text/Bidi;->getParagraphIndex(I)I

    move-result p1

    if-eqz p1, :cond_f8

    .line 703
    move p1, v1

    :goto_c8
    iget p2, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-ge p1, p2, :cond_e9

    .line 704
    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aget-char p2, p2, p1

    invoke-static {p2}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_d7

    .line 706
    goto :goto_e6

    .line 708
    :cond_d7
    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aget-char p2, p2, p1

    invoke-static {p2}, Landroid/icu/lang/UCharacter;->getDirection(I)I

    move-result p2

    const/4 p3, 0x7

    if-ne p2, p3, :cond_e6

    .line 710
    iget-object p2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aput-char v0, p2, p1

    .line 703
    :cond_e6
    :goto_e6
    add-int/lit8 p1, p1, 0x1

    goto :goto_c8

    .line 713
    :cond_e9
    new-instance v2, Landroid/icu/text/Bidi;

    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v7, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v2, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    .line 715
    :cond_f8
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    iget p2, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {p1, p2}, Landroid/text/AutoGrowArray$ByteArray;->resize(I)V

    .line 716
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {p1}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object p1

    .line 717
    move p2, v1

    :goto_106
    iget p3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-ge p2, p3, :cond_115

    .line 718
    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {p3, p2}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result p3

    aput-byte p3, p1, p2

    .line 717
    add-int/lit8 p2, p2, 0x1

    goto :goto_106

    .line 720
    :cond_115
    iput-boolean v1, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    .line 721
    return-void
.end method


# virtual methods
.method greylist-max-o breakText(IZF)I
    .registers 9

    .line 894
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    .line 895
    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz p2, :cond_27

    .line 896
    const/4 p2, 0x0

    .line 897
    :goto_c
    if-ge p2, p1, :cond_19

    .line 898
    aget v3, v0, p2

    sub-float/2addr p3, v3

    .line 899
    cmpg-float v3, p3, v2

    if-gez v3, :cond_16

    goto :goto_19

    .line 900
    :cond_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 902
    :cond_19
    :goto_19
    if-lez p2, :cond_26

    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 p3, p2, -0x1

    aget-char p1, p1, p3

    if-ne p1, v1, :cond_26

    add-int/lit8 p2, p2, -0x1

    goto :goto_19

    .line 903
    :cond_26
    return p2

    .line 905
    :cond_27
    add-int/lit8 p2, p1, -0x1

    move v3, p2

    .line 906
    :goto_2a
    if-ltz v3, :cond_37

    .line 907
    aget v4, v0, v3

    sub-float/2addr p3, v4

    .line 908
    cmpg-float v4, p3, v2

    if-gez v4, :cond_34

    goto :goto_37

    .line 909
    :cond_34
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 911
    :cond_37
    :goto_37
    if-ge v3, p2, :cond_49

    iget-object p3, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v4, v3, 0x1

    aget-char p3, p3, v4

    if-eq p3, v1, :cond_47

    aget p3, v0, v4

    cmpl-float p3, p3, v2

    if-nez p3, :cond_49

    .line 912
    :cond_47
    move v3, v4

    goto :goto_37

    .line 914
    :cond_49
    sub-int/2addr p1, v3

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public greylist-max-o getBounds(IILandroid/graphics/Rect;)V
    .registers 5

    .line 369
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getBounds(IILandroid/graphics/Rect;)V

    .line 370
    return-void
.end method

.method public blacklist getCharWidthAt(I)F
    .registers 3

    .line 390
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1}, Landroid/graphics/text/MeasuredText;->getCharWidthAt(I)F

    move-result p1

    return p1
.end method

.method public greylist-max-o getChars()[C
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    return-object v0
.end method

.method public greylist-max-o getDirections(II)Landroid/text/Layout$Directions;
    .registers 10

    .line 219
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    if-nez v0, :cond_7

    .line 220
    sget-object p1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object p1

    .line 225
    :cond_7
    const/4 v0, 0x1

    if-ne p1, p2, :cond_19

    .line 226
    iget-object p1, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {p1}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result p1

    and-int/2addr p1, v0

    if-nez p1, :cond_16

    .line 227
    sget-object p1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object p1

    .line 229
    :cond_16
    sget-object p1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object p1

    .line 234
    :cond_19
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v1, p1, p2}, Landroid/icu/text/Bidi;->createLineBidi(II)Landroid/icu/text/Bidi;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_4b

    .line 239
    invoke-virtual {v1, v3}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v2

    if-ne v2, v0, :cond_2f

    .line 240
    sget-object p1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object p1

    .line 241
    :cond_2f
    invoke-virtual {v1, v3}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v0

    if-nez v0, :cond_38

    .line 242
    sget-object p1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object p1

    .line 244
    :cond_38
    new-instance v0, Landroid/text/Layout$Directions;

    .line 245
    invoke-virtual {v1, v3}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1a

    sub-int/2addr p2, p1

    or-int p1, v1, p2

    filled-new-array {v3, p1}, [I

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/Layout$Directions;-><init>([I)V

    .line 244
    return-object v0

    .line 250
    :cond_4b
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result p1

    new-array p1, p1, [B

    .line 251
    move p2, v3

    :goto_52
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v2

    if-ge p2, v2, :cond_62

    .line 252
    invoke-virtual {v1, p2}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 251
    add-int/lit8 p2, p2, 0x1

    goto :goto_52

    .line 254
    :cond_62
    invoke-static {p1}, Landroid/icu/text/Bidi;->reorderVisual([B)[I

    move-result-object p1

    .line 256
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [I

    .line 257
    nop

    :goto_6f
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v2

    if-ge v3, v2, :cond_a6

    .line 259
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v2}, Landroid/icu/text/Bidi;->getBaseLevel()I

    move-result v2

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_87

    .line 262
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    aget v2, p1, v2

    goto :goto_89

    .line 264
    :cond_87
    aget v2, p1, v3

    .line 268
    :goto_89
    mul-int/lit8 v4, v3, 0x2

    invoke-virtual {v1, v2}, Landroid/icu/text/Bidi;->getRunStart(I)I

    move-result v5

    aput v5, p2, v4

    .line 269
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x1a

    .line 270
    invoke-virtual {v1, v2}, Landroid/icu/text/Bidi;->getRunLimit(I)I

    move-result v2

    aget v4, p2, v4

    sub-int/2addr v2, v4

    or-int/2addr v2, v6

    aput v2, p2, v5

    .line 257
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 273
    :cond_a6
    new-instance p1, Landroid/text/Layout$Directions;

    invoke-direct {p1, p2}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object p1
.end method

.method public greylist-max-o getFontMetrics()Landroid/text/AutoGrowArray$IntArray;
    .registers 2

    .line 321
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public blacklist getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 5

    .line 380
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    .line 381
    return-void
.end method

.method public blacklist getMeasuredText()Landroid/graphics/text/MeasuredText;
    .registers 2

    .line 332
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    return-object v0
.end method

.method public greylist-max-o getMemoryUsage()I
    .registers 2

    .line 938
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0}, Landroid/graphics/text/MeasuredText;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getParagraphDir()I
    .registers 3

    .line 203
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 204
    return v1

    .line 206
    :cond_6
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_10

    .line 207
    goto :goto_11

    :cond_10
    const/4 v1, -0x1

    .line 206
    :goto_11
    return v1
.end method

.method public greylist-max-o getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;
    .registers 2

    .line 308
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public greylist-max-o getTextLength()I
    .registers 2

    .line 183
    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    return v0
.end method

.method public greylist-max-o getWholeWidth()F
    .registers 2

    .line 284
    iget v0, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    return v0
.end method

.method public greylist-max-o getWidth(II)F
    .registers 6

    .line 346
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    if-nez v0, :cond_15

    .line 348
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    .line 349
    nop

    .line 350
    const/4 v1, 0x0

    :goto_c
    if-ge p1, p2, :cond_14

    .line 351
    aget v2, v0, p1

    add-float/2addr v1, v2

    .line 350
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 353
    :cond_14
    return v1

    .line 356
    :cond_15
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/text/MeasuredText;->getWidth(II)F

    move-result p1

    return p1
.end method

.method public greylist-max-o getWidths()Landroid/text/AutoGrowArray$FloatArray;
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    return-object v0
.end method

.method greylist-max-o measure(II)F
    .registers 6

    .line 925
    nop

    .line 926
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    .line 927
    const/4 v1, 0x0

    :goto_8
    if-ge p1, p2, :cond_10

    .line 928
    aget v2, v0, p1

    add-float/2addr v1, v2

    .line 927
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 930
    :cond_10
    return v1
.end method

.method public greylist-max-o recycle()V
    .registers 2

    .line 91
    invoke-virtual {p0}, Landroid/text/MeasuredParagraph;->release()V

    .line 92
    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public greylist-max-o release()V
    .registers 2

    .line 154
    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    .line 155
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clearWithReleasingLargeArray()V

    .line 156
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->clearWithReleasingLargeArray()V

    .line 157
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    .line 158
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    .line 159
    return-void
.end method
