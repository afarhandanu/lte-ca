.class Landroid/widget/GridLayout$8;
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

    .line 2998
    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAlignmentValue(Landroid/view/View;II)I
    .registers 4

    .line 3006
    const/high16 p1, -0x80000000

    return p1
.end method

.method blacklist getGravityOffset(Landroid/view/View;I)I
    .registers 3

    .line 3001
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getSizeInCell(Landroid/view/View;II)I
    .registers 4

    .line 3011
    return p3
.end method
