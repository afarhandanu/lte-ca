.class public Landroid/view/animation/AnimationSet;
.super Landroid/view/animation/Animation;
.source "AnimationSet.java"


# static fields
.field private static final greylist-max-o PROPERTY_CHANGE_BOUNDS_MASK:I = 0x80

.field private static final greylist-max-o PROPERTY_DURATION_MASK:I = 0x20

.field private static final greylist-max-o PROPERTY_FILL_AFTER_MASK:I = 0x1

.field private static final greylist-max-o PROPERTY_FILL_BEFORE_MASK:I = 0x2

.field private static final greylist-max-o PROPERTY_MORPH_MATRIX_MASK:I = 0x40

.field private static final greylist-max-o PROPERTY_REPEAT_MODE_MASK:I = 0x4

.field private static final greylist-max-o PROPERTY_SHARE_INTERPOLATOR_MASK:I = 0x10

.field private static final greylist-max-o PROPERTY_START_OFFSET_MASK:I = 0x8


# instance fields
.field private greylist-max-o mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDirty:Z

.field private greylist-max-o mFlags:I

.field private greylist-max-o mHasAlpha:Z

.field private greylist-max-o mLastEnd:J

.field private greylist-max-o mStoredOffsets:[J

.field private greylist-max-o mTempTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 69
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 84
    sget-object v1, Lcom/android/internal/R$styleable;->AnimationSet:[I

    .line 85
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 87
    nop

    .line 88
    const/4 v1, 0x1

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 87
    const/16 v3, 0x10

    invoke-direct {p0, v3, v2}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    .line 89
    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xe

    if-lt p1, v2, :cond_6f

    .line 93
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 94
    iget p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 96
    :cond_3e
    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 97
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 99
    :cond_4a
    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_56

    .line 100
    iget p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr p1, v1

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 102
    :cond_56
    const/4 p1, 0x5

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_63

    .line 103
    iget p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 105
    :cond_63
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 106
    iget p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 110
    :cond_6f
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .registers 3

    .line 121
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 122
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    .line 123
    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    .line 124
    return-void
.end method

.method private greylist-max-o init()V
    .registers 3

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartTime:J

    .line 152
    return-void
.end method

.method private greylist-max-o setFlag(IZ)V
    .registers 3

    .line 143
    if-eqz p2, :cond_8

    .line 144
    iget p2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    goto :goto_e

    .line 146
    :cond_8
    iget p2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 148
    :goto_e
    return-void
.end method


# virtual methods
.method public whitelist addAnimation(Landroid/view/animation/Animation;)V
    .registers 9

    .line 220
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    .line 223
    :goto_10
    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 224
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 227
    :cond_1e
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_25

    move v1, v2

    .line 230
    :cond_25
    if-eqz v1, :cond_33

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 231
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 234
    :cond_33
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_42

    .line 235
    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_78

    .line 237
    :cond_42
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_5d

    .line 238
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    .line 239
    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_78

    .line 241
    :cond_5d
    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    .line 242
    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    .line 246
    :goto_78
    iput-boolean v2, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    .line 247
    return-void
.end method

.method protected bridge synthetic whitelist clone()Landroid/view/animation/Animation;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist clone()Landroid/view/animation/AnimationSet;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 128
    invoke-super {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 129
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 132
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 133
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 135
    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v1, :cond_31

    .line 136
    iget-object v4, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 139
    :cond_31
    return-object v0
.end method

.method protected bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist computeDurationHint()J
    .registers 8

    .line 325
    nop

    .line 326
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 327
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 328
    add-int/lit8 v0, v0, -0x1

    const-wide/16 v2, 0x0

    :goto_d
    if-ltz v0, :cond_21

    .line 329
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v4

    .line 330
    cmp-long v6, v4, v2

    if-lez v6, :cond_1e

    move-wide v2, v4

    .line 328
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 332
    :cond_21
    return-wide v2
.end method

.method public whitelist getAnimations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getDuration()J
    .registers 8

    .line 302
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 303
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 304
    nop

    .line 306
    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    move v2, v4

    .line 307
    :goto_12
    if-eqz v2, :cond_17

    .line 308
    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    goto :goto_2d

    .line 310
    :cond_17
    const-wide/16 v2, 0x0

    :goto_19
    if-ge v4, v1, :cond_2c

    .line 311
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 310
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_2c
    move-wide v0, v2

    .line 315
    :goto_2d
    return-wide v0
.end method

.method public blacklist getExtensionEdges()I
    .registers 4

    .line 546
    nop

    .line 547
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    .line 548
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getExtensionEdges()I

    move-result v2

    or-int/2addr v1, v2

    .line 549
    goto :goto_8

    .line 550
    :cond_1a
    return v1
.end method

.method public whitelist getStartTime()J
    .registers 8

    .line 269
    nop

    .line 271
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 272
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 274
    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v0, :cond_22

    .line 275
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    .line 276
    invoke-virtual {v5}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 274
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 279
    :cond_22
    return-wide v2
.end method

.method public whitelist getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 14

    .line 391
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 392
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 393
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 395
    nop

    .line 396
    nop

    .line 397
    nop

    .line 399
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    .line 401
    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    move v7, v3

    move v5, v4

    move v6, v5

    :goto_16
    if-ltz v0, :cond_4e

    .line 402
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/animation/Animation;

    .line 404
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 405
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getScaleFactor()F

    move-result v9

    invoke-virtual {v8, p1, p2, v2, v9}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v9

    if-nez v9, :cond_30

    if-eqz v6, :cond_2e

    goto :goto_30

    :cond_2e
    move v6, v4

    goto :goto_31

    :cond_30
    :goto_30
    move v6, v3

    .line 406
    :goto_31
    invoke-virtual {p3, v2}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 408
    if-nez v5, :cond_3f

    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_3d

    goto :goto_3f

    :cond_3d
    move v5, v4

    goto :goto_40

    :cond_3f
    :goto_3f
    move v5, v3

    .line 409
    :goto_40
    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v8

    if-eqz v8, :cond_4a

    if-eqz v7, :cond_4a

    move v7, v3

    goto :goto_4b

    :cond_4a
    move v7, v4

    .line 401
    :goto_4b
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 412
    :cond_4e
    if-eqz v5, :cond_59

    iget-boolean p1, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    if-nez p1, :cond_59

    .line 413
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->dispatchAnimationStart()V

    .line 414
    iput-boolean v3, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    .line 417
    :cond_59
    iget-boolean p1, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    if-eq v7, p1, :cond_62

    .line 418
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->dispatchAnimationEnd()V

    .line 419
    iput-boolean v7, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    .line 422
    :cond_62
    return v6
.end method

.method public blacklist getTransformationAt(FLandroid/view/animation/Transformation;)V
    .registers 6

    .line 372
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 374
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_20

    .line 375
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    .line 377
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 378
    invoke-virtual {v2, p1, v0}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 379
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 374
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 381
    :cond_20
    return-void
.end method

.method public greylist-max-o hasAlpha()Z
    .registers 5

    .line 183
    iget-boolean v0, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    if-eqz v0, :cond_27

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    .line 186
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 187
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 189
    nop

    :goto_12
    if-ge v0, v1, :cond_27

    .line 190
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    .line 192
    goto :goto_27

    .line 189
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 197
    :cond_27
    :goto_27
    iget-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    return v0
.end method

.method public whitelist initialize(IIII)V
    .registers 27

    .line 442
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 444
    iget v1, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_f

    move v1, v4

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 445
    :goto_10
    iget v2, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_17

    move v2, v4

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 446
    :goto_18
    iget v5, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_20

    move v5, v4

    goto :goto_21

    :cond_20
    const/4 v5, 0x0

    .line 447
    :goto_21
    iget v6, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/4 v7, 0x4

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_29

    move v6, v4

    goto :goto_2a

    :cond_29
    const/4 v6, 0x0

    .line 448
    :goto_2a
    iget v7, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v8, 0x10

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_33

    move v7, v4

    goto :goto_34

    :cond_33
    const/4 v7, 0x0

    .line 450
    :goto_34
    iget v8, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v9, 0x8

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v4, 0x0

    .line 453
    :goto_3d
    if-eqz v7, :cond_42

    .line 454
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->ensureInterpolator()V

    .line 457
    :cond_42
    iget-object v8, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 458
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 460
    iget-wide v10, v0, Landroid/view/animation/AnimationSet;->mDuration:J

    .line 461
    iget-boolean v12, v0, Landroid/view/animation/AnimationSet;->mFillAfter:Z

    .line 462
    iget-boolean v13, v0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    .line 463
    iget v14, v0, Landroid/view/animation/AnimationSet;->mRepeatMode:I

    .line 464
    iget-object v15, v0, Landroid/view/animation/AnimationSet;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 465
    move/from16 v17, v4

    iget-wide v3, v0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    .line 468
    move/from16 v18, v1

    iget-object v1, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    .line 469
    if-eqz v17, :cond_6b

    .line 470
    if-eqz v1, :cond_64

    move/from16 v19, v2

    array-length v2, v1

    if-eq v2, v9, :cond_72

    goto :goto_66

    :cond_64
    move/from16 v19, v2

    .line 471
    :goto_66
    new-array v1, v9, [J

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    goto :goto_72

    .line 473
    :cond_6b
    move/from16 v19, v2

    if-eqz v1, :cond_72

    .line 474
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    .line 477
    :cond_72
    :goto_72
    const/4 v0, 0x0

    :goto_73
    if-ge v0, v9, :cond_bf

    .line 478
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    .line 479
    if-eqz v18, :cond_80

    .line 480
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 482
    :cond_80
    if-eqz v19, :cond_85

    .line 483
    invoke-virtual {v2, v12}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 485
    :cond_85
    if-eqz v5, :cond_8a

    .line 486
    invoke-virtual {v2, v13}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 488
    :cond_8a
    if-eqz v6, :cond_8f

    .line 489
    invoke-virtual {v2, v14}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 491
    :cond_8f
    if-eqz v7, :cond_94

    .line 492
    invoke-virtual {v2, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 494
    :cond_94
    if-eqz v17, :cond_a6

    .line 495
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v20

    .line 496
    move/from16 v16, v0

    move-object/from16 p0, v1

    add-long v0, v20, v3

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 497
    aput-wide v20, p0, v16

    goto :goto_aa

    .line 494
    :cond_a6
    move/from16 v16, v0

    move-object/from16 p0, v1

    .line 499
    :goto_aa
    move/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v20, v3

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 477
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v1, p0

    move v0, v2

    move-wide/from16 v3, v20

    goto :goto_73

    .line 501
    :cond_bf
    return-void
.end method

.method public greylist-max-o initializeInvalidateRegion(IIII)V
    .registers 10

    .line 339
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mPreviousRegion:Landroid/graphics/RectF;

    .line 340
    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 341
    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 343
    iget-boolean p1, p0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    if-eqz p1, :cond_55

    .line 344
    iget-object p1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 345
    iget-object p2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 346
    iget-object p3, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 348
    iget-object p4, p0, Landroid/view/animation/AnimationSet;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 350
    add-int/lit8 p1, p1, -0x1

    :goto_20
    if-ltz p1, :cond_55

    .line 351
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 352
    invoke-virtual {v0}, Landroid/view/animation/Animation;->isFillEnabled()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getFillBefore()Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_52

    .line 353
    :cond_3e
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    .line 354
    iget-object v1, v0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 355
    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_4c

    .line 356
    :cond_4b
    nop

    .line 355
    :goto_4c
    invoke-virtual {v0, v2, p3}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 357
    invoke-virtual {p4, p3}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 350
    :cond_52
    add-int/lit8 p1, p1, -0x1

    goto :goto_20

    .line 361
    :cond_55
    return-void
.end method

.method public whitelist reset()V
    .registers 1

    .line 505
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    .line 506
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->restoreChildrenStartOffset()V

    .line 507
    return-void
.end method

.method greylist-max-o restoreChildrenStartOffset()V
    .registers 8

    .line 513
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    .line 514
    if-nez v0, :cond_5

    return-void

    .line 516
    :cond_5
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 517
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 519
    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1c

    .line 520
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    aget-wide v5, v0, v3

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 519
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 522
    :cond_1c
    return-void
.end method

.method public whitelist restrictDuration(J)V
    .registers 7

    .line 284
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 286
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 287
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 289
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    .line 290
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 292
    :cond_18
    return-void
.end method

.method public whitelist scaleCurrentDuration(F)V
    .registers 6

    .line 430
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 431
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 432
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    .line 433
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 435
    :cond_15
    return-void
.end method

.method public whitelist setDuration(J)V
    .registers 5

    .line 208
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 209
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 210
    iget-wide p1, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    .line 211
    return-void
.end method

.method public whitelist setFillAfter(Z)V
    .registers 3

    .line 156
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 157
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 158
    return-void
.end method

.method public whitelist setFillBefore(Z)V
    .registers 3

    .line 162
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 163
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 164
    return-void
.end method

.method public whitelist setRepeatMode(I)V
    .registers 3

    .line 168
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 169
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 170
    return-void
.end method

.method public whitelist setStartOffset(J)V
    .registers 4

    .line 174
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 175
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 176
    return-void
.end method

.method public whitelist setStartTime(J)V
    .registers 7

    .line 256
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 258
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 259
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 261
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_1a

    .line 262
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    .line 263
    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 265
    :cond_1a
    return-void
.end method

.method public whitelist willChangeBounds()Z
    .registers 3

    .line 539
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist willChangeTransformationMatrix()Z
    .registers 3

    .line 534
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
