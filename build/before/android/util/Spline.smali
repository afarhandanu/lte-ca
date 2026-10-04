.class public abstract Landroid/util/Spline;
.super Ljava/lang/Object;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Spline$MonotoneCubicSpline;,
        Landroid/util/Spline$LinearSpline;
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o createLinearSpline([F[F)Landroid/util/Spline;
    .registers 3

    .line 91
    new-instance v0, Landroid/util/Spline$LinearSpline;

    invoke-direct {v0, p0, p1}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    return-object v0
.end method

.method public static greylist-max-o createMonotoneCubicSpline([F[F)Landroid/util/Spline;
    .registers 3

    .line 72
    new-instance v0, Landroid/util/Spline$MonotoneCubicSpline;

    invoke-direct {v0, p0, p1}, Landroid/util/Spline$MonotoneCubicSpline;-><init>([F[F)V

    return-object v0
.end method

.method public static greylist-max-o createSpline([F[F)Landroid/util/Spline;
    .registers 3

    .line 41
    invoke-static {p0}, Landroid/util/Spline;->isStrictlyIncreasing([F)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 46
    invoke-static {p1}, Landroid/util/Spline;->isMonotonic([F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 47
    invoke-static {p0, p1}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p0

    return-object p0

    .line 49
    :cond_11
    invoke-static {p0, p1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p0

    return-object p0

    .line 42
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The control points must all have strictly increasing X values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o isMonotonic([F)Z
    .registers 6

    .line 110
    if-eqz p0, :cond_1b

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1b

    .line 113
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 114
    const/4 v2, 0x1

    move v3, v2

    :goto_b
    array-length v4, p0

    if-ge v3, v4, :cond_1a

    .line 115
    aget v4, p0, v3

    .line 116
    cmpg-float v1, v4, v1

    if-gez v1, :cond_15

    .line 117
    return v0

    .line 119
    :cond_15
    nop

    .line 114
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_b

    .line 121
    :cond_1a
    return v2

    .line 111
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There must be at least two control points."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o isStrictlyIncreasing([F)Z
    .registers 6

    .line 95
    if-eqz p0, :cond_1b

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1b

    .line 98
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 99
    const/4 v2, 0x1

    move v3, v2

    :goto_b
    array-length v4, p0

    if-ge v3, v4, :cond_1a

    .line 100
    aget v4, p0, v3

    .line 101
    cmpg-float v1, v4, v1

    if-gtz v1, :cond_15

    .line 102
    return v0

    .line 104
    :cond_15
    nop

    .line 99
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_b

    .line 106
    :cond_1a
    return v2

    .line 96
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There must be at least two control points."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract greylist-max-o interpolate(F)F
.end method
