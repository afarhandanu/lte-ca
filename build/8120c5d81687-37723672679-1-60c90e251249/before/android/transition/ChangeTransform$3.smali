.class Landroid/transition/ChangeTransform$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeTransform;->createTransformAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mIsCanceled:Z

.field private blacklist mTempMatrix:Landroid/graphics/Matrix;

.field final synthetic blacklist this$0:Landroid/transition/ChangeTransform;

.field final synthetic blacklist val$finalEndMatrix:Landroid/graphics/Matrix;

.field final synthetic blacklist val$handleParentChange:Z

.field final synthetic blacklist val$pathAnimatorMatrix:Landroid/transition/ChangeTransform$PathAnimatorMatrix;

.field final synthetic blacklist val$transforms:Landroid/transition/ChangeTransform$Transforms;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/transition/ChangeTransform$Transforms;Landroid/transition/ChangeTransform$PathAnimatorMatrix;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 312
    iput-object p1, p0, Landroid/transition/ChangeTransform$3;->this$0:Landroid/transition/ChangeTransform;

    iput-boolean p2, p0, Landroid/transition/ChangeTransform$3;->val$handleParentChange:Z

    iput-object p3, p0, Landroid/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iput-object p5, p0, Landroid/transition/ChangeTransform$3;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    iput-object p6, p0, Landroid/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 314
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroid/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private blacklist setCurrentMatrix(Landroid/graphics/Matrix;)V
    .registers 4

    .line 347
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 348
    iget-object p1, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    const v0, 0x10205b4

    iget-object v1, p0, Landroid/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 349
    iget-object p1, p0, Landroid/transition/ChangeTransform$3;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    .line 350
    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 318
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/transition/ChangeTransform$3;->mIsCanceled:Z

    .line 319
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 323
    iget-boolean p1, p0, Landroid/transition/ChangeTransform$3;->mIsCanceled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_27

    .line 324
    iget-boolean p1, p0, Landroid/transition/ChangeTransform$3;->val$handleParentChange:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Landroid/transition/ChangeTransform$3;->this$0:Landroid/transition/ChangeTransform;

    invoke-static {p1}, Landroid/transition/ChangeTransform;->-$$Nest$fgetmUseOverlay(Landroid/transition/ChangeTransform;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 325
    iget-object p1, p0, Landroid/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Landroid/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    goto :goto_27

    .line 327
    :cond_17
    iget-object p1, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    const v1, 0x10205b4

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 328
    iget-object p1, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    const v1, 0x1020469

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 331
    :cond_27
    :goto_27
    iget-object p1, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 332
    iget-object p1, p0, Landroid/transition/ChangeTransform$3;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    .line 333
    return-void
.end method

.method public whitelist onAnimationPause(Landroid/animation/Animator;)V
    .registers 2

    .line 337
    iget-object p1, p0, Landroid/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {p1}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    .line 338
    invoke-direct {p0, p1}, Landroid/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    .line 339
    return-void
.end method

.method public whitelist onAnimationResume(Landroid/animation/Animator;)V
    .registers 2

    .line 343
    iget-object p1, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-static {p1}, Landroid/transition/ChangeTransform;->-$$Nest$smsetIdentityTransforms(Landroid/view/View;)V

    .line 344
    return-void
.end method
