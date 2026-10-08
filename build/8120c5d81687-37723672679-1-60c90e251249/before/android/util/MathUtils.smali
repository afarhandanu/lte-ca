.class public final Landroid/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field private static final greylist-max-o DEG_TO_RAD:F = 0.017453292f

.field private static final greylist-max-o RAD_TO_DEG:F = 57.295784f


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static greylist abs(F)F
    .registers 2

    .line 37
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_6

    goto :goto_7

    :cond_6
    neg-float p0, p0

    :goto_7
    return p0
.end method

.method public static greylist-max-o acos(F)F
    .registers 3

    .line 145
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static greylist-max-o addOrThrow(II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 269
    if-nez p1, :cond_3

    .line 270
    return p0

    .line 273
    :cond_3
    if-lez p1, :cond_d

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    if-gt p0, v0, :cond_d

    .line 274
    add-int/2addr p0, p1

    return p0

    .line 277
    :cond_d
    if-gez p1, :cond_16

    const/high16 v0, -0x80000000

    sub-int/2addr v0, p1

    if-lt p0, v0, :cond_16

    .line 278
    add-int/2addr p0, p1

    return p0

    .line 280
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Addition overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " + "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o asin(F)F
    .registers 3

    .line 149
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static greylist-max-o atan(F)F
    .registers 3

    .line 153
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static greylist-max-o atan2(FF)F
    .registers 4

    .line 157
    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static greylist constrain(FFF)F
    .registers 4

    .line 51
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move p0, p1

    goto :goto_b

    :cond_6
    cmpl-float p1, p0, p2

    if-lez p1, :cond_b

    move p0, p2

    :cond_b
    :goto_b
    return p0
.end method

.method public static greylist constrain(III)I
    .registers 3

    .line 42
    if-ge p0, p1, :cond_4

    move p0, p1

    goto :goto_7

    :cond_4
    if-le p0, p2, :cond_7

    move p0, p2

    :cond_7
    :goto_7
    return p0
.end method

.method public static greylist-max-o constrain(JJJ)J
    .registers 7

    .line 46
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    move-wide p0, p2

    goto :goto_b

    :cond_6
    cmp-long p2, p0, p4

    if-lez p2, :cond_b

    move-wide p0, p4

    :cond_b
    :goto_b
    return-wide p0
.end method

.method public static blacklist constrainedMap(FFFFF)F
    .registers 5

    .line 245
    invoke-static {p2, p3, p4}, Landroid/util/MathUtils;->lerpInvSat(FFF)F

    move-result p2

    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public static greylist-max-o cross(FFFF)F
    .registers 4

    .line 133
    mul-float/2addr p0, p3

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    return p0
.end method

.method public static greylist-max-o degrees(F)F
    .registers 2

    .line 141
    const v0, 0x42652ee2

    mul-float/2addr p0, v0

    return p0
.end method

.method public static greylist-max-o dist(FFFF)F
    .registers 4

    .line 104
    sub-float/2addr p2, p0

    .line 105
    sub-float/2addr p3, p1

    .line 106
    float-to-double p0, p2

    float-to-double p2, p3

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static greylist-max-o dist(FFFFFF)F
    .registers 6

    .line 110
    sub-float/2addr p3, p0

    .line 111
    sub-float/2addr p4, p1

    .line 112
    sub-float/2addr p5, p2

    .line 113
    mul-float/2addr p3, p3

    mul-float/2addr p4, p4

    add-float/2addr p3, p4

    mul-float/2addr p5, p5

    add-float/2addr p3, p5

    float-to-double p0, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static greylist-max-o dot(FFFF)F
    .registers 4

    .line 129
    mul-float/2addr p0, p2

    mul-float/2addr p1, p3

    add-float/2addr p0, p1

    return p0
.end method

.method public static greylist-max-o exp(F)F
    .registers 3

    .line 59
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static blacklist fitRect(Landroid/graphics/Rect;I)V
    .registers 4

    .line 290
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 291
    return-void

    .line 293
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 294
    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 295
    return-void
.end method

.method public static greylist lerp(FFF)F
    .registers 3

    .line 166
    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static blacklist lerp(IIF)F
    .registers 3

    .line 170
    int-to-float p0, p0

    int-to-float p1, p1

    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public static greylist-max-o lerpDeg(FFF)F
    .registers 5

    .line 210
    sub-float/2addr p1, p0

    const/high16 v0, 0x43340000    # 180.0f

    add-float/2addr p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    sub-float/2addr p1, v0

    .line 211
    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    return p1
.end method

.method public static blacklist lerpInv(FFF)F
    .registers 4

    .line 180
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_8

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    :goto_9
    return p2
.end method

.method public static blacklist lerpInvSat(FFF)F
    .registers 3

    .line 190
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result p0

    invoke-static {p0}, Landroid/util/MathUtils;->saturate(F)F

    move-result p0

    return p0
.end method

.method public static greylist-max-o log(F)F
    .registers 3

    .line 55
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static greylist-max-o mag(FF)F
    .registers 4

    .line 117
    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static greylist-max-o mag(FFF)F
    .registers 3

    .line 121
    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static greylist-max-o map(FFFFF)F
    .registers 5

    .line 219
    sub-float/2addr p3, p2

    sub-float/2addr p4, p0

    sub-float/2addr p1, p0

    div-float/2addr p4, p1

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    return p2
.end method

.method public static greylist-max-o max(FF)F
    .registers 3

    .line 71
    cmpl-float v0, p0, p1

    if-lez v0, :cond_5

    goto :goto_6

    :cond_5
    move p0, p1

    :goto_6
    return p0
.end method

.method public static greylist-max-o max(FFF)F
    .registers 4

    .line 80
    cmpl-float v0, p0, p1

    if-lez v0, :cond_9

    cmpl-float p1, p0, p2

    if-lez p1, :cond_f

    goto :goto_10

    :cond_9
    cmpl-float p0, p1, p2

    if-lez p0, :cond_f

    move p0, p1

    goto :goto_10

    :cond_f
    move p0, p2

    :goto_10
    return p0
.end method

.method public static greylist max(II)F
    .registers 2

    .line 76
    if-le p0, p1, :cond_4

    int-to-float p0, p0

    goto :goto_5

    :cond_4
    int-to-float p0, p1

    :goto_5
    return p0
.end method

.method public static greylist-max-o max(III)F
    .registers 3

    .line 84
    if-le p0, p1, :cond_8

    if-le p0, p2, :cond_5

    goto :goto_6

    :cond_5
    move p0, p2

    :goto_6
    int-to-float p0, p0

    goto :goto_d

    :cond_8
    if-le p1, p2, :cond_b

    goto :goto_c

    :cond_b
    move p1, p2

    :goto_c
    int-to-float p0, p1

    :goto_d
    return p0
.end method

.method public static greylist-max-o min(FF)F
    .registers 3

    .line 88
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    goto :goto_6

    :cond_5
    move p0, p1

    :goto_6
    return p0
.end method

.method public static greylist-max-o min(FFF)F
    .registers 4

    .line 96
    cmpg-float v0, p0, p1

    if-gez v0, :cond_9

    cmpg-float p1, p0, p2

    if-gez p1, :cond_f

    goto :goto_10

    :cond_9
    cmpg-float p0, p1, p2

    if-gez p0, :cond_f

    move p0, p1

    goto :goto_10

    :cond_f
    move p0, p2

    :goto_10
    return p0
.end method

.method public static greylist-max-o min(II)F
    .registers 2

    .line 92
    if-ge p0, p1, :cond_4

    int-to-float p0, p0

    goto :goto_5

    :cond_4
    int-to-float p0, p1

    :goto_5
    return p0
.end method

.method public static greylist-max-o min(III)F
    .registers 3

    .line 100
    if-ge p0, p1, :cond_8

    if-ge p0, p2, :cond_5

    goto :goto_6

    :cond_5
    move p0, p2

    :goto_6
    int-to-float p0, p0

    goto :goto_d

    :cond_8
    if-ge p1, p2, :cond_b

    goto :goto_c

    :cond_b
    move p1, p2

    :goto_c
    int-to-float p0, p1

    :goto_d
    return p0
.end method

.method public static greylist-max-o norm(FFF)F
    .registers 3

    .line 215
    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method

.method public static greylist-max-o pow(FF)F
    .registers 4

    .line 63
    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static greylist-max-o radians(F)F
    .registers 2

    .line 137
    const v0, 0x3c8efa35

    mul-float/2addr p0, v0

    return p0
.end method

.method public static blacklist saturate(F)F
    .registers 3

    .line 185
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public static blacklist smoothStep(FFF)F
    .registers 3

    .line 260
    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    const/4 p0, 0x0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p2, p0, p1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public static greylist-max-o sq(F)F
    .registers 1

    .line 125
    mul-float/2addr p0, p0

    return p0
.end method

.method public static greylist-max-o sqrt(F)F
    .registers 3

    .line 67
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static greylist-max-o tan(F)F
    .registers 3

    .line 161
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
