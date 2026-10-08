.class public Landroid/view/animation/AccelerateInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "AccelerateInterpolator.java"

# interfaces
.implements Landroid/graphics/animation/NativeInterpolator;


# annotations
.annotation runtime Landroid/graphics/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private final greylist-max-o mDoubleFactor:D

.field private final greylist-max-o mFactor:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    .line 42
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    .line 43
    return-void
.end method

.method public constructor whitelist <init>(F)V
    .registers 4

    .line 53
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 54
    iput p1, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    .line 55
    const/high16 p1, 0x40000000    # 2.0f

    iget v0, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    iput-wide v0, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    .line 56
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .registers 5

    .line 63
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 65
    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 66
    sget-object p1, Lcom/android/internal/R$styleable;->AccelerateInterpolator:[I

    invoke-virtual {p2, p3, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_13

    .line 68
    :cond_d
    sget-object p2, Lcom/android/internal/R$styleable;->AccelerateInterpolator:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    :goto_13
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    .line 72
    const/high16 p2, 0x40000000    # 2.0f

    iget p3, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    mul-float/2addr p3, p2

    float-to-double p2, p3

    iput-wide p2, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/animation/AccelerateInterpolator;->setChangingConfiguration(I)V

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    return-void
.end method


# virtual methods
.method public greylist-max-o createNativeInterpolator()J
    .registers 3

    .line 88
    iget v0, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    invoke-static {v0}, Landroid/graphics/animation/NativeInterpolatorFactory;->createAccelerateInterpolator(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolation(F)F
    .registers 6

    .line 78
    iget v0, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    .line 79
    mul-float/2addr p1, p1

    return p1

    .line 81
    :cond_a
    float-to-double v0, p1

    iget-wide v2, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
