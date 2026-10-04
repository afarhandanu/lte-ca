.class public Landroid/text/Layout$TabStops;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabStops"
.end annotation


# instance fields
.field private blacklist mIncrement:F

.field private greylist-max-o mNumStops:I

.field private blacklist mStops:[F


# direct methods
.method public constructor blacklist <init>(F[Ljava/lang/Object;)V
    .registers 3

    .line 3382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3383
    invoke-virtual {p0, p1, p2}, Landroid/text/Layout$TabStops;->reset(F[Ljava/lang/Object;)V

    .line 3384
    return-void
.end method

.method public static blacklist nextDefaultStop(FF)F
    .registers 2

    .line 3434
    add-float/2addr p0, p1

    div-float/2addr p0, p1

    float-to-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method greylist-max-o nextTab(F)F
    .registers 7

    .line 3417
    iget v0, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    .line 3418
    if-lez v0, :cond_13

    .line 3419
    iget-object v1, p0, Landroid/text/Layout$TabStops;->mStops:[F

    .line 3420
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_13

    .line 3421
    aget v3, v1, v2

    .line 3422
    cmpl-float v4, v3, p1

    if-lez v4, :cond_10

    .line 3423
    return v3

    .line 3420
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3427
    :cond_13
    iget v0, p0, Landroid/text/Layout$TabStops;->mIncrement:F

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FF)F

    move-result p1

    return p1
.end method

.method blacklist reset(F[Ljava/lang/Object;)V
    .registers 11

    .line 3387
    iput p1, p0, Landroid/text/Layout$TabStops;->mIncrement:F

    .line 3389
    nop

    .line 3390
    const/4 p1, 0x0

    if-eqz p2, :cond_48

    .line 3391
    iget-object v0, p0, Landroid/text/Layout$TabStops;->mStops:[F

    .line 3392
    array-length v1, p2

    move v2, p1

    move v3, v2

    :goto_b
    if-ge v2, v1, :cond_3b

    aget-object v4, p2, v2

    .line 3393
    instance-of v5, v4, Landroid/text/style/TabStopSpan;

    if-eqz v5, :cond_38

    .line 3394
    if-nez v0, :cond_1a

    .line 3395
    const/16 v0, 0xa

    new-array v0, v0, [F

    goto :goto_2c

    .line 3396
    :cond_1a
    array-length v5, v0

    if-ne v3, v5, :cond_2c

    .line 3397
    mul-int/lit8 v5, v3, 0x2

    new-array v5, v5, [F

    .line 3398
    move v6, p1

    :goto_22
    if-ge v6, v3, :cond_2b

    .line 3399
    aget v7, v0, v6

    aput v7, v5, v6

    .line 3398
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 3401
    :cond_2b
    move-object v0, v5

    .line 3403
    :cond_2c
    :goto_2c
    add-int/lit8 v5, v3, 0x1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v0, v3

    move v3, v5

    .line 3392
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3406
    :cond_3b
    const/4 p2, 0x1

    if-le v3, p2, :cond_41

    .line 3407
    invoke-static {v0, p1, v3}, Ljava/util/Arrays;->sort([FII)V

    .line 3409
    :cond_41
    iget-object p1, p0, Landroid/text/Layout$TabStops;->mStops:[F

    if-eq v0, p1, :cond_47

    .line 3410
    iput-object v0, p0, Landroid/text/Layout$TabStops;->mStops:[F

    .line 3413
    :cond_47
    move p1, v3

    :cond_48
    iput p1, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    .line 3414
    return-void
.end method
