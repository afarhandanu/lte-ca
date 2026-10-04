.class Landroid/widget/Scroller$ViscousFluidInterpolator;
.super Ljava/lang/Object;
.source "Scroller.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViscousFluidInterpolator"
.end annotation


# static fields
.field private static final greylist-max-o VISCOUS_FLUID_NORMALIZE:F

.field private static final greylist-max-o VISCOUS_FLUID_OFFSET:F

.field private static final greylist-max-o VISCOUS_FLUID_SCALE:F = 8.0f


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 581
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;->viscousFluid(F)F

    move-result v1

    div-float v1, v0, v1

    sput v1, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    .line 583
    sget v1, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    invoke-static {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;->viscousFluid(F)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    .line 584
    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o viscousFluid(F)F
    .registers 4

    .line 587
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p0, v0

    .line 588
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_13

    .line 589
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_25

    .line 591
    :cond_13
    nop

    .line 592
    sub-float p0, v0, p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float p0, v1

    sub-float/2addr v0, p0

    .line 593
    const p0, 0x3f21d2a7

    mul-float/2addr v0, p0

    const p0, 0x3ebc5ab2

    add-float/2addr p0, v0

    .line 595
    :goto_25
    return p0
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .registers 3

    .line 600
    sget v0, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    invoke-static {p1}, Landroid/widget/Scroller$ViscousFluidInterpolator;->viscousFluid(F)F

    move-result p1

    mul-float/2addr v0, p1

    .line 601
    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_10

    .line 602
    sget p1, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    add-float/2addr v0, p1

    return v0

    .line 604
    :cond_10
    return v0
.end method
