.class final Landroid/view/ViewConfiguration$ResourceCache;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceCache"
.end annotation


# instance fields
.field private blacklist mDefaultActionModeHideDuration:J

.field private blacklist mDefaultTextCursorBlinkInterval:I

.field private blacklist mDoubleTapMinTime:I

.field private blacklist mDoubleTapTimeout:I

.field private blacklist mHoverTapSlop:I

.field private blacklist mJumpTapTimeout:I

.field private blacklist mMinTextCursorBlinkInterval:I

.field private blacklist mNoBlinkTextCursorBlinkInterval:I

.field private blacklist mPressedStateDuration:I

.field private blacklist mScrollFriction:F

.field private blacklist mTapTimeout:I

.field private blacklist mZoomControlsTimeout:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 5

    .line 1602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1604
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mPressedStateDuration:I

    .line 1605
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mTapTimeout:I

    .line 1606
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mJumpTapTimeout:I

    .line 1607
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapTimeout:I

    .line 1608
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapMinTime:I

    .line 1609
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapSlop:I

    .line 1610
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/view/ViewConfiguration$ResourceCache;->mZoomControlsTimeout:J

    .line 1611
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Landroid/view/ViewConfiguration$ResourceCache;->mScrollFriction:F

    .line 1612
    iput-wide v1, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultActionModeHideDuration:J

    .line 1613
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultTextCursorBlinkInterval:I

    .line 1614
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mMinTextCursorBlinkInterval:I

    .line 1615
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mNoBlinkTextCursorBlinkInterval:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/ViewConfiguration-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/ViewConfiguration$ResourceCache;-><init>()V

    return-void
.end method

.method private static blacklist getCurrentResources()Landroid/content/res/Resources;
    .registers 2

    .line 1746
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->migrateViewconfigurationConstantsToResources()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1747
    return-object v1

    .line 1749
    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1750
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_14

    :cond_13
    move-object v0, v1

    .line 1751
    :goto_14
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :cond_1a
    return-object v1
.end method


# virtual methods
.method public blacklist getDefaultActionModeHideDuration()J
    .registers 5

    .line 1698
    iget-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultActionModeHideDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1b

    .line 1699
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1700
    if-eqz v0, :cond_17

    .line 1701
    const v1, 0x10e0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_19

    .line 1702
    :cond_17
    const-wide/16 v0, 0x7d0

    :goto_19
    iput-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultActionModeHideDuration:J

    .line 1704
    :cond_1b
    iget-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultActionModeHideDuration:J

    return-wide v0
.end method

.method public blacklist getDefaultTextCursorBlinkInterval()I
    .registers 3

    .line 1708
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultTextCursorBlinkInterval:I

    if-gez v0, :cond_16

    .line 1709
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1710
    if-eqz v0, :cond_12

    .line 1711
    const v1, 0x10e0187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_14

    .line 1713
    :cond_12
    const/16 v0, 0x1f4

    :goto_14
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultTextCursorBlinkInterval:I

    .line 1715
    :cond_16
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDefaultTextCursorBlinkInterval:I

    return v0
.end method

.method public blacklist getDoubleTapMinTime()I
    .registers 3

    .line 1658
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapMinTime:I

    if-gez v0, :cond_16

    .line 1659
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1660
    if-eqz v0, :cond_12

    .line 1661
    const v1, 0x10e0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_14

    .line 1662
    :cond_12
    const/16 v0, 0x28

    :goto_14
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapMinTime:I

    .line 1664
    :cond_16
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapMinTime:I

    return v0
.end method

.method public blacklist getDoubleTapTimeout()I
    .registers 3

    .line 1648
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapTimeout:I

    if-gez v0, :cond_16

    .line 1649
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1650
    if-eqz v0, :cond_12

    .line 1651
    const v1, 0x10e009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_14

    .line 1652
    :cond_12
    const/16 v0, 0x12c

    :goto_14
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapTimeout:I

    .line 1654
    :cond_16
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mDoubleTapTimeout:I

    return v0
.end method

.method public blacklist getHoverTapSlop()I
    .registers 3

    .line 1668
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapSlop:I

    if-gez v0, :cond_16

    .line 1669
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1670
    if-eqz v0, :cond_12

    .line 1671
    const v1, 0x1050100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_14

    .line 1672
    :cond_12
    const/16 v0, 0x14

    :goto_14
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapSlop:I

    .line 1674
    :cond_16
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mHoverTapSlop:I

    return v0
.end method

.method public blacklist getJumpTapTimeout()I
    .registers 3

    .line 1638
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mJumpTapTimeout:I

    if-gez v0, :cond_16

    .line 1639
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1640
    if-eqz v0, :cond_12

    .line 1641
    const v1, 0x10e00bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_14

    .line 1642
    :cond_12
    const/16 v0, 0x1f4

    :goto_14
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mJumpTapTimeout:I

    .line 1644
    :cond_16
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mJumpTapTimeout:I

    return v0
.end method

.method public blacklist getMinTextCursorBlinkInterval()I
    .registers 3

    .line 1730
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mMinTextCursorBlinkInterval:I

    if-gez v0, :cond_1d

    .line 1731
    const/16 v0, 0x14d

    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mMinTextCursorBlinkInterval:I

    .line 1732
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1733
    if-eqz v0, :cond_1d

    .line 1734
    const v1, 0x1070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1736
    array-length v1, v0

    if-lez v1, :cond_1d

    .line 1737
    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mMinTextCursorBlinkInterval:I

    .line 1741
    :cond_1d
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mMinTextCursorBlinkInterval:I

    return v0
.end method

.method public blacklist getNoBlinkTextCursorBlinkInterval()I
    .registers 3

    .line 1719
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mNoBlinkTextCursorBlinkInterval:I

    if-gez v0, :cond_15

    .line 1720
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1721
    if-eqz v0, :cond_12

    .line 1722
    const v1, 0x10e01c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_13

    .line 1724
    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mNoBlinkTextCursorBlinkInterval:I

    .line 1726
    :cond_15
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mNoBlinkTextCursorBlinkInterval:I

    return v0
.end method

.method public blacklist getPressedStateDuration()I
    .registers 3

    .line 1618
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mPressedStateDuration:I

    if-gez v0, :cond_16

    .line 1619
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1620
    if-eqz v0, :cond_12

    .line 1621
    const v1, 0x10e0120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_14

    .line 1622
    :cond_12
    const/16 v0, 0x40

    :goto_14
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mPressedStateDuration:I

    .line 1624
    :cond_16
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mPressedStateDuration:I

    return v0
.end method

.method public blacklist getScrollFriction()F
    .registers 3

    .line 1688
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mScrollFriction:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    .line 1689
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1690
    if-eqz v0, :cond_15

    .line 1691
    const v1, 0x1050126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    goto :goto_18

    .line 1692
    :cond_15
    const v0, 0x3c75c28f    # 0.015f

    :goto_18
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mScrollFriction:F

    .line 1694
    :cond_1a
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mScrollFriction:F

    return v0
.end method

.method public blacklist getTapTimeout()I
    .registers 3

    .line 1628
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mTapTimeout:I

    if-gez v0, :cond_16

    .line 1629
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1630
    if-eqz v0, :cond_12

    .line 1631
    const v1, 0x10e015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_14

    .line 1632
    :cond_12
    const/16 v0, 0x64

    :goto_14
    iput v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mTapTimeout:I

    .line 1634
    :cond_16
    iget v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mTapTimeout:I

    return v0
.end method

.method public blacklist getZoomControlsTimeout()J
    .registers 5

    .line 1678
    iget-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mZoomControlsTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1b

    .line 1679
    invoke-static {}, Landroid/view/ViewConfiguration$ResourceCache;->getCurrentResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1680
    if-eqz v0, :cond_17

    .line 1681
    const v1, 0x10e017e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_19

    .line 1682
    :cond_17
    const-wide/16 v0, 0xbb8

    :goto_19
    iput-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mZoomControlsTimeout:J

    .line 1684
    :cond_1b
    iget-wide v0, p0, Landroid/view/ViewConfiguration$ResourceCache;->mZoomControlsTimeout:J

    return-wide v0
.end method
