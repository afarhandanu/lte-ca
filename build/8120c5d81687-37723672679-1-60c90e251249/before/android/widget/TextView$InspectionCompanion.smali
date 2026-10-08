.class public final Landroid/widget/TextView$InspectionCompanion;
.super Ljava/lang/Object;
.source "TextView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAutoLinkId:I

.field private blacklist mAutoSizeMaxTextSizeId:I

.field private blacklist mAutoSizeMinTextSizeId:I

.field private blacklist mAutoSizeStepGranularityId:I

.field private blacklist mAutoSizeTextTypeId:I

.field private blacklist mBreakStrategyId:I

.field private blacklist mCursorVisibleId:I

.field private blacklist mDrawableBlendModeId:I

.field private blacklist mDrawablePaddingId:I

.field private blacklist mDrawableTintId:I

.field private blacklist mDrawableTintModeId:I

.field private blacklist mElegantTextHeightId:I

.field private blacklist mEllipsizeId:I

.field private blacklist mFallbackLineSpacingId:I

.field private blacklist mFirstBaselineToTopHeightId:I

.field private blacklist mFontFeatureSettingsId:I

.field private blacklist mFreezesTextId:I

.field private blacklist mGravityId:I

.field private blacklist mHintId:I

.field private blacklist mHyphenationFrequencyId:I

.field private blacklist mImeActionIdId:I

.field private blacklist mImeActionLabelId:I

.field private blacklist mImeOptionsId:I

.field private blacklist mIncludeFontPaddingId:I

.field private blacklist mInputTypeId:I

.field private blacklist mJustificationModeId:I

.field private blacklist mLastBaselineToBottomHeightId:I

.field private blacklist mLetterSpacingId:I

.field private blacklist mLineHeightId:I

.field private blacklist mLineSpacingExtraId:I

.field private blacklist mLineSpacingMultiplierId:I

.field private blacklist mLinksClickableId:I

.field private blacklist mMarqueeRepeatLimitId:I

.field private blacklist mMaxEmsId:I

.field private blacklist mMaxHeightId:I

.field private blacklist mMaxLinesId:I

.field private blacklist mMaxWidthId:I

.field private blacklist mMinEmsId:I

.field private blacklist mMinLinesId:I

.field private blacklist mMinWidthId:I

.field private blacklist mPrivateImeOptionsId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mScrollHorizontallyId:I

.field private blacklist mShadowColorId:I

.field private blacklist mShadowDxId:I

.field private blacklist mShadowDyId:I

.field private blacklist mShadowRadiusId:I

.field private blacklist mSingleLineId:I

.field private blacklist mTextAllCapsId:I

.field private blacklist mTextColorHighlightId:I

.field private blacklist mTextColorHintId:I

.field private blacklist mTextColorId:I

.field private blacklist mTextColorLinkId:I

.field private blacklist mTextId:I

.field private blacklist mTextIsSelectableId:I

.field private blacklist mTextScaleXId:I

.field private blacklist mTextSizeId:I

.field private blacklist mTypefaceId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 14

    .line 311
    new-instance v0, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v0}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    .line 312
    const-string v1, "email"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2, v1}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 313
    const/16 v1, 0x8

    const-string/jumbo v3, "map"

    invoke-virtual {v0, v1, v1, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 314
    const/4 v1, 0x4

    const-string/jumbo v3, "phone"

    invoke-virtual {v0, v1, v1, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 315
    const-string/jumbo v4, "web"

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v5, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 316
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string v0, "autoLink"

    const v6, 0x10100b0

    invoke-interface {p1, v0, v6, v4}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoLinkId:I

    .line 317
    const-string v0, "autoSizeMaxTextSize"

    const v4, 0x1010546

    invoke-interface {p1, v0, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeMaxTextSizeId:I

    .line 318
    const-string v0, "autoSizeMinTextSize"

    const v4, 0x1010538

    invoke-interface {p1, v0, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeMinTextSizeId:I

    .line 319
    const-string v0, "autoSizeStepGranularity"

    const v4, 0x1010536

    invoke-interface {p1, v0, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeStepGranularityId:I

    .line 320
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 321
    const/4 v4, 0x0

    const-string/jumbo v6, "none"

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    const-string/jumbo v7, "uniform"

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v0, "autoSizeTextType"

    const v8, 0x1010535

    invoke-interface {p1, v0, v8, v7}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeTextTypeId:I

    .line 324
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 325
    const-string/jumbo v7, "simple"

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    const-string v7, "high_quality"

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    const-string v7, "balanced"

    invoke-virtual {v0, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 328
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v0, "breakStrategy"

    const v8, 0x10104dd

    invoke-interface {p1, v0, v8, v7}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mBreakStrategyId:I

    .line 329
    const-string v0, "cursorVisible"

    const v7, 0x1010152

    invoke-interface {p1, v0, v7}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mCursorVisibleId:I

    .line 330
    const-string v0, "drawableBlendMode"

    const/16 v7, 0x50

    invoke-interface {p1, v0, v7}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawableBlendModeId:I

    .line 331
    const-string v0, "drawablePadding"

    const v7, 0x1010171

    invoke-interface {p1, v0, v7}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawablePaddingId:I

    .line 332
    const-string v0, "drawableTint"

    const v7, 0x10104d6

    invoke-interface {p1, v0, v7}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawableTintId:I

    .line 333
    const-string v0, "drawableTintMode"

    const v7, 0x10104d7

    invoke-interface {p1, v0, v7}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawableTintModeId:I

    .line 334
    const-string v0, "elegantTextHeight"

    const v7, 0x101045d

    invoke-interface {p1, v0, v7}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mElegantTextHeightId:I

    .line 335
    const-string v0, "ellipsize"

    const v7, 0x10100ab

    invoke-interface {p1, v0, v7}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mEllipsizeId:I

    .line 336
    const-string v0, "fallbackLineSpacing"

    const v7, 0x101057b

    invoke-interface {p1, v0, v7}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFallbackLineSpacingId:I

    .line 337
    const-string v0, "firstBaselineToTopHeight"

    const v7, 0x101057d

    invoke-interface {p1, v0, v7}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFirstBaselineToTopHeightId:I

    .line 338
    const-string v0, "fontFeatureSettings"

    const v7, 0x10104b7

    invoke-interface {p1, v0, v7}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFontFeatureSettingsId:I

    .line 339
    const-string v0, "freezesText"

    const v7, 0x101016c

    invoke-interface {p1, v0, v7}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFreezesTextId:I

    .line 340
    const-string v0, "gravity"

    const v7, 0x10100af

    invoke-interface {p1, v0, v7}, Landroid/view/inspector/PropertyMapper;->mapGravity(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mGravityId:I

    .line 341
    const-string v0, "hint"

    const v7, 0x1010150

    invoke-interface {p1, v0, v7}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mHintId:I

    .line 342
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 343
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    const-string/jumbo v7, "normal"

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    const-string v8, "full"

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v0, "hyphenationFrequency"

    const v9, 0x10104de

    invoke-interface {p1, v0, v9, v8}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mHyphenationFrequencyId:I

    .line 347
    const-string v0, "imeActionId"

    const v8, 0x1010266

    invoke-interface {p1, v0, v8}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mImeActionIdId:I

    .line 348
    const-string v0, "imeActionLabel"

    const v8, 0x1010265

    invoke-interface {p1, v0, v8}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mImeActionLabelId:I

    .line 349
    new-instance v0, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v0}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    .line 350
    const/4 v8, 0x6

    const-string v9, "actionDone"

    const/16 v10, 0xff

    invoke-virtual {v0, v10, v8, v9}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 351
    const-string v8, "actionGo"

    invoke-virtual {v0, v10, v2, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 352
    const/4 v8, 0x5

    const-string v9, "actionNext"

    invoke-virtual {v0, v10, v8, v9}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 353
    const-string v8, "actionNone"

    invoke-virtual {v0, v10, v5, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 354
    const/4 v8, 0x7

    const-string v9, "actionPrevious"

    invoke-virtual {v0, v10, v8, v9}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 355
    const-string v8, "actionSearch"

    const/4 v9, 0x3

    invoke-virtual {v0, v10, v9, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 356
    const-string v8, "actionSend"

    invoke-virtual {v0, v10, v1, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 357
    const-string v8, "actionUnspecified"

    invoke-virtual {v0, v10, v4, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 358
    const/high16 v8, -0x80000000

    const-string v10, "flagForceAscii"

    invoke-virtual {v0, v8, v8, v10}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 359
    const/high16 v8, 0x8000000

    const-string v10, "flagNavigateNext"

    invoke-virtual {v0, v8, v8, v10}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 360
    const/high16 v8, 0x4000000

    const-string v10, "flagNavigatePrevious"

    invoke-virtual {v0, v8, v8, v10}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 361
    const/high16 v8, 0x20000000

    const-string v10, "flagNoAccessoryAction"

    invoke-virtual {v0, v8, v8, v10}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 362
    const/high16 v8, 0x40000000    # 2.0f

    const-string v10, "flagNoEnterAction"

    invoke-virtual {v0, v8, v8, v10}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 363
    const/high16 v8, 0x10000000

    const-string v10, "flagNoExtractUi"

    invoke-virtual {v0, v8, v8, v10}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 364
    const/high16 v8, 0x2000000

    const-string v10, "flagNoFullscreen"

    invoke-virtual {v0, v8, v8, v10}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 365
    const/high16 v8, 0x1000000

    const-string v10, "flagNoPersonalizedLearning"

    invoke-virtual {v0, v8, v8, v10}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 366
    const/4 v8, -0x1

    invoke-virtual {v0, v8, v4, v7}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 367
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string v0, "imeOptions"

    const v10, 0x1010264

    invoke-interface {p1, v0, v10, v7}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mImeOptionsId:I

    .line 368
    const-string v0, "includeFontPadding"

    const v7, 0x101015f

    invoke-interface {p1, v0, v7}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mIncludeFontPaddingId:I

    .line 369
    new-instance v0, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v0}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    .line 370
    const/16 v7, 0x14

    const-string v10, "date"

    const/16 v11, 0xfff

    invoke-virtual {v0, v11, v7, v10}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 371
    const-string v7, "datetime"

    invoke-virtual {v0, v11, v1, v7}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 372
    invoke-virtual {v0, v8, v4, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 373
    const-string/jumbo v1, "number"

    invoke-virtual {v0, v11, v2, v1}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 374
    const/16 v1, 0x2002

    const-string/jumbo v2, "numberDecimal"

    const v7, 0xfff00f

    invoke-virtual {v0, v7, v1, v2}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 375
    const/16 v1, 0x12

    const-string/jumbo v2, "numberPassword"

    invoke-virtual {v0, v11, v1, v2}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 376
    const/16 v1, 0x1002

    const-string/jumbo v2, "numberSigned"

    invoke-virtual {v0, v7, v1, v2}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 377
    invoke-virtual {v0, v11, v9, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 378
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v11, v5, v1}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 379
    const v2, 0x10001

    const-string/jumbo v3, "textAutoComplete"

    invoke-virtual {v0, v7, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 380
    const v2, 0x8001

    const-string/jumbo v3, "textAutoCorrect"

    invoke-virtual {v0, v7, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 381
    const/16 v2, 0x1001

    const-string/jumbo v3, "textCapCharacters"

    invoke-virtual {v0, v7, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 382
    const/16 v2, 0x4001

    const-string/jumbo v3, "textCapSentences"

    invoke-virtual {v0, v7, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 383
    const/16 v2, 0x2001

    const-string/jumbo v3, "textCapWords"

    invoke-virtual {v0, v7, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 384
    const/16 v2, 0x21

    const-string/jumbo v3, "textEmailAddress"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 385
    const/16 v2, 0x31

    const-string/jumbo v3, "textEmailSubject"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 386
    const/16 v2, 0xb1

    const-string/jumbo v3, "textFilter"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 387
    const v2, 0x40001

    const-string/jumbo v3, "textImeMultiLine"

    invoke-virtual {v0, v7, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 388
    const/16 v2, 0x51

    const-string/jumbo v3, "textLongMessage"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 389
    const v2, 0x20001

    const-string/jumbo v3, "textMultiLine"

    invoke-virtual {v0, v7, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 390
    const v2, 0x80001

    const-string/jumbo v3, "textNoSuggestions"

    invoke-virtual {v0, v7, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 391
    const/16 v2, 0x81

    const-string/jumbo v3, "textPassword"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 392
    const/16 v2, 0x61

    const-string/jumbo v3, "textPersonName"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 393
    const/16 v2, 0xc1

    const-string/jumbo v3, "textPhonetic"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 394
    const/16 v2, 0x71

    const-string/jumbo v3, "textPostalAddress"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 395
    const/16 v2, 0x41

    const-string/jumbo v3, "textShortMessage"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 396
    const/16 v2, 0x11

    const-string/jumbo v3, "textUri"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 397
    const/16 v2, 0x91

    const-string/jumbo v3, "textVisiblePassword"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 398
    const/16 v2, 0xa1

    const-string/jumbo v3, "textWebEditText"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 399
    const/16 v2, 0xd1

    const-string/jumbo v3, "textWebEmailAddress"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 400
    const/16 v2, 0xe1

    const-string/jumbo v3, "textWebPassword"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 401
    const/16 v2, 0x24

    const-string/jumbo v3, "time"

    invoke-virtual {v0, v11, v2, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 402
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string v0, "inputType"

    const v3, 0x1010220

    invoke-interface {p1, v0, v3, v2}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mInputTypeId:I

    .line 403
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 404
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 405
    const-string v2, "inter_word"

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v0, "justificationMode"

    const v3, 0x1010567

    invoke-interface {p1, v0, v3, v2}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mJustificationModeId:I

    .line 407
    const-string v0, "lastBaselineToBottomHeight"

    const v2, 0x101057e

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLastBaselineToBottomHeightId:I

    .line 408
    const-string v0, "letterSpacing"

    const v2, 0x10104b6

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLetterSpacingId:I

    .line 409
    const-string v0, "lineHeight"

    const v2, 0x101057f

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLineHeightId:I

    .line 410
    const-string v0, "lineSpacingExtra"

    const v2, 0x1010217

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLineSpacingExtraId:I

    .line 411
    const-string v0, "lineSpacingMultiplier"

    const v2, 0x1010218

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLineSpacingMultiplierId:I

    .line 412
    const-string v0, "linksClickable"

    const v2, 0x10100b1

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLinksClickableId:I

    .line 413
    const-string/jumbo v0, "marqueeRepeatLimit"

    const v2, 0x101021d

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMarqueeRepeatLimitId:I

    .line 414
    const-string/jumbo v0, "maxEms"

    const v2, 0x1010157

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxEmsId:I

    .line 415
    const-string/jumbo v0, "maxHeight"

    const v2, 0x1010120

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxHeightId:I

    .line 416
    const-string/jumbo v0, "maxLines"

    const v2, 0x1010153

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxLinesId:I

    .line 417
    const-string/jumbo v0, "maxWidth"

    const v2, 0x101011f

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxWidthId:I

    .line 418
    const-string/jumbo v0, "minEms"

    const v2, 0x101015a

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMinEmsId:I

    .line 419
    const-string/jumbo v0, "minLines"

    const v2, 0x1010156

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMinLinesId:I

    .line 420
    const-string/jumbo v0, "minWidth"

    const v2, 0x101013f

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMinWidthId:I

    .line 421
    const-string/jumbo v0, "privateImeOptions"

    const v2, 0x1010223

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mPrivateImeOptionsId:I

    .line 422
    const-string/jumbo v0, "scrollHorizontally"

    const v2, 0x101015b

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mScrollHorizontallyId:I

    .line 423
    const-string/jumbo v0, "shadowColor"

    const v2, 0x1010161

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowColorId:I

    .line 424
    const-string/jumbo v0, "shadowDx"

    const v2, 0x1010162

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowDxId:I

    .line 425
    const-string/jumbo v0, "shadowDy"

    const v2, 0x1010163

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowDyId:I

    .line 426
    const-string/jumbo v0, "shadowRadius"

    const v2, 0x1010164

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowRadiusId:I

    .line 427
    const-string/jumbo v0, "singleLine"

    const v2, 0x101015d

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mSingleLineId:I

    .line 428
    const v0, 0x101014f

    invoke-interface {p1, v1, v0}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextId:I

    .line 429
    const-string/jumbo v0, "textAllCaps"

    const v1, 0x101038c

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextAllCapsId:I

    .line 430
    const-string/jumbo v0, "textColor"

    const v1, 0x1010098

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorId:I

    .line 431
    const-string/jumbo v0, "textColorHighlight"

    const v1, 0x1010099

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorHighlightId:I

    .line 432
    const-string/jumbo v0, "textColorHint"

    const v1, 0x101009a

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorHintId:I

    .line 433
    const-string/jumbo v0, "textColorLink"

    const v1, 0x101009b

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorLinkId:I

    .line 434
    const-string/jumbo v0, "textIsSelectable"

    const v1, 0x1010316

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextIsSelectableId:I

    .line 435
    const-string/jumbo v0, "textScaleX"

    const v1, 0x1010151

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextScaleXId:I

    .line 436
    const-string/jumbo v0, "textSize"

    const v1, 0x1010095

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextSizeId:I

    .line 437
    const-string/jumbo v0, "typeface"

    const v1, 0x1010096

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/widget/TextView$InspectionCompanion;->mTypefaceId:I

    .line 438
    iput-boolean v5, p0, Landroid/widget/TextView$InspectionCompanion;->mPropertiesMapped:Z

    .line 439
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/TextView;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    .line 443
    iget-boolean v0, p0, Landroid/widget/TextView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_206

    .line 446
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoLinkId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoLinkMask()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    .line 447
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeMaxTextSizeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 448
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeMinTextSizeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 449
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeStepGranularityId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 450
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeTextTypeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 451
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mBreakStrategyId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 452
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mCursorVisibleId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 453
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawableBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawableTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 454
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawablePaddingId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 455
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawableTintId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 456
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawableTintModeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 457
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mElegantTextHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isElegantTextHeight()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 458
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mEllipsizeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 459
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFallbackLineSpacingId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isFallbackLineSpacing()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 460
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFirstBaselineToTopHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getFirstBaselineToTopHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 461
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFontFeatureSettingsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 462
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFreezesTextId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getFreezesText()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 463
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mGravityId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readGravity(II)V

    .line 464
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mHintId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 465
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mHyphenationFrequencyId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 466
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mImeActionIdId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getImeActionId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 467
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mImeActionLabelId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getImeActionLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 468
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mImeOptionsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getImeOptions()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    .line 469
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mIncludeFontPaddingId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 470
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mInputTypeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    .line 471
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mJustificationModeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getJustificationMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 472
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLastBaselineToBottomHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLastBaselineToBottomHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 473
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLetterSpacingId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLetterSpacing()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 474
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLineHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 475
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLineSpacingExtraId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 476
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLineSpacingMultiplierId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 477
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLinksClickableId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 478
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMarqueeRepeatLimitId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMarqueeRepeatLimit()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 479
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxEmsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxEms()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 480
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 481
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxLinesId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 482
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxWidthId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 483
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMinEmsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMinEms()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 484
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMinLinesId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMinLines()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 485
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMinWidthId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMinWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 486
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mPrivateImeOptionsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 487
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mScrollHorizontallyId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isHorizontallyScrollable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 488
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowColorId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    .line 489
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowDxId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 490
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowDyId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 491
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowRadiusId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 492
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mSingleLineId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 493
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 494
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextAllCapsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isAllCaps()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 495
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 496
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorHighlightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getHighlightColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    .line 497
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorHintId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 498
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorLinkId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 499
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextIsSelectableId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 500
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextScaleXId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 501
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextSizeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 502
    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTypefaceId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 503
    return-void

    .line 444
    :cond_206
    new-instance p1, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {p1}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw p1
.end method

.method public bridge synthetic whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 18
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView$InspectionCompanion;->readProperties(Landroid/widget/TextView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
