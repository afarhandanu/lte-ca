.class public Landroid/view/animation/ScaleAnimation;
.super Landroid/view/animation/Animation;
.source "ScaleAnimation.java"


# instance fields
.field private greylist-max-o mFromX:F

.field private greylist-max-o mFromXData:I

.field private greylist-max-o mFromXType:I

.field private greylist-max-o mFromY:F

.field private greylist-max-o mFromYData:I

.field private greylist-max-o mFromYType:I

.field private greylist-max-o mPivotX:F

.field private greylist-max-o mPivotXType:I

.field private greylist-max-o mPivotXValue:F

.field private greylist-max-o mPivotY:F

.field private greylist-max-o mPivotYType:I

.field private greylist-max-o mPivotYValue:F

.field private final greylist-max-o mResources:Landroid/content/res/Resources;

.field private greylist-max-o mToX:F

.field private greylist-max-o mToXData:I

.field private greylist-max-o mToXType:I

.field private greylist-max-o mToY:F

.field private greylist-max-o mToYData:I

.field private greylist-max-o mToYType:I


# direct methods
.method public constructor whitelist <init>(FFFF)V
    .registers 7

    .line 145
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 147
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 148
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 149
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 150
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 151
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 152
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 153
    return-void
.end method

.method public constructor whitelist <init>(FFFFFF)V
    .registers 9

    .line 172
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 174
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 175
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 176
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 177
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 179
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 180
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 181
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 182
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 183
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    .line 184
    return-void
.end method

.method public constructor whitelist <init>(FFFFIFIF)V
    .registers 10

    .line 213
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 215
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 216
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 217
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 218
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 220
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 221
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 222
    iput p8, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 223
    iput p7, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 224
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    .line 225
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 67
    sget-object v2, Lcom/android/internal/R$styleable;->ScaleAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 70
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 72
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 73
    const/4 v3, 0x4

    if-eqz v2, :cond_46

    .line 74
    iget v4, v2, Landroid/util/TypedValue;->type:I

    if-ne v4, v3, :cond_3e

    .line 76
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    goto :goto_46

    .line 78
    :cond_3e
    iget v4, v2, Landroid/util/TypedValue;->type:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 79
    iget v2, v2, Landroid/util/TypedValue;->data:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 82
    :cond_46
    :goto_46
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 84
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 85
    if-eqz v2, :cond_62

    .line 86
    iget v4, v2, Landroid/util/TypedValue;->type:I

    if-ne v4, v3, :cond_5a

    .line 88
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    goto :goto_62

    .line 90
    :cond_5a
    iget v4, v2, Landroid/util/TypedValue;->type:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 91
    iget v2, v2, Landroid/util/TypedValue;->data:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 95
    :cond_62
    :goto_62
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 97
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 98
    if-eqz v2, :cond_7d

    .line 99
    iget v4, v2, Landroid/util/TypedValue;->type:I

    if-ne v4, v3, :cond_75

    .line 101
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    goto :goto_7d

    .line 103
    :cond_75
    iget v4, v2, Landroid/util/TypedValue;->type:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 104
    iget v2, v2, Landroid/util/TypedValue;->data:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 107
    :cond_7d
    :goto_7d
    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 109
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 110
    if-eqz v2, :cond_99

    .line 111
    iget v1, v2, Landroid/util/TypedValue;->type:I

    if-ne v1, v3, :cond_91

    .line 113
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    goto :goto_99

    .line 115
    :cond_91
    iget v1, v2, Landroid/util/TypedValue;->type:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 116
    iget v1, v2, Landroid/util/TypedValue;->data:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 120
    :cond_99
    :goto_99
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 122
    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 123
    iget v0, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object p1

    .line 127
    iget v0, p1, Landroid/view/animation/Animation$Description;->type:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 128
    iget p1, p1, Landroid/view/animation/Animation$Description;->value:F

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 130
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    .line 133
    return-void
.end method

.method private greylist-max-o initializePivotPoint()V
    .registers 2

    .line 232
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    if-nez v0, :cond_8

    .line 233
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 235
    :cond_8
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    if-nez v0, :cond_10

    .line 236
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 238
    :cond_10
    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 8

    .line 242
    nop

    .line 243
    nop

    .line 244
    invoke-virtual {p0}, Landroid/view/animation/ScaleAnimation;->getScaleFactor()F

    move-result v0

    .line 246
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_17

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    move v1, v2

    goto :goto_20

    .line 247
    :cond_17
    :goto_17
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    .line 249
    :goto_20
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_2c

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_35

    .line 250
    :cond_2c
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 253
    :cond_35
    iget p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4a

    iget p1, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4a

    .line 254
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_57

    .line 256
    :cond_4a
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget p2, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    mul-float/2addr p2, v0

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    mul-float/2addr v0, v3

    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 258
    :goto_57
    return-void
.end method

.method public whitelist initialize(IIII)V
    .registers 12

    .line 279
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 281
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result p1

    iput p1, v0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 282
    iget v1, v0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v2, v0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iget v3, v0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result p1

    move p3, v4

    move v6, v5

    iput p1, v0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 283
    iget v1, v0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v2, v0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iget v3, v0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result p1

    iput p1, v0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 284
    iget v1, v0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v2, v0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iget v3, v0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result p1

    iput p1, v0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 286
    iget p1, v0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iget p2, v0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    invoke-virtual {p0, p1, p2, p3, v6}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result p1

    iput p1, v0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 287
    iget p1, v0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iget p2, v0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {p0, p1, p2, v4, v5}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result p1

    iput p1, v0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 288
    return-void
.end method

.method greylist-max-o resolveScale(FIIII)F
    .registers 7

    .line 262
    const/4 v0, 0x6

    if-ne p2, v0, :cond_a

    .line 263
    int-to-float p1, p4

    int-to-float p2, p5

    invoke-static {p3, p1, p2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result p1

    goto :goto_17

    .line 264
    :cond_a
    const/4 p5, 0x5

    if-ne p2, p5, :cond_1f

    .line 265
    iget-object p1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p1

    .line 270
    :goto_17
    if-nez p4, :cond_1c

    .line 271
    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    .line 274
    :cond_1c
    int-to-float p2, p4

    div-float/2addr p1, p2

    return p1

    .line 267
    :cond_1f
    return p1
.end method
