.class final Landroid/widget/GridLayout$Axis;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Axis"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o COMPLETE:I = 0x2

.field private static final greylist-max-o NEW:I = 0x0

.field private static final greylist-max-o PENDING:I = 0x1


# instance fields
.field public greylist-max-o arcs:[Landroid/widget/GridLayout$Arc;

.field public greylist-max-o arcsValid:Z

.field greylist-max-o backwardLinks:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o backwardLinksValid:Z

.field public greylist-max-o definedCount:I

.field public greylist-max-o deltas:[I

.field greylist-max-o forwardLinks:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o forwardLinksValid:Z

.field greylist-max-o groupBounds:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o groupBoundsValid:Z

.field public greylist-max-o hasWeights:Z

.field public greylist-max-o hasWeightsValid:Z

.field public final greylist-max-o horizontal:Z

.field public greylist-max-o leadingMargins:[I

.field public greylist-max-o leadingMarginsValid:Z

.field public greylist-max-o locations:[I

.field public greylist-max-o locationsValid:Z

.field private greylist-max-o maxIndex:I

.field greylist-max-o orderPreserved:Z

.field private greylist-max-o parentMax:Landroid/widget/GridLayout$MutableInt;

.field private greylist-max-o parentMin:Landroid/widget/GridLayout$MutableInt;

.field final synthetic blacklist this$0:Landroid/widget/GridLayout;

.field public greylist-max-o trailingMargins:[I

.field public greylist-max-o trailingMarginsValid:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1236
    const-class v0, Landroid/widget/GridLayout;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/widget/GridLayout;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1276
    iput-object p1, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1243
    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    .line 1244
    iput p1, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    .line 1247
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1250
    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1253
    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1256
    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1259
    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1262
    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    .line 1265
    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1268
    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1271
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1273
    new-instance v0, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v0, p1}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    .line 1274
    new-instance p1, Landroid/widget/GridLayout$MutableInt;

    const v0, -0x186a0

    invoke-direct {p1, v0}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object p1, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    .line 1277
    iput-boolean p2, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    .line 1278
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;Z)V

    return-void
.end method

.method private greylist-max-o addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;)V"
        }
    .end annotation

    .line 1507
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$Interval;

    array-length v2, v2

    if-ge v1, v2, :cond_1b

    .line 1508
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$Interval;

    aget-object v2, v2, v1

    .line 1509
    iget-object v3, p2, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v3, [Landroid/widget/GridLayout$MutableInt;

    aget-object v3, v3, v1

    invoke-direct {p0, p1, v2, v3, v0}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1507
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1511
    :cond_1b
    return-void
.end method

.method private greylist-max-o arcsToString(Ljava/util/List;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/GridLayout$Arc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1581
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "x"

    goto :goto_b

    :cond_8
    const-string/jumbo v0, "y"

    .line 1582
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1583
    nop

    .line 1584
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/GridLayout$Arc;

    .line 1585
    if-eqz v2, :cond_26

    .line 1586
    const/4 v2, 0x0

    goto :goto_2c

    .line 1588
    :cond_26
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1590
    :goto_2c
    iget-object v4, v3, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v4, v4, Landroid/widget/GridLayout$Interval;->min:I

    .line 1591
    iget-object v5, v3, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v5, v5, Landroid/widget/GridLayout$Interval;->max:I

    .line 1592
    iget-object v3, v3, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    iget v3, v3, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1593
    const-string v6, "-"

    if-ge v4, v5, :cond_64

    .line 1594
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8c

    .line 1595
    :cond_64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1593
    :goto_8c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    goto :goto_16

    .line 1598
    :cond_90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o calculateMaxIndex()I
    .registers 7

    .line 1282
    nop

    .line 1283
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_a
    if-ge v2, v0, :cond_3a

    .line 1284
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v4, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1285
    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v5, v4}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1286
    iget-boolean v5, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_1f

    iget-object v4, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_21

    :cond_1f
    iget-object v4, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1287
    :goto_21
    iget-object v4, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1288
    iget v5, v4, Landroid/widget/GridLayout$Interval;->min:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1289
    iget v5, v4, Landroid/widget/GridLayout$Interval;->max:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1290
    invoke-virtual {v4}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1283
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1292
    :cond_3a
    if-ne v3, v1, :cond_3e

    const/high16 v3, -0x80000000

    :cond_3e
    return v3
.end method

.method private greylist-max-o calculateTotalWeight()F
    .registers 7

    .line 1821
    nop

    .line 1822
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_2f

    .line 1823
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1824
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1a

    .line 1825
    goto :goto_2c

    .line 1827
    :cond_1a
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1828
    iget-boolean v4, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_27

    iget-object v3, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_29

    :cond_27
    iget-object v3, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1829
    :goto_29
    iget v3, v3, Landroid/widget/GridLayout$Spec;->weight:F

    add-float/2addr v1, v3

    .line 1822
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1831
    :cond_2f
    return v1
.end method

.method private greylist-max-o computeArcs()V
    .registers 1

    .line 1545
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getForwardLinks()Landroid/widget/GridLayout$PackedMap;

    .line 1546
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getBackwardLinks()Landroid/widget/GridLayout$PackedMap;

    .line 1547
    return-void
.end method

.method private greylist-max-o computeGroupBounds()V
    .registers 11

    .line 1338
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    iget-object v0, v0, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/widget/GridLayout$Bounds;

    .line 1339
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_13

    .line 1340
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/widget/GridLayout$Bounds;->reset()V

    .line 1339
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1342
    :cond_13
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_1a
    if-ge v2, v0, :cond_5d

    .line 1343
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1345
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v6}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1346
    iget-boolean v4, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_2f

    iget-object v3, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_31

    :cond_2f
    iget-object v3, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_31
    move-object v7, v3

    .line 1347
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    iget-boolean v4, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v3, v6, v4}, Landroid/widget/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v3

    .line 1348
    iget v4, v7, Landroid/widget/GridLayout$Spec;->weight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_43

    move v4, v1

    goto :goto_49

    :cond_43
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getDeltas()[I

    move-result-object v4

    aget v4, v4, v2

    :goto_49
    add-int v9, v3, v4

    .line 1349
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/widget/GridLayout$Bounds;

    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    move-object v8, p0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/GridLayout$Bounds;->include(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Axis;I)V

    .line 1342
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1351
    :cond_5d
    return-void
.end method

.method private greylist-max-o computeHasWeights()Z
    .registers 7

    .line 1735
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_34

    .line 1736
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1737
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_19

    .line 1738
    goto :goto_31

    .line 1740
    :cond_19
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1741
    iget-boolean v4, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_26

    iget-object v3, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_28

    :cond_26
    iget-object v3, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1742
    :goto_28
    iget v3, v3, Landroid/widget/GridLayout$Spec;->weight:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_31

    .line 1743
    const/4 v0, 0x1

    return v0

    .line 1735
    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1746
    :cond_34
    return v1
.end method

.method private greylist-max-o computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;Z)V"
        }
    .end annotation

    .line 1376
    iget-object v0, p1, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/widget/GridLayout$MutableInt;

    .line 1377
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_11

    .line 1378
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/widget/GridLayout$MutableInt;->reset()V

    .line 1377
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1382
    :cond_11
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/widget/GridLayout$Bounds;

    .line 1383
    nop

    :goto_1a
    array-length v2, v0

    if-ge v1, v2, :cond_38

    .line 1384
    aget-object v2, v0, v1

    invoke-virtual {v2, p2}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v2

    .line 1385
    invoke-virtual {p1, v1}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/GridLayout$MutableInt;

    .line 1387
    iget v4, v3, Landroid/widget/GridLayout$MutableInt;->value:I

    if-eqz p2, :cond_2e

    goto :goto_2f

    :cond_2e
    neg-int v2, v2

    :goto_2f
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1383
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1389
    :cond_38
    return-void
.end method

.method private greylist-max-o computeLocations([I)V
    .registers 6

    .line 1835
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->hasWeights()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1836
    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solve([I)Z

    goto :goto_d

    .line 1838
    :cond_a
    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solveAndDistributeSpace([I)V

    .line 1840
    :goto_d
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    if-nez v0, :cond_1f

    .line 1847
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 1848
    array-length v2, p1

    :goto_15
    if-ge v0, v2, :cond_1f

    .line 1849
    aget v3, p1, v0

    sub-int/2addr v3, v1

    aput v3, p1, v0

    .line 1848
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1852
    :cond_1f
    return-void
.end method

.method private greylist-max-o computeMargins(Z)V
    .registers 10

    .line 1694
    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1695
    :goto_7
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_4a

    .line 1696
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1697
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1f

    goto :goto_47

    .line 1698
    :cond_1f
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1699
    iget-boolean v5, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_2c

    iget-object v4, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2e

    :cond_2c
    iget-object v4, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1700
    :goto_2e
    iget-object v4, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1701
    if-eqz p1, :cond_35

    iget v4, v4, Landroid/widget/GridLayout$Interval;->min:I

    goto :goto_37

    :cond_35
    iget v4, v4, Landroid/widget/GridLayout$Interval;->max:I

    .line 1702
    :goto_37
    aget v5, v0, v4

    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    iget-boolean v7, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v6, v3, v7, p1}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v0, v4

    .line 1695
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1704
    :cond_4a
    return-void
.end method

.method private greylist-max-o createArcs()[Landroid/widget/GridLayout$Arc;
    .registers 7

    .line 1514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1515
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1518
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getForwardLinks()Landroid/widget/GridLayout$PackedMap;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V

    .line 1520
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getBackwardLinks()Landroid/widget/GridLayout$PackedMap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V

    .line 1523
    iget-boolean v2, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    .line 1525
    move v2, v3

    :goto_1e
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_35

    .line 1526
    new-instance v4, Landroid/widget/GridLayout$Interval;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v4, v2, v5}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    new-instance v2, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v2, v3}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    invoke-direct {p0, v0, v4, v2}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V

    .line 1525
    move v2, v5

    goto :goto_1e

    .line 1532
    :cond_35
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v2

    .line 1533
    new-instance v4, Landroid/widget/GridLayout$Interval;

    invoke-direct {v4, v3, v2}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    invoke-direct {p0, v0, v4, v5, v3}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1534
    new-instance v4, Landroid/widget/GridLayout$Interval;

    invoke-direct {v4, v2, v3}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    iget-object v2, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    invoke-direct {p0, v1, v4, v2, v3}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1537
    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    .line 1538
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;

    move-result-object v1

    .line 1540
    invoke-static {v0, v1}, Landroid/widget/GridLayout;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/GridLayout$Arc;

    return-object v0
.end method

.method private greylist-max-o createGroupBounds()Landroid/widget/GridLayout$PackedMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .line 1325
    const-class v0, Landroid/widget/GridLayout$Spec;

    const-class v1, Landroid/widget/GridLayout$Bounds;

    invoke-static {v0, v1}, Landroid/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;

    move-result-object v0

    .line 1326
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_36

    .line 1327
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1329
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1330
    iget-boolean v4, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_24

    iget-object v3, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_26

    :cond_24
    iget-object v3, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1331
    :goto_26
    iget-boolean v4, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-static {v3, v4}, Landroid/widget/GridLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/GridLayout$Alignment;->getBounds()Landroid/widget/GridLayout$Bounds;

    move-result-object v4

    .line 1332
    invoke-virtual {v0, v3, v4}, Landroid/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1326
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1334
    :cond_36
    invoke-virtual {v0}, Landroid/widget/GridLayout$Assoc;->pack()Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o createLinks(Z)Landroid/widget/GridLayout$PackedMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1366
    const-class v0, Landroid/widget/GridLayout$Interval;

    const-class v1, Landroid/widget/GridLayout$MutableInt;

    invoke-static {v0, v1}, Landroid/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;

    move-result-object v0

    .line 1367
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v1

    iget-object v1, v1, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v1, [Landroid/widget/GridLayout$Spec;

    .line 1368
    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_2e

    .line 1369
    if-eqz p1, :cond_1b

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    goto :goto_23

    :cond_1b
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v4}, Landroid/widget/GridLayout$Interval;->inverse()Landroid/widget/GridLayout$Interval;

    move-result-object v4

    .line 1370
    :goto_23
    new-instance v5, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v5}, Landroid/widget/GridLayout$MutableInt;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroid/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1368
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1372
    :cond_2e
    invoke-virtual {v0}, Landroid/widget/GridLayout$Assoc;->pack()Landroid/widget/GridLayout$PackedMap;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o getBackwardLinks()Landroid/widget/GridLayout$PackedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1403
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1404
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->createLinks(Z)Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1406
    :cond_b
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    if-nez v0, :cond_17

    .line 1407
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$Axis;->computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V

    .line 1408
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1410
    :cond_17
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private greylist-max-o getForwardLinks()Landroid/widget/GridLayout$PackedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1392
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 1393
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->createLinks(Z)Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1395
    :cond_b
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    if-nez v0, :cond_16

    .line 1396
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$Axis;->computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V

    .line 1397
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1399
    :cond_16
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private greylist-max-o getMaxIndex()I
    .registers 3

    .line 1296
    iget v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_11

    .line 1297
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->calculateMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    .line 1299
    :cond_11
    iget v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    return v0
.end method

.method private greylist-max-o getMeasure(II)I
    .registers 3

    .line 1880
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1881
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->size([I)I

    move-result p1

    return p1
.end method

.method private greylist-max-o hasWeights()Z
    .registers 2

    .line 1750
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    if-nez v0, :cond_d

    .line 1751
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeHasWeights()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeights:Z

    .line 1752
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1754
    :cond_d
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeights:Z

    return v0
.end method

.method private greylist-max-o include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ")V"
        }
    .end annotation

    .line 1438
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1439
    return-void
.end method

.method private greylist-max-o include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            "Z)V"
        }
    .end annotation

    .line 1421
    invoke-virtual {p2}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 1422
    return-void

    .line 1426
    :cond_7
    if-eqz p4, :cond_23

    .line 1427
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_d
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Arc;

    .line 1428
    iget-object v0, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    .line 1429
    invoke-virtual {v0, p2}, Landroid/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1430
    return-void

    .line 1432
    :cond_22
    goto :goto_d

    .line 1434
    :cond_23
    new-instance p4, Landroid/widget/GridLayout$Arc;

    invoke-direct {p4, p2, p3}, Landroid/widget/GridLayout$Arc;-><init>(Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1435
    return-void
.end method

.method private greylist-max-o init([I)V
    .registers 3

    .line 1577
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1578
    return-void
.end method

.method private greylist-max-o logError(Ljava/lang/String;[Landroid/widget/GridLayout$Arc;[Z)V
    .registers 9

    .line 1602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1604
    const/4 v2, 0x0

    :goto_b
    array-length v3, p2

    if-ge v2, v3, :cond_21

    .line 1605
    aget-object v3, p2, v2

    .line 1606
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_17

    .line 1607
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1609
    :cond_17
    iget-boolean v4, v3, Landroid/widget/GridLayout$Arc;->valid:Z

    if-nez v4, :cond_1e

    .line 1610
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1604
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1613
    :cond_21
    iget-object p2, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    iget-object p2, p2, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " constraints: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " are inconsistent; permanently removing: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1614
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ". "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1613
    invoke-interface {p2, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1615
    return-void
.end method

.method private greylist-max-o relax([ILandroid/widget/GridLayout$Arc;)Z
    .registers 6

    .line 1561
    iget-boolean v0, p2, Landroid/widget/GridLayout$Arc;->valid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1562
    return v1

    .line 1564
    :cond_6
    iget-object v0, p2, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    .line 1565
    iget v2, v0, Landroid/widget/GridLayout$Interval;->min:I

    .line 1566
    iget v0, v0, Landroid/widget/GridLayout$Interval;->max:I

    .line 1567
    iget-object p2, p2, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    iget p2, p2, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1568
    aget v2, p1, v2

    add-int/2addr v2, p2

    .line 1569
    aget p2, p1, v0

    if-le v2, p2, :cond_1b

    .line 1570
    aput v2, p1, v0

    .line 1571
    const/4 p1, 0x1

    return p1

    .line 1573
    :cond_1b
    return v1
.end method

.method private greylist-max-o setParentConstraints(II)V
    .registers 4

    .line 1874
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    iput p1, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1875
    iget-object p1, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    neg-int p2, p2

    iput p2, p1, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1876
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1877
    return-void
.end method

.method private greylist-max-o shareOutDelta(IF)V
    .registers 8

    .line 1765
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1766
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    :goto_c
    if-ge v1, v0, :cond_43

    .line 1767
    iget-object v2, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1768
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1d

    .line 1769
    goto :goto_40

    .line 1771
    :cond_1d
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v2

    .line 1772
    iget-boolean v3, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v3, :cond_2a

    iget-object v2, v2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2c

    :cond_2a
    iget-object v2, v2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1773
    :goto_2c
    iget v2, v2, Landroid/widget/GridLayout$Spec;->weight:F

    .line 1774
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_40

    .line 1775
    int-to-float v3, p1

    mul-float/2addr v3, v2

    div-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1776
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    aput v3, v4, v1

    .line 1779
    sub-int/2addr p1, v3

    .line 1780
    sub-float/2addr p2, v2

    .line 1766
    :cond_40
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1783
    :cond_43
    return-void
.end method

.method private greylist-max-o size([I)I
    .registers 3

    .line 1870
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    aget p1, p1, v0

    return p1
.end method

.method private greylist-max-o solve([I)Z
    .registers 3

    .line 1731
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/widget/GridLayout$Axis;->solve([Landroid/widget/GridLayout$Arc;[I)Z

    move-result p1

    return p1
.end method

.method private greylist-max-o solve([Landroid/widget/GridLayout$Arc;[I)Z
    .registers 4

    .line 1638
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout$Axis;->solve([Landroid/widget/GridLayout$Arc;[IZ)Z

    move-result p1

    return p1
.end method

.method private greylist-max-o solve([Landroid/widget/GridLayout$Arc;[IZ)Z
    .registers 16

    .line 1642
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_7

    const-string v0, "horizontal"

    goto :goto_a

    :cond_7
    const-string/jumbo v0, "vertical"

    .line 1643
    :goto_a
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1644
    nop

    .line 1646
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_14
    array-length v6, p1

    if-ge v5, v6, :cond_77

    .line 1647
    invoke-direct {p0, p2}, Landroid/widget/GridLayout$Axis;->init([I)V

    .line 1650
    move v6, v3

    :goto_1b
    if-ge v6, v1, :cond_38

    .line 1651
    nop

    .line 1652
    array-length v7, p1

    move v8, v3

    move v9, v8

    :goto_21
    if-ge v8, v7, :cond_2d

    .line 1653
    aget-object v10, p1, v8

    invoke-direct {p0, p2, v10}, Landroid/widget/GridLayout$Axis;->relax([ILandroid/widget/GridLayout$Arc;)Z

    move-result v10

    or-int/2addr v9, v10

    .line 1652
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    .line 1655
    :cond_2d
    if-nez v9, :cond_35

    .line 1656
    if-eqz v4, :cond_34

    .line 1657
    invoke-direct {p0, v0, p1, v4}, Landroid/widget/GridLayout$Axis;->logError(Ljava/lang/String;[Landroid/widget/GridLayout$Arc;[Z)V

    .line 1659
    :cond_34
    return v2

    .line 1650
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 1663
    :cond_38
    if-nez p3, :cond_3b

    .line 1664
    return v3

    .line 1667
    :cond_3b
    array-length v6, p1

    new-array v6, v6, [Z

    .line 1668
    move v7, v3

    :goto_3f
    if-ge v7, v1, :cond_56

    .line 1669
    array-length v8, p1

    move v9, v3

    :goto_43
    if-ge v9, v8, :cond_53

    .line 1670
    aget-boolean v10, v6, v9

    aget-object v11, p1, v9

    invoke-direct {p0, p2, v11}, Landroid/widget/GridLayout$Axis;->relax([ILandroid/widget/GridLayout$Arc;)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v6, v9

    .line 1669
    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    .line 1668
    :cond_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    .line 1674
    :cond_56
    if-nez v5, :cond_59

    .line 1675
    move-object v4, v6

    .line 1678
    :cond_59
    move v7, v3

    :goto_5a
    array-length v8, p1

    if-ge v7, v8, :cond_74

    .line 1679
    aget-boolean v8, v6, v7

    if-eqz v8, :cond_71

    .line 1680
    aget-object v8, p1, v7

    .line 1682
    iget-object v9, v8, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v9, v9, Landroid/widget/GridLayout$Interval;->min:I

    iget-object v10, v8, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v10, v10, Landroid/widget/GridLayout$Interval;->max:I

    if-ge v9, v10, :cond_6e

    .line 1683
    goto :goto_71

    .line 1685
    :cond_6e
    iput-boolean v3, v8, Landroid/widget/GridLayout$Arc;->valid:Z

    .line 1686
    goto :goto_74

    .line 1678
    :cond_71
    :goto_71
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    .line 1646
    :cond_74
    :goto_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 1690
    :cond_77
    return v2
.end method

.method private greylist-max-o solveAndDistributeSpace([I)V
    .registers 12

    .line 1786
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getDeltas()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1787
    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solve([I)Z

    .line 1788
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    iget v0, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    iget-object v2, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    mul-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 1789
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1c

    .line 1790
    return-void

    .line 1792
    :cond_1c
    nop

    .line 1794
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->calculateTotalWeight()F

    move-result v3

    .line 1796
    nop

    .line 1797
    const/4 v4, -0x1

    move v5, v1

    .line 1799
    :goto_24
    if-ge v5, v0, :cond_45

    .line 1801
    int-to-long v6, v5

    int-to-long v8, v0

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 1802
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 1803
    invoke-direct {p0, v2, v3}, Landroid/widget/GridLayout$Axis;->shareOutDelta(IF)V

    .line 1804
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Landroid/widget/GridLayout$Axis;->solve([Landroid/widget/GridLayout$Arc;[IZ)Z

    move-result v6

    .line 1805
    if-eqz v6, :cond_42

    .line 1806
    nop

    .line 1807
    add-int/lit8 v5, v2, 0x1

    move v4, v2

    goto :goto_43

    .line 1809
    :cond_42
    move v0, v2

    .line 1811
    :goto_43
    move v2, v6

    goto :goto_24

    .line 1812
    :cond_45
    if-lez v4, :cond_52

    if-nez v2, :cond_52

    .line 1814
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 1815
    invoke-direct {p0, v4, v3}, Landroid/widget/GridLayout$Axis;->shareOutDelta(IF)V

    .line 1816
    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solve([I)Z

    .line 1818
    :cond_52
    return-void
.end method

.method private greylist-max-o topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/GridLayout$Arc;",
            ">;)[",
            "Landroid/widget/GridLayout$Arc;"
        }
    .end annotation

    .line 1503
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/GridLayout$Arc;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/widget/GridLayout$Arc;

    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;
    .registers 3

    .line 1464
    new-instance v0, Landroid/widget/GridLayout$Axis$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$Axis$1;-><init>(Landroid/widget/GridLayout$Axis;[Landroid/widget/GridLayout$Arc;)V

    .line 1499
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis$1;->sort()[Landroid/widget/GridLayout$Arc;

    move-result-object p1

    .line 1464
    return-object p1
.end method


# virtual methods
.method public greylist-max-o getArcs()[Landroid/widget/GridLayout$Arc;
    .registers 2

    .line 1550
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    if-nez v0, :cond_a

    .line 1551
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->createArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    .line 1553
    :cond_a
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    if-nez v0, :cond_14

    .line 1554
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeArcs()V

    .line 1555
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    .line 1557
    :cond_14
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    return-object v0
.end method

.method public greylist-max-o getCount()I
    .registers 3

    .line 1303
    iget v0, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getDeltas()[I
    .registers 2

    .line 1758
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    if-nez v0, :cond_e

    .line 1759
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    .line 1761
    :cond_e
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    return-object v0
.end method

.method public greylist-max-o getGroupBounds()Landroid/widget/GridLayout$PackedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .line 1354
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    if-nez v0, :cond_a

    .line 1355
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->createGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    .line 1357
    :cond_a
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    if-nez v0, :cond_14

    .line 1358
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeGroupBounds()V

    .line 1359
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1361
    :cond_14
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method public greylist-max-o getLeadingMargins()[I
    .registers 3

    .line 1709
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 1710
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1712
    :cond_e
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    if-nez v0, :cond_17

    .line 1713
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1714
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1716
    :cond_17
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    return-object v0
.end method

.method public greylist-max-o getLocations()[I
    .registers 3

    .line 1855
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 1856
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    .line 1857
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    .line 1859
    :cond_e
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    if-nez v0, :cond_19

    .line 1860
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->computeLocations([I)V

    .line 1861
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1863
    :cond_19
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    return-object v0
.end method

.method public greylist-max-o getMeasure(I)I
    .registers 4

    .line 1885
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1886
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1887
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_20

    .line 1898
    goto :goto_1f

    .line 1892
    :sswitch_d
    invoke-direct {p0, p1, p1}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result p1

    return p1

    .line 1889
    :sswitch_12
    const p1, 0x186a0

    invoke-direct {p0, v1, p1}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result p1

    return p1

    .line 1895
    :sswitch_1a
    invoke-direct {p0, v1, p1}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result p1

    return p1

    .line 1899
    :goto_1f
    return v1

    :sswitch_data_20
    .sparse-switch
        -0x80000000 -> :sswitch_1a
        0x0 -> :sswitch_12
        0x40000000 -> :sswitch_d
    .end sparse-switch
.end method

.method public greylist-max-o getTrailingMargins()[I
    .registers 3

    .line 1720
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 1721
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1723
    :cond_e
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    if-nez v0, :cond_18

    .line 1724
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1725
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1727
    :cond_18
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    return-object v0
.end method

.method greylist-max-o groupArcsByFirstVertex([Landroid/widget/GridLayout$Arc;)[[Landroid/widget/GridLayout$Arc;
    .registers 11

    .line 1444
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1445
    new-array v1, v0, [[Landroid/widget/GridLayout$Arc;

    .line 1446
    new-array v2, v0, [I

    .line 1447
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_d
    if-ge v5, v3, :cond_1e

    aget-object v6, p1, v5

    .line 1448
    iget-object v6, v6, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v6, v6, Landroid/widget/GridLayout$Interval;->min:I

    aget v7, v2, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v2, v6

    .line 1447
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1450
    :cond_1e
    move v3, v4

    :goto_1f
    if-ge v3, v0, :cond_2a

    .line 1451
    aget v5, v2, v3

    new-array v5, v5, [Landroid/widget/GridLayout$Arc;

    aput-object v5, v1, v3

    .line 1450
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1454
    :cond_2a
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 1455
    array-length v0, p1

    :goto_2e
    if-ge v4, v0, :cond_43

    aget-object v3, p1, v4

    .line 1456
    iget-object v5, v3, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v5, v5, Landroid/widget/GridLayout$Interval;->min:I

    .line 1457
    aget-object v6, v1, v5

    aget v7, v2, v5

    add-int/lit8 v8, v7, 0x1

    aput v8, v2, v5

    aput-object v3, v6, v7

    .line 1455
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 1460
    :cond_43
    return-object v1
.end method

.method public greylist-max-o invalidateStructure()V
    .registers 2

    .line 1910
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    .line 1912
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    .line 1913
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1914
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1916
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1917
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1918
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    .line 1920
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    .line 1922
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    .line 1923
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1925
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 1926
    return-void
.end method

.method public greylist-max-o invalidateValues()V
    .registers 2

    .line 1929
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1930
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1931
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1933
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1934
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1935
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    .line 1937
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1938
    return-void
.end method

.method public greylist-max-o isOrderPreserved()Z
    .registers 2

    .line 1316
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    return v0
.end method

.method public greylist-max-o layout(I)V
    .registers 2

    .line 1905
    invoke-direct {p0, p1, p1}, Landroid/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1906
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    .line 1907
    return-void
.end method

.method public greylist-max-o setCount(I)V
    .registers 4

    .line 1307
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_2a

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v0

    if-ge p1, v0, :cond_2a

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v1, :cond_16

    const-string v1, "column"

    goto :goto_19

    :cond_16
    const-string/jumbo v1, "row"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Count must be greater than or equal to the maximum of all grid indices (and spans) defined in the LayoutParams of each child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/GridLayout;->-$$Nest$smhandleInvalidParams(Ljava/lang/String;)V

    .line 1312
    :cond_2a
    iput p1, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    .line 1313
    return-void
.end method

.method public greylist-max-o setOrderPreserved(Z)V
    .registers 2

    .line 1320
    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1321
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    .line 1322
    return-void
.end method
