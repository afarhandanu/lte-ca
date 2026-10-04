.class final Landroid/view/NotificationTopLineView$OverflowAdjuster;
.super Ljava/lang/Object;
.source "NotificationTopLineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationTopLineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverflowAdjuster"
.end annotation


# instance fields
.field private blacklist mHeightSpec:I

.field private blacklist mOverflow:I

.field private blacklist mRegrowView:Landroid/view/View;

.field final synthetic blacklist this$0:Landroid/view/NotificationTopLineView;


# direct methods
.method private constructor blacklist <init>(Landroid/view/NotificationTopLineView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 422
    iput-object p1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/NotificationTopLineView;Landroid/view/NotificationTopLineView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;-><init>(Landroid/view/NotificationTopLineView;)V

    return-void
.end method

.method private blacklist getHorizontalMargins(Landroid/view/View;)I
    .registers 3

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 497
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method blacklist adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;
    .registers 10

    .line 442
    iget v0, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    if-lez v0, :cond_a5

    if-eqz p1, :cond_a5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    goto/16 :goto_a5

    .line 445
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 446
    if-gt v0, p3, :cond_17

    .line 447
    return-object p0

    .line 450
    :cond_17
    iget v2, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    sub-int v2, v0, v2

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 451
    const/4 v3, 0x0

    if-nez p3, :cond_33

    iget-object p3, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {p3}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmChildHideWidth(Landroid/view/NotificationTopLineView;)I

    move-result p3

    if-ge v2, p3, :cond_33

    iget-object p3, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    if-eqz p3, :cond_33

    iget-object p3, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    if-eq p3, p1, :cond_33

    .line 455
    move v2, v3

    .line 458
    :cond_33
    const/high16 p3, -0x80000000

    invoke-static {v2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 459
    iget v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->measure(II)V

    .line 460
    iget v4, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    sub-int/2addr v0, v2

    sub-int/2addr v4, v0

    iput v4, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    .line 462
    if-nez v2, :cond_80

    .line 463
    iget-object v0, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v0}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmViewsToDisappear(Landroid/view/NotificationTopLineView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 464
    iget v0, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    invoke-direct {p0, p1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->getHorizontalMargins(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v0, v4

    iput v0, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    .line 465
    if-eqz p2, :cond_80

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_80

    .line 466
    iget-object v0, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v0}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmViewsToDisappear(Landroid/view/NotificationTopLineView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 468
    invoke-static {v3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 469
    iget v3, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    invoke-virtual {p2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 470
    iget v1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    invoke-direct {p0, p2}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->getHorizontalMargins(Landroid/view/View;)I

    move-result p2

    add-int/2addr v0, p2

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    .line 473
    :cond_80
    iget p2, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    if-gez p2, :cond_a0

    iget-object p2, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    if-eqz p2, :cond_a0

    .line 475
    iget-object p1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 476
    iget p2, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    sub-int/2addr p1, p2

    .line 477
    invoke-static {p1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 478
    iget-object p2, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    iget p3, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->measure(II)V

    .line 479
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->finish()V

    .line 480
    return-object p0

    .line 483
    :cond_a0
    if-eqz v2, :cond_a4

    .line 486
    iput-object p1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    .line 488
    :cond_a4
    return-object p0

    .line 443
    :cond_a5
    :goto_a5
    return-object p0
.end method

.method blacklist finish()V
    .registers 2

    .line 492
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->resetForOverflow(II)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    .line 493
    return-void
.end method

.method blacklist resetForOverflow(II)Landroid/view/NotificationTopLineView$OverflowAdjuster;
    .registers 3

    .line 428
    iput p1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    .line 429
    iput p2, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    .line 430
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    .line 431
    return-object p0
.end method
