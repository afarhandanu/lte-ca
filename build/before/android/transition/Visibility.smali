.class public abstract Landroid/transition/Visibility;
.super Landroid/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Visibility$VisibilityInfo;,
        Landroid/transition/Visibility$DisappearListener;,
        Landroid/transition/Visibility$VisibilityMode;
    }
.end annotation


# static fields
.field public static final whitelist MODE_IN:I = 0x1

.field public static final whitelist MODE_OUT:I = 0x2

.field private static final greylist-max-o PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final greylist-max-o PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final greylist-max-o PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final greylist-max-o sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mMode:I

.field private greylist-max-o mSuppressLayout:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 80
    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    .line 97
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    .line 101
    sget-object v0, Lcom/android/internal/R$styleable;->VisibilityTransition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 102
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 103
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    if-eqz p2, :cond_1c

    .line 105
    invoke-virtual {p0, p2}, Landroid/transition/Visibility;->setMode(I)V

    .line 107
    :cond_1c
    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .registers 5

    .line 151
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 152
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 155
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 156
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method private static greylist-max-o getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;
    .registers 9

    .line 196
    new-instance v0, Landroid/transition/Visibility$VisibilityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/transition/Visibility$VisibilityInfo;-><init>(Landroid/transition/Visibility-IA;)V

    .line 197
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    .line 198
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 199
    const-string v3, "android:visibility:parent"

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p0, :cond_33

    iget-object v6, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 200
    iget-object v6, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 201
    iget-object v6, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    goto :goto_37

    .line 203
    :cond_33
    iput v4, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 204
    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    .line 206
    :goto_37
    if-eqz p1, :cond_5a

    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 207
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    .line 208
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    goto :goto_5e

    .line 210
    :cond_5a
    iput v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    .line 211
    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    .line 213
    :goto_5e
    const/4 v1, 0x1

    if-eqz p0, :cond_a0

    if-eqz p1, :cond_a0

    .line 214
    iget p0, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget p1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-ne p0, p1, :cond_70

    iget-object p0, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object p1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-ne p0, p1, :cond_70

    .line 216
    return-object v0

    .line 218
    :cond_70
    iget p0, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget p1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-eq p0, p1, :cond_88

    .line 219
    iget p0, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez p0, :cond_7f

    .line 220
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 221
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_b5

    .line 222
    :cond_7f
    iget p0, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez p0, :cond_b5

    .line 223
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 224
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_b5

    .line 227
    :cond_88
    iget-object p0, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object p1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eq p0, p1, :cond_b5

    .line 228
    iget-object p0, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-nez p0, :cond_97

    .line 229
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 230
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_b5

    .line 231
    :cond_97
    iget-object p0, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez p0, :cond_b5

    .line 232
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 233
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_b5

    .line 237
    :cond_a0
    if-nez p0, :cond_ab

    iget p0, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez p0, :cond_ab

    .line 238
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 239
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_b5

    .line 240
    :cond_ab
    if-nez p1, :cond_b5

    iget p0, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez p0, :cond_b5

    .line 241
    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 242
    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    .line 244
    :cond_b5
    :goto_b5
    return-object v0
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2

    .line 166
    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    .line 167
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2

    .line 161
    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    .line 162
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 12

    .line 252
    invoke-static {p2, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 253
    iget-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v1, :cond_2e

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_10

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2e

    .line 255
    :cond_10
    iget-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz v1, :cond_21

    .line 256
    iget v5, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v7, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    .line 259
    :cond_21
    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v5, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    .line 264
    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getMode()I
    .registers 2

    .line 142
    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    return v0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 147
    sget-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .registers 7

    .line 513
    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 514
    return v0

    .line 516
    :cond_6
    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 517
    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 518
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1b

    .line 521
    return v0

    .line 523
    :cond_1b
    invoke-static {p1, p2}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object p1

    .line 524
    iget-boolean p2, p1, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz p2, :cond_2c

    iget p2, p1, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-eqz p2, :cond_2b

    iget p1, p1, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez p1, :cond_2c

    :cond_2b
    const/4 v0, 0x1

    :cond_2c
    return v0
.end method

.method public whitelist isVisible(Landroid/transition/TransitionValues;)Z
    .registers 5

    .line 185
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 186
    return v0

    .line 188
    :cond_4
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 189
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 191
    if-nez v1, :cond_21

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public whitelist onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 8

    .line 288
    iget p3, p0, Landroid/transition/Visibility;->mMode:I

    const/4 p5, 0x1

    and-int/2addr p3, p5

    const/4 v0, 0x0

    if-ne p3, p5, :cond_2f

    if-nez p4, :cond_a

    goto :goto_2f

    .line 291
    :cond_a
    if-nez p2, :cond_28

    .line 292
    nop

    .line 293
    iget-object p3, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 294
    const/4 p5, 0x0

    invoke-virtual {p0, p3, p5}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v1

    .line 296
    invoke-virtual {p0, p3, p5}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object p3

    .line 297
    nop

    .line 298
    invoke-static {v1, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object p3

    .line 299
    iget-boolean p3, p3, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz p3, :cond_28

    .line 300
    return-object v0

    .line 303
    :cond_28
    iget-object p3, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    .line 289
    :cond_2f
    :goto_2f
    return-object v0
.end method

.method public whitelist onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .line 323
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 16

    .line 363
    iget p3, p0, Landroid/transition/Visibility;->mMode:I

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_8

    .line 364
    return-object v1

    .line 367
    :cond_8
    if-nez p2, :cond_b

    .line 369
    return-object v1

    .line 372
    :cond_b
    iget-object p3, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 373
    if-eqz p4, :cond_12

    iget-object v2, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_13

    :cond_12
    move-object v2, v1

    .line 374
    :goto_13
    nop

    .line 375
    nop

    .line 376
    nop

    .line 378
    const v3, 0x10205b5

    invoke-virtual {p3, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 379
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_28

    .line 383
    nop

    .line 384
    move-object v2, v1

    move v7, v6

    goto/16 :goto_9a

    .line 386
    :cond_28
    nop

    .line 388
    if-eqz v2, :cond_41

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_32

    goto :goto_41

    .line 397
    :cond_32
    const/4 v4, 0x4

    if-ne p5, v4, :cond_36

    .line 398
    goto :goto_39

    .line 401
    :cond_36
    if-ne p3, v2, :cond_3d

    .line 402
    nop

    .line 409
    :goto_39
    move-object v4, v2

    move v7, v5

    move-object v2, v1

    goto :goto_49

    .line 404
    :cond_3d
    move-object v2, v1

    move-object v4, v2

    move v7, v6

    goto :goto_49

    .line 389
    :cond_41
    :goto_41
    if-eqz v2, :cond_46

    .line 391
    move-object v4, v1

    move v7, v5

    goto :goto_49

    .line 393
    :cond_46
    move-object v2, v1

    move-object v4, v2

    move v7, v6

    .line 409
    :goto_49
    if-eqz v7, :cond_96

    .line 413
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_52

    .line 415
    goto :goto_92

    .line 416
    :cond_52
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_96

    .line 417
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 418
    invoke-virtual {p0, v7, v6}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v8

    .line 419
    invoke-virtual {p0, v7, v6}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v9

    .line 421
    nop

    .line 422
    invoke-static {v8, v9}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v8

    .line 423
    iget-boolean v8, v8, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-nez v8, :cond_7a

    .line 424
    invoke-static {p1, p3, v7}, Landroid/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    move v7, v5

    goto :goto_9a

    .line 427
    :cond_7a
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    .line 428
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_96

    const/4 v7, -0x1

    if-eq v8, v7, :cond_96

    .line 429
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_96

    iget-boolean v7, p0, Landroid/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v7, :cond_96

    .line 433
    nop

    .line 442
    :goto_92
    move-object v2, v4

    move v7, v5

    move-object v4, p3

    goto :goto_9a

    :cond_96
    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    move v7, v5

    :goto_9a
    if-eqz v4, :cond_e9

    .line 445
    if-nez v7, :cond_cf

    .line 446
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    .line 447
    iget-object p5, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:screenLocation"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [I

    .line 448
    aget v2, p5, v5

    .line 449
    aget p5, p5, v6

    .line 450
    new-array v0, v0, [I

    .line 451
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 452
    aget v5, v0, v5

    sub-int/2addr v2, v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {v4, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 453
    aget v0, v0, v6

    sub-int/2addr p5, v0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {v4, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 454
    invoke-virtual {v1, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 455
    goto :goto_d0

    .line 456
    :cond_cf
    nop

    .line 458
    :goto_d0
    invoke-virtual {p0, p1, v4, p2, p4}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    .line 459
    if-nez v7, :cond_e8

    .line 460
    if-nez p1, :cond_dc

    .line 461
    invoke-virtual {v1, v4}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_e8

    .line 463
    :cond_dc
    invoke-virtual {p3, v3, v4}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 464
    nop

    .line 465
    new-instance p2, Landroid/transition/Visibility$1;

    invoke-direct {p2, p0, v1, v4, p3}, Landroid/transition/Visibility$1;-><init>(Landroid/transition/Visibility;Landroid/view/ViewGroupOverlay;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 490
    :cond_e8
    :goto_e8
    return-object p1

    .line 493
    :cond_e9
    if-eqz v2, :cond_10d

    .line 494
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result p3

    .line 495
    invoke-virtual {v2, v5}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 496
    invoke-virtual {p0, p1, v2, p2, p4}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    .line 497
    if-eqz p1, :cond_109

    .line 498
    new-instance p2, Landroid/transition/Visibility$DisappearListener;

    iget-boolean p3, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    invoke-direct {p2, v2, p5, p3}, Landroid/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 500
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 501
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 502
    invoke-virtual {p0, p2}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 503
    goto :goto_10c

    .line 504
    :cond_109
    invoke-virtual {v2, p3}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 506
    :goto_10c
    return-object p1

    .line 508
    :cond_10d
    return-object v1
.end method

.method public whitelist onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .line 546
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist setMode(I)V
    .registers 3

    .line 127
    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_7

    .line 130
    iput p1, p0, Landroid/transition/Visibility;->mMode:I

    .line 131
    return-void

    .line 128
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o setSuppressLayout(Z)V
    .registers 2

    .line 115
    iput-boolean p1, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    .line 116
    return-void
.end method
