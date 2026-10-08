.class Landroid/transition/Slide$6;
.super Landroid/transition/Slide$CalculateSlideVertical;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/transition/Slide$CalculateSlideVertical;-><init>(Landroid/transition/Slide-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist getGoneY(Landroid/view/ViewGroup;Landroid/view/View;F)F
    .registers 4

    .line 135
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    return p2
.end method
