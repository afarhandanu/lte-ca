.class Landroid/widget/GridLayout$6;
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

    .line 2923
    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAlignmentValue(Landroid/view/View;II)I
    .registers 4

    .line 2931
    shr-int/lit8 p1, p2, 0x1

    return p1
.end method

.method blacklist getGravityOffset(Landroid/view/View;I)I
    .registers 3

    .line 2926
    shr-int/lit8 p1, p2, 0x1

    return p1
.end method
