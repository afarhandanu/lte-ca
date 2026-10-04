.class public final Landroid/view/InsetsController$InternalAnimationControlListener;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;
.implements Landroid/view/InsetsAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalAnimationControlListener"
.end annotation


# instance fields
.field private blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private final blacklist mBehavior:I

.field private blacklist mController:Landroid/view/WindowInsetsAnimationController;

.field private final blacklist mDisable:Z

.field private final blacklist mFloatingImeBottomInset:I

.field private final blacklist mHasAnimationCallbacks:Z

.field private final blacklist mInputMethodJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

.field private final blacklist mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private final blacklist mRequestedTypes:I

.field private final blacklist mShow:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$BJTEi7zfHhP2W08t256nzVrDzao(Landroid/view/InsetsController$InternalAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/view/InsetsController$InternalAnimationControlListener;->lambda$onReady$0(Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vYENjUMLI1MBNXf4d_zEaIcueRE(Landroid/view/InsetsController$InternalAnimationControlListener;F)F
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController$InternalAnimationControlListener;->lambda$getInsetsInterpolator$1(F)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasAnimationCallbacks(Landroid/view/InsetsController$InternalAnimationControlListener;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputMethodJankContext(Landroid/view/InsetsController$InternalAnimationControlListener;)Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInputMethodJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAnimationType(Landroid/view/InsetsController$InternalAnimationControlListener;)I
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getAnimationType()I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(ZZIIZILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;)V
    .registers 9

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-boolean p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    .line 410
    iput-boolean p2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    .line 411
    iput p3, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    .line 412
    iput p4, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    .line 413
    iput-boolean p5, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDisable:Z

    .line 414
    iput p6, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFloatingImeBottomInset:I

    .line 415
    iput-object p7, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 416
    iput-object p8, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInputMethodJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    .line 417
    return-void
.end method

.method private blacklist getAnimationType()I
    .registers 2

    .line 589
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$2(F)F
    .registers 1

    .line 542
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$3(F)F
    .registers 2

    .line 545
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$4(F)F
    .registers 1

    .line 551
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method private synthetic blacklist lambda$getInsetsInterpolator$1(F)F
    .registers 2

    .line 533
    iget-boolean p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz p1, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method private synthetic blacklist lambda$onReady$0(Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V
    .registers 9

    .line 453
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p6

    .line 454
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_a

    .line 455
    move v0, p6

    goto :goto_d

    .line 456
    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p6

    .line 457
    :goto_d
    invoke-interface {p1, p6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 458
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;

    move-result-object v1

    .line 459
    invoke-interface {v1, p1, p3, p4}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Insets;

    .line 460
    invoke-interface {p5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    .line 458
    invoke-interface {p2, p1, p3, p6}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    .line 465
    return-void
.end method


# virtual methods
.method blacklist getAlphaInterpolator()Landroid/view/animation/Interpolator;
    .registers 3

    .line 540
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_28

    .line 541
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mController:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->hasZeroInsetsIme()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 542
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;-><init>()V

    return-object v0

    .line 543
    :cond_1b
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_25

    .line 545
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda2;-><init>()V

    return-object v0

    .line 547
    :cond_25
    sget-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0

    .line 550
    :cond_28
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 551
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda3;-><init>()V

    return-object v0

    .line 553
    :cond_33
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_3c

    .line 554
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 556
    :cond_3c
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDurationMs(Z)J
    .registers 4

    .line 569
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 570
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_12

    if-nez p1, :cond_12

    .line 571
    const-wide/16 v0, 0x11d

    return-wide v0

    .line 573
    :cond_12
    const-wide/16 v0, 0xc8

    return-wide v0

    .line 576
    :cond_15
    iget p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_24

    .line 577
    iget-boolean p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz p1, :cond_21

    const-wide/16 v0, 0x113

    goto :goto_23

    :cond_21
    const-wide/16 v0, 0x154

    :goto_23
    return-wide v0

    .line 579
    :cond_24
    iget-boolean p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz p1, :cond_2b

    const-wide/16 v0, 0x1f4

    goto :goto_2d

    :cond_2b
    const-wide/16 v0, 0x5dc

    :goto_2d
    return-wide v0
.end method

.method public blacklist getInsetsInterpolator(Z)Landroid/view/animation/Interpolator;
    .registers 4

    .line 520
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    .line 521
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_12

    if-nez p1, :cond_12

    .line 522
    sget-object p1, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object p1

    .line 523
    :cond_12
    iget-boolean p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz p1, :cond_1b

    .line 524
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object p1

    return-object p1

    .line 526
    :cond_1b
    sget-object p1, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object p1

    .line 529
    :cond_1e
    iget p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_28

    .line 530
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object p1

    return-object p1

    .line 533
    :cond_28
    new-instance p1, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    return-object p1
.end method

.method blacklist onAnimationFinish()V
    .registers 4

    .line 563
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mController:Landroid/view/WindowInsetsAnimationController;

    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    .line 564
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INSETS_CONTROLLER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "onAnimationFinish showOnFinish: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    return-void
.end method

.method public whitelist onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .registers 3

    .line 505
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 506
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 512
    :cond_9
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v0, :cond_12

    .line 513
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 515
    :cond_12
    return-void
.end method

.method public whitelist onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .registers 5

    .line 494
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INSETS_CONTROLLER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    iget v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    .line 496
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 494
    const-string v2, "InternalAnimationControlListener onFinished types: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v0, :cond_1a

    .line 498
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsAnimationControlListener;->onFinished(Landroid/view/WindowInsetsAnimationController;)V

    .line 500
    :cond_1a
    return-void
.end method

.method public whitelist onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .registers 11

    .line 422
    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mController:Landroid/view/WindowInsetsAnimationController;

    .line 423
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INSETS_CONTROLLER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 424
    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 423
    const-string v2, "default animation onReady types: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v0, :cond_1a

    .line 426
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    .line 429
    :cond_1a
    iget-boolean p2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDisable:Z

    if-eqz p2, :cond_22

    .line 430
    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->onAnimationFinish()V

    .line 431
    return-void

    .line 433
    :cond_22
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->hasZeroInsetsIme()Z

    move-result p2

    .line 434
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_94

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    .line 435
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getDurationMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 436
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 437
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 440
    if-eqz p2, :cond_58

    .line 441
    iget p2, v0, Landroid/graphics/Insets;->left:I

    iget v1, v0, Landroid/graphics/Insets;->top:I

    iget v0, v0, Landroid/graphics/Insets;->right:I

    iget v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFloatingImeBottomInset:I

    invoke-static {p2, v1, v0, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_59

    .line 443
    :cond_58
    nop

    .line 444
    :goto_59
    iget-boolean p2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz p2, :cond_5f

    .line 445
    move-object v5, v0

    goto :goto_64

    .line 446
    :cond_5f
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object p2

    move-object v5, p2

    .line 447
    :goto_64
    iget-boolean p2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz p2, :cond_6e

    .line 448
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    move-object v6, v0

    goto :goto_6f

    .line 449
    :cond_6e
    move-object v6, v0

    .line 450
    :goto_6f
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getInsetsInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 451
    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getAlphaInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    .line 452
    iget-object p2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 466
    iget-object p1, v2, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/InsetsController$InternalAnimationControlListener$1;

    invoke-direct {p2, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$1;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 489
    iget-object p1, v2, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 490
    return-void

    nop

    :array_94
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
