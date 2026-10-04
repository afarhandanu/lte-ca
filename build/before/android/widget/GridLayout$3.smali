.class Landroid/widget/GridLayout$3;
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

    .line 2840
    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAlignmentValue(Landroid/view/View;II)I
    .registers 4

    .line 2848
    const/4 p1, 0x0

    return p1
.end method

.method blacklist getGravityOffset(Landroid/view/View;I)I
    .registers 3

    .line 2843
    const/4 p1, 0x0

    return p1
.end method
