.class public Landroid/view/animation/CycleInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "CycleInterpolator.java"

# interfaces
.implements Landroid/graphics/animation/NativeInterpolator;


# annotations
.annotation runtime Landroid/graphics/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private greylist-max-o mCycles:F


# direct methods
.method public constructor whitelist <init>(F)V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 38
    iput p1, p0, Landroid/view/animation/CycleInterpolator;->mCycles:F

    .line 39
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .registers 5

    .line 46
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 48
    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 49
    sget-object p1, Lcom/android/internal/R$styleable;->CycleInterpolator:[I

    invoke-virtual {p2, p3, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_13

    .line 51
    :cond_d
    sget-object p2, Lcom/android/internal/R$styleable;->CycleInterpolator:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    :goto_13
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/view/animation/CycleInterpolator;->mCycles:F

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/animation/CycleInterpolator;->setChangingConfiguration(I)V

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method


# virtual methods
.method public greylist-max-o createNativeInterpolator()J
    .registers 3

    .line 68
    iget v0, p0, Landroid/view/animation/CycleInterpolator;->mCycles:F

    invoke-static {v0}, Landroid/graphics/animation/NativeInterpolatorFactory;->createCycleInterpolator(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolation(F)F
    .registers 6

    .line 60
    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Landroid/view/animation/CycleInterpolator;->mCycles:F

    mul-float/2addr v1, v0

    float-to-double v0, v1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    float-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
