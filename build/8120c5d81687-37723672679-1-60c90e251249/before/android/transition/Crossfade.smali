.class public Landroid/transition/Crossfade;
.super Landroid/transition/Transition;
.source "Crossfade.java"


# static fields
.field public static final greylist-max-o FADE_BEHAVIOR_CROSSFADE:I = 0x0

.field public static final greylist-max-o FADE_BEHAVIOR_OUT_IN:I = 0x2

.field public static final greylist-max-o FADE_BEHAVIOR_REVEAL:I = 0x1

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "Crossfade"

.field private static final greylist-max-o PROPNAME_BITMAP:Ljava/lang/String; = "android:crossfade:bitmap"

.field private static final greylist-max-o PROPNAME_BOUNDS:Ljava/lang/String; = "android:crossfade:bounds"

.field private static final greylist-max-o PROPNAME_DRAWABLE:Ljava/lang/String; = "android:crossfade:drawable"

.field public static final greylist-max-o RESIZE_BEHAVIOR_NONE:I = 0x0

.field public static final greylist-max-o RESIZE_BEHAVIOR_SCALE:I = 0x1

.field private static greylist-max-o sRectEvaluator:Landroid/animation/RectEvaluator;


# instance fields
.field private greylist-max-o mFadeBehavior:I

.field private greylist-max-o mResizeBehavior:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFadeBehavior(Landroid/transition/Crossfade;)I
    .registers 1

    iget p0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    .line 62
    iput v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .registers 7

    .line 265
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 266
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 267
    iget v2, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    .line 268
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 270
    :cond_20
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:crossfade:bounds"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 277
    instance-of v3, v0, Landroid/view/TextureView;

    if-eqz v3, :cond_40

    .line 278
    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_48

    .line 280
    :cond_40
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 281
    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 283
    :goto_48
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:crossfade:bitmap"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 287
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 288
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:crossfade:drawable"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-void
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2

    .line 298
    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    .line 299
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2

    .line 293
    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    .line 294
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 14

    .line 173
    const/4 p1, 0x0

    if-eqz p2, :cond_fd

    if-nez p3, :cond_7

    goto/16 :goto_fd

    .line 176
    :cond_7
    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    move v5, v2

    goto :goto_10

    :cond_f
    move v5, v1

    .line 177
    :goto_10
    iget-object v6, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 178
    iget-object p2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 179
    iget-object p3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 180
    const-string v0, "android:crossfade:bounds"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/graphics/Rect;

    .line 181
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 182
    const-string v3, "android:crossfade:bitmap"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 183
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 184
    const-string v7, "android:crossfade:drawable"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 185
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v8, p3

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 190
    if-eqz p2, :cond_fc

    if-eqz v8, :cond_fc

    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p3

    if-nez p3, :cond_fc

    .line 191
    if-eqz v5, :cond_59

    .line 192
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p3

    goto :goto_5d

    :cond_59
    invoke-virtual {v6}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p3

    .line 193
    :goto_5d
    iget v3, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    if-ne v3, v2, :cond_64

    .line 194
    invoke-virtual {p3, v8}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_64
    invoke-virtual {p3, p2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget p3, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const-string v3, "alpha"

    const/4 v4, 0x2

    if-ne p3, v4, :cond_79

    .line 204
    const/16 p3, 0xff

    filled-new-array {p3, v1, v1}, [I

    move-result-object p3

    invoke-static {p2, v3, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    goto :goto_81

    .line 206
    :cond_79
    filled-new-array {v1}, [I

    move-result-object p3

    invoke-static {p2, v3, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 208
    :goto_81
    new-instance v3, Landroid/transition/Crossfade$1;

    invoke-direct {v3, p0, v6, p2}, Landroid/transition/Crossfade$1;-><init>(Landroid/transition/Crossfade;Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p3, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 215
    nop

    .line 216
    iget v3, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    if-ne v3, v4, :cond_9b

    .line 218
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_fe

    invoke-static {v6, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_aa

    .line 219
    :cond_9b
    iget v3, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    if-nez v3, :cond_aa

    .line 220
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_108

    invoke-static {v6, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 226
    :cond_aa
    :goto_aa
    new-instance v3, Landroid/transition/Crossfade$2;

    move-object v4, p0

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Landroid/transition/Crossfade$2;-><init>(Landroid/transition/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p3, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 238
    new-array v3, v2, [Landroid/animation/Animator;

    aput-object p3, v3, v1

    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 239
    if-eqz p1, :cond_c9

    .line 240
    new-array p3, v2, [Landroid/animation/Animator;

    aput-object p1, p3, v1

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 242
    :cond_c9
    iget p1, v4, Landroid/transition/Crossfade;->mResizeBehavior:I

    if-ne p1, v2, :cond_fb

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fb

    .line 247
    sget-object p1, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    filled-new-array {v9, v0}, [Ljava/lang/Object;

    move-result-object p3

    const-string v3, "bounds"

    invoke-static {v7, v3, p1, p3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 249
    new-array p3, v2, [Landroid/animation/Animator;

    aput-object p1, p3, v1

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 250
    iget p1, v4, Landroid/transition/Crossfade;->mResizeBehavior:I

    if-ne p1, v2, :cond_fb

    .line 253
    sget-object p1, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    filled-new-array {v9, v0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v8, v3, p1, p3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 255
    new-array p3, v2, [Landroid/animation/Animator;

    aput-object p1, p3, v1

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 258
    :cond_fb
    return-object p2

    .line 260
    :cond_fc
    return-object p1

    .line 174
    :cond_fd
    :goto_fd
    return-object p1

    :array_fe
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_108
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public greylist-max-o getFadeBehavior()I
    .registers 2

    .line 140
    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return v0
.end method

.method public greylist-max-o getResizeBehavior()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    return v0
.end method

.method public greylist-max-o setFadeBehavior(I)Landroid/transition/Crossfade;
    .registers 3

    .line 127
    if-ltz p1, :cond_7

    const/4 v0, 0x2

    if-gt p1, v0, :cond_7

    .line 128
    iput p1, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    .line 130
    :cond_7
    return-object p0
.end method

.method public greylist-max-o setResizeBehavior(I)Landroid/transition/Crossfade;
    .registers 3

    .line 152
    if-ltz p1, :cond_7

    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 153
    iput p1, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    .line 155
    :cond_7
    return-object p0
.end method
