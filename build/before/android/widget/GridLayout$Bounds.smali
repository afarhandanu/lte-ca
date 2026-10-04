.class Landroid/widget/GridLayout$Bounds;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bounds"
.end annotation


# instance fields
.field public greylist-max-o after:I

.field public greylist-max-o before:I

.field public greylist-max-o flexibility:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2404
    invoke-virtual {p0}, Landroid/widget/GridLayout$Bounds;->reset()V

    .line 2405
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/GridLayout-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/GridLayout$Bounds;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist-max-o getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I
    .registers 6

    .line 2428
    iget p5, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getLayoutMode()I

    move-result p1

    invoke-virtual {p3, p2, p4, p1}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result p1

    sub-int/2addr p5, p1

    return p5
.end method

.method protected greylist-max-o include(II)V
    .registers 4

    .line 2414
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/GridLayout$Bounds;->before:I

    .line 2415
    iget p1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    .line 2416
    return-void
.end method

.method protected final greylist-max-o include(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Axis;I)V
    .registers 8

    .line 2432
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    invoke-virtual {p3}, Landroid/widget/GridLayout$Spec;->getFlexibility()I

    move-result v1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    .line 2433
    iget-boolean v0, p4, Landroid/widget/GridLayout$Axis;->horizontal:Z

    .line 2434
    iget-boolean p4, p4, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-static {p3, p4}, Landroid/widget/GridLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object p3

    .line 2436
    invoke-virtual {p1}, Landroid/widget/GridLayout;->getLayoutMode()I

    move-result p1

    invoke-virtual {p3, p2, p5, p1}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result p1

    .line 2437
    sub-int/2addr p5, p1

    invoke-virtual {p0, p1, p5}, Landroid/widget/GridLayout$Bounds;->include(II)V

    .line 2438
    return-void
.end method

.method protected greylist-max-o reset()V
    .registers 2

    .line 2408
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    .line 2409
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    .line 2410
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    .line 2411
    return-void
.end method

.method protected greylist-max-o size(Z)I
    .registers 3

    .line 2419
    if-nez p1, :cond_e

    .line 2420
    iget p1, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    invoke-static {p1}, Landroid/widget/GridLayout;->canStretch(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2421
    const p1, 0x186a0

    return p1

    .line 2424
    :cond_e
    iget p1, p0, Landroid/widget/GridLayout$Bounds;->before:I

    iget v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    add-int/2addr p1, v0

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
