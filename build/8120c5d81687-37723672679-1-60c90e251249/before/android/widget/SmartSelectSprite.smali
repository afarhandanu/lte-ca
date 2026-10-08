.class final Landroid/widget/SmartSelectSprite;
.super Ljava/lang/Object;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SmartSelectSprite$RectangleList;,
        Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;,
        Landroid/widget/SmartSelectSprite$RoundedRectangleShape;
    }
.end annotation


# static fields
.field private static final greylist-max-o EXPAND_DURATION:I = 0xc8

.field static final greylist-max-o RECTANGLE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mActiveAnimator:Landroid/animation/Animator;

.field private greylist-max-o mExistingDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

.field private final greylist-max-o mExpandInterpolator:Landroid/view/animation/Interpolator;

.field private final greylist-max-o mFillColor:I

.field private final greylist-max-o mInvalidator:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$i_KshA4950qAwOA-tjEY7NQ_fbc(Landroid/widget/SmartSelectSprite;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SmartSelectSprite;->lambda$startAnimation$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExistingRectangleList(Landroid/widget/SmartSelectSprite;)Landroid/widget/SmartSelectSprite$RectangleList;
    .registers 1

    iget-object p0, p0, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInvalidator(Landroid/widget/SmartSelectSprite;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda0;-><init>()V

    .line 63
    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda1;-><init>()V

    .line 64
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Landroid/widget/SmartSelectSprite;->RECTANGLE_COMPARATOR:Ljava/util/Comparator;

    .line 62
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;ILjava/lang/Runnable;)V
    .registers 5

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    .line 66
    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    .line 335
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SmartSelectSprite;->mExpandInterpolator:Landroid/view/animation/Interpolator;

    .line 338
    iput p2, p0, Landroid/widget/SmartSelectSprite;->mFillColor:I

    .line 339
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    .line 340
    return-void
.end method

.method private static greylist-max-o contains(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z
    .registers 4

    .line 521
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 522
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 523
    iget v1, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1e

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1e

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1e

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private blacklist createAnimator(Landroid/widget/SmartSelectSprite$RectangleList;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)Landroid/animation/Animator;
    .registers 12

    .line 431
    nop

    .line 435
    invoke-static {p1}, Landroid/widget/SmartSelectSprite$RectangleList;->-$$Nest$mgetTotalWidth(Landroid/widget/SmartSelectSprite$RectangleList;)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    const/4 p3, 0x1

    aput v0, v2, p3

    .line 431
    const-string/jumbo v0, "rightBoundary"

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 437
    new-array v2, v1, [F

    aput p2, v2, v3

    const/4 p2, 0x0

    aput p2, v2, p3

    const-string p2, "leftBoundary"

    invoke-static {p1, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 443
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 444
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 446
    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 447
    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 449
    iget-object p2, p0, Landroid/widget/SmartSelectSprite;->mExpandInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 450
    iget-object p2, p0, Landroid/widget/SmartSelectSprite;->mExpandInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 452
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 453
    new-array p4, v1, [Landroid/animation/Animator;

    aput-object p1, p4, v3

    aput-object v0, p4, p3

    invoke-virtual {p2, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 455
    invoke-direct {p0, p2, p5}, Landroid/widget/SmartSelectSprite;->setUpAnimatorListener(Landroid/animation/Animator;Ljava/lang/Runnable;)V

    .line 457
    return-object p2
.end method

.method private static greylist-max-o generateDirections(Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;Ljava/util/List;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;",
            ">;)[I"
        }
    .end annotation

    .line 487
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 489
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 491
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    add-int/lit8 v4, p0, -0x1

    const/4 v5, -0x1

    if-ge v3, v4, :cond_16

    .line 492
    aput v5, v1, v3

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 495
    :cond_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    .line 496
    aput v2, v1, p0

    goto :goto_31

    .line 497
    :cond_20
    if-nez p0, :cond_25

    .line 498
    aput v5, v1, p0

    goto :goto_31

    .line 499
    :cond_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    if-ne p0, p1, :cond_2f

    .line 500
    aput v4, v1, p0

    goto :goto_31

    .line 502
    :cond_2f
    aput v2, v1, p0

    .line 505
    :goto_31
    add-int/2addr p0, v4

    :goto_32
    if-ge p0, v0, :cond_39

    .line 506
    aput v4, v1, p0

    .line 505
    add-int/lit8 p0, p0, 0x1

    goto :goto_32

    .line 509
    :cond_39
    return-object v1
.end method

.method private synthetic blacklist lambda$startAnimation$2(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 365
    iget-object p1, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic blacklist lambda$static$0(Landroid/graphics/RectF;)D
    .registers 3

    .line 63
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, p0

    return-wide v0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/graphics/RectF;)D
    .registers 3

    .line 64
    iget p0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, p0

    return-wide v0
.end method

.method private greylist-max-o removeExistingDrawables()V
    .registers 2

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    .line 529
    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    .line 530
    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 531
    return-void
.end method

.method private greylist-max-o setUpAnimatorListener(Landroid/animation/Animator;Ljava/lang/Runnable;)V
    .registers 4

    .line 461
    new-instance v0, Landroid/widget/SmartSelectSprite$1;

    invoke-direct {v0, p0, p2}, Landroid/widget/SmartSelectSprite$1;-><init>(Landroid/widget/SmartSelectSprite;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 482
    return-void
.end method


# virtual methods
.method public greylist-max-o cancelAnimation()V
    .registers 2

    .line 537
    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    .line 538
    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    .line 540
    invoke-direct {p0}, Landroid/widget/SmartSelectSprite;->removeExistingDrawables()V

    .line 542
    :cond_f
    return-void
.end method

.method public greylist-max-o draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 545
    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 546
    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 548
    :cond_9
    return-void
.end method

.method public greylist-max-o isAnimationActive()Z
    .registers 2

    .line 422
    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o startAnimation(Landroid/graphics/PointF;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Landroid/widget/SmartSelectSprite;->cancelAnimation()V

    .line 364
    new-instance v4, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda2;-><init>(Landroid/widget/SmartSelectSprite;)V

    .line 367
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 369
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    nop

    .line 373
    nop

    .line 375
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v5, v3

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;

    .line 376
    invoke-virtual {v6}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getRectangle()Landroid/graphics/RectF;

    move-result-object v8

    .line 377
    invoke-static {v8, p1}, Landroid/widget/SmartSelectSprite;->contains(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 378
    nop

    .line 379
    goto :goto_3b

    .line 381
    :cond_32
    int-to-float v5, v5

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 382
    goto :goto_19

    .line 375
    :cond_3a
    move-object v6, v7

    .line 384
    :goto_3b
    if-eqz v6, :cond_9f

    .line 388
    int-to-float v2, v5

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v6}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getRectangle()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v5

    add-float/2addr v2, p1

    float-to-int p1, v2

    .line 390
    nop

    .line 391
    invoke-static {v6, p2}, Landroid/widget/SmartSelectSprite;->generateDirections(Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;Ljava/util/List;)[I

    move-result-object v2

    .line 393
    move v5, v3

    :goto_4f
    if-ge v5, v0, :cond_72

    .line 394
    nop

    .line 395
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;

    .line 396
    invoke-virtual {v6}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getRectangle()Landroid/graphics/RectF;

    move-result-object v8

    .line 397
    new-instance v9, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    aget v10, v2, v5

    .line 400
    invoke-virtual {v6}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getTextSelectionLayout()I

    move-result v6

    if-nez v6, :cond_68

    const/4 v6, 0x1

    goto :goto_69

    :cond_68
    move v6, v3

    :goto_69
    invoke-direct {v9, v8, v10, v6, v7}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;-><init>(Landroid/graphics/RectF;IZLandroid/widget/SmartSelectSprite-IA;)V

    .line 402
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    .line 405
    :cond_72
    move-object p2, v1

    new-instance v1, Landroid/widget/SmartSelectSprite$RectangleList;

    invoke-direct {v1, p2, v7}, Landroid/widget/SmartSelectSprite$RectangleList;-><init>(Ljava/util/List;Landroid/widget/SmartSelectSprite-IA;)V

    .line 406
    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 408
    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 409
    iget v2, p0, Landroid/widget/SmartSelectSprite;->mFillColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 412
    iput-object v1, p0, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    .line 413
    iput-object p2, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    .line 415
    int-to-float v2, p1

    move v3, v2

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SmartSelectSprite;->createAnimator(Landroid/widget/SmartSelectSprite$RectangleList;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    .line 417
    iget-object p1, v0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 418
    return-void

    .line 385
    :cond_9f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Center point is not inside any of the rectangles!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
