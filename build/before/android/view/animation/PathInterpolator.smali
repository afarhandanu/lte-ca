.class public Landroid/view/animation/PathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "PathInterpolator.java"

# interfaces
.implements Landroid/graphics/animation/NativeInterpolator;


# annotations
.annotation runtime Landroid/graphics/animation/HasNativeInterpolator;
.end annotation


# static fields
.field private static final greylist-max-o PRECISION:F = 0.002f


# instance fields
.field private greylist-max-o mX:[F

.field private greylist-max-o mY:[F


# direct methods
.method public constructor whitelist <init>(FF)V
    .registers 3

    .line 77
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    .line 79
    return-void
.end method

.method public constructor whitelist <init>(FFFF)V
    .registers 5

    .line 90
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    .line 92
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .registers 5

    .line 99
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 101
    if-eqz p2, :cond_d

    .line 102
    sget-object p1, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_13

    .line 104
    :cond_d
    sget-object p2, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 106
    :goto_13
    invoke-direct {p0, p1}, Landroid/view/animation/PathInterpolator;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V

    .line 107
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/animation/PathInterpolator;->setChangingConfiguration(I)V

    .line 108
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Path;)V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 67
    invoke-direct {p0, p1}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 68
    return-void
.end method

.method private greylist-max-o initCubic(FFFF)V
    .registers 12

    .line 157
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 159
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 160
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 161
    return-void
.end method

.method private greylist-max-o initPath(Landroid/graphics/Path;)V
    .registers 10

    .line 164
    const v0, 0x3b03126f    # 0.002f

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object p1

    .line 166
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    .line 167
    const/4 v1, 0x1

    aget v2, p1, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_75

    const/4 v2, 0x2

    aget v4, p1, v2

    cmpl-float v4, v4, v3

    if-nez v4, :cond_75

    array-length v4, p1

    sub-int/2addr v4, v2

    aget v2, p1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_75

    array-length v2, p1

    sub-int/2addr v2, v1

    aget v1, p1, v2

    cmpl-float v1, v1, v4

    if-nez v1, :cond_75

    .line 173
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    .line 174
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    .line 175
    nop

    .line 176
    nop

    .line 177
    nop

    .line 178
    const/4 v1, 0x0

    move v2, v1

    move v4, v3

    :goto_39
    if-ge v1, v0, :cond_74

    .line 179
    add-int/lit8 v5, v2, 0x1

    aget v2, p1, v2

    .line 180
    add-int/lit8 v6, v5, 0x1

    aget v5, p1, v5

    .line 181
    add-int/lit8 v7, v6, 0x1

    aget v6, p1, v6

    .line 182
    cmpl-float v3, v2, v3

    if-nez v3, :cond_58

    cmpl-float v3, v5, v4

    if-nez v3, :cond_50

    goto :goto_58

    .line 183
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Path cannot have discontinuity in the X axis."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_58
    :goto_58
    cmpg-float v3, v5, v4

    if-ltz v3, :cond_6c

    .line 189
    iget-object v3, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aput v5, v3, v1

    .line 190
    iget-object v3, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aput v6, v3, v1

    .line 191
    nop

    .line 192
    nop

    .line 178
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v4, v5

    move v2, v7

    goto :goto_39

    .line 187
    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Path cannot loop back on itself."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_74
    return-void

    .line 170
    :cond_75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o initQuad(FF)V
    .registers 5

    .line 150
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 151
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 152
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 153
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 154
    return-void
.end method

.method private greylist-max-o parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V
    .registers 9

    .line 114
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_15

    .line 121
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 122
    goto :goto_62

    .line 118
    :cond_15
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The path is null, which is created from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 125
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 128
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 129
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 131
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    .line 132
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    .line 134
    if-ne v4, v6, :cond_63

    .line 139
    if-nez v4, :cond_57

    .line 140
    invoke-direct {p0, v0, v1}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    goto :goto_62

    .line 142
    :cond_57
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 143
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 144
    invoke-direct {p0, v0, v1, v3, p1}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    .line 147
    :goto_62
    return-void

    .line 135
    :cond_63
    new-instance p1, Landroid/view/InflateException;

    const-string/jumbo v0, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_6c
    new-instance p1, Landroid/view/InflateException;

    const-string/jumbo v0, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_75
    new-instance p1, Landroid/view/InflateException;

    const-string/jumbo v0, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public greylist-max-o createNativeInterpolator()J
    .registers 3

    .line 242
    iget-object v0, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    iget-object v1, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    invoke-static {v0, v1}, Landroid/graphics/animation/NativeInterpolatorFactory;->createPathInterpolator([F[F)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolation(F)F
    .registers 8

    .line 208
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_6

    .line 209
    return v0

    .line 210
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_d

    .line 211
    return v1

    .line 214
    :cond_d
    nop

    .line 215
    iget-object v1, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    .line 217
    :goto_14
    sub-int v4, v1, v3

    if-le v4, v2, :cond_28

    .line 218
    add-int v4, v3, v1

    div-int/lit8 v4, v4, 0x2

    .line 219
    iget-object v5, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v5, v5, v4

    cmpg-float v5, p1, v5

    if-gez v5, :cond_26

    .line 220
    move v1, v4

    goto :goto_27

    .line 222
    :cond_26
    move v3, v4

    .line 224
    :goto_27
    goto :goto_14

    .line 226
    :cond_28
    iget-object v2, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v2, v2, v1

    iget-object v4, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v4, v4, v3

    sub-float/2addr v2, v4

    .line 227
    cmpl-float v0, v2, v0

    if-nez v0, :cond_3a

    .line 228
    iget-object p1, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget p1, p1, v3

    return p1

    .line 231
    :cond_3a
    iget-object v0, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v0, v0, v3

    sub-float/2addr p1, v0

    .line 232
    div-float/2addr p1, v2

    .line 234
    iget-object v0, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v0, v0, v3

    .line 235
    iget-object v2, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v1, v2, v1

    .line 236
    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method
