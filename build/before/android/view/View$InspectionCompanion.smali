.class public final Landroid/view/View$InspectionCompanion;
.super Ljava/lang/Object;
.source "View$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAccessibilityFocusedId:I

.field private blacklist mAccessibilityHeadingId:I

.field private blacklist mAccessibilityLiveRegionId:I

.field private blacklist mAccessibilityPaneTitleId:I

.field private blacklist mAccessibilityTraversalAfterId:I

.field private blacklist mAccessibilityTraversalBeforeId:I

.field private blacklist mActivatedId:I

.field private blacklist mAlphaId:I

.field private blacklist mAutofillHintsId:I

.field private blacklist mBackgroundId:I

.field private blacklist mBackgroundTintId:I

.field private blacklist mBackgroundTintModeId:I

.field private blacklist mBaselineId:I

.field private blacklist mClickableId:I

.field private blacklist mContentDescriptionId:I

.field private blacklist mContextClickableId:I

.field private blacklist mDefaultFocusHighlightEnabledId:I

.field private blacklist mDrawingCacheQualityId:I

.field private blacklist mDuplicateParentStateId:I

.field private blacklist mElevationId:I

.field private blacklist mEnabledId:I

.field private blacklist mFadingEdgeLengthId:I

.field private blacklist mFilterTouchesWhenObscuredId:I

.field private blacklist mFitsSystemWindowsId:I

.field private blacklist mFocusableId:I

.field private blacklist mFocusableInTouchModeId:I

.field private blacklist mFocusedByDefaultId:I

.field private blacklist mFocusedId:I

.field private blacklist mForceDarkAllowedId:I

.field private blacklist mForegroundGravityId:I

.field private blacklist mForegroundId:I

.field private blacklist mForegroundTintId:I

.field private blacklist mForegroundTintModeId:I

.field private blacklist mHapticFeedbackEnabledId:I

.field private blacklist mIdId:I

.field private blacklist mImportantForAccessibilityId:I

.field private blacklist mImportantForAutofillId:I

.field private blacklist mImportantForContentCaptureId:I

.field private blacklist mIsScrollContainerId:I

.field private blacklist mKeepScreenOnId:I

.field private blacklist mKeyboardNavigationClusterId:I

.field private blacklist mLabelForId:I

.field private blacklist mLayerTypeId:I

.field private blacklist mLayoutDirectionId:I

.field private blacklist mLongClickableId:I

.field private blacklist mMinHeightId:I

.field private blacklist mMinWidthId:I

.field private blacklist mNestedScrollingEnabledId:I

.field private blacklist mNextClusterForwardId:I

.field private blacklist mNextFocusDownId:I

.field private blacklist mNextFocusForwardId:I

.field private blacklist mNextFocusLeftId:I

.field private blacklist mNextFocusRightId:I

.field private blacklist mNextFocusUpId:I

.field private blacklist mOutlineAmbientShadowColorId:I

.field private blacklist mOutlineProviderId:I

.field private blacklist mOutlineSpotShadowColorId:I

.field private blacklist mOverScrollModeId:I

.field private blacklist mPaddingBottomId:I

.field private blacklist mPaddingLeftId:I

.field private blacklist mPaddingRightId:I

.field private blacklist mPaddingTopId:I

.field private blacklist mPointerIconId:I

.field private blacklist mPressedId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mRawLayoutDirectionId:I

.field private blacklist mRawTextAlignmentId:I

.field private blacklist mRawTextDirectionId:I

.field private blacklist mRequiresFadingEdgeId:I

.field private blacklist mRotationId:I

.field private blacklist mRotationXId:I

.field private blacklist mRotationYId:I

.field private blacklist mSaveEnabledId:I

.field private blacklist mScaleXId:I

.field private blacklist mScaleYId:I

.field private blacklist mScreenReaderFocusableId:I

.field private blacklist mScrollIndicatorsId:I

.field private blacklist mScrollXId:I

.field private blacklist mScrollYId:I

.field private blacklist mScrollbarDefaultDelayBeforeFadeId:I

.field private blacklist mScrollbarFadeDurationId:I

.field private blacklist mScrollbarSizeId:I

.field private blacklist mScrollbarStyleId:I

.field private blacklist mSelectedId:I

.field private blacklist mSolidColorId:I

.field private blacklist mSoundEffectsEnabledId:I

.field private blacklist mStateListAnimatorId:I

.field private blacklist mSupplementalDescriptionId:I

.field private blacklist mTagId:I

.field private blacklist mTextAlignmentId:I

.field private blacklist mTextDirectionId:I

.field private blacklist mTooltipTextId:I

.field private blacklist mTransformPivotXId:I

.field private blacklist mTransformPivotYId:I

.field private blacklist mTransitionNameId:I

.field private blacklist mTranslationXId:I

.field private blacklist mTranslationYId:I

.field private blacklist mTranslationZId:I

.field private blacklist mVisibilityId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 18

    .line 516
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "accessibilityFocused"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityFocusedId:I

    .line 517
    const-string v2, "accessibilityHeading"

    const v4, 0x1010580

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityHeadingId:I

    .line 518
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 519
    const-string/jumbo v4, "none"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 520
    const-string/jumbo v5, "polite"

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 521
    const-string v5, "assertive"

    const/4 v7, 0x2

    invoke-virtual {v2, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 522
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v2, "accessibilityLiveRegion"

    const v8, 0x10103ee

    invoke-interface {v1, v2, v8, v5}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityLiveRegionId:I

    .line 523
    const-string v2, "accessibilityPaneTitle"

    const v5, 0x101057c

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityPaneTitleId:I

    .line 524
    const-string v2, "accessibilityTraversalAfter"

    const v5, 0x10104d2

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityTraversalAfterId:I

    .line 525
    const-string v2, "accessibilityTraversalBefore"

    const v5, 0x10104d1

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityTraversalBeforeId:I

    .line 526
    const-string v2, "activated"

    invoke-interface {v1, v2, v3}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mActivatedId:I

    .line 527
    const-string v2, "alpha"

    const v5, 0x101031f

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mAlphaId:I

    .line 528
    const-string v2, "autofillHints"

    const v5, 0x1010556

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mAutofillHintsId:I

    .line 529
    const-string v2, "background"

    const v5, 0x10100d4

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mBackgroundId:I

    .line 530
    const-string v2, "backgroundTint"

    const v5, 0x101046b

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mBackgroundTintId:I

    .line 531
    const-string v2, "backgroundTintMode"

    const v5, 0x101046c

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mBackgroundTintModeId:I

    .line 532
    const-string v2, "baseline"

    const v5, 0x101031c

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mBaselineId:I

    .line 533
    const-string v2, "clickable"

    const v5, 0x10100e5

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mClickableId:I

    .line 534
    const-string v2, "contentDescription"

    const v5, 0x1010273

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mContentDescriptionId:I

    .line 535
    const-string v2, "contextClickable"

    const v5, 0x10104e7

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mContextClickableId:I

    .line 536
    const-string v2, "defaultFocusHighlightEnabled"

    const v5, 0x1010562

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mDefaultFocusHighlightEnabledId:I

    .line 537
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 538
    const-string v5, "auto"

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 539
    const/high16 v8, 0x80000

    const-string v9, "low"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 540
    const/high16 v8, 0x100000

    const-string v9, "high"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 541
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v8, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v2, "drawingCacheQuality"

    const v9, 0x10100e8

    invoke-interface {v1, v2, v9, v8}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mDrawingCacheQualityId:I

    .line 542
    const-string v2, "duplicateParentState"

    const v8, 0x10100e9

    invoke-interface {v1, v2, v8}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mDuplicateParentStateId:I

    .line 543
    const-string v2, "elevation"

    const v8, 0x1010440

    invoke-interface {v1, v2, v8}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mElevationId:I

    .line 544
    const-string v2, "enabled"

    const v8, 0x101000e

    invoke-interface {v1, v2, v8}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mEnabledId:I

    .line 545
    const-string v2, "fadingEdgeLength"

    const v8, 0x10100e0

    invoke-interface {v1, v2, v8}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mFadingEdgeLengthId:I

    .line 546
    const-string v2, "filterTouchesWhenObscured"

    const v8, 0x10102c4

    invoke-interface {v1, v2, v8}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mFilterTouchesWhenObscuredId:I

    .line 547
    const-string v2, "fitsSystemWindows"

    const v8, 0x10100dd

    invoke-interface {v1, v2, v8}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mFitsSystemWindowsId:I

    .line 548
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 549
    const-string v8, "false"

    invoke-virtual {v2, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 550
    const-string/jumbo v8, "true"

    invoke-virtual {v2, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 551
    const/16 v8, 0x10

    invoke-virtual {v2, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 552
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v9, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v2, "focusable"

    const v10, 0x10100da

    invoke-interface {v1, v2, v10, v9}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mFocusableId:I

    .line 553
    const-string v2, "focusableInTouchMode"

    const v9, 0x10100db

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mFocusableInTouchModeId:I

    .line 554
    const-string v2, "focused"

    invoke-interface {v1, v2, v3}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mFocusedId:I

    .line 555
    const-string v2, "focusedByDefault"

    const v9, 0x1010544

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mFocusedByDefaultId:I

    .line 556
    const-string v2, "forceDarkAllowed"

    const v9, 0x101058c

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mForceDarkAllowedId:I

    .line 557
    const-string v2, "foreground"

    const v9, 0x1010109

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mForegroundId:I

    .line 558
    const-string v2, "foregroundGravity"

    const v9, 0x1010200

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapGravity(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mForegroundGravityId:I

    .line 559
    const-string v2, "foregroundTint"

    const v9, 0x101046d

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mForegroundTintId:I

    .line 560
    const-string v2, "foregroundTintMode"

    const v9, 0x101046e

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mForegroundTintModeId:I

    .line 561
    const-string v2, "hapticFeedbackEnabled"

    const v9, 0x101025e

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mHapticFeedbackEnabledId:I

    .line 562
    const-string v2, "id"

    const v9, 0x10100d0

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mIdId:I

    .line 563
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 564
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 565
    const-string/jumbo v9, "yes"

    invoke-virtual {v2, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 566
    const-string/jumbo v10, "no"

    invoke-virtual {v2, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 567
    const-string/jumbo v11, "noHideDescendants"

    const/4 v12, 0x4

    invoke-virtual {v2, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 568
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v11, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v2, "importantForAccessibility"

    const v13, 0x10103aa

    invoke-interface {v1, v2, v13, v11}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mImportantForAccessibilityId:I

    .line 569
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 570
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 571
    invoke-virtual {v2, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 572
    invoke-virtual {v2, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 573
    const-string/jumbo v11, "yesExcludeDescendants"

    invoke-virtual {v2, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 574
    const/16 v13, 0x8

    const-string/jumbo v14, "noExcludeDescendants"

    invoke-virtual {v2, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 575
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v15, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v2, "importantForAutofill"

    const v8, 0x1010558

    invoke-interface {v1, v2, v8, v15}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mImportantForAutofillId:I

    .line 576
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 577
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 578
    invoke-virtual {v2, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 579
    invoke-virtual {v2, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 580
    invoke-virtual {v2, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 581
    invoke-virtual {v2, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 582
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v2, "importantForContentCapture"

    const v8, 0x1010607

    invoke-interface {v1, v2, v8, v5}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mImportantForContentCaptureId:I

    .line 583
    const-string v2, "isScrollContainer"

    const v5, 0x101024e

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mIsScrollContainerId:I

    .line 584
    const-string v2, "keepScreenOn"

    const v5, 0x1010216

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mKeepScreenOnId:I

    .line 585
    const-string v2, "keyboardNavigationCluster"

    const v5, 0x1010540

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mKeyboardNavigationClusterId:I

    .line 586
    const-string v2, "labelFor"

    const v5, 0x10103c6

    invoke-interface {v1, v2, v5}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mLabelForId:I

    .line 587
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 588
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 589
    const-string/jumbo v5, "software"

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 590
    const-string v5, "hardware"

    invoke-virtual {v2, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 591
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v2, "layerType"

    const v8, 0x1010354

    invoke-interface {v1, v2, v8, v5}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mLayerTypeId:I

    .line 592
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 593
    const-string v5, "ltr"

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 594
    const-string/jumbo v8, "rtl"

    invoke-virtual {v2, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 595
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v9, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v2, "layoutDirection"

    const v10, 0x10103b2

    invoke-interface {v1, v2, v10, v9}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mLayoutDirectionId:I

    .line 596
    const-string v2, "longClickable"

    const v9, 0x10100e6

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mLongClickableId:I

    .line 597
    const-string/jumbo v2, "minHeight"

    const v9, 0x1010140

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mMinHeightId:I

    .line 598
    const-string/jumbo v2, "minWidth"

    const v9, 0x101013f

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mMinWidthId:I

    .line 599
    const-string/jumbo v2, "nestedScrollingEnabled"

    const v9, 0x1010436

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mNestedScrollingEnabledId:I

    .line 600
    const-string/jumbo v2, "nextClusterForward"

    const v9, 0x1010542

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mNextClusterForwardId:I

    .line 601
    const-string/jumbo v2, "nextFocusDown"

    const v9, 0x10100e4

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mNextFocusDownId:I

    .line 602
    const-string/jumbo v2, "nextFocusForward"

    const v9, 0x101033c

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mNextFocusForwardId:I

    .line 603
    const-string/jumbo v2, "nextFocusLeft"

    const v9, 0x10100e1

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mNextFocusLeftId:I

    .line 604
    const-string/jumbo v2, "nextFocusRight"

    const v9, 0x10100e2

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mNextFocusRightId:I

    .line 605
    const-string/jumbo v2, "nextFocusUp"

    const v9, 0x10100e3

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mNextFocusUpId:I

    .line 606
    const-string/jumbo v2, "outlineAmbientShadowColor"

    const v9, 0x1010582

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mOutlineAmbientShadowColorId:I

    .line 607
    const-string/jumbo v2, "outlineProvider"

    const v9, 0x10104b8

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mOutlineProviderId:I

    .line 608
    const-string/jumbo v2, "outlineSpotShadowColor"

    const v9, 0x1010581

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mOutlineSpotShadowColorId:I

    .line 609
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 610
    const-string v9, "always"

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 611
    const-string v9, "ifContentScrolls"

    invoke-virtual {v2, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 612
    const-string/jumbo v9, "never"

    invoke-virtual {v2, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 613
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v9, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v2, "overScrollMode"

    const v10, 0x10102c1

    invoke-interface {v1, v2, v10, v9}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mOverScrollModeId:I

    .line 614
    const-string/jumbo v2, "paddingBottom"

    const v9, 0x10100d9

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPaddingBottomId:I

    .line 615
    const-string/jumbo v2, "paddingLeft"

    const v9, 0x10100d6

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPaddingLeftId:I

    .line 616
    const-string/jumbo v2, "paddingRight"

    const v9, 0x10100d8

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPaddingRightId:I

    .line 617
    const-string/jumbo v2, "paddingTop"

    const v9, 0x10100d7

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPaddingTopId:I

    .line 618
    const-string/jumbo v2, "pointerIcon"

    const v9, 0x1010509

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPointerIconId:I

    .line 619
    const-string/jumbo v2, "pressed"

    invoke-interface {v1, v2, v3}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPressedId:I

    .line 620
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 621
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 622
    invoke-virtual {v2, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 623
    const-string v9, "inherit"

    invoke-virtual {v2, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    const/4 v10, 0x3

    const-string v11, "locale"

    invoke-virtual {v2, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 625
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v14, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v2, "rawLayoutDirection"

    invoke-interface {v1, v2, v3, v14}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mRawLayoutDirectionId:I

    .line 626
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 627
    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 628
    const-string v14, "gravity"

    invoke-virtual {v2, v6, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 629
    const-string/jumbo v15, "textStart"

    invoke-virtual {v2, v7, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 630
    const-string/jumbo v13, "textEnd"

    invoke-virtual {v2, v10, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 631
    const-string v10, "center"

    invoke-virtual {v2, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 632
    const-string/jumbo v10, "viewStart"

    const/4 v12, 0x5

    invoke-virtual {v2, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 633
    const-string/jumbo v10, "viewEnd"

    const/4 v12, 0x6

    invoke-virtual {v2, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 634
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v10, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v2, "rawTextAlignment"

    invoke-interface {v1, v2, v3, v10}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mRawTextAlignmentId:I

    .line 635
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 636
    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 637
    const-string v9, "firstStrong"

    invoke-virtual {v2, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 638
    const-string v9, "anyRtl"

    invoke-virtual {v2, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 639
    const/4 v9, 0x3

    invoke-virtual {v2, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 640
    const/4 v9, 0x4

    invoke-virtual {v2, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 641
    const/4 v9, 0x5

    invoke-virtual {v2, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 642
    const-string v9, "firstStrongLtr"

    invoke-virtual {v2, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 643
    const/4 v9, 0x7

    const-string v10, "firstStrongRtl"

    invoke-virtual {v2, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 644
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v9, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v2, "rawTextDirection"

    invoke-interface {v1, v2, v3, v9}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mRawTextDirectionId:I

    .line 645
    new-instance v2, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v2}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    .line 646
    const/16 v9, 0x1000

    const-string v10, "horizontal"

    const/16 v12, 0x1000

    invoke-virtual {v2, v12, v9, v10}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 647
    const/16 v9, 0x3000

    invoke-virtual {v2, v9, v3, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 648
    const/16 v9, 0x2000

    const-string/jumbo v10, "vertical"

    const/16 v12, 0x2000

    invoke-virtual {v2, v12, v9, v10}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 649
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;

    invoke-direct {v9, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string/jumbo v2, "requiresFadingEdge"

    const v10, 0x10103a5

    invoke-interface {v1, v2, v10, v9}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mRequiresFadingEdgeId:I

    .line 650
    const-string/jumbo v2, "rotation"

    const v9, 0x1010326

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mRotationId:I

    .line 651
    const-string/jumbo v2, "rotationX"

    const v9, 0x1010327

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mRotationXId:I

    .line 652
    const-string/jumbo v2, "rotationY"

    const v9, 0x1010328

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mRotationYId:I

    .line 653
    const-string/jumbo v2, "saveEnabled"

    const v9, 0x10100e7

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mSaveEnabledId:I

    .line 654
    const-string/jumbo v2, "scaleX"

    const v9, 0x1010324

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScaleXId:I

    .line 655
    const-string/jumbo v2, "scaleY"

    const v9, 0x1010325

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScaleYId:I

    .line 656
    const-string/jumbo v2, "screenReaderFocusable"

    const v9, 0x1010574

    invoke-interface {v1, v2, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScreenReaderFocusableId:I

    .line 657
    new-instance v2, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v2}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    .line 658
    const-string v9, "bottom"

    invoke-virtual {v2, v7, v7, v9}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 659
    const/16 v9, 0x20

    const-string v10, "end"

    const/16 v12, 0x20

    invoke-virtual {v2, v12, v9, v10}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 660
    const-string v9, "left"

    const/4 v10, 0x4

    invoke-virtual {v2, v10, v10, v9}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 661
    const/4 v9, -0x1

    invoke-virtual {v2, v9, v3, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 662
    const-string/jumbo v4, "right"

    const/16 v9, 0x8

    invoke-virtual {v2, v9, v9, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 663
    const-string/jumbo v4, "start"

    const/16 v9, 0x10

    invoke-virtual {v2, v9, v9, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 664
    const-string/jumbo v4, "top"

    invoke-virtual {v2, v6, v6, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 665
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string/jumbo v2, "scrollIndicators"

    const v9, 0x10104e6

    invoke-interface {v1, v2, v9, v4}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollIndicatorsId:I

    .line 666
    const-string/jumbo v2, "scrollX"

    const v4, 0x10100d2

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollXId:I

    .line 667
    const-string/jumbo v2, "scrollY"

    const v4, 0x10100d3

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollYId:I

    .line 668
    const-string/jumbo v2, "scrollbarDefaultDelayBeforeFade"

    const v4, 0x10102a9

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollbarDefaultDelayBeforeFadeId:I

    .line 669
    const-string/jumbo v2, "scrollbarFadeDuration"

    const v4, 0x10102a8

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollbarFadeDurationId:I

    .line 670
    const-string/jumbo v2, "scrollbarSize"

    const v4, 0x1010063

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollbarSizeId:I

    .line 671
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 672
    const-string v4, "insideOverlay"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 673
    const/high16 v4, 0x1000000

    const-string v9, "insideInset"

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 674
    const/high16 v4, 0x2000000

    const-string/jumbo v9, "outsideOverlay"

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 675
    const/high16 v4, 0x3000000

    const-string/jumbo v9, "outsideInset"

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 676
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v2, "scrollbarStyle"

    const v9, 0x101007f

    invoke-interface {v1, v2, v9, v4}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollbarStyleId:I

    .line 677
    const-string/jumbo v2, "selected"

    invoke-interface {v1, v2, v3}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mSelectedId:I

    .line 678
    const-string/jumbo v2, "solidColor"

    const v4, 0x101034a

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mSolidColorId:I

    .line 679
    const-string/jumbo v2, "soundEffectsEnabled"

    const v4, 0x1010215

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mSoundEffectsEnabledId:I

    .line 680
    const-string/jumbo v2, "stateListAnimator"

    const v4, 0x1010448

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mStateListAnimatorId:I

    .line 681
    const-string/jumbo v2, "supplementalDescription"

    const v4, 0x10106a8

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mSupplementalDescriptionId:I

    .line 682
    const-string/jumbo v2, "tag"

    const v4, 0x10100d1

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mTagId:I

    .line 683
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 684
    invoke-virtual {v2, v6, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 685
    invoke-virtual {v2, v7, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 686
    const/4 v9, 0x3

    invoke-virtual {v2, v9, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 687
    const-string v4, "center"

    const/4 v9, 0x4

    invoke-virtual {v2, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 688
    const-string/jumbo v4, "viewStart"

    const/4 v9, 0x5

    invoke-virtual {v2, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 689
    const-string/jumbo v4, "viewEnd"

    const/4 v9, 0x6

    invoke-virtual {v2, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 690
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v2, "textAlignment"

    const v9, 0x10103b1

    invoke-interface {v1, v2, v9, v4}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mTextAlignmentId:I

    .line 691
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 692
    const-string v4, "firstStrong"

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 693
    const-string v4, "anyRtl"

    invoke-virtual {v2, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 694
    const/4 v9, 0x3

    invoke-virtual {v2, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 695
    const/4 v9, 0x4

    invoke-virtual {v2, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 696
    const/4 v9, 0x5

    invoke-virtual {v2, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 697
    const-string v4, "firstStrongLtr"

    const/4 v9, 0x6

    invoke-virtual {v2, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 698
    const/4 v4, 0x7

    const-string v5, "firstStrongRtl"

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 699
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v2, "textDirection"

    invoke-interface {v1, v2, v3, v4}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mTextDirectionId:I

    .line 700
    const-string/jumbo v2, "tooltipText"

    const v4, 0x1010534

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mTooltipTextId:I

    .line 701
    const-string/jumbo v2, "transformPivotX"

    const v4, 0x1010320

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mTransformPivotXId:I

    .line 702
    const-string/jumbo v2, "transformPivotY"

    const v4, 0x1010321

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mTransformPivotYId:I

    .line 703
    const-string/jumbo v2, "transitionName"

    const v4, 0x1010400

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mTransitionNameId:I

    .line 704
    const-string/jumbo v2, "translationX"

    const v4, 0x1010322

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mTranslationXId:I

    .line 705
    const-string/jumbo v2, "translationY"

    const v4, 0x1010323

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mTranslationYId:I

    .line 706
    const-string/jumbo v2, "translationZ"

    const v4, 0x10103fa

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mTranslationZId:I

    .line 707
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 708
    const-string/jumbo v4, "visible"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 709
    const-string v3, "invisible"

    const/4 v9, 0x4

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 710
    const-string v3, "gone"

    const/16 v9, 0x8

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 711
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v2, "visibility"

    const v4, 0x10100dc

    invoke-interface {v1, v2, v4, v3}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v1

    iput v1, v0, Landroid/view/View$InspectionCompanion;->mVisibilityId:I

    .line 712
    iput-boolean v6, v0, Landroid/view/View$InspectionCompanion;->mPropertiesMapped:Z

    .line 713
    return-void
.end method

.method public blacklist readProperties(Landroid/view/View;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    .line 717
    iget-boolean v0, p0, Landroid/view/View$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_377

    .line 720
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityFocusedId:I

    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 721
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityHeadingId:I

    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityHeading()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 722
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityLiveRegionId:I

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 723
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityPaneTitleId:I

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityPaneTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 724
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityTraversalAfterId:I

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityTraversalAfter()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 725
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityTraversalBeforeId:I

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityTraversalBefore()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 726
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mActivatedId:I

    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 727
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAlphaId:I

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 728
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAutofillHintsId:I

    invoke-virtual {p1}, Landroid/view/View;->getAutofillHints()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 729
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mBackgroundId:I

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 730
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mBackgroundTintId:I

    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 731
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mBackgroundTintModeId:I

    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 732
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mBaselineId:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 733
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mClickableId:I

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 734
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mContentDescriptionId:I

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 735
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mContextClickableId:I

    invoke-virtual {p1}, Landroid/view/View;->isContextClickable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 736
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mDefaultFocusHighlightEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->getDefaultFocusHighlightEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 737
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mDrawingCacheQualityId:I

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheQuality()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 738
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mDuplicateParentStateId:I

    invoke-virtual {p1}, Landroid/view/View;->isDuplicateParentStateEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 739
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mElevationId:I

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 740
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 741
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFadingEdgeLengthId:I

    invoke-virtual {p1}, Landroid/view/View;->getFadingEdgeLength()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 742
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFilterTouchesWhenObscuredId:I

    invoke-virtual {p1}, Landroid/view/View;->getFilterTouchesWhenObscured()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 743
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFitsSystemWindowsId:I

    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 744
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFocusableId:I

    invoke-virtual {p1}, Landroid/view/View;->getFocusable()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 745
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFocusableInTouchModeId:I

    invoke-virtual {p1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 746
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFocusedId:I

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 747
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFocusedByDefaultId:I

    invoke-virtual {p1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 748
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForceDarkAllowedId:I

    invoke-virtual {p1}, Landroid/view/View;->isForceDarkAllowed()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 749
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForegroundId:I

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 750
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForegroundGravityId:I

    invoke-virtual {p1}, Landroid/view/View;->getForegroundGravity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readGravity(II)V

    .line 751
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForegroundTintId:I

    invoke-virtual {p1}, Landroid/view/View;->getForegroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 752
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForegroundTintModeId:I

    invoke-virtual {p1}, Landroid/view/View;->getForegroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 753
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mHapticFeedbackEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 754
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mIdId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 755
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mImportantForAccessibilityId:I

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 756
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mImportantForAutofillId:I

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAutofill()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 757
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mImportantForContentCaptureId:I

    invoke-virtual {p1}, Landroid/view/View;->getImportantForContentCapture()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 758
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mIsScrollContainerId:I

    invoke-virtual {p1}, Landroid/view/View;->isScrollContainer()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 759
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mKeepScreenOnId:I

    invoke-virtual {p1}, Landroid/view/View;->getKeepScreenOn()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 760
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mKeyboardNavigationClusterId:I

    invoke-virtual {p1}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 761
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mLabelForId:I

    invoke-virtual {p1}, Landroid/view/View;->getLabelFor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 762
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mLayerTypeId:I

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 763
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mLayoutDirectionId:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 764
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mLongClickableId:I

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 765
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mMinHeightId:I

    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 766
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mMinWidthId:I

    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 767
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNestedScrollingEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 768
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextClusterForwardId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextClusterForwardId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 769
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusDownId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusDownId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 770
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusForwardId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusForwardId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 771
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusLeftId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusLeftId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 772
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusRightId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusRightId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 773
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusUpId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusUpId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 774
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mOutlineAmbientShadowColorId:I

    invoke-virtual {p1}, Landroid/view/View;->getOutlineAmbientShadowColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    .line 775
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mOutlineProviderId:I

    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 776
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mOutlineSpotShadowColorId:I

    invoke-virtual {p1}, Landroid/view/View;->getOutlineSpotShadowColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    .line 777
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mOverScrollModeId:I

    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 778
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPaddingBottomId:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 779
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPaddingLeftId:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 780
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPaddingRightId:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 781
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPaddingTopId:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 782
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPointerIconId:I

    invoke-virtual {p1}, Landroid/view/View;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 783
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPressedId:I

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 784
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRawLayoutDirectionId:I

    invoke-virtual {p1}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 785
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRawTextAlignmentId:I

    invoke-virtual {p1}, Landroid/view/View;->getRawTextAlignment()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 786
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRawTextDirectionId:I

    invoke-virtual {p1}, Landroid/view/View;->getRawTextDirection()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 787
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRequiresFadingEdgeId:I

    invoke-virtual {p1}, Landroid/view/View;->getFadingEdge()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    .line 788
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRotationId:I

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 789
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRotationXId:I

    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 790
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRotationYId:I

    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 791
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mSaveEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isSaveEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 792
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScaleXId:I

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 793
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScaleYId:I

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 794
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScreenReaderFocusableId:I

    invoke-virtual {p1}, Landroid/view/View;->isScreenReaderFocusable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 795
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollIndicatorsId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollIndicators()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    .line 796
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollXId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 797
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollYId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 798
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollbarDefaultDelayBeforeFadeId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollBarDefaultDelayBeforeFade()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 799
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollbarFadeDurationId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollBarFadeDuration()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 800
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollbarSizeId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollBarSize()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 801
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollbarStyleId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollBarStyle()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 802
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mSelectedId:I

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 803
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mSolidColorId:I

    invoke-virtual {p1}, Landroid/view/View;->getSolidColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    .line 804
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mSoundEffectsEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 805
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mStateListAnimatorId:I

    invoke-virtual {p1}, Landroid/view/View;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 806
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mSupplementalDescriptionId:I

    invoke-virtual {p1}, Landroid/view/View;->getSupplementalDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 807
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTagId:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 808
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTextAlignmentId:I

    invoke-virtual {p1}, Landroid/view/View;->getTextAlignment()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 809
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTextDirectionId:I

    invoke-virtual {p1}, Landroid/view/View;->getTextDirection()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 810
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTooltipTextId:I

    invoke-virtual {p1}, Landroid/view/View;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 811
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTransformPivotXId:I

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 812
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTransformPivotYId:I

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 813
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTransitionNameId:I

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 814
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTranslationXId:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 815
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTranslationYId:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 816
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTranslationZId:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 817
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mVisibilityId:I

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-interface {p2, v0, p1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 818
    return-void

    .line 718
    :cond_377
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
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/View$InspectionCompanion;->readProperties(Landroid/view/View;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
