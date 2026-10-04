.class public Landroid/transition/TransitionUtils$MatrixEvaluator;
.super Ljava/lang/Object;
.source "TransitionUtils.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TransitionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatrixEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field greylist-max-o mTempEndValues:[F

.field greylist-max-o mTempMatrix:Landroid/graphics/Matrix;

.field greylist-max-o mTempStartValues:[F


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    .line 201
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    .line 203
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public greylist-max-o evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 6

    .line 207
    iget-object v0, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 208
    iget-object p2, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 209
    const/4 p2, 0x0

    :goto_b
    const/16 p3, 0x9

    if-ge p2, p3, :cond_25

    .line 210
    iget-object p3, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    aget p3, p3, p2

    iget-object v0, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    aget v0, v0, p2

    sub-float/2addr p3, v0

    .line 211
    iget-object v0, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    iget-object v1, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    aget v1, v1, p2

    mul-float/2addr p3, p1

    add-float/2addr v1, p3

    aput v1, v0, p2

    .line 209
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    .line 213
    :cond_25
    iget-object p1, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 214
    iget-object p1, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method

.method public bridge synthetic whitelist evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 197
    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Landroid/transition/TransitionUtils$MatrixEvaluator;->evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method
