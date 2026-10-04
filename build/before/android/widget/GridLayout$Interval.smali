.class final Landroid/widget/GridLayout$Interval;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Interval"
.end annotation


# instance fields
.field public final greylist-max-o max:I

.field public final greylist-max-o min:I


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .registers 3

    .line 2481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2482
    iput p1, p0, Landroid/widget/GridLayout$Interval;->min:I

    .line 2483
    iput p2, p0, Landroid/widget/GridLayout$Interval;->max:I

    .line 2484
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 2506
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2507
    return v0

    .line 2509
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_23

    .line 2513
    :cond_12
    check-cast p1, Landroid/widget/GridLayout$Interval;

    .line 2515
    iget v2, p0, Landroid/widget/GridLayout$Interval;->max:I

    iget v3, p1, Landroid/widget/GridLayout$Interval;->max:I

    if-eq v2, v3, :cond_1b

    .line 2516
    return v1

    .line 2519
    :cond_1b
    iget v2, p0, Landroid/widget/GridLayout$Interval;->min:I

    iget p1, p1, Landroid/widget/GridLayout$Interval;->min:I

    if-eq v2, p1, :cond_22

    .line 2520
    return v1

    .line 2523
    :cond_22
    return v0

    .line 2510
    :cond_23
    :goto_23
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 2528
    iget v0, p0, Landroid/widget/GridLayout$Interval;->min:I

    .line 2529
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/widget/GridLayout$Interval;->max:I

    add-int/2addr v0, v1

    .line 2530
    return v0
.end method

.method greylist-max-o inverse()Landroid/widget/GridLayout$Interval;
    .registers 4

    .line 2491
    new-instance v0, Landroid/widget/GridLayout$Interval;

    iget v1, p0, Landroid/widget/GridLayout$Interval;->max:I

    iget v2, p0, Landroid/widget/GridLayout$Interval;->min:I

    invoke-direct {v0, v1, v2}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    return-object v0
.end method

.method greylist-max-o size()I
    .registers 3

    .line 2487
    iget v0, p0, Landroid/widget/GridLayout$Interval;->max:I

    iget v1, p0, Landroid/widget/GridLayout$Interval;->min:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/GridLayout$Interval;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/GridLayout$Interval;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
