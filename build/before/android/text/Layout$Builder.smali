.class public final Landroid/text/Layout$Builder;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlignment:Landroid/text/Layout$Alignment;

.field private blacklist mBreakStrategy:I

.field private blacklist mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private blacklist mEllipsizedWidth:I

.field private final blacklist mEnd:I

.field private blacklist mFallbackLineSpacing:Z

.field private blacklist mHyphenationFrequency:I

.field private blacklist mIncludePad:Z

.field private blacklist mJustificationMode:I

.field private blacklist mLeftIndents:[I

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private blacklist mMaxLines:I

.field private blacklist mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final blacklist mPaint:Landroid/text/TextPaint;

.field private blacklist mRightIndents:[I

.field private blacklist mShiftDrawingOffsetForStartOverhang:Z

.field private blacklist mSpacingAdd:F

.field private blacklist mSpacingMult:F

.field private final blacklist mStart:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mTextDir:Landroid/text/TextDirectionHeuristic;

.field private blacklist mUseBoundsForWidth:Z

.field private final blacklist mWidth:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)V
    .registers 9

    .line 3890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4343
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 4344
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/Layout$Builder;->mSpacingMult:F

    .line 4345
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/Layout$Builder;->mSpacingAdd:F

    .line 4346
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v0, p0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 4347
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/Layout$Builder;->mIncludePad:Z

    .line 4348
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    .line 4350
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 4351
    const v2, 0x7fffffff

    iput v2, p0, Landroid/text/Layout$Builder;->mMaxLines:I

    .line 4352
    iput v0, p0, Landroid/text/Layout$Builder;->mBreakStrategy:I

    .line 4353
    iput v0, p0, Landroid/text/Layout$Builder;->mHyphenationFrequency:I

    .line 4354
    iput-object v1, p0, Landroid/text/Layout$Builder;->mLeftIndents:[I

    .line 4355
    iput-object v1, p0, Landroid/text/Layout$Builder;->mRightIndents:[I

    .line 4356
    iput v0, p0, Landroid/text/Layout$Builder;->mJustificationMode:I

    .line 4357
    sget-object v0, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v0, p0, Landroid/text/Layout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 3891
    iput-object p1, p0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    .line 3892
    iput p2, p0, Landroid/text/Layout$Builder;->mStart:I

    .line 3893
    iput p3, p0, Landroid/text/Layout$Builder;->mEnd:I

    .line 3894
    iput-object p4, p0, Landroid/text/Layout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 3895
    iput p5, p0, Landroid/text/Layout$Builder;->mWidth:I

    .line 3896
    iput p5, p0, Landroid/text/Layout$Builder;->mEllipsizedWidth:I

    .line 3897
    return-void
.end method

.method private blacklist isBoring()Landroid/text/BoringLayout$Metrics;
    .registers 10

    .line 4287
    iget v0, p0, Landroid/text/Layout$Builder;->mStart:I

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    iget v0, p0, Landroid/text/Layout$Builder;->mEnd:I

    iget-object v2, p0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v0, v2, :cond_10

    goto :goto_2f

    .line 4290
    :cond_10
    iget-object v3, p0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/text/Layout$Builder;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-boolean v6, p0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    iget-object v7, p0, Landroid/text/Layout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/graphics/Paint$FontMetrics;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    .line 4292
    if-nez v0, :cond_22

    .line 4293
    return-object v1

    .line 4295
    :cond_22
    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    iget v3, p0, Landroid/text/Layout$Builder;->mWidth:I

    if-gt v2, v3, :cond_29

    .line 4296
    return-object v0

    .line 4298
    :cond_29
    iget-object v2, p0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_2e

    .line 4299
    return-object v0

    .line 4301
    :cond_2e
    return-object v1

    .line 4288
    :cond_2f
    :goto_2f
    return-object v1
.end method


# virtual methods
.method public whitelist build()Landroid/text/Layout;
    .registers 25

    .line 4309
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/text/Layout$Builder;->isBoring()Landroid/text/BoringLayout$Metrics;

    move-result-object v19

    .line 4310
    if-nez v19, :cond_79

    .line 4311
    iget-object v1, v0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/text/Layout$Builder;->mStart:I

    iget v3, v0, Landroid/text/Layout$Builder;->mEnd:I

    iget-object v4, v0, Landroid/text/Layout$Builder;->mPaint:Landroid/text/TextPaint;

    iget v5, v0, Landroid/text/Layout$Builder;->mWidth:I

    invoke-static {v1, v2, v3, v4, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 4312
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mSpacingAdd:F

    iget v3, v0, Landroid/text/Layout$Builder;->mSpacingMult:F

    .line 4313
    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 4314
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/text/Layout$Builder;->mIncludePad:Z

    .line 4315
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    .line 4316
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mEllipsizedWidth:I

    .line 4317
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 4318
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mMaxLines:I

    .line 4319
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mBreakStrategy:I

    .line 4320
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mHyphenationFrequency:I

    .line 4321
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mLeftIndents:[I

    iget-object v3, v0, Landroid/text/Layout$Builder;->mRightIndents:[I

    .line 4322
    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mJustificationMode:I

    .line 4323
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 4324
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/text/Layout$Builder;->mUseBoundsForWidth:Z

    .line 4325
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setUseBoundsForWidth(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v0, v0, Landroid/text/Layout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    .line 4326
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setShiftDrawingOffsetForStartOverhang(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 4327
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    .line 4311
    return-object v0

    .line 4329
    :cond_79
    new-instance v1, Landroid/text/BoringLayout;

    move-object v2, v1

    iget-object v1, v0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    move-object v3, v2

    iget-object v2, v0, Landroid/text/Layout$Builder;->mPaint:Landroid/text/TextPaint;

    move-object v4, v3

    iget v3, v0, Landroid/text/Layout$Builder;->mWidth:I

    move-object v5, v4

    iget-object v4, v0, Landroid/text/Layout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    move-object v6, v5

    iget-object v5, v0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object v7, v6

    iget v6, v0, Landroid/text/Layout$Builder;->mSpacingMult:F

    move-object v8, v7

    iget v7, v0, Landroid/text/Layout$Builder;->mSpacingAdd:F

    move-object v9, v8

    iget-boolean v8, v0, Landroid/text/Layout$Builder;->mIncludePad:Z

    move-object v10, v9

    iget-boolean v9, v0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    move-object v11, v10

    iget v10, v0, Landroid/text/Layout$Builder;->mEllipsizedWidth:I

    move-object v12, v11

    iget-object v11, v0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v13, v12

    iget v12, v0, Landroid/text/Layout$Builder;->mMaxLines:I

    move-object v14, v13

    iget v13, v0, Landroid/text/Layout$Builder;->mBreakStrategy:I

    move-object v15, v14

    iget v14, v0, Landroid/text/Layout$Builder;->mHyphenationFrequency:I

    move-object/from16 v16, v15

    iget-object v15, v0, Landroid/text/Layout$Builder;->mLeftIndents:[I

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/text/Layout$Builder;->mRightIndents:[I

    move-object/from16 v18, v1

    iget v1, v0, Landroid/text/Layout$Builder;->mJustificationMode:I

    move/from16 v20, v1

    iget-object v1, v0, Landroid/text/Layout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Landroid/text/Layout$Builder;->mUseBoundsForWidth:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Landroid/text/Layout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    iget-object v0, v0, Landroid/text/Layout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    move/from16 v23, v22

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v21

    move/from16 v21, v1

    move-object/from16 v1, v17

    move/from16 v17, v20

    move/from16 v20, v23

    invoke-direct/range {v0 .. v22}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V

    return-object v0
.end method

.method public whitelist setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/Layout$Builder;
    .registers 2

    .line 3912
    iput-object p1, p0, Landroid/text/Layout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 3913
    return-object p0
.end method

.method public whitelist setBreakStrategy(I)Landroid/text/Layout$Builder;
    .registers 2

    .line 4082
    iput p1, p0, Landroid/text/Layout$Builder;->mBreakStrategy:I

    .line 4083
    return-object p0
.end method

.method public whitelist setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/Layout$Builder;
    .registers 2

    .line 4047
    iput-object p1, p0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 4048
    return-object p0
.end method

.method public whitelist setEllipsizedWidth(I)Landroid/text/Layout$Builder;
    .registers 2

    .line 4028
    iput p1, p0, Landroid/text/Layout$Builder;->mEllipsizedWidth:I

    .line 4029
    return-object p0
.end method

.method public whitelist setFallbackLineSpacingEnabled(Z)Landroid/text/Layout$Builder;
    .registers 2

    .line 4009
    iput-boolean p1, p0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    .line 4010
    return-object p0
.end method

.method public whitelist setFontPaddingIncluded(Z)Landroid/text/Layout$Builder;
    .registers 2

    .line 3988
    iput-boolean p1, p0, Landroid/text/Layout$Builder;->mIncludePad:Z

    .line 3989
    return-object p0
.end method

.method public whitelist setHyphenationFrequency(I)Landroid/text/Layout$Builder;
    .registers 2

    .line 4103
    iput p1, p0, Landroid/text/Layout$Builder;->mHyphenationFrequency:I

    .line 4104
    return-object p0
.end method

.method public whitelist setJustificationMode(I)Landroid/text/Layout$Builder;
    .registers 2

    .line 4173
    iput p1, p0, Landroid/text/Layout$Builder;->mJustificationMode:I

    .line 4174
    return-object p0
.end method

.method public whitelist setLeftIndents([I)Landroid/text/Layout$Builder;
    .registers 2

    .line 4127
    iput-object p1, p0, Landroid/text/Layout$Builder;->mLeftIndents:[I

    .line 4128
    return-object p0
.end method

.method public whitelist setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/Layout$Builder;
    .registers 2

    .line 4191
    iput-object p1, p0, Landroid/text/Layout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 4192
    return-object p0
.end method

.method public whitelist setLineSpacingAmount(F)Landroid/text/Layout$Builder;
    .registers 2

    .line 3950
    iput p1, p0, Landroid/text/Layout$Builder;->mSpacingAdd:F

    .line 3951
    return-object p0
.end method

.method public whitelist setLineSpacingMultiplier(F)Landroid/text/Layout$Builder;
    .registers 2

    .line 3969
    iput p1, p0, Landroid/text/Layout$Builder;->mSpacingMult:F

    .line 3970
    return-object p0
.end method

.method public whitelist setMaxLines(I)Landroid/text/Layout$Builder;
    .registers 2

    .line 4063
    iput p1, p0, Landroid/text/Layout$Builder;->mMaxLines:I

    .line 4064
    return-object p0
.end method

.method public whitelist setMinimumFontMetrics(Landroid/graphics/Paint$FontMetrics;)Landroid/text/Layout$Builder;
    .registers 2

    .line 4282
    iput-object p1, p0, Landroid/text/Layout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 4283
    return-object p0
.end method

.method public whitelist setRightIndents([I)Landroid/text/Layout$Builder;
    .registers 2

    .line 4151
    iput-object p1, p0, Landroid/text/Layout$Builder;->mRightIndents:[I

    .line 4152
    return-object p0
.end method

.method public whitelist setShiftDrawingOffsetForStartOverhang(Z)Landroid/text/Layout$Builder;
    .registers 2

    .line 4246
    iput-boolean p1, p0, Landroid/text/Layout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    .line 4247
    return-object p0
.end method

.method public whitelist setTextDirectionHeuristic(Landroid/text/TextDirectionHeuristic;)Landroid/text/Layout$Builder;
    .registers 2

    .line 3931
    iput-object p1, p0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 3932
    return-object p0
.end method

.method public whitelist setUseBoundsForWidth(Z)Landroid/text/Layout$Builder;
    .registers 2

    .line 4217
    iput-boolean p1, p0, Landroid/text/Layout$Builder;->mUseBoundsForWidth:Z

    .line 4218
    return-object p0
.end method
