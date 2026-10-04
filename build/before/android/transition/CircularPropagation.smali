.class public Landroid/transition/CircularPropagation;
.super Landroid/transition/VisibilityPropagation;
.source "CircularPropagation.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "CircularPropagation"


# instance fields
.field private greylist-max-o mPropagationSpeed:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    .line 35
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    return-void
.end method

.method private static greylist-max-o distance(FFFF)D
    .registers 6

    .line 101
    sub-float/2addr p2, p0

    float-to-double v0, p2

    .line 102
    sub-float/2addr p3, p1

    float-to-double p0, p3

    .line 103
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public whitelist getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .registers 13

    .line 59
    const-wide/16 v0, 0x0

    if-nez p3, :cond_7

    if-nez p4, :cond_7

    .line 60
    return-wide v0

    .line 62
    :cond_7
    nop

    .line 64
    const/4 v2, 0x1

    if-eqz p4, :cond_15

    invoke-virtual {p0, p3}, Landroid/transition/CircularPropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    move-result v3

    if-nez v3, :cond_12

    goto :goto_15

    .line 68
    :cond_12
    move-object p3, p4

    move p4, v2

    goto :goto_17

    .line 65
    :cond_15
    :goto_15
    nop

    .line 66
    const/4 p4, -0x1

    .line 71
    :goto_17
    invoke-virtual {p0, p3}, Landroid/transition/CircularPropagation;->getViewX(Landroid/transition/TransitionValues;)I

    move-result v3

    .line 72
    invoke-virtual {p0, p3}, Landroid/transition/CircularPropagation;->getViewY(Landroid/transition/TransitionValues;)I

    move-result p3

    .line 74
    invoke-virtual {p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v4

    .line 77
    if-eqz v4, :cond_2e

    .line 78
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 79
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    goto :goto_5a

    .line 81
    :cond_2e
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 82
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 83
    const/4 v6, 0x0

    aget v6, v5, v6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/2addr v7, v4

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 84
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v7

    add-float/2addr v6, v7

    .line 83
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 85
    aget v2, v5, v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    int-to-float v2, v2

    .line 86
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    add-float/2addr v2, v4

    .line 85
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v2, v6

    .line 88
    :goto_5a
    int-to-float v3, v3

    int-to-float p3, p3

    int-to-float v2, v2

    int-to-float v4, v4

    invoke-static {v3, p3, v2, v4}, Landroid/transition/CircularPropagation;->distance(FFFF)D

    move-result-wide v2

    .line 89
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v4, 0x0

    invoke-static {v4, v4, p3, p1}, Landroid/transition/CircularPropagation;->distance(FFFF)D

    move-result-wide v4

    .line 90
    div-double/2addr v2, v4

    .line 92
    invoke-virtual {p2}, Landroid/transition/Transition;->getDuration()J

    move-result-wide p1

    .line 93
    cmp-long p3, p1, v0

    if-gez p3, :cond_7c

    .line 94
    const-wide/16 p1, 0x12c

    .line 97
    :cond_7c
    int-to-long p3, p4

    mul-long/2addr p1, p3

    long-to-float p1, p1

    iget p2, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    mul-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist setPropagationSpeed(F)V
    .registers 3

    .line 50
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_8

    .line 53
    iput p1, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    .line 54
    return-void

    .line 51
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "propagationSpeed may not be 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
