.class public Landroid/view/animation/OvershootInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "OvershootInterpolator.java"

# interfaces
.implements Landroid/graphics/animation/NativeInterpolator;


# annotations
.annotation runtime Landroid/graphics/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private final greylist-max-o mTension:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 39
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroid/view/animation/OvershootInterpolator;->mTension:F

    .line 40
    return-void
.end method

.method public constructor whitelist <init>(F)V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 48
    iput p1, p0, Landroid/view/animation/OvershootInterpolator;->mTension:F

    .line 49
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .registers 5

    .line 56
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 58
    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 59
    sget-object p1, Lcom/android/internal/R$styleable;->OvershootInterpolator:[I

    invoke-virtual {p2, p3, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_13

    .line 61
    :cond_d
    sget-object p2, Lcom/android/internal/R$styleable;->OvershootInterpolator:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    :goto_13
    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/view/animation/OvershootInterpolator;->mTension:F

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/animation/OvershootInterpolator;->setChangingConfiguration(I)V

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method


# virtual methods
.method public greylist-max-o createNativeInterpolator()J
    .registers 3

    .line 79
    iget v0, p0, Landroid/view/animation/OvershootInterpolator;->mTension:F

    invoke-static {v0}, Landroid/graphics/animation/NativeInterpolatorFactory;->createOvershootInterpolator(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolation(F)F
    .registers 5

    .line 72
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 73
    mul-float v1, p1, p1

    iget v2, p0, Landroid/view/animation/OvershootInterpolator;->mTension:F

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    iget p1, p0, Landroid/view/animation/OvershootInterpolator;->mTension:F

    add-float/2addr v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method
