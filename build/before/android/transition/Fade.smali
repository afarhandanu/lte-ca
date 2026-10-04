.class public Landroid/transition/Fade;
.super Landroid/transition/Visibility;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Fade$FadeAnimatorListener;
    }
.end annotation


# static fields
.field private static greylist-max-o DBG:Z = false

.field public static final whitelist IN:I = 0x1

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final whitelist OUT:I = 0x2

.field static final greylist-max-o PROPNAME_TRANSITION_ALPHA:Ljava/lang/String; = "android:fade:transitionAlpha"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Landroid/transition/Fade;->DBG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 88
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Landroid/transition/Fade;->setMode(I)V

    .line 99
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    sget-object v0, Lcom/android/internal/R$styleable;->Fade:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 104
    const/4 p2, 0x0

    invoke-virtual {p0}, Landroid/transition/Fade;->getMode()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 105
    invoke-virtual {p0, p2}, Landroid/transition/Fade;->setMode(I)V

    .line 106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-void
.end method

.method private greylist-max-o createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 5

    .line 120
    cmpl-float v0, p2, p3

    if-nez v0, :cond_6

    .line 121
    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_6
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 124
    const/4 p2, 0x1

    new-array p2, p2, [F

    const/4 v0, 0x0

    aput p3, p2, v0

    const-string/jumbo p3, "transitionAlpha"

    invoke-static {p1, p3, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 125
    sget-boolean p3, Landroid/transition/Fade;->DBG:Z

    if-eqz p3, :cond_32

    .line 126
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Created animator "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Fade"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_32
    new-instance p3, Landroid/transition/Fade$FadeAnimatorListener;

    invoke-direct {p3, p1}, Landroid/transition/Fade$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    .line 129
    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 130
    new-instance p3, Landroid/transition/Fade$1;

    invoke-direct {p3, p0, p1}, Landroid/transition/Fade$1;-><init>(Landroid/transition/Fade;Landroid/view/View;)V

    invoke-virtual {p0, p3}, Landroid/transition/Fade;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 137
    return-object p2
.end method

.method private static greylist-max-o getStartAlpha(Landroid/transition/TransitionValues;F)F
    .registers 3

    .line 164
    nop

    .line 165
    if-eqz p0, :cond_13

    .line 166
    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:fade:transitionAlpha"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    .line 167
    if-eqz p0, :cond_13

    .line 168
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 171
    :cond_13
    return p1
.end method


# virtual methods
.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 4

    .line 111
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 112
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 112
    const-string v1, "android:fade:transitionAlpha"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public whitelist onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 6

    .line 144
    sget-boolean p1, Landroid/transition/Fade;->DBG:Z

    if-eqz p1, :cond_2c

    .line 145
    if-eqz p3, :cond_9

    iget-object p1, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 146
    :goto_a
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fade.onAppear: startView, startVis, endView, endVis = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, ", "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "Fade"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2c
    const/4 p1, 0x0

    invoke-static {p3, p1}, Landroid/transition/Fade;->getStartAlpha(Landroid/transition/TransitionValues;F)F

    move-result p3

    .line 150
    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float v0, p3, p4

    if-nez v0, :cond_38

    .line 151
    goto :goto_39

    .line 150
    :cond_38
    move p1, p3

    .line 153
    :goto_39
    invoke-direct {p0, p2, p1, p4}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .line 159
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p3, p1}, Landroid/transition/Fade;->getStartAlpha(Landroid/transition/TransitionValues;F)F

    move-result p1

    .line 160
    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method
