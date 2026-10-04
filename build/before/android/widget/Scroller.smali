.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Scroller$ViscousFluidInterpolator;
    }
.end annotation


# static fields
.field private static greylist DECELERATION_RATE:F = 0.0f

.field private static final greylist-max-o DEFAULT_DURATION:I = 0xfa

.field private static final greylist-max-o END_TENSION:F = 1.0f

.field private static final greylist-max-o FLING_MODE:I = 0x1

.field private static final greylist INFLEXION:F = 0.35f

.field private static final greylist-max-o NB_SAMPLES:I = 0x64

.field private static final greylist-max-o P1:F = 0.175f

.field private static final greylist-max-o P2:F = 0.35000002f

.field private static final greylist-max-o SCROLL_MODE:I = 0x0

.field private static final greylist-max-o SPLINE_POSITION:[F

.field private static final greylist-max-o SPLINE_TIME:[F

.field private static final greylist-max-o START_TENSION:F = 0.5f


# instance fields
.field private greylist-max-o mCurrVelocity:F

.field private greylist-max-o mCurrX:I

.field private greylist-max-o mCurrY:I

.field private greylist mDeceleration:F

.field private greylist-max-o mDeltaX:F

.field private greylist-max-o mDeltaY:F

.field private greylist-max-o mDistance:I

.field private greylist mDuration:I

.field private greylist-max-o mDurationReciprocal:F

.field private greylist-max-o mFinalX:I

.field private greylist-max-o mFinalY:I

.field private greylist-max-o mFinished:Z

.field private greylist-max-o mFlingFriction:F

.field private greylist-max-o mFlywheel:Z

.field private final greylist mInterpolator:Landroid/view/animation/Interpolator;

.field private greylist-max-o mMaxX:I

.field private greylist-max-o mMaxY:I

.field private greylist-max-o mMinX:I

.field private greylist-max-o mMinY:I

.field private greylist-max-o mMode:I

.field private greylist mPhysicalCoeff:F

.field private final greylist-max-o mPpi:F

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mStartX:I

.field private greylist-max-o mStartY:I

.field private greylist-max-o mVelocity:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 20

    .line 101
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/Scroller;->DECELERATION_RATE:F

    .line 110
    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    .line 111
    new-array v0, v0, [F

    sput-object v0, Landroid/widget/Scroller;->SPLINE_TIME:[F

    .line 122
    nop

    .line 123
    nop

    .line 124
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_26
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_af

    .line 125
    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    .line 127
    move v3, v4

    .line 130
    :goto_32
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    .line 131
    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    .line 132
    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    .line 133
    sub-float v15, v12, v5

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v4

    move/from16 v17, v5

    float-to-double v4, v15

    const-wide v18, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v4, v4, v18

    if-gez v4, :cond_9f

    .line 137
    sget-object v3, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v10, v4

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    .line 139
    move/from16 v3, v16

    .line 142
    :goto_6f
    sub-float v5, v3, v1

    div-float/2addr v5, v7

    add-float/2addr v5, v1

    .line 143
    mul-float v6, v5, v8

    sub-float v9, v16, v5

    mul-float/2addr v6, v9

    .line 144
    mul-float v10, v9, v4

    add-float/2addr v10, v5

    mul-float/2addr v10, v6

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float/2addr v10, v12

    .line 145
    sub-float v14, v10, v17

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    cmpg-double v14, v14, v18

    if-gez v14, :cond_97

    .line 149
    sget-object v3, Landroid/widget/Scroller;->SPLINE_TIME:[F

    mul-float/2addr v9, v11

    mul-float/2addr v5, v13

    add-float/2addr v9, v5

    mul-float/2addr v6, v9

    add-float/2addr v6, v12

    aput v6, v3, v2

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 146
    :cond_97
    cmpl-float v6, v10, v17

    if-lez v6, :cond_9d

    move v3, v5

    goto :goto_6f

    .line 147
    :cond_9d
    move v1, v5

    goto :goto_6f

    .line 134
    :cond_9f
    cmpl-float v4, v12, v17

    if-lez v4, :cond_a9

    move v3, v6

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_32

    .line 135
    :cond_a9
    move v0, v6

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_32

    .line 151
    :cond_af
    move/from16 v16, v4

    sget-object v0, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    sget-object v1, Landroid/widget/Scroller;->SPLINE_TIME:[F

    aput v16, v1, v3

    aput v16, v0, v3

    .line 152
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 159
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 5

    .line 167
    nop

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 167
    :goto_e
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 169
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 5

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 178
    if-nez p2, :cond_10

    .line 179
    new-instance p2, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {p2}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_12

    .line 181
    :cond_10
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 183
    :goto_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p2, v0

    iput p2, p0, Landroid/widget/Scroller;->mPpi:F

    .line 184
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result p2

    if-eqz p2, :cond_30

    .line 185
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScrollFrictionAmount()F

    move-result p1

    goto :goto_34

    .line 186
    :cond_30
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    :goto_34
    iput p1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    .line 187
    iget p1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 188
    iput-boolean p3, p0, Landroid/widget/Scroller;->mFlywheel:Z

    .line 190
    const p1, 0x3f570a3d    # 0.84f

    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    .line 191
    return-void
.end method

.method private greylist-max-o computeDeceleration(F)F
    .registers 4

    .line 206
    const v0, 0x43c10b3d

    iget v1, p0, Landroid/widget/Scroller;->mPpi:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p1

    return v1
.end method

.method private greylist-max-o getSplineDeceleration(F)D
    .registers 4

    .line 485
    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v0

    iget v0, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget v1, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getSplineFlingDistance(F)D
    .registers 10

    .line 495
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 496
    sget p1, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 497
    iget p1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget v4, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr p1, v4

    float-to-double v4, p1

    sget p1, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v6, p1

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    return-wide v4
.end method

.method private greylist-max-o getSplineFlingDuration(F)I
    .registers 8

    .line 489
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 490
    sget p1, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 491
    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method


# virtual methods
.method public whitelist abortAnimation()V
    .registers 2

    .line 508
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 509
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 511
    return-void
.end method

.method public whitelist computeScrollOffset()Z
    .registers 8

    .line 310
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-eqz v0, :cond_6

    .line 311
    const/4 v0, 0x0

    return v0

    .line 314
    :cond_6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 316
    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_ca

    .line 317
    iget v1, p0, Landroid/widget/Scroller;->mMode:I

    packed-switch v1, :pswitch_data_d6

    goto/16 :goto_c9

    .line 324
    :pswitch_1a
    int-to-float v0, v0

    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 325
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v3, v0, v1

    float-to-int v3, v3

    .line 326
    nop

    .line 327
    nop

    .line 328
    const/16 v4, 0x64

    if-ge v3, v4, :cond_3f

    .line 329
    int-to-float v4, v3

    div-float/2addr v4, v1

    .line 330
    add-int/lit8 v5, v3, 0x1

    int-to-float v6, v5

    div-float/2addr v6, v1

    .line 331
    sget-object v1, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    aget v1, v1, v3

    .line 332
    sget-object v3, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    aget v3, v3, v5

    .line 333
    sub-float/2addr v3, v1

    sub-float/2addr v6, v4

    div-float/2addr v3, v6

    .line 334
    sub-float/2addr v0, v4

    mul-float/2addr v0, v3

    add-float/2addr v1, v0

    goto :goto_42

    .line 328
    :cond_3f
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 337
    :goto_42
    iget v0, p0, Landroid/widget/Scroller;->mDistance:I

    int-to-float v0, v0

    mul-float/2addr v3, v0

    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v0

    iput v3, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    .line 339
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    iget v3, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v4, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 341
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v3, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 342
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v3, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 344
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    iget v3, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v4, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 346
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v1, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 347
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v1, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 349
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v1, p0, Landroid/widget/Scroller;->mFinalX:I

    if-ne v0, v1, :cond_c9

    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v1, p0, Landroid/widget/Scroller;->mFinalY:I

    if-ne v0, v1, :cond_c9

    .line 350
    iput-boolean v2, p0, Landroid/widget/Scroller;->mFinished:Z

    goto :goto_c9

    .line 319
    :pswitch_a6
    iget-object v1, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v0, v0

    iget v3, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    mul-float/2addr v0, v3

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 320
    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    iget v3, p0, Landroid/widget/Scroller;->mDeltaX:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 321
    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    iget v3, p0, Landroid/widget/Scroller;->mDeltaY:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 322
    nop

    .line 353
    :cond_c9
    :goto_c9
    goto :goto_d4

    .line 357
    :cond_ca
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 358
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 359
    iput-boolean v2, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 361
    :goto_d4
    return v2

    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_a6
        :pswitch_1a
    .end packed-switch
.end method

.method public whitelist extendDuration(I)V
    .registers 3

    .line 522
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    .line 523
    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/Scroller;->mDuration:I

    .line 524
    iget p1, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 525
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 526
    return-void
.end method

.method public whitelist fling(IIIIIIII)V
    .registers 16

    .line 432
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFlywheel:Z

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v0, :cond_41

    .line 433
    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    .line 435
    iget v1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v2, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 436
    iget v2, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v3, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 437
    float-to-double v3, v1

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 439
    div-float/2addr v1, v3

    .line 440
    div-float/2addr v2, v3

    .line 442
    mul-float/2addr v1, v0

    .line 443
    mul-float/2addr v2, v0

    .line 444
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_41

    int-to-float v3, p4

    .line 445
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_41

    .line 446
    add-float/2addr v0, v1

    float-to-int p3, v0

    .line 447
    add-float/2addr v3, v2

    float-to-int p4, v3

    .line 451
    :cond_41
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 454
    int-to-double v0, p3

    int-to-double v2, p4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 456
    iput v0, p0, Landroid/widget/Scroller;->mVelocity:F

    .line 457
    invoke-direct {p0, v0}, Landroid/widget/Scroller;->getSplineFlingDuration(F)I

    move-result v1

    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    .line 458
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 459
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 460
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 462
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_69

    move p3, v2

    goto :goto_6b

    :cond_69
    int-to-float p3, p3

    div-float/2addr p3, v0

    .line 463
    :goto_6b
    if-nez v1, :cond_6e

    goto :goto_71

    :cond_6e
    int-to-float p4, p4

    div-float v2, p4, v0

    .line 465
    :goto_71
    invoke-direct {p0, v0}, Landroid/widget/Scroller;->getSplineFlingDistance(F)D

    move-result-wide v3

    .line 466
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p4

    float-to-double v0, p4

    mul-double/2addr v0, v3

    double-to-int p4, v0

    iput p4, p0, Landroid/widget/Scroller;->mDistance:I

    .line 468
    iput p5, p0, Landroid/widget/Scroller;->mMinX:I

    .line 469
    iput p6, p0, Landroid/widget/Scroller;->mMaxX:I

    .line 470
    iput p7, p0, Landroid/widget/Scroller;->mMinY:I

    .line 471
    iput p8, p0, Landroid/widget/Scroller;->mMaxY:I

    .line 473
    float-to-double p3, p3

    mul-double/2addr p3, v3

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p3, p3

    add-int/2addr p1, p3

    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 475
    iget p1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget p3, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 476
    iget p1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget p3, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 478
    float-to-double p3, v2

    mul-double/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p1, p3

    add-int/2addr p2, p1

    iput p2, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 480
    iget p1, p0, Landroid/widget/Scroller;->mFinalY:I

    iget p2, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 481
    iget p1, p0, Landroid/widget/Scroller;->mFinalY:I

    iget p2, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 482
    return-void
.end method

.method public final whitelist forceFinished(Z)V
    .registers 2

    .line 228
    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 229
    return-void
.end method

.method public whitelist getCurrVelocity()F
    .registers 4

    .line 265
    iget v0, p0, Landroid/widget/Scroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 266
    iget v0, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    goto :goto_16

    :cond_8
    iget v0, p0, Landroid/widget/Scroller;->mVelocity:F

    iget v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 265
    :goto_16
    return v0
.end method

.method public final whitelist getCurrX()I
    .registers 2

    .line 246
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final whitelist getCurrY()I
    .registers 2

    .line 255
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final whitelist getDuration()I
    .registers 2

    .line 237
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final whitelist getFinalX()I
    .registers 2

    .line 293
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final whitelist getFinalY()I
    .registers 2

    .line 302
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final whitelist getStartX()I
    .registers 2

    .line 275
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final whitelist getStartY()I
    .registers 2

    .line 284
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final whitelist isFinished()Z
    .registers 2

    .line 219
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public greylist-max-o isScrollingInDirection(FF)Z
    .registers 5

    .line 567
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v0, :cond_2a

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2a

    .line 568
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget p2, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    .line 567
    :goto_2b
    return p1
.end method

.method public whitelist setFinalX(I)V
    .registers 3

    .line 545
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 546
    iget p1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 547
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 548
    return-void
.end method

.method public whitelist setFinalY(I)V
    .registers 3

    .line 558
    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 559
    iget p1, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 560
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 561
    return-void
.end method

.method public final whitelist setFriction(F)V
    .registers 3

    .line 201
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 202
    iput p1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    .line 203
    return-void
.end method

.method public whitelist startScroll(IIII)V
    .registers 11

    .line 379
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 380
    return-void
.end method

.method public whitelist startScroll(IIIII)V
    .registers 8

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    .line 398
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 399
    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    .line 400
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 401
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 402
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 403
    add-int/2addr p1, p3

    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 404
    add-int/2addr p2, p4

    iput p2, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 405
    int-to-float p1, p3

    iput p1, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 406
    int-to-float p1, p4

    iput p1, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 407
    iget p1, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    iput p2, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 408
    return-void
.end method

.method public whitelist timePassed()I
    .registers 5

    .line 534
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
