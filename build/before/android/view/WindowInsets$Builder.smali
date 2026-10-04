.class public final Landroid/view/WindowInsets$Builder;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCompatIgnoreVisibility:Z

.field private blacklist mCompatInsetTypes:I

.field private blacklist mDisplayCutout:Landroid/view/DisplayCutout;

.field private blacklist mDisplayShape:Landroid/view/DisplayShape;

.field private blacklist mForceConsumingOpaqueCaptionBar:Z

.field private blacklist mForceConsumingTypes:I

.field private blacklist mFrameHeight:I

.field private blacklist mFrameWidth:I

.field private blacklist mIsRound:Z

.field private blacklist mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private blacklist mRoundedCorners:Landroid/view/RoundedCorners;

.field private blacklist mStableInsetsConsumed:Z

.field private blacklist mSuppressScrimTypes:I

.field private blacklist mSystemInsetsConsumed:Z

.field private final blacklist mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

.field private final blacklist mTypeInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

.field private final blacklist mTypeMaxInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeVisibilityMap:[Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1457
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    iput v0, p0, Landroid/view/WindowInsets$Builder;->mCompatInsetTypes:I

    .line 1459
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1460
    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1464
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1466
    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    .line 1476
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1485
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 1486
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    .line 1487
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    .line 1488
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v0, v0

    new-array v0, v0, [[Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1489
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v0, v0

    new-array v0, v0, [[Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1490
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/WindowInsets;)V
    .registers 3

    .line 1497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1457
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    iput v0, p0, Landroid/view/WindowInsets$Builder;->mCompatInsetTypes:I

    .line 1459
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1460
    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1464
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1466
    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    .line 1476
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1498
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 1499
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeMaxInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    .line 1500
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeVisibilityMap(Landroid/view/WindowInsets;)[Z

    move-result-object v0

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    .line 1501
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmCompatInsetsTypes(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowInsets$Builder;->mCompatInsetTypes:I

    .line 1502
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmCompatIgnoreVisibility(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mCompatIgnoreVisibility:Z

    .line 1503
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmSystemWindowInsetsConsumed(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1504
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmStableInsetsConsumed(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1505
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$smdisplayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 1506
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmRoundedCorners(Landroid/view/WindowInsets;)Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1507
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmIsRound(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    .line 1508
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmForceConsumingTypes(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowInsets$Builder;->mForceConsumingTypes:I

    .line 1509
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmForceConsumingOpaqueCaptionBar(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mForceConsumingOpaqueCaptionBar:Z

    .line 1510
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmSuppressScrimTypes(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowInsets$Builder;->mSuppressScrimTypes:I

    .line 1511
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmPrivacyIndicatorBounds(Landroid/view/WindowInsets;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1512
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmDisplayShape(Landroid/view/WindowInsets;)Landroid/view/DisplayShape;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    .line 1513
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeBoundingRectsMap(Landroid/view/WindowInsets;)[[Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1514
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeMaxBoundingRectsMap(Landroid/view/WindowInsets;)[[Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1515
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmFrameWidth(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowInsets$Builder;->mFrameWidth:I

    .line 1516
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmFrameHeight(Landroid/view/WindowInsets;)I

    move-result p1

    iput p1, p0, Landroid/view/WindowInsets$Builder;->mFrameHeight:I

    .line 1517
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/WindowInsets;
    .registers 20

    .line 1877
    move-object/from16 v0, p0

    new-instance v1, Landroid/view/WindowInsets;

    iget-boolean v2, v0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    move-object v2, v3

    goto :goto_d

    :cond_b
    iget-object v2, v0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 1878
    :goto_d
    iget-boolean v4, v0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    if-eqz v4, :cond_13

    move-object v4, v3

    goto :goto_15

    :cond_13
    iget-object v4, v0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    :goto_15
    move-object v5, v3

    iget-object v3, v0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    move-object v6, v1

    move-object v1, v2

    move-object v2, v4

    iget-boolean v4, v0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    move-object v7, v5

    iget v5, v0, Landroid/view/WindowInsets$Builder;->mForceConsumingTypes:I

    move-object v8, v6

    iget-boolean v6, v0, Landroid/view/WindowInsets$Builder;->mForceConsumingOpaqueCaptionBar:Z

    move-object v9, v7

    iget v7, v0, Landroid/view/WindowInsets$Builder;->mSuppressScrimTypes:I

    move-object v10, v8

    iget-object v8, v0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    move-object v11, v9

    iget-object v9, v0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    move-object v12, v10

    iget-object v10, v0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    move-object v13, v11

    iget-object v11, v0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    move-object v14, v12

    iget v12, v0, Landroid/view/WindowInsets$Builder;->mCompatInsetTypes:I

    move-object v15, v13

    iget-boolean v13, v0, Landroid/view/WindowInsets$Builder;->mCompatIgnoreVisibility:Z

    .line 1882
    iget-boolean v15, v0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    if-eqz v15, :cond_3e

    const/4 v15, 0x0

    goto :goto_40

    :cond_3e
    iget-object v15, v0, Landroid/view/WindowInsets$Builder;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1883
    :goto_40
    move-object/from16 v17, v1

    iget-boolean v1, v0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_49

    const/16 v16, 0x0

    goto :goto_4d

    :cond_49
    iget-object v1, v0, Landroid/view/WindowInsets$Builder;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v16, v1

    :goto_4d
    iget v1, v0, Landroid/view/WindowInsets$Builder;->mFrameWidth:I

    iget v0, v0, Landroid/view/WindowInsets$Builder;->mFrameHeight:I

    move-object/from16 v18, v17

    move/from16 v17, v0

    move-object v0, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move/from16 v16, v1

    move-object/from16 v1, v18

    invoke-direct/range {v0 .. v17}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    .line 1877
    return-object v0
.end method

.method public whitelist setBoundingRects(ILjava/util/List;)Landroid/view/WindowInsets$Builder;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/view/WindowInsets$Builder;"
        }
    .end annotation

    .line 1816
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_21

    aget v4, v0, v3

    .line 1817
    and-int v5, p1, v4

    if-nez v5, :cond_e

    .line 1818
    goto :goto_1e

    .line 1820
    :cond_e
    iget-object v5, p0, Landroid/view/WindowInsets$Builder;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v4

    new-array v6, v2, [Landroid/graphics/Rect;

    invoke-interface {p2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/graphics/Rect;

    aput-object v6, v5, v4

    .line 1816
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1822
    :cond_21
    iput-boolean v2, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1823
    return-object p0
.end method

.method public whitelist setBoundingRectsIgnoringVisibility(ILjava/util/List;)Landroid/view/WindowInsets$Builder;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/view/WindowInsets$Builder;"
        }
    .end annotation

    .line 1842
    const/16 v0, 0x8

    if-eq p1, v0, :cond_28

    .line 1845
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_25

    aget v4, v0, v3

    .line 1846
    and-int v5, p1, v4

    if-nez v5, :cond_12

    .line 1847
    goto :goto_22

    .line 1849
    :cond_12
    iget-object v5, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v4

    new-array v6, v2, [Landroid/graphics/Rect;

    invoke-interface {p2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/graphics/Rect;

    aput-object v6, v5, v4

    .line 1845
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1851
    :cond_25
    iput-boolean v2, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1852
    return-object p0

    .line 1843
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum bounding rects not available for IME"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;
    .registers 4

    .line 1711
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    sget-object p1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    :goto_5
    iput-object p1, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 1712
    iget-object p1, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2c

    .line 1713
    iget-object p1, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object p1

    .line 1714
    const/16 v0, 0x80

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    .line 1715
    iget-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aput-object p1, v1, v0

    .line 1716
    iget-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aput-object p1, v1, v0

    .line 1717
    iget-object p1, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    .line 1719
    :cond_2c
    return-object p0
.end method

.method public whitelist setDisplayShape(Landroid/view/DisplayShape;)Landroid/view/WindowInsets$Builder;
    .registers 2

    .line 1774
    iput-object p1, p0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    .line 1775
    return-object p0
.end method

.method public blacklist setForceConsumingOpaqueCaptionBar(Z)Landroid/view/WindowInsets$Builder;
    .registers 2

    .line 1795
    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mForceConsumingOpaqueCaptionBar:Z

    .line 1796
    return-object p0
.end method

.method public blacklist setForceConsumingTypes(I)Landroid/view/WindowInsets$Builder;
    .registers 2

    .line 1788
    iput p1, p0, Landroid/view/WindowInsets$Builder;->mForceConsumingTypes:I

    .line 1789
    return-object p0
.end method

.method public whitelist setFrame(II)Landroid/view/WindowInsets$Builder;
    .registers 3

    .line 1865
    iput p1, p0, Landroid/view/WindowInsets$Builder;->mFrameWidth:I

    .line 1866
    iput p2, p0, Landroid/view/WindowInsets$Builder;->mFrameHeight:I

    .line 1867
    return-object p0
.end method

.method public whitelist setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4

    .line 1617
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1, p2}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1619
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1620
    return-object p0
.end method

.method public whitelist setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1648
    const/16 v0, 0x8

    if-eq p1, v0, :cond_10

    .line 1651
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1, p2}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1653
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1654
    return-object p0

    .line 1649
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum inset not available for IME"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1580
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x20

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1581
    return-object p0
.end method

.method public whitelist setPrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/WindowInsets$Builder;
    .registers 5

    .line 1760
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p1, v0, v2

    const/4 v2, 0x3

    aput-object p1, v0, v2

    .line 1761
    new-instance p1, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {p1, v0, v1}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    iput-object p1, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1762
    return-object p0
.end method

.method public blacklist setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)Landroid/view/WindowInsets$Builder;
    .registers 2

    .line 1748
    iput-object p1, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1749
    return-object p0
.end method

.method public blacklist setRound(Z)Landroid/view/WindowInsets$Builder;
    .registers 2

    .line 1781
    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    .line 1782
    return-object p0
.end method

.method public whitelist setRoundedCorner(ILandroid/view/RoundedCorner;)Landroid/view/WindowInsets$Builder;
    .registers 4

    .line 1741
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v0, p1, p2}, Landroid/view/RoundedCorners;->setRoundedCorner(ILandroid/view/RoundedCorner;)V

    .line 1742
    return-object p0
.end method

.method public blacklist setRoundedCorners(Landroid/view/RoundedCorners;)Landroid/view/WindowInsets$Builder;
    .registers 2

    .line 1725
    if-eqz p1, :cond_3

    .line 1726
    goto :goto_5

    :cond_3
    sget-object p1, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    :goto_5
    iput-object p1, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1727
    return-object p0
.end method

.method public whitelist setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1696
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    .line 1698
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1699
    return-object p0
.end method

.method public blacklist setSuppressScrimTypes(I)Landroid/view/WindowInsets$Builder;
    .registers 2

    .line 1802
    iput p1, p0, Landroid/view/WindowInsets$Builder;->mSuppressScrimTypes:I

    .line 1803
    return-object p0
.end method

.method public whitelist setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1557
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1558
    return-object p0
.end method

.method public whitelist setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1534
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    .line 1537
    const/4 p1, 0x3

    iput p1, p0, Landroid/view/WindowInsets$Builder;->mCompatInsetTypes:I

    .line 1538
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mCompatIgnoreVisibility:Z

    .line 1539
    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1540
    return-object p0
.end method

.method public whitelist setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1597
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x40

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1598
    return-object p0
.end method

.method public whitelist setVisible(IZ)Landroid/view/WindowInsets$Builder;
    .registers 8

    .line 1670
    sget-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_18

    aget v3, v0, v2

    .line 1671
    and-int v4, p1, v3

    if-nez v4, :cond_d

    .line 1672
    goto :goto_15

    .line 1674
    :cond_d
    iget-object v4, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    invoke-static {v3}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v3

    aput-boolean p2, v4, v3

    .line 1670
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1676
    :cond_18
    return-object p0
.end method
