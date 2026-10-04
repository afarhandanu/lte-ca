.class public Landroid/transition/ArcMotion;
.super Landroid/transition/PathMotion;
.source "ArcMotion.java"


# static fields
.field private static final greylist-max-o DEFAULT_MAX_ANGLE_DEGREES:F = 70.0f

.field private static final greylist-max-o DEFAULT_MAX_TANGENT:F

.field private static final greylist-max-o DEFAULT_MIN_ANGLE_DEGREES:F


# instance fields
.field private greylist-max-o mMaximumAngle:F

.field private greylist-max-o mMaximumTangent:F

.field private greylist-max-o mMinimumHorizontalAngle:F

.field private greylist-max-o mMinimumHorizontalTangent:F

.field private greylist-max-o mMinimumVerticalAngle:F

.field private greylist-max-o mMinimumVerticalTangent:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 51
    nop

    .line 52
    const-wide v0, 0x4041800000000000L    # 35.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    .line 51
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 55
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 56
    const/high16 v1, 0x428c0000    # 70.0f

    iput v1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    .line 57
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 58
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 59
    sget v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    .line 61
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 55
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 56
    const/high16 v1, 0x428c0000    # 70.0f

    iput v1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    .line 57
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 58
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 59
    sget v2, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v2, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    .line 65
    sget-object v2, Lcom/android/internal/R$styleable;->ArcMotion:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 66
    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 68
    invoke-virtual {p0, p2}, Landroid/transition/ArcMotion;->setMinimumVerticalAngle(F)V

    .line 69
    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 71
    invoke-virtual {p0, p2}, Landroid/transition/ArcMotion;->setMinimumHorizontalAngle(F)V

    .line 72
    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 74
    invoke-virtual {p0, p2}, Landroid/transition/ArcMotion;->setMaximumAngle(F)V

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method private static greylist-max-o toTangent(F)F
    .registers 3

    .line 173
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_19

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_19

    .line 176
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    .line 174
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Arc must be between 0 and 90 degrees"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist getMaximumAngle()F
    .registers 2

    .line 169
    iget v0, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    return v0
.end method

.method public whitelist getMinimumHorizontalAngle()F
    .registers 2

    .line 107
    iget v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    return v0
.end method

.method public whitelist getMinimumVerticalAngle()F
    .registers 2

    .line 140
    iget v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    return v0
.end method

.method public whitelist getPath(FFFF)Landroid/graphics/Path;
    .registers 19

    .line 197
    move/from16 v1, p2

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 198
    invoke-virtual {v2, p1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 202
    sub-float v3, p3, p1

    .line 203
    sub-float v4, p4, v1

    .line 206
    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    .line 209
    add-float v6, p1, p3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 210
    add-float v8, v1, p4

    div-float/2addr v8, v7

    .line 213
    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v9, v5

    .line 215
    nop

    .line 217
    cmpl-float v10, v1, p4

    if-lez v10, :cond_25

    const/4 v10, 0x1

    goto :goto_26

    :cond_25
    const/4 v10, 0x0

    .line 219
    :goto_26
    const/4 v11, 0x0

    cmpl-float v12, v4, v11

    const/high16 v13, 0x3f000000    # 0.5f

    if-nez v12, :cond_3b

    .line 220
    nop

    .line 221
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v13

    iget v4, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v8

    move v4, v3

    move v3, v6

    move v5, v11

    goto :goto_81

    .line 222
    :cond_3b
    cmpl-float v12, v3, v11

    if-nez v12, :cond_4b

    .line 223
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v13

    iget v4, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    .line 224
    move v4, v8

    move v5, v11

    goto :goto_81

    .line 225
    :cond_4b
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6f

    .line 231
    mul-float/2addr v4, v7

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 232
    if-eqz v10, :cond_65

    .line 233
    add-float v3, p4, v3

    .line 234
    move v4, v3

    move/from16 v3, p3

    goto :goto_68

    .line 236
    :cond_65
    add-float/2addr v3, v1

    .line 237
    move v4, v3

    move v3, p1

    .line 240
    :goto_68
    iget v5, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float/2addr v5, v9

    iget v10, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float/2addr v5, v10

    .line 242
    goto :goto_81

    .line 244
    :cond_6f
    mul-float/2addr v3, v7

    div-float/2addr v5, v3

    .line 245
    if-eqz v10, :cond_77

    .line 246
    add-float v3, p1, v5

    .line 247
    move v4, v1

    goto :goto_7b

    .line 249
    :cond_77
    sub-float v3, p3, v5

    .line 250
    move/from16 v4, p4

    .line 253
    :goto_7b
    iget v5, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float/2addr v5, v9

    iget v10, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float/2addr v5, v10

    .line 256
    :goto_81
    sub-float v10, v6, v3

    .line 257
    sub-float v12, v8, v4

    .line 258
    mul-float/2addr v10, v10

    mul-float/2addr v12, v12

    add-float/2addr v10, v12

    .line 260
    iget v12, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    mul-float/2addr v9, v12

    iget v12, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    mul-float/2addr v9, v12

    .line 262
    nop

    .line 263
    cmpl-float v12, v10, v11

    if-eqz v12, :cond_98

    cmpg-float v12, v10, v5

    if-gez v12, :cond_98

    .line 264
    goto :goto_9f

    .line 265
    :cond_98
    cmpl-float v5, v10, v9

    if-lez v5, :cond_9e

    .line 266
    move v5, v9

    goto :goto_9f

    .line 265
    :cond_9e
    move v5, v11

    .line 268
    :goto_9f
    cmpl-float v9, v5, v11

    if-eqz v9, :cond_b1

    .line 269
    div-float/2addr v5, v10

    .line 270
    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v5, v9

    .line 271
    sub-float/2addr v3, v6

    mul-float/2addr v3, v5

    add-float/2addr v3, v6

    .line 272
    sub-float/2addr v4, v8

    mul-float/2addr v5, v4

    add-float v4, v8, v5

    .line 274
    :cond_b1
    add-float v0, p1, v3

    div-float/2addr v0, v7

    .line 275
    add-float/2addr v1, v4

    div-float/2addr v1, v7

    .line 276
    add-float v3, v3, p3

    div-float/2addr v3, v7

    .line 277
    add-float v4, v4, p4

    div-float/2addr v4, v7

    .line 278
    move v5, v1

    move v1, v0

    move-object v0, v2

    move v2, v5

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 279
    return-object v0
.end method

.method public whitelist setMaximumAngle(F)V
    .registers 2

    .line 154
    iput p1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    .line 155
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result p1

    iput p1, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    .line 156
    return-void
.end method

.method public whitelist setMinimumHorizontalAngle(F)V
    .registers 2

    .line 91
    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 92
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result p1

    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 93
    return-void
.end method

.method public whitelist setMinimumVerticalAngle(F)V
    .registers 2

    .line 123
    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 124
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result p1

    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 125
    return-void
.end method
