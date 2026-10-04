.class public Landroid/view/InsetsAnimationControlImpl;
.super Ljava/lang/Object;
.source "InsetsAnimationControlImpl.java"

# interfaces
.implements Landroid/view/InternalInsetsAnimationController;
.implements Landroid/view/InsetsAnimationControlRunner;


# instance fields
.field private final blacklist mAnimation:Landroid/view/WindowInsetsAnimation;

.field private final blacklist mAnimationType:I

.field private blacklist mCancelled:Z

.field private blacklist mCancelling:Z

.field private final blacklist mController:Landroid/view/InsetsAnimationControlCallbacks;

.field private blacklist mControllingTypes:I

.field private final blacklist mControls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentAlpha:F

.field private blacklist mCurrentInsets:Landroid/graphics/Insets;

.field private final blacklist mDurationMs:J

.field private blacklist mFinished:Z

.field private final blacklist mHasZeroInsetsIme:Z

.field private final blacklist mHiddenInsets:Landroid/graphics/Insets;

.field private final blacklist mInitialInsetsState:Landroid/view/InsetsState;

.field private final blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mLayoutInsetsDuringAnimation:I

.field private final blacklist mListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private blacklist mPendingAlpha:F

.field private blacklist mPendingFraction:F

.field private blacklist mPendingInsets:Landroid/graphics/Insets;

.field private blacklist mPerceptible:Ljava/lang/Boolean;

.field private blacklist mReadyDispatched:Z

.field private final blacklist mShownInsets:Landroid/graphics/Insets;

.field private blacklist mShownOnFinish:Z

.field private final blacklist mSideControlsMap:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field private final blacklist mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

.field private final blacklist mTmpFrame:Landroid/graphics/Rect;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private final blacklist mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field private final blacklist mTypes:I


# direct methods
.method public constructor blacklist <init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;Landroid/view/InsetsAnimationSpec;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/view/InsetsState;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/InsetsAnimationControlCallbacks;",
            "Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;",
            "Landroid/view/InsetsAnimationSpec;",
            "II",
            "Landroid/content/res/CompatibilityInfo$Translator;",
            "Landroid/view/inputmethod/ImeTracker$Token;",
            ")V"
        }
    .end annotation

    .line 155
    move-object/from16 v3, p3

    move/from16 v7, p6

    move-object/from16 v8, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mSideControlsMap:Landroid/util/SparseSetArray;

    .line 102
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 138
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    .line 140
    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    .line 156
    iput-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    .line 157
    move-object/from16 v9, p5

    iput-object v9, p0, Landroid/view/InsetsAnimationControlImpl;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 158
    iput v7, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    .line 159
    iput v7, p0, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    .line 160
    move-object/from16 v0, p7

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    .line 161
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    .line 162
    new-instance v0, Landroid/view/InsetsState;

    const/4 v10, 0x1

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v10}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    .line 163
    const/4 v11, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_90

    if-eqz v3, :cond_90

    .line 164
    new-instance v12, Landroid/util/SparseIntArray;

    invoke-direct {v12}, Landroid/util/SparseIntArray;-><init>()V

    .line 165
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    invoke-direct {p0, v1, p2, v3, v0}, Landroid/view/InsetsAnimationControlImpl;->getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    .line 167
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    .line 169
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    const/4 v5, 0x1

    move-object/from16 v3, p3

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object p2

    iput-object p2, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    .line 171
    iget-object p2, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    if-nez p2, :cond_7d

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/InsetsAnimationControlImpl;->controlsType(I)Z

    move-result p2

    if-eqz p2, :cond_7d

    goto :goto_7e

    :cond_7d
    move v10, v11

    :goto_7e
    iput-boolean v10, p0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    .line 172
    iget-boolean p2, p0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    if-eqz p2, :cond_8a

    .line 175
    sget p2, Landroid/view/InsetsSource;->ID_IME:I

    const/4 v0, 0x4

    invoke-virtual {v6, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    :cond_8a
    iget-object p2, p0, Landroid/view/InsetsAnimationControlImpl;->mSideControlsMap:Landroid/util/SparseSetArray;

    invoke-static {v6, p2, p1}, Landroid/view/InsetsAnimationControlImpl;->buildSideControlsMap(Landroid/util/SparseIntArray;Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V

    .line 178
    goto :goto_bd

    .line 181
    :cond_90
    iget-object p2, p0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    invoke-direct {p0, p2, p1, v10}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;

    move-result-object p2

    iput-object p2, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    .line 182
    invoke-direct {p0, v0, p1, v11}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;

    move-result-object p2

    iput-object p2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    .line 183
    invoke-direct {p0, v0, p1, v10}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;

    move-result-object p2

    iput-object p2, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    .line 184
    iget-object p2, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    if-nez p2, :cond_b5

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/InsetsAnimationControlImpl;->controlsType(I)Z

    move-result p2

    if-eqz p2, :cond_b5

    goto :goto_b6

    :cond_b5
    move v10, v11

    :goto_b6
    iput-boolean v10, p0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    .line 185
    iget-object p2, p0, Landroid/view/InsetsAnimationControlImpl;->mSideControlsMap:Landroid/util/SparseSetArray;

    invoke-static {p2, p1}, Landroid/view/InsetsAnimationControlImpl;->buildSideControlsMap(Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V

    .line 187
    :goto_bd
    iget-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    iput-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    .line 189
    iget-boolean p1, p0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    invoke-interface {v8, p1}, Landroid/view/InsetsAnimationSpec;->getDurationMs(Z)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/view/InsetsAnimationControlImpl;->mDurationMs:J

    .line 190
    iget-boolean p1, p0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    invoke-interface {v8, p1}, Landroid/view/InsetsAnimationSpec;->getInsetsInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 192
    new-instance p1, Landroid/view/WindowInsetsAnimation;

    iget p2, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-wide v2, p0, Landroid/view/InsetsAnimationControlImpl;->mDurationMs:J

    invoke-direct {p1, p2, v0, v2, v3}, Landroid/view/WindowInsetsAnimation;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    .line 193
    iget-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0}, Landroid/view/InsetsAnimationControlImpl;->getCurrentAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/WindowInsetsAnimation;->setAlpha(F)V

    .line 194
    move/from16 p1, p10

    iput p1, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    .line 195
    move/from16 p1, p11

    iput p1, p0, Landroid/view/InsetsAnimationControlImpl;->mLayoutInsetsDuringAnimation:I

    .line 196
    move-object/from16 p1, p12

    iput-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 197
    move-object/from16 p1, p13

    iput-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 198
    sget-boolean p1, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz p1, :cond_170

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    and-int/2addr p1, v7

    if-eqz p1, :cond_170

    .line 199
    nop

    .line 200
    iget-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz p1, :cond_10e

    iget-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object p1

    goto :goto_110

    :cond_10e
    const-string p1, "TOKEN_NONE"

    :goto_110
    iget p2, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    .line 201
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shown:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hidden:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 p7, p1

    move-object/from16 p8, p2

    move-object/from16 p9, v0

    move-object/from16 p10, v2

    move-object/from16 p11, v3

    move-object/from16 p12, v4

    filled-new-array/range {p7 .. p12}, [Ljava/lang/Object;

    move-result-object p1

    .line 199
    const/16 p2, 0x7d06

    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 204
    :cond_170
    iget-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    iget-object p2, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    new-instance v0, Landroid/view/WindowInsetsAnimation$Bounds;

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget-object v3, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    invoke-direct {v0, v2, v3}, Landroid/view/WindowInsetsAnimation$Bounds;-><init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V

    move-object/from16 p8, p0

    move-object/from16 p7, p1

    move-object/from16 p11, p2

    move-object/from16 p12, v0

    move/from16 p10, v7

    move-object/from16 p9, v9

    invoke-interface/range {p7 .. p12}, Landroid/view/InsetsAnimationControlCallbacks;->startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V

    .line 206
    return-void
.end method

.method private blacklist addTranslationToMatrix(IILandroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .registers 8

    .line 586
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_c

    .line 587
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateLengthInAppWindowToScreen(F)F

    move-result v0

    goto :goto_d

    :cond_c
    int-to-float v0, p2

    .line 588
    :goto_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_34

    goto :goto_33

    .line 602
    :pswitch_13
    invoke-virtual {p3, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 603
    invoke-virtual {p4, v1, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_33

    .line 598
    :pswitch_1a
    invoke-virtual {p3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 599
    invoke-virtual {p4, p2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 600
    goto :goto_33

    .line 594
    :pswitch_21
    neg-float p1, v0

    invoke-virtual {p3, v2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 595
    neg-int p1, p2

    invoke-virtual {p4, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 596
    goto :goto_33

    .line 590
    :pswitch_2a
    neg-float p1, v0

    invoke-virtual {p3, p1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 591
    neg-int p1, p2

    invoke-virtual {p4, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 592
    nop

    .line 606
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_21
        :pswitch_1a
        :pswitch_13
    .end packed-switch
.end method

.method private static blacklist buildSideControlsMap(Landroid/util/SparseIntArray;Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseSetArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 611
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1f

    .line 612
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 613
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 614
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    .line 615
    if-nez v1, :cond_19

    .line 618
    goto :goto_1c

    .line 620
    :cond_19
    invoke-virtual {p1, v2, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 611
    :goto_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 622
    :cond_1f
    return-void
.end method

.method private static blacklist buildSideControlsMap(Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseSetArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 627
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_2c

    .line 628
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    .line 629
    if-nez v1, :cond_11

    .line 631
    goto :goto_29

    .line 633
    :cond_11
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {v2}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v2

    .line 634
    if-nez v2, :cond_26

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    if-ne v3, v4, :cond_26

    .line 636
    const/4 v2, 0x4

    .line 638
    :cond_26
    invoke-virtual {p0, v2, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 627
    :goto_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 640
    :cond_2c
    return-void
.end method

.method private blacklist calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;Z",
            "Landroid/util/SparseIntArray;",
            ")",
            "Landroid/graphics/Insets;"
        }
    .end annotation

    .line 487
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1b

    .line 488
    invoke-virtual {p4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    .line 489
    if-nez v1, :cond_11

    .line 491
    goto :goto_18

    .line 493
    :cond_11
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v1

    invoke-virtual {p1, v1, p5}, Landroid/view/InsetsState;->setSourceVisible(IZ)V

    .line 487
    :goto_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 495
    :cond_1b
    invoke-direct {p0, p1, p2, p3, p6}, Landroid/view/InsetsAnimationControlImpl;->getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method private blacklist calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;Z)",
            "Landroid/graphics/Insets;"
        }
    .end annotation

    .line 502
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 503
    if-nez p3, :cond_5

    .line 504
    return-object v0

    .line 506
    :cond_5
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_b
    if-ltz p3, :cond_31

    .line 507
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    .line 508
    if-nez v1, :cond_16

    .line 510
    goto :goto_2e

    .line 512
    :cond_16
    if-eqz p1, :cond_26

    .line 513
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 514
    :cond_26
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 506
    :cond_2e
    :goto_2e
    add-int/lit8 p3, p3, -0x1

    goto :goto_b

    .line 517
    :cond_31
    return-object v0
.end method

.method private blacklist calculatePerceptible(Landroid/graphics/Insets;F)Z
    .registers 6

    .line 209
    iget v0, p1, Landroid/graphics/Insets;->left:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_4c

    iget v0, p1, Landroid/graphics/Insets;->top:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->top:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_4c

    iget v0, p1, Landroid/graphics/Insets;->right:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->right:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->right:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_4c

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    mul-int/lit8 p1, p1, 0x64

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    if-lt p1, v0, :cond_4c

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_4c

    const/4 p1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    :goto_4d
    return p1
.end method

.method private blacklist getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;
    .registers 16

    .line 476
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v10, p4

    invoke-virtual/range {v0 .. v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object p1

    iget p2, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    .line 479
    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 476
    return-object p1
.end method

.method private blacklist releaseLeashes()V
    .registers 5

    .line 374
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_25

    .line 375
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    .line 376
    if-nez v1, :cond_15

    goto :goto_22

    .line 377
    :cond_15
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/InsetsAnimationControlImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroid/view/InsetsAnimationControlImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsAnimationControlCallbacks;)V

    invoke-virtual {v1, v3}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 374
    :goto_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 379
    :cond_25
    return-void
.end method

.method private static blacklist sanitize(F)F
    .registers 3

    .line 533
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_8

    :goto_6
    move p0, v0

    goto :goto_e

    :cond_8
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_e

    goto :goto_6

    :cond_e
    :goto_e
    return p0
.end method

.method private blacklist sanitize(Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .registers 3

    .line 522
    if-nez p1, :cond_6

    .line 523
    invoke-virtual {p0}, Landroid/view/InsetsAnimationControlImpl;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object p1

    .line 525
    :cond_6
    invoke-virtual {p0}, Landroid/view/InsetsAnimationControlImpl;->hasZeroInsetsIme()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 526
    return-object p1

    .line 528
    :cond_d
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    invoke-static {p1, v0}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p1

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    invoke-static {p1, v0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method private blacklist setInsetsAndAlpha(Landroid/graphics/Insets;FFZ)V
    .registers 5

    .line 322
    if-nez p4, :cond_f

    iget-boolean p4, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-nez p4, :cond_7

    goto :goto_f

    .line 323
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t change insets on an animation that is finished."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 326
    :cond_f
    :goto_f
    iget-boolean p4, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    if-nez p4, :cond_4c

    .line 330
    invoke-static {p3}, Landroid/view/InsetsAnimationControlImpl;->sanitize(F)F

    move-result p3

    iput p3, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    .line 331
    invoke-direct {p0, p1}, Landroid/view/InsetsAnimationControlImpl;->sanitize(Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p1

    iput-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    .line 332
    invoke-static {p2}, Landroid/view/InsetsAnimationControlImpl;->sanitize(F)F

    move-result p1

    iput p1, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    .line 333
    iget-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    invoke-interface {p1, p0}, Landroid/view/InsetsAnimationControlCallbacks;->scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V

    .line 334
    iget-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iget p2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    invoke-direct {p0, p1, p2}, Landroid/view/InsetsAnimationControlImpl;->calculatePerceptible(Landroid/graphics/Insets;F)Z

    move-result p1

    .line 335
    iget-object p2, p0, Landroid/view/InsetsAnimationControlImpl;->mPerceptible:Ljava/lang/Boolean;

    if-eqz p2, :cond_3e

    iget-object p2, p0, Landroid/view/InsetsAnimationControlImpl;->mPerceptible:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eq p1, p2, :cond_4b

    .line 336
    :cond_3e
    iget-object p2, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    iget p3, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-interface {p2, p3, p1}, Landroid/view/InsetsAnimationControlCallbacks;->reportPerceptible(IZ)V

    .line 337
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mPerceptible:Ljava/lang/Boolean;

    .line 339
    :cond_4b
    return-void

    .line 327
    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t change insets on an animation that is cancelled."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist updateLeashesForSide(IILjava/util/List;Landroid/view/InsetsState;F)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;",
            ">;",
            "Landroid/view/InsetsState;",
            "F)V"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mSideControlsMap:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 540
    if-nez v0, :cond_9

    .line 541
    return-void

    .line 544
    :cond_9
    iget-boolean v1, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    .line 545
    iget-boolean v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    goto :goto_2d

    .line 546
    :cond_11
    iget-boolean v1, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelling:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    .line 549
    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mLayoutInsetsDuringAnimation:I

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_2d

    :cond_1c
    move v1, v3

    goto :goto_2d

    .line 552
    :cond_1e
    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    if-nez v1, :cond_2c

    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2a

    goto :goto_2c

    :cond_2a
    move v1, v3

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v1, v2

    .line 555
    :goto_2d
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_32
    if-ltz v3, :cond_a2

    .line 556
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceControl;

    .line 557
    iget-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 558
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    .line 560
    iget-object v6, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v6, v7, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 561
    if-eqz v4, :cond_66

    .line 562
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 564
    :cond_66
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v2, v6}, Landroid/view/InsetsAnimationControlImpl;->addTranslationToMatrix(IILandroid/graphics/Matrix;Landroid/graphics/Rect;)V

    .line 566
    if-eqz p4, :cond_83

    if-eqz v4, :cond_83

    .line 567
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, v4}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 568
    invoke-virtual {v2, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    move-result-object v2

    iget-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    .line 569
    invoke-virtual {v2, v4}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    move-result-object v2

    .line 567
    invoke-virtual {p4, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 573
    :cond_83
    if-eqz v5, :cond_9f

    .line 574
    new-instance v2, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v2, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 575
    invoke-virtual {v2, p5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    iget-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 576
    invoke-virtual {v2, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    .line 577
    invoke-virtual {v2, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    .line 578
    invoke-virtual {v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v2

    .line 579
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_9f
    add-int/lit8 v3, v3, -0x1

    goto :goto_32

    .line 582
    :cond_a2
    return-void
.end method


# virtual methods
.method public blacklist applyChangeInsets(Landroid/view/InsetsState;)Z
    .registers 10

    .line 346
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 347
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INSETS_ANIMATION_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v0, "applyChangeInsets canceled"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    return v1

    .line 350
    :cond_f
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    invoke-static {v0, v2}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 351
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 352
    iget v4, v0, Landroid/graphics/Insets;->left:I

    iget v7, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/4 v3, 0x1

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IILjava/util/List;Landroid/view/InsetsState;F)V

    .line 353
    iget v4, v0, Landroid/graphics/Insets;->top:I

    iget v7, v2, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/4 v3, 0x2

    invoke-direct/range {v2 .. v7}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IILjava/util/List;Landroid/view/InsetsState;F)V

    .line 354
    iget v4, v0, Landroid/graphics/Insets;->right:I

    iget v7, v2, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/4 v3, 0x3

    invoke-direct/range {v2 .. v7}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IILjava/util/List;Landroid/view/InsetsState;F)V

    .line 355
    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    iget v7, v2, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/4 v3, 0x4

    invoke-direct/range {v2 .. v7}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IILjava/util/List;Landroid/view/InsetsState;F)V

    .line 357
    iget-object p1, v2, Landroid/view/InsetsAnimationControlImpl;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    new-array v0, v1, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-interface {p1, v0}, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 358
    iget-object p1, v2, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iput-object p1, v2, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    .line 359
    iget-object p1, v2, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    iget v0, v2, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    invoke-virtual {p1, v0}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    .line 360
    iget p1, v2, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    iput p1, v2, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    .line 361
    iget-object p1, v2, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    iget v0, v2, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/WindowInsetsAnimation;->setAlpha(F)V

    .line 362
    iget-boolean p1, v2, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz p1, :cond_92

    .line 363
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INSETS_ANIMATION_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    iget-boolean v0, v2, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    .line 364
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v3, v2, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    .line 365
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, v2, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    filled-new-array {v0, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 363
    const-string/jumbo v3, "notifyFinished shown: %s, currentAlpha: %s, currentInsets: %s"

    invoke-static {p1, v3, v0}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    iget-object p1, v2, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    iget-boolean v0, v2, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    invoke-interface {p1, p0, v0}, Landroid/view/InsetsAnimationControlCallbacks;->notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 367
    invoke-direct {p0}, Landroid/view/InsetsAnimationControlImpl;->releaseLeashes()V

    .line 368
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INSETS_ANIMATION_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v0, "Animation finished abruptly."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    :cond_92
    iget-boolean p1, v2, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    return p1
.end method

.method public blacklist cancel()V
    .registers 4

    .line 412
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz v0, :cond_5

    .line 413
    return-void

    .line 415
    :cond_5
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mLayoutInsetsDuringAnimation:I

    if-nez v0, :cond_c

    .line 416
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    :goto_e
    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    .line 417
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelling:Z

    .line 419
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/InsetsAnimationControlImpl;->applyChangeInsets(Landroid/view/InsetsState;)Z

    .line 420
    iput-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    .line 421
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-boolean v2, p0, Landroid/view/InsetsAnimationControlImpl;->mReadyDispatched:Z

    if-eqz v2, :cond_24

    move-object v1, p0

    :cond_24
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 422
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INSETS_ANIMATION_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    .line 423
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 422
    const-string/jumbo v2, "notify Control request cancelled for types: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v0, :cond_69

    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_69

    .line 425
    nop

    .line 426
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {v0}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_54

    :cond_52
    const-string v0, "TOKEN_NONE"

    :goto_54
    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    .line 427
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 425
    const/16 v1, 0x7d08

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 429
    :cond_69
    invoke-direct {p0}, Landroid/view/InsetsAnimationControlImpl;->releaseLeashes()V

    .line 430
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 456
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 457
    const-wide v0, 0x10800000001L

    iget-boolean v2, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 458
    const-wide v0, 0x10800000002L

    iget-boolean v2, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 459
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 460
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 461
    const-wide v0, 0x10200000005L

    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 462
    const-wide v0, 0x10800000006L

    iget-boolean v2, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 463
    const-wide v0, 0x10200000007L

    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 464
    const-wide v0, 0x10200000008L

    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 465
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 466
    return-void
.end method

.method public whitelist finish(Z)V
    .registers 6

    .line 383
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    if-nez v0, :cond_6c

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz v0, :cond_9

    goto :goto_6c

    .line 388
    :cond_9
    iput-boolean p1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    .line 390
    if-eqz p1, :cond_13

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    goto :goto_15

    :cond_13
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    .line 391
    :goto_15
    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/view/InsetsAnimationControlImpl;->setInsetsAndAlpha(Landroid/graphics/Insets;FFZ)V

    .line 393
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INSETS_ANIMATION_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    .line 394
    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 393
    const-string/jumbo v3, "notify control request finished for types: %s"

    invoke-static {v0, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface {v0, p0}, Landroid/view/WindowInsetsAnimationControlListener;->onFinished(Landroid/view/WindowInsetsAnimationController;)V

    .line 396
    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v0, :cond_6b

    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_6b

    .line 397
    nop

    .line 398
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {v0}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    :cond_4c
    const-string v0, "TOKEN_NONE"

    :goto_4e
    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    .line 399
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v2, v3, p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 397
    const/16 v0, 0x7d07

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 401
    :cond_6b
    return-void

    .line 384
    :cond_6c
    :goto_6c
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INSETS_ANIMATION_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Animation already canceled or finished, not notifying."

    invoke-static {p1, v1, v0}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    return-void
.end method

.method public blacklist getAnimation()Landroid/view/WindowInsetsAnimation;
    .registers 2

    .line 445
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    return-object v0
.end method

.method public blacklist getAnimationType()I
    .registers 2

    .line 297
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    return v0
.end method

.method public blacklist getControllingTypes()I
    .registers 2

    .line 268
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    return v0
.end method

.method blacklist getControls()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getCurrentAlpha()F
    .registers 2

    .line 257
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    return v0
.end method

.method public whitelist getCurrentFraction()F
    .registers 2

    .line 407
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getFraction()F

    move-result v0

    return v0
.end method

.method public whitelist getCurrentInsets()Landroid/graphics/Insets;
    .registers 2

    .line 251
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getDurationMs()J
    .registers 3

    .line 223
    iget-wide v0, p0, Landroid/view/InsetsAnimationControlImpl;->mDurationMs:J

    return-wide v0
.end method

.method public whitelist getHiddenStateInsets()Landroid/graphics/Insets;
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getInsetsInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public whitelist getShownStateInsets()Landroid/graphics/Insets;
    .registers 2

    .line 245
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
    .registers 2

    .line 309
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-object v0
.end method

.method public blacklist getSurfaceParamsApplier()Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;
    .registers 2

    .line 303
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    return-object v0
.end method

.method public whitelist getTypes()I
    .registers 2

    .line 263
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    return v0
.end method

.method public blacklist hasZeroInsetsIme()Z
    .registers 2

    .line 218
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    return v0
.end method

.method public whitelist isCancelled()Z
    .registers 2

    .line 439
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    return v0
.end method

.method public whitelist isFinished()Z
    .registers 2

    .line 434
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    return v0
.end method

.method public blacklist notifyControlRevoked(I)V
    .registers 3

    .line 273
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    .line 274
    return-void
.end method

.method public whitelist setInsetsAndAlpha(Landroid/graphics/Insets;FF)V
    .registers 5

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/InsetsAnimationControlImpl;->setInsetsAndAlpha(Landroid/graphics/Insets;FFZ)V

    .line 317
    return-void
.end method

.method public blacklist setReadyDispatched(Z)V
    .registers 2

    .line 233
    iput-boolean p1, p0, Landroid/view/InsetsAnimationControlImpl;->mReadyDispatched:Z

    .line 234
    return-void
.end method

.method public blacklist updateLayoutInsetsDuringAnimation(I)V
    .registers 2

    .line 451
    iput p1, p0, Landroid/view/InsetsAnimationControlImpl;->mLayoutInsetsDuringAnimation:I

    .line 452
    return-void
.end method

.method public blacklist updateSurfacePosition(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_2b

    .line 279
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    .line 280
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceControl;

    .line 281
    if-nez v2, :cond_1d

    .line 282
    goto :goto_28

    .line 284
    :cond_1d
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v1

    .line 285
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v1}, Landroid/view/InsetsSourceControl;->setSurfacePosition(II)Z

    .line 278
    :goto_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 287
    :cond_2b
    return-void
.end method

.method public blacklist willUpdateSurface()Z
    .registers 2

    .line 291
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
