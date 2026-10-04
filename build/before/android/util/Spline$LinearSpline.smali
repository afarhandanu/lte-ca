.class public Landroid/util/Spline$LinearSpline;
.super Landroid/util/Spline;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearSpline"
.end annotation


# instance fields
.field private final greylist-max-o mM:[F

.field private final greylist-max-o mX:[F

.field private final greylist-max-o mY:[F


# direct methods
.method public constructor greylist-max-o <init>([F[F)V
    .registers 10

    .line 237
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    .line 238
    if-eqz p1, :cond_31

    if-eqz p2, :cond_31

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_31

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_31

    .line 242
    array-length v0, p1

    .line 243
    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    .line 244
    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_2c

    .line 245
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    add-int/lit8 v3, v1, 0x1

    aget v4, p2, v3

    aget v5, p2, v1

    sub-float/2addr v4, v5

    aget v5, p1, v3

    aget v6, p1, v1

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    aput v4, v2, v1

    .line 244
    move v1, v3

    goto :goto_17

    .line 247
    :cond_2c
    iput-object p1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    .line 248
    iput-object p2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    .line 249
    return-void

    .line 239
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public greylist-max-o interpolate(F)F
    .registers 6

    .line 254
    iget-object v0, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    array-length v0, v0

    .line 255
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 256
    return p1

    .line 258
    :cond_a
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_18

    .line 259
    iget-object p1, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget p1, p1, v2

    return p1

    .line 261
    :cond_18
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_27

    .line 262
    iget-object p1, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget p1, p1, v0

    return p1

    .line 267
    :cond_27
    nop

    .line 268
    :goto_28
    iget-object v0, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_42

    .line 269
    nop

    .line 270
    iget-object v0, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_40

    .line 271
    iget-object p1, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget p1, p1, v1

    return p1

    .line 270
    :cond_40
    move v2, v1

    goto :goto_28

    .line 274
    :cond_42
    iget-object v0, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget v0, v0, v2

    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    aget v1, v1, v2

    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v2, v3, v2

    sub-float/2addr p1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    array-length v1, v1

    .line 281
    const-string v2, "LinearSpline{["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_48

    .line 283
    const-string v3, ", "

    if-eqz v2, :cond_17

    .line 284
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_17
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 288
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_40

    .line 289
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 291
    :cond_40
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 293
    :cond_48
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
