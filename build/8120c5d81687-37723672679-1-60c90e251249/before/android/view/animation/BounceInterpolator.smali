.class public Landroid/view/animation/BounceInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "BounceInterpolator.java"

# interfaces
.implements Landroid/graphics/animation/NativeInterpolator;


# annotations
.annotation runtime Landroid/graphics/animation/HasNativeInterpolator;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 31
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 35
    return-void
.end method

.method private static greylist-max-o bounce(F)F
    .registers 2

    .line 38
    mul-float/2addr p0, p0

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public greylist-max-o createNativeInterpolator()J
    .registers 3

    .line 58
    invoke-static {}, Landroid/graphics/animation/NativeInterpolatorFactory;->createBounceInterpolator()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolation(F)F
    .registers 3

    .line 48
    const v0, 0x3f8fb15b    # 1.1226f

    mul-float/2addr p1, v0

    .line 49
    const v0, 0x3eb4fdf4    # 0.3535f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result p1

    return p1

    .line 50
    :cond_10
    const v0, 0x3f3da512    # 0.7408f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_24

    const v0, 0x3f0c14a5

    sub-float/2addr p1, v0

    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result p1

    const v0, 0x3f333333    # 0.7f

    add-float/2addr p1, v0

    return p1

    .line 51
    :cond_24
    const v0, 0x3f76e2eb    # 0.9644f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_38

    const v0, 0x3f5a43fe    # 0.8526f

    sub-float/2addr p1, v0

    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result p1

    const v0, 0x3f666666    # 0.9f

    add-float/2addr p1, v0

    return p1

    .line 52
    :cond_38
    const v0, 0x3f859168    # 1.0435f

    sub-float/2addr p1, v0

    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result p1

    const v0, 0x3f733333    # 0.95f

    add-float/2addr p1, v0

    return p1
.end method
