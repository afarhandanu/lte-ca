.class public Landroid/transition/ChangeTransform;
.super Landroid/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeTransform$Transforms;,
        Landroid/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroid/transition/ChangeTransform$GhostListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeTransform$PathAnimatorMatrix;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final greylist-max-o PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final greylist-max-o PROPNAME_MATRIX:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final greylist-max-o PROPNAME_PARENT:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final greylist-max-o PROPNAME_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final greylist-max-o PROPNAME_TRANSFORMS:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ChangeTransform"

.field private static final greylist-max-o TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeTransform$PathAnimatorMatrix;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mReparent:Z

.field private greylist-max-o mTempMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mUseOverlay:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmUseOverlay(Landroid/transition/ChangeTransform;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetIdentityTransforms(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Landroid/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetTransforms(Landroid/view/View;FFFFFFFF)V
    .registers 9

    invoke-static/range {p0 .. p8}, Landroid/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 59
    const-string v0, "android:changeTransform:transforms"

    const-string v1, "android:changeTransform:parentMatrix"

    const-string v2, "android:changeTransform:matrix"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/transition/ChangeTransform$1;

    const-class v1, [F

    const-string/jumbo v2, "nonTranslations"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 84
    new-instance v0, Landroid/transition/ChangeTransform$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "translations"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    .line 98
    iput-boolean v0, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    .line 99
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 101
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    .line 98
    iput-boolean v0, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    .line 99
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 105
    sget-object v1, Lcom/android/internal/R$styleable;->ChangeTransform:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 106
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    .line 107
    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    .line 108
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .registers 6

    .line 189
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    .line 191
    return-void

    .line 193
    :cond_b
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v1, Landroid/transition/ChangeTransform$Transforms;

    invoke-direct {v1, v0}, Landroid/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    .line 195
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:transforms"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_35

    .line 200
    :cond_2f
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_36

    .line 198
    :cond_35
    :goto_35
    const/4 v2, 0x0

    .line 202
    :goto_36
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-boolean v1, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    if-eqz v1, :cond_81

    .line 204
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 206
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 207
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 208
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:parentMatrix"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 210
    const v2, 0x10205b4

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 209
    const-string v3, "android:changeTransform:intermediateMatrix"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 212
    const v1, 0x1020469

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 211
    const-string v1, "android:changeTransform:intermediateParentMatrix"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_81
    return-void
.end method

.method private greylist-max-o createGhostView(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V
    .registers 8

    .line 373
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 375
    iget-object v1, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 376
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 377
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 379
    invoke-static {v0, p1, v2}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    move-result-object p1

    .line 381
    move-object v1, p0

    .line 382
    :goto_19
    iget-object v2, v1, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    if-eqz v2, :cond_20

    .line 383
    iget-object v1, v1, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    goto :goto_19

    .line 385
    :cond_20
    new-instance v2, Landroid/transition/ChangeTransform$GhostListener;

    iget-object v3, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {v2, v0, v3, p1}, Landroid/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/GhostView;)V

    .line 386
    invoke-virtual {v1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 388
    iget-object p1, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object p3, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-eq p1, p3, :cond_36

    .line 389
    iget-object p1, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 391
    :cond_36
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 392
    return-void
.end method

.method private greylist-max-o createTransformAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .registers 15

    .line 271
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:changeTransform:matrix"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    .line 272
    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 274
    if-nez p1, :cond_16

    .line 275
    sget-object p1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 278
    :cond_16
    if-nez v0, :cond_1c

    .line 279
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object v4, v0

    goto :goto_1d

    .line 278
    :cond_1c
    move-object v4, v0

    .line 282
    :goto_1d
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 283
    return-object v1

    .line 286
    :cond_25
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:transforms"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/transition/ChangeTransform$Transforms;

    .line 289
    iget-object v5, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 290
    invoke-static {v5}, Landroid/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    .line 292
    const/16 p2, 0x9

    new-array v0, p2, [F

    .line 293
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 294
    new-array p1, p2, [F

    .line 295
    invoke-virtual {v4, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 296
    new-instance v7, Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {v7, v5, v0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    .line 299
    sget-object v2, Landroid/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    new-instance v3, Landroid/animation/FloatArrayEvaluator;

    new-array p2, p2, [F

    invoke-direct {v3, p2}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    filled-new-array {v0, p1}, [[F

    move-result-object p2

    invoke-static {v2, v3, p2}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 302
    invoke-virtual {p0}, Landroid/transition/ChangeTransform;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v2

    const/4 v3, 0x2

    aget v8, v0, v3

    const/4 v9, 0x5

    aget v0, v0, v9

    aget v10, p1, v3

    aget p1, p1, v9

    invoke-virtual {v2, v8, v0, v10, p1}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object p1

    .line 305
    sget-object v0, Landroid/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    invoke-static {v0, v1, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 307
    new-array v0, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v7, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 310
    nop

    .line 312
    new-instance v1, Landroid/transition/ChangeTransform$3;

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v1 .. v7}, Landroid/transition/ChangeTransform$3;-><init>(Landroid/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/transition/ChangeTransform$Transforms;Landroid/transition/ChangeTransform$PathAnimatorMatrix;)V

    .line 353
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 354
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 355
    return-object p1
.end method

.method private greylist-max-o parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .registers 6

    .line 359
    nop

    .line 360
    invoke-virtual {p0, p1}, Landroid/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p2}, Landroid/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_1e

    .line 363
    :cond_10
    invoke-virtual {p0, p1, v1}, Landroid/transition/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object p1

    .line 364
    if-eqz p1, :cond_23

    .line 365
    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    move v2, v1

    goto :goto_23

    .line 361
    :cond_1e
    :goto_1e
    if-ne p1, p2, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    move v2, v1

    .line 368
    :cond_23
    :goto_23
    return v2
.end method

.method private static greylist-max-o setIdentityTransforms(Landroid/view/View;)V
    .registers 10

    .line 414
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Landroid/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    .line 415
    return-void
.end method

.method private greylist-max-o setMatricesForParent(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V
    .registers 7

    .line 395
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parentMatrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 396
    iget-object p2, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v2, 0x1020469

    invoke-virtual {p2, v2, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 398
    iget-object p2, p0, Landroid/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 399
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 400
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 402
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:matrix"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 403
    if-nez v0, :cond_30

    .line 404
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 405
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_30
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    .line 409
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 410
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 411
    return-void
.end method

.method private static greylist-max-o setTransforms(Landroid/view/View;FFFFFFFF)V
    .registers 9

    .line 420
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 421
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 422
    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationZ(F)V

    .line 423
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    .line 424
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    .line 425
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    .line 426
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    .line 427
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    .line 428
    return-void
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2

    .line 224
    invoke-direct {p0, p1}, Landroid/transition/ChangeTransform;->captureValues(Landroid/transition/TransitionValues;)V

    .line 225
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2

    .line 219
    invoke-direct {p0, p1}, Landroid/transition/ChangeTransform;->captureValues(Landroid/transition/TransitionValues;)V

    .line 220
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 8

    .line 232
    if-eqz p2, :cond_6f

    if-eqz p3, :cond_6f

    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 233
    const-string v1, "android:changeTransform:parent"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 234
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_6f

    .line 238
    :cond_17
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 239
    iget-object v2, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 240
    iget-boolean v2, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    if-eqz v2, :cond_33

    invoke-direct {p0, v0, v1}, Landroid/transition/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    .line 242
    :goto_34
    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:intermediateMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 243
    if-eqz v1, :cond_47

    .line 244
    iget-object v2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_47
    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 248
    const-string v2, "android:changeTransform:intermediateParentMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 249
    if-eqz v1, :cond_5a

    .line 250
    iget-object v2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:parentMatrix"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_5a
    if-eqz v0, :cond_5f

    .line 255
    invoke-direct {p0, p2, p3}, Landroid/transition/ChangeTransform;->setMatricesForParent(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 259
    :cond_5f
    invoke-direct {p0, p2, p3, v0}, Landroid/transition/ChangeTransform;->createTransformAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 262
    if-eqz v0, :cond_6e

    if-eqz v1, :cond_6e

    iget-boolean v0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v0, :cond_6e

    .line 263
    invoke-direct {p0, p1, p2, p3}, Landroid/transition/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 266
    :cond_6e
    return-object v1

    .line 235
    :cond_6f
    :goto_6f
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getReparent()Z
    .registers 2

    .line 166
    iget-boolean v0, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    return v0
.end method

.method public whitelist getReparentWithOverlay()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 185
    sget-object v0, Landroid/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setReparent(Z)V
    .registers 2

    .line 180
    iput-boolean p1, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    .line 181
    return-void
.end method

.method public whitelist setReparentWithOverlay(Z)V
    .registers 2

    .line 153
    iput-boolean p1, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    .line 154
    return-void
.end method
