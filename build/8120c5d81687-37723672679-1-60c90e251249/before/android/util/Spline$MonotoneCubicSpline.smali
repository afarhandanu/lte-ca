.class public Landroid/util/Spline$MonotoneCubicSpline;
.super Landroid/util/Spline;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonotoneCubicSpline"
.end annotation


# instance fields
.field private greylist-max-o mM:[F

.field private greylist-max-o mX:[F

.field private greylist-max-o mY:[F


# direct methods
.method public constructor greylist-max-o <init>([F[F)V
    .registers 15

    .line 129
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    .line 130
    if-eqz p1, :cond_a1

    if-eqz p2, :cond_a1

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_a1

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a1

    .line 135
    array-length v0, p1

    .line 136
    add-int/lit8 v2, v0, -0x1

    new-array v3, v2, [F

    .line 137
    new-array v4, v0, [F

    .line 140
    const/4 v5, 0x0

    move v6, v5

    :goto_18
    const/4 v7, 0x0

    if-ge v6, v2, :cond_38

    .line 141
    add-int/lit8 v8, v6, 0x1

    aget v9, p1, v8

    aget v10, p1, v6

    sub-float/2addr v9, v10

    .line 142
    cmpg-float v7, v9, v7

    if-lez v7, :cond_30

    .line 146
    aget v7, p2, v8

    aget v10, p2, v6

    sub-float/2addr v7, v10

    div-float/2addr v7, v9

    aput v7, v3, v6

    .line 140
    move v6, v8

    goto :goto_18

    .line 143
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The control points must all have strictly increasing X values."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_38
    aget v6, v3, v5

    aput v6, v4, v5

    .line 151
    const/4 v6, 0x1

    :goto_3d
    if-ge v6, v2, :cond_4e

    .line 152
    add-int/lit8 v8, v6, -0x1

    aget v8, v3, v8

    aget v9, v3, v6

    add-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    aput v8, v4, v6

    .line 151
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    .line 154
    :cond_4e
    sub-int/2addr v0, v1

    aget v0, v3, v0

    aput v0, v4, v2

    .line 157
    nop

    :goto_54
    if-ge v5, v2, :cond_9a

    .line 158
    aget v0, v3, v5

    cmpl-float v0, v0, v7

    if-nez v0, :cond_63

    .line 159
    aput v7, v4, v5

    .line 160
    add-int/lit8 v0, v5, 0x1

    aput v7, v4, v0

    goto :goto_8f

    .line 162
    :cond_63
    aget v0, v4, v5

    aget v1, v3, v5

    div-float/2addr v0, v1

    .line 163
    add-int/lit8 v1, v5, 0x1

    aget v6, v4, v1

    aget v8, v3, v5

    div-float/2addr v6, v8

    .line 164
    cmpg-float v8, v0, v7

    if-ltz v8, :cond_92

    cmpg-float v8, v6, v7

    if-ltz v8, :cond_92

    .line 168
    float-to-double v8, v0

    float-to-double v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v0, v8

    .line 169
    const/high16 v6, 0x40400000    # 3.0f

    cmpl-float v8, v0, v6

    if-lez v8, :cond_8f

    .line 170
    div-float/2addr v6, v0

    .line 171
    aget v0, v4, v5

    mul-float/2addr v0, v6

    aput v0, v4, v5

    .line 172
    aget v0, v4, v1

    mul-float/2addr v0, v6

    aput v0, v4, v1

    .line 157
    :cond_8f
    :goto_8f
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 165
    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The control points must have monotonic Y values."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_9a
    iput-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    .line 178
    iput-object p2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    .line 179
    iput-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    .line 180
    return-void

    .line 131
    :cond_a1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public greylist-max-o interpolate(F)F
    .registers 9

    .line 185
    iget-object v0, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v0, v0

    .line 186
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 187
    return p1

    .line 189
    :cond_a
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_18

    .line 190
    iget-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget p1, p1, v2

    return p1

    .line 192
    :cond_18
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_27

    .line 193
    iget-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget p1, p1, v0

    return p1

    .line 198
    :cond_27
    nop

    .line 199
    :goto_28
    iget-object v0, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_42

    .line 200
    nop

    .line 201
    iget-object v0, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_40

    .line 202
    iget-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget p1, p1, v1

    return p1

    .line 201
    :cond_40
    move v2, v1

    goto :goto_28

    .line 207
    :cond_42
    iget-object v0, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v0, v0, v1

    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v3, v3, v2

    sub-float/2addr v0, v3

    .line 208
    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v3, v3, v2

    sub-float/2addr p1, v3

    div-float/2addr p1, v0

    .line 209
    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v3, v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v6, v4, v5

    mul-float/2addr v3, v6

    iget-object v6, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v2, v6, v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v3, v2

    sub-float v2, v5, p1

    mul-float/2addr v3, v2

    mul-float/2addr v3, v2

    iget-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v2, v2, v1

    const/high16 v6, 0x40400000    # 3.0f

    sub-float/2addr v6, v4

    mul-float/2addr v2, v6

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v1, v4, v1

    mul-float/2addr v0, v1

    sub-float v1, p1, v5

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    add-float/2addr v3, v2

    return v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v1, v1

    .line 218
    const-string v2, "MonotoneCubicSpline{["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_45

    .line 220
    const-string v3, ", "

    if-eqz v2, :cond_17

    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_17
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 225
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 227
    :cond_45
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
