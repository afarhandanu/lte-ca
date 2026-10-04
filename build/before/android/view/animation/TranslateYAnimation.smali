.class public Landroid/view/animation/TranslateYAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "TranslateYAnimation.java"


# instance fields
.field greylist-max-o mTmpValues:[F


# direct methods
.method public constructor greylist-max-o <init>(FF)V
    .registers 4

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 30
    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    .line 37
    return-void
.end method

.method public constructor greylist <init>(IFIF)V
    .registers 14

    .line 44
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 30
    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, v0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    .line 45
    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    .line 52
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 53
    iget-object v1, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 54
    iget v0, p0, Landroid/view/animation/TranslateYAnimation;->mFromYDelta:F

    iget v1, p0, Landroid/view/animation/TranslateYAnimation;->mToYDelta:F

    iget v2, p0, Landroid/view/animation/TranslateYAnimation;->mFromYDelta:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 55
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    const/4 v1, 0x2

    aget p2, p2, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 56
    return-void
.end method
