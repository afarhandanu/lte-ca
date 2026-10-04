.class Landroid/widget/GridLayout$7;
.super Landroid/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2942
    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAlignmentValue(Landroid/view/View;II)I
    .registers 4

    .line 2950
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 p3, 0x8

    if-ne p2, p3, :cond_a

    .line 2951
    const/4 p1, 0x0

    return p1

    .line 2953
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result p1

    .line 2954
    const/4 p2, -0x1

    if-ne p1, p2, :cond_13

    const/high16 p1, -0x80000000

    :cond_13
    return p1
.end method

.method public blacklist getBounds()Landroid/widget/GridLayout$Bounds;
    .registers 2

    .line 2959
    new-instance v0, Landroid/widget/GridLayout$7$1;

    invoke-direct {v0, p0}, Landroid/widget/GridLayout$7$1;-><init>(Landroid/widget/GridLayout$7;)V

    return-object v0
.end method

.method blacklist getGravityOffset(Landroid/view/View;I)I
    .registers 3

    .line 2945
    const/4 p1, 0x0

    return p1
.end method
