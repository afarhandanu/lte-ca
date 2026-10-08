.class public Landroid/transition/ChangeBounds;
.super Landroid/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final greylist-max-p BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final greylist-max-p POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final greylist-max-o PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final greylist-max-o PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final greylist-max-o PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final greylist-max-o PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final greylist-max-o TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sRectEvaluator:Landroid/animation/RectEvaluator;

.field private static final greylist-max-o sTransitionProperties:[Ljava/lang/String;


# instance fields
.field greylist-max-o mReparent:Z

.field greylist-max-o mResizeClip:Z

.field greylist-max-o tempLocation:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 63
    const-string v0, "android:changeBounds:windowX"

    const-string v1, "android:changeBounds:windowY"

    const-string v2, "android:changeBounds:bounds"

    const-string v3, "android:changeBounds:clip"

    const-string v4, "android:changeBounds:parent"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 71
    new-instance v0, Landroid/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 89
    new-instance v0, Landroid/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 102
    new-instance v0, Landroid/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Landroid/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 116
    new-instance v0, Landroid/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Landroid/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 133
    new-instance v0, Landroid/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 151
    new-instance v0, Landroid/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "position"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 173
    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 175
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 170
    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 175
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 178
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 170
    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 180
    sget-object v1, Lcom/android/internal/R$styleable;->ChangeBounds:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 181
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 182
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    invoke-virtual {p0, p2}, Landroid/transition/ChangeBounds;->setResizeClip(Z)V

    .line 184
    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .registers 9

    .line 239
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_77

    .line 242
    :cond_14
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 242
    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_68

    .line 246
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 247
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_68
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_77

    .line 251
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:clip"

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_77
    return-void
.end method

.method private greylist-max-o parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    .line 267
    nop

    .line 268
    iget-boolean v0, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 269
    invoke-virtual {p0, p1, v1}, Landroid/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v0

    .line 270
    const/4 v2, 0x0

    if-nez v0, :cond_12

    .line 271
    if-ne p1, p2, :cond_10

    goto :goto_18

    :cond_10
    move v1, v2

    goto :goto_18

    .line 273
    :cond_12
    iget-object p1, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, p1, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    .line 276
    :cond_18
    :goto_18
    return v1
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2

    .line 263
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 264
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2

    .line 258
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 259
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 24

    .line 284
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    if-eqz v0, :cond_282

    if-nez v2, :cond_e

    const/16 v17, 0x0

    goto/16 :goto_284

    .line 287
    :cond_e
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 288
    iget-object v5, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 289
    const-string v6, "android:changeBounds:parent"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 290
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 291
    if-eqz v4, :cond_27f

    if-nez v5, :cond_26

    goto/16 :goto_27f

    .line 294
    :cond_26
    iget-object v6, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 295
    invoke-direct {v1, v4, v5}, Landroid/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1c6

    .line 296
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeBounds:bounds"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 297
    iget-object v9, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 298
    iget v9, v4, Landroid/graphics/Rect;->left:I

    .line 299
    iget v10, v8, Landroid/graphics/Rect;->left:I

    .line 300
    iget v11, v4, Landroid/graphics/Rect;->top:I

    .line 301
    iget v12, v8, Landroid/graphics/Rect;->top:I

    .line 302
    iget v13, v4, Landroid/graphics/Rect;->right:I

    .line 303
    iget v14, v8, Landroid/graphics/Rect;->right:I

    .line 304
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 305
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 306
    sub-int v15, v13, v9

    .line 307
    const/16 v16, 0x0

    sub-int v7, v4, v11

    .line 308
    sub-int v3, v14, v10

    .line 309
    sub-int v5, v8, v12

    .line 310
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move/from16 p1, v5

    const-string v5, "android:changeBounds:clip"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 311
    iget-object v2, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 312
    nop

    .line 313
    if-eqz v15, :cond_73

    if-nez v7, :cond_77

    :cond_73
    if-eqz v3, :cond_87

    if-eqz p1, :cond_87

    .line 314
    :cond_77
    if-ne v9, v10, :cond_7f

    if-eq v11, v12, :cond_7c

    goto :goto_7f

    :cond_7c
    move/from16 v5, v16

    goto :goto_80

    :cond_7f
    :goto_7f
    const/4 v5, 0x1

    .line 315
    :goto_80
    if-ne v13, v14, :cond_84

    if-eq v4, v8, :cond_89

    :cond_84
    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    .line 317
    :cond_87
    move/from16 v5, v16

    :cond_89
    :goto_89
    if-eqz v0, :cond_91

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_95

    :cond_91
    if-nez v0, :cond_97

    if-eqz v2, :cond_97

    .line 319
    :cond_95
    add-int/lit8 v5, v5, 0x1

    .line 321
    :cond_97
    if-lez v5, :cond_1c5

    .line 322
    move-object/from16 p2, v0

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b8

    .line 323
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 324
    move-object/from16 p3, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 325
    new-instance v2, Landroid/transition/ChangeBounds$7;

    invoke-direct {v2, v1, v0}, Landroid/transition/ChangeBounds$7;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 352
    invoke-virtual {v1, v2}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_ba

    .line 322
    :cond_b8
    move-object/from16 p3, v2

    .line 355
    :goto_ba
    iget-boolean v0, v1, Landroid/transition/ChangeBounds;->mResizeClip:Z

    if-nez v0, :cond_154

    .line 356
    invoke-virtual {v6, v9, v11, v13, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 357
    const/4 v0, 0x2

    if-ne v5, v0, :cond_125

    .line 358
    if-ne v15, v3, :cond_df

    move/from16 v2, p1

    if-ne v7, v2, :cond_df

    .line 359
    invoke-virtual {v1}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    int-to-float v1, v9

    int-to-float v2, v11

    int-to-float v3, v10

    int-to-float v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 361
    sget-object v1, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    const/4 v2, 0x0

    invoke-static {v6, v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 363
    goto/16 :goto_1c4

    .line 364
    :cond_df
    new-instance v2, Landroid/transition/ChangeBounds$ViewBounds;

    invoke-direct {v2, v6}, Landroid/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 365
    invoke-virtual {v1}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v3

    int-to-float v5, v9

    int-to-float v6, v11

    int-to-float v7, v10

    int-to-float v9, v12

    invoke-virtual {v3, v5, v6, v7, v9}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    .line 367
    sget-object v5, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 368
    const/4 v6, 0x0

    invoke-static {v2, v5, v6, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 370
    invoke-virtual {v1}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v5

    int-to-float v7, v13

    int-to-float v4, v4

    int-to-float v9, v14

    int-to-float v8, v8

    invoke-virtual {v5, v7, v4, v9, v8}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v4

    .line 372
    sget-object v5, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    invoke-static {v2, v5, v6, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 374
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 375
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v16

    const/16 v18, 0x1

    aput-object v4, v0, v18

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 376
    nop

    .line 377
    new-instance v0, Landroid/transition/ChangeBounds$8;

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$8;-><init>(Landroid/transition/ChangeBounds;Landroid/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 382
    move-object v0, v5

    goto/16 :goto_1c4

    .line 383
    :cond_125
    if-ne v9, v10, :cond_13f

    if-eq v11, v12, :cond_12a

    goto :goto_13f

    .line 389
    :cond_12a
    invoke-virtual {v1}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    int-to-float v1, v13

    int-to-float v2, v4

    int-to-float v3, v14

    int-to-float v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 391
    sget-object v1, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    const/4 v2, 0x0

    invoke-static {v6, v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 393
    goto/16 :goto_1c4

    .line 384
    :cond_13f
    :goto_13f
    invoke-virtual {v1}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    int-to-float v1, v9

    int-to-float v2, v11

    int-to-float v3, v10

    int-to-float v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 386
    sget-object v1, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    const/4 v2, 0x0

    invoke-static {v6, v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 388
    goto/16 :goto_1c4

    .line 395
    :cond_154
    move/from16 v2, p1

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 396
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 398
    add-int/2addr v0, v9

    add-int/2addr v4, v11

    invoke-virtual {v6, v9, v11, v0, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 401
    nop

    .line 402
    if-ne v9, v10, :cond_16b

    if-eq v11, v12, :cond_169

    goto :goto_16b

    :cond_169
    const/4 v9, 0x0

    goto :goto_17f

    .line 403
    :cond_16b
    :goto_16b
    invoke-virtual {v1}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    int-to-float v4, v9

    int-to-float v5, v11

    int-to-float v9, v10

    int-to-float v11, v12

    invoke-virtual {v0, v4, v5, v9, v11}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 405
    sget-object v4, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object v9, v0

    .line 408
    :goto_17f
    nop

    .line 409
    if-nez p2, :cond_18a

    .line 410
    new-instance v0, Landroid/graphics/Rect;

    move/from16 v4, v16

    invoke-direct {v0, v4, v4, v15, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_18e

    .line 409
    :cond_18a
    move/from16 v4, v16

    move-object/from16 v0, p2

    .line 412
    :goto_18e
    if-nez p3, :cond_196

    .line 413
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4, v4, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_198

    .line 412
    :cond_196
    move-object/from16 v5, p3

    .line 415
    :goto_198
    nop

    .line 416
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bf

    .line 417
    invoke-virtual {v6, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 418
    sget-object v2, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "clipBounds"

    invoke-static {v6, v3, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 420
    new-instance v0, Landroid/transition/ChangeBounds$9;

    move-object/from16 v3, p3

    move-object v2, v6

    move v7, v8

    move v4, v10

    move v5, v12

    move v6, v14

    invoke-direct/range {v0 .. v7}, Landroid/transition/ChangeBounds$9;-><init>(Landroid/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v3, v11

    goto :goto_1c0

    .line 416
    :cond_1bf
    const/4 v3, 0x0

    .line 438
    :goto_1c0
    invoke-static {v9, v3}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    .line 441
    :goto_1c4
    return-object v0

    .line 443
    :cond_1c5
    goto :goto_223

    .line 444
    :cond_1c6
    move-object v4, v6

    iget-object v3, v1, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v5, p1

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 445
    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeBounds:windowX"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v7, v1, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/16 v16, 0x0

    aget v7, v7, v16

    sub-int/2addr v3, v7

    .line 446
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeBounds:windowY"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v8, v1, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/16 v18, 0x1

    aget v8, v8, v18

    sub-int/2addr v0, v8

    .line 447
    iget-object v8, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v8, v1, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/16 v16, 0x0

    aget v8, v8, v16

    sub-int/2addr v6, v8

    .line 448
    iget-object v2, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v7, v1, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/16 v18, 0x1

    aget v7, v7, v18

    sub-int/2addr v2, v7

    .line 450
    if-ne v3, v6, :cond_226

    if-eq v0, v2, :cond_223

    goto :goto_226

    .line 475
    :cond_223
    :goto_223
    const/16 v17, 0x0

    return-object v17

    .line 451
    :cond_226
    :goto_226
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 452
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 453
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 454
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 455
    invoke-virtual {v4, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 456
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 457
    add-int/2addr v7, v3

    add-int/2addr v8, v0

    invoke-virtual {v10, v3, v0, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 458
    invoke-virtual {v4}, Landroid/view/View;->getTransitionAlpha()F

    move-result v5

    .line 459
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 460
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 461
    invoke-virtual {v1}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v7

    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v6, v6

    int-to-float v2, v2

    invoke-virtual {v7, v3, v0, v6, v2}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 462
    sget-object v2, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    const/4 v6, 0x0

    invoke-static {v2, v6, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 464
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    invoke-static {v10, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 465
    new-instance v0, Landroid/transition/ChangeBounds$10;

    move-object/from16 v2, p1

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Landroid/transition/ChangeBounds$10;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 472
    return-object v6

    .line 292
    :cond_27f
    :goto_27f
    const/16 v17, 0x0

    return-object v17

    .line 284
    :cond_282
    const/16 v17, 0x0

    .line 285
    :goto_284
    return-object v17
.end method

.method public whitelist getResizeClip()Z
    .registers 2

    .line 218
    iget-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 188
    sget-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setReparent(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 236
    return-void
.end method

.method public whitelist setResizeClip(Z)V
    .registers 2

    .line 206
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 207
    return-void
.end method
