.class public Landroid/view/animation/GridLayoutAnimationController;
.super Landroid/view/animation/LayoutAnimationController;
.source "GridLayoutAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    }
.end annotation


# static fields
.field public static final whitelist DIRECTION_BOTTOM_TO_TOP:I = 0x2

.field public static final whitelist DIRECTION_HORIZONTAL_MASK:I = 0x1

.field public static final whitelist DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final whitelist DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final whitelist DIRECTION_TOP_TO_BOTTOM:I = 0x0

.field public static final whitelist DIRECTION_VERTICAL_MASK:I = 0x2

.field public static final whitelist PRIORITY_COLUMN:I = 0x1

.field public static final whitelist PRIORITY_NONE:I = 0x0

.field public static final whitelist PRIORITY_ROW:I = 0x2


# instance fields
.field private greylist-max-o mColumnDelay:F

.field private greylist-max-o mDirection:I

.field private greylist-max-o mDirectionPriority:I

.field private greylist-max-o mRowDelay:F


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    sget-object v0, Lcom/android/internal/R$styleable;->GridLayoutAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 118
    nop

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 118
    invoke-static {v1, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 121
    iget v1, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    .line 122
    nop

    .line 123
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 122
    invoke-static {v1, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object p1

    .line 125
    iget p1, p1, Landroid/view/animation/Animation$Description;->value:F

    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    .line 127
    const/4 p1, 0x2

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    .line 129
    const/4 p1, 0x3

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    .line 132
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/animation/Animation;)V
    .registers 3

    .line 142
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0, v0}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/view/animation/Animation;FF)V

    .line 143
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/animation/Animation;FF)V
    .registers 4

    .line 154
    invoke-direct {p0, p1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 155
    iput p2, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    .line 156
    iput p3, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    .line 157
    return-void
.end method

.method private greylist-max-o getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .registers 5

    .line 348
    invoke-virtual {p0}, Landroid/view/animation/GridLayoutAnimationController;->getOrder()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_34

    .line 360
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    goto :goto_29

    .line 353
    :pswitch_b
    iget-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-nez v0, :cond_16

    .line 354
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 356
    :cond_16
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 357
    goto :goto_29

    .line 350
    :pswitch_22
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    sub-int/2addr v0, v1

    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    sub-int/2addr v0, v2

    .line 351
    nop

    .line 364
    :goto_29
    iget v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    and-int/2addr v2, v1

    .line 365
    if-ne v2, v1, :cond_33

    .line 366
    iget p1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    sub-int/2addr p1, v1

    sub-int v0, p1, v0

    .line 369
    :cond_33
    return v0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_22
        :pswitch_b
    .end packed-switch
.end method

.method private greylist-max-o getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .registers 5

    .line 374
    invoke-virtual {p0}, Landroid/view/animation/GridLayoutAnimationController;->getOrder()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    .line 386
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_29

    .line 379
    :pswitch_a
    iget-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-nez v0, :cond_15

    .line 380
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 382
    :cond_15
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 383
    goto :goto_29

    .line 376
    :pswitch_21
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    sub-int/2addr v0, v1

    .line 377
    nop

    .line 390
    :goto_29
    iget v1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    .line 391
    if-ne v1, v2, :cond_35

    .line 392
    iget p1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 p1, p1, -0x1

    sub-int v0, p1, v0

    .line 395
    :cond_35
    return v0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_21
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public whitelist getColumnDelay()F
    .registers 2

    .line 171
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    return v0
.end method

.method protected whitelist getDelayForView(Landroid/view/View;)J
    .registers 8

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 301
    iget-object p1, p1, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 303
    if-nez p1, :cond_d

    .line 304
    const-wide/16 v0, 0x0

    return-wide v0

    .line 307
    :cond_d
    invoke-direct {p0, p1}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    move-result v0

    .line 308
    invoke-direct {p0, p1}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    move-result v1

    .line 310
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 311
    iget p1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 313
    iget-object v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    .line 314
    iget v5, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    long-to-float v3, v3

    mul-float/2addr v5, v3

    .line 315
    iget v4, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    mul-float/2addr v4, v3

    .line 320
    iget-object v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_31

    .line 321
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 324
    :cond_31
    iget v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    packed-switch v3, :pswitch_data_6a

    .line 335
    int-to-float v0, v0

    mul-float/2addr v0, v5

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-long v0, v0

    .line 336
    int-to-float p1, p1

    mul-float/2addr p1, v5

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float v3, p1, v2

    goto :goto_5f

    .line 330
    :pswitch_43
    int-to-float v0, v0

    mul-float/2addr v0, v5

    mul-int/2addr v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    float-to-long v0, v0

    .line 331
    int-to-float v3, p1

    mul-float/2addr v3, v5

    mul-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr p1, v5

    add-float/2addr v3, p1

    .line 332
    goto :goto_5f

    .line 326
    :pswitch_51
    int-to-float v1, v1

    mul-float/2addr v1, v4

    mul-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    float-to-long v0, v1

    .line 327
    int-to-float v3, v2

    mul-float/2addr v3, v4

    mul-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr p1, v4

    add-float/2addr v3, p1

    .line 328
    nop

    .line 340
    :goto_5f
    long-to-float p1, v0

    div-float/2addr p1, v3

    .line 341
    iget-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 343
    mul-float/2addr p1, v3

    float-to-long v0, p1

    return-wide v0

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_51
        :pswitch_43
    .end packed-switch
.end method

.method public whitelist getDirection()I
    .registers 2

    .line 233
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    return v0
.end method

.method public whitelist getDirectionPriority()I
    .registers 2

    .line 268
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    return v0
.end method

.method public whitelist getRowDelay()F
    .registers 2

    .line 200
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return v0
.end method

.method public whitelist setColumnDelay(F)V
    .registers 2

    .line 185
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    .line 186
    return-void
.end method

.method public whitelist setDirection(I)V
    .registers 2

    .line 252
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    .line 253
    return-void
.end method

.method public whitelist setDirectionPriority(I)V
    .registers 2

    .line 284
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    .line 285
    return-void
.end method

.method public whitelist setRowDelay(F)V
    .registers 2

    .line 214
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    .line 215
    return-void
.end method

.method public whitelist willOverlap()Z
    .registers 3

    .line 292
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_11

    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
