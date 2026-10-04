.class public Landroid/view/animation/AnticipateInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "AnticipateInterpolator.java"

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

    .line 37
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 38
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    .line 39
    return-void
.end method

.method public constructor whitelist <init>(F)V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 47
    iput p1, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    .line 48
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 57
    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 58
    sget-object p1, Lcom/android/internal/R$styleable;->AnticipateInterpolator:[I

    invoke-virtual {p2, p3, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_13

    .line 60
    :cond_d
    sget-object p2, Lcom/android/internal/R$styleable;->AnticipateInterpolator:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    :goto_13
    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/animation/AnticipateInterpolator;->setChangingConfiguration(I)V

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method


# virtual methods
.method public greylist-max-o createNativeInterpolator()J
    .registers 3

    .line 76
    iget v0, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    invoke-static {v0}, Landroid/graphics/animation/NativeInterpolatorFactory;->createAnticipateInterpolator(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolation(F)F
    .registers 5

    .line 70
    mul-float v0, p1, p1

    iget v1, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget p1, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    return v0
.end method
