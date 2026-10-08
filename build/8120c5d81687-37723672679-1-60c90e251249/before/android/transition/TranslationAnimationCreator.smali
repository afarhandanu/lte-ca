.class Landroid/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;
    .registers 15

    .line 54
    move v0, p5

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p5

    .line 55
    move v1, p6

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p6

    .line 56
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v3, 0x10205b3

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 57
    if-eqz v2, :cond_23

    .line 58
    const/4 p4, 0x0

    aget p4, v2, p4

    sub-int/2addr p4, p2

    int-to-float p4, p4

    add-float/2addr p4, p5

    .line 59
    const/4 v0, 0x1

    aget v0, v2, v0

    sub-int/2addr v0, p3

    int-to-float v0, v0

    add-float/2addr v0, p6

    .line 62
    :cond_23
    sub-float v2, p4, p5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr p2, v2

    .line 63
    sub-float v2, v0, p6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr p3, v2

    .line 65
    invoke-virtual {p0, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 67
    cmpl-float v2, p4, v1

    if-nez v2, :cond_41

    cmpl-float v2, v0, p7

    if-nez v2, :cond_41

    .line 68
    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_41
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 71
    invoke-virtual {v2, p4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 72
    invoke-virtual {v2, v1, p7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    sget-object p4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object p7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {p0, p4, p7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 76
    move-object p4, p1

    move-object p1, p0

    new-instance p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object p4, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 p7, 0x0

    move v4, p3

    move p3, p2

    move-object p2, p4

    move p4, v4

    invoke-direct/range {p0 .. p7}, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/transition/TranslationAnimationCreator-IA;)V

    .line 78
    invoke-virtual {p9, p0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 79
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 81
    invoke-virtual {v0, p8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    return-object v0
.end method
