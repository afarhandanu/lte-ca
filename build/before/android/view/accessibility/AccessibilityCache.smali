.class public Landroid/view/accessibility/AccessibilityCache;
.super Ljava/lang/Object;
.source "AccessibilityCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;,
        Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o CACHE_CRITICAL_EVENTS_MASK:I = 0x41b83d

.field private static final greylist-max-o CHECK_INTEGRITY:Z

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityCache"

.field private static final blacklist VERBOSE:Z


# instance fields
.field private greylist-max-o mAccessibilityFocus:J

.field private blacklist mAccessibilityFocusedWindow:I

.field private final greylist-max-o mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

.field private blacklist mEnabled:Z

.field private greylist-max-o mInputFocus:J

.field private blacklist mInputFocusWindow:I

.field private greylist-max-o mIsAllWindowsCached:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mNodeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

.field private final greylist-max-o mTempWindowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mValidWindowCacheTimeStamp:J

.field private final blacklist mWindowCacheByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mWindowIdToEventSourceClassName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 43
    const/4 v0, 0x3

    const-string v1, "AccessibilityCache"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v3

    :goto_12
    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    .line 45
    nop

    .line 46
    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    :goto_22
    sput-boolean v2, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    .line 48
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;)V
    .registers 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowIdToEventSourceClassName:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 80
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 81
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 89
    iput v0, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    .line 105
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    .line 106
    return-void
.end method

.method private blacklist addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 5

    .line 194
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 195
    if-nez v0, :cond_14

    .line 196
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 197
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    :cond_14
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result p1

    .line 200
    new-instance v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v1, p2}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    return-void
.end method

.method private greylist-max-o clearNodesForWindowLocked(I)V
    .registers 4

    .line 701
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearNodesForWindowLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_22
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 705
    if-nez v0, :cond_2d

    .line 706
    return-void

    .line 708
    :cond_2d
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 709
    return-void
.end method

.method private greylist-max-o clearSubTreeLocked(IJ)V
    .registers 6

    .line 736
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 737
    const-string v0, "AccessibilityCache"

    const-string v1, "Clearing cached subtree."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/LongSparseArray;

    .line 740
    if-eqz p1, :cond_18

    .line 741
    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z

    .line 743
    :cond_18
    return-void
.end method

.method private blacklist clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)Z"
        }
    .end annotation

    .line 756
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 757
    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 759
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 760
    return v1

    .line 762
    :cond_d
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 763
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result p2

    .line 764
    const/4 p3, 0x0

    move v2, p3

    :goto_16
    if-ge v2, p2, :cond_26

    .line 765
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v3

    .line 766
    invoke-direct {p0, p1, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 767
    return v1

    .line 764
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 770
    :cond_26
    return p3
.end method

.method private blacklist clearWindowCacheLocked()V
    .registers 4

    .line 591
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 592
    const-string v0, "AccessibilityCache"

    const-string v1, "clearWindowCacheLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 596
    if-lez v0, :cond_32

    .line 597
    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_32

    .line 598
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 599
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 600
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 601
    if-eqz v2, :cond_2a

    .line 602
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 604
    :cond_2a
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 597
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 607
    :cond_32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    .line 608
    return-void
.end method

.method private blacklist isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)Z"
        }
    .end annotation

    .line 687
    cmp-long v0, p3, p1

    if-nez v0, :cond_6

    .line 688
    const/4 p1, 0x1

    return p1

    .line 690
    :cond_6
    invoke-virtual {p5, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 691
    if-nez p1, :cond_10

    .line 692
    const/4 p1, 0x0

    return p1

    .line 694
    :cond_10
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v1

    move-object v0, p0

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityCache;->isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z

    move-result p1

    return p1
.end method

.method private blacklist removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 6

    .line 319
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 320
    const-string v0, "AccessibilityCache"

    const-string v1, "Removing cached node."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/LongSparseArray;

    .line 323
    const/4 v0, 0x0

    if-nez p1, :cond_17

    .line 324
    return-object v0

    .line 326
    :cond_17
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 328
    if-nez v1, :cond_20

    .line 329
    return-object v0

    .line 331
    :cond_20
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 332
    return-object v1
.end method


# virtual methods
.method public greylist-max-o add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 14

    .line 489
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_14

    .line 491
    sget-boolean p1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz p1, :cond_12

    .line 492
    const-string p1, "AccessibilityCache"

    const-string v1, "Cache is disabled"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_12
    monitor-exit v0

    return-void

    .line 496
    :cond_14
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v1, :cond_36

    .line 497
    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_36
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    .line 501
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 502
    if-nez v2, :cond_4e

    .line 503
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 504
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 507
    :cond_4e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v3

    .line 508
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 509
    if-eqz v5, :cond_91

    .line 514
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v6

    .line 516
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v7

    .line 517
    const/4 v8, 0x0

    :goto_63
    if-ge v8, v7, :cond_82

    .line 518
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v9

    .line 520
    if-eqz v6, :cond_71

    invoke-virtual {v6, v9, v10}, Landroid/util/LongArray;->indexOf(J)I

    move-result v11

    if-gez v11, :cond_74

    .line 521
    :cond_71
    invoke-direct {p0, v1, v9, v10}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 523
    :cond_74
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_7f

    .line 527
    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    .line 528
    monitor-exit v0

    return-void

    .line 517
    :cond_7f
    add-int/lit8 v8, v8, 0x1

    goto :goto_63

    .line 535
    :cond_82
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v5

    .line 536
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-eqz v7, :cond_91

    .line 537
    invoke-direct {p0, v1, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 543
    :cond_91
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 544
    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 545
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result p1

    const-wide/32 v6, 0x7fffffff

    if-eqz p1, :cond_b8

    .line 546
    iget-wide v8, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long p1, v8, v6

    if-eqz p1, :cond_b3

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long p1, v6, v3

    if-eqz p1, :cond_b3

    .line 548
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v1, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 550
    :cond_b3
    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 551
    iput v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    goto :goto_c3

    .line 552
    :cond_b8
    iget-wide v8, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long p1, v8, v3

    if-nez p1, :cond_c3

    .line 553
    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 554
    const/4 p1, -0x1

    iput p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 556
    :cond_c3
    :goto_c3
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 557
    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 558
    iput v1, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 561
    :cond_cd
    iget-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

    if-eqz p1, :cond_d6

    .line 562
    iget-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

    invoke-interface {p1, v5}, Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;->onNodeAdded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 564
    :cond_d6
    monitor-exit v0

    .line 565
    return-void

    .line 564
    :catchall_d8
    move-exception p1

    monitor-exit v0
    :try_end_da
    .catchall {:try_start_3 .. :try_end_da} :catchall_d8

    throw p1
.end method

.method public greylist-max-o addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 6

    .line 178
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_14

    .line 180
    sget-boolean p1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz p1, :cond_12

    .line 181
    const-string p1, "AccessibilityCache"

    const-string v1, "Cache is disabled"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_12
    monitor-exit v0

    return-void

    .line 185
    :cond_14
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_48

    .line 186
    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at display Id [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 187
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_48
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/view/accessibility/AccessibilityCache;->addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 190
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_51
    move-exception p1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public greylist-max-o checkIntegrity()V
    .registers 18

    .line 781
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 783
    :try_start_5
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_17

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_17

    .line 784
    monitor-exit v1

    return-void

    .line 787
    :cond_17
    nop

    .line 788
    nop

    .line 790
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 791
    const/4 v3, 0x0

    move-object v6, v3

    move-object v7, v6

    const/4 v5, 0x0

    :goto_23
    if-ge v5, v2, :cond_87

    .line 792
    iget-object v8, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 793
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 795
    if-nez v8, :cond_30

    .line 796
    goto :goto_84

    .line 799
    :cond_30
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 800
    const/4 v10, 0x0

    :goto_35
    if-ge v10, v9, :cond_84

    .line 801
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 804
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v12

    if-eqz v12, :cond_5f

    .line 805
    if-eqz v6, :cond_5e

    .line 806
    const-string v12, "AccessibilityCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Duplicate active window:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 808
    :cond_5e
    move-object v6, v11

    .line 812
    :cond_5f
    :goto_5f
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v12

    if-eqz v12, :cond_81

    .line 813
    if-eqz v7, :cond_80

    .line 814
    const-string v12, "AccessibilityCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Duplicate focused window:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 816
    :cond_80
    move-object v7, v11

    .line 800
    :cond_81
    :goto_81
    add-int/lit8 v10, v10, 0x1

    goto :goto_35

    .line 791
    :cond_84
    :goto_84
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 823
    :cond_87
    nop

    .line 824
    nop

    .line 826
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 827
    move-object v5, v3

    const/4 v6, 0x0

    :goto_91
    if-ge v6, v2, :cond_1e5

    .line 828
    iget-object v7, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/LongSparseArray;

    .line 829
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v8

    if-gtz v8, :cond_a3

    .line 830
    goto/16 :goto_1df

    .line 833
    :cond_a3
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 834
    iget-object v9, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 836
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    .line 837
    const/4 v11, 0x0

    :goto_b3
    if-ge v11, v10, :cond_1df

    .line 838
    invoke-virtual {v7, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 841
    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e5

    .line 842
    const-string v13, "AccessibilityCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Duplicate node: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " in window:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    goto/16 :goto_1d9

    .line 849
    :cond_e5
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v13

    if-eqz v13, :cond_111

    .line 850
    if-eqz v3, :cond_110

    .line 851
    const-string v13, "AccessibilityCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Duplicate accessibility focus:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " in window:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_111

    .line 854
    :cond_110
    move-object v3, v12

    .line 859
    :cond_111
    :goto_111
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v13

    if-eqz v13, :cond_13d

    .line 860
    if-eqz v5, :cond_13c

    .line 861
    const-string v13, "AccessibilityCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Duplicate input focus: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " in window:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13d

    .line 864
    :cond_13c
    move-object v5, v12

    .line 869
    :cond_13d
    :goto_13d
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v13

    invoke-virtual {v7, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 870
    if-eqz v13, :cond_18f

    .line 871
    nop

    .line 872
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v14

    .line 873
    const/4 v15, 0x0

    :goto_14f
    if-ge v15, v14, :cond_167

    .line 874
    move-object/from16 v16, v5

    invoke-virtual {v13, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 875
    if-ne v4, v12, :cond_162

    .line 876
    nop

    .line 877
    const/4 v4, 0x1

    goto :goto_16a

    .line 873
    :cond_162
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v16

    goto :goto_14f

    :cond_167
    move-object/from16 v16, v5

    const/4 v4, 0x0

    .line 880
    :goto_16a
    if-nez v4, :cond_191

    .line 881
    const-string v4, "AccessibilityCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid parent-child relation between parent: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " and child: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_191

    .line 870
    :cond_18f
    move-object/from16 v16, v5

    .line 887
    :cond_191
    :goto_191
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v4

    .line 888
    const/4 v5, 0x0

    :goto_196
    if-ge v5, v4, :cond_1d7

    .line 889
    invoke-virtual {v12, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 890
    if-eqz v14, :cond_1d2

    .line 891
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 892
    if-eq v14, v12, :cond_1d2

    .line 893
    const-string v14, "AccessibilityCache"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid child-parent relation between child: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " and parent: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_1d2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_196

    :cond_1d7
    move-object/from16 v5, v16

    .line 837
    :goto_1d9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_b3

    .line 827
    :cond_1df
    :goto_1df
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_91

    .line 900
    :cond_1e5
    monitor-exit v1

    .line 901
    return-void

    .line 900
    :catchall_1e7
    move-exception v0

    monitor-exit v1
    :try_end_1e9
    .catchall {:try_start_5 .. :try_end_1e9} :catchall_1e7

    throw v0
.end method

.method public greylist-max-o clear()V
    .registers 4

    .line 571
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_3
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_e

    .line 573
    const-string v1, "AccessibilityCache"

    const-string v2, "clear()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_e
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    .line 576
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 577
    add-int/lit8 v1, v1, -0x1

    :goto_19
    if-ltz v1, :cond_27

    .line 578
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 579
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    .line 577
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 582
    :cond_27
    const-wide/32 v1, 0x7fffffff

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 583
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 585
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 586
    iput v1, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 587
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public blacklist clearOnNodeAddedListener()V
    .registers 3

    .line 918
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 919
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

    .line 920
    monitor-exit v0

    .line 921
    return-void

    .line 920
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist clearSubTree(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 6

    .line 713
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 714
    return v0

    .line 716
    :cond_4
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 717
    :try_start_7
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v2, :cond_18

    .line 718
    sget-boolean p1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz p1, :cond_16

    .line 719
    const-string p1, "AccessibilityCache"

    const-string v2, "Cache is disabled"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_16
    monitor-exit v1

    return v0

    .line 723
    :cond_18
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 724
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    .line 725
    :catchall_26
    move-exception p1

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public blacklist getEventSourceClassName(I)Ljava/lang/String;
    .registers 3

    .line 926
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowIdToEventSourceClassName:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public blacklist getFocus(IJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 17

    .line 624
    move/from16 v1, p4

    iget-object v6, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 625
    :try_start_5
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v7, 0x0

    if-nez v2, :cond_17

    .line 626
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_15

    .line 627
    const-string v0, "AccessibilityCache"

    const-string v1, "Cache is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_15
    monitor-exit v6

    return-object v7

    .line 633
    :cond_17
    const/4 v8, 0x2

    if-ne p1, v8, :cond_20

    .line 634
    iget v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 635
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    move-wide v9, v3

    goto :goto_25

    .line 637
    :cond_20
    iget v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 638
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    move-wide v9, v3

    .line 641
    :goto_25
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2a

    .line 642
    monitor-exit v6

    return-object v7

    .line 645
    :cond_2a
    const/4 v3, -0x2

    if-eq v1, v3, :cond_31

    if-eq v1, v2, :cond_31

    .line 647
    monitor-exit v6

    return-object v7

    .line 650
    :cond_31
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 651
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/util/LongSparseArray;

    .line 652
    if-nez v5, :cond_3e

    .line 653
    monitor-exit v6

    return-object v7

    .line 656
    :cond_3e
    invoke-virtual {v5, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 657
    if-nez v11, :cond_49

    .line 658
    monitor-exit v6

    return-object v7

    .line 661
    :cond_49
    cmp-long v1, p2, v9

    if-eqz v1, :cond_7f

    .line 662
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v1

    .line 661
    move-object v0, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityCache;->isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_7f

    .line 675
    :cond_5a
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v0, :cond_7d

    .line 676
    const-string v0, "AccessibilityCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFocus is null with type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 677
    if-ne p1, v8, :cond_70

    .line 678
    const-string v2, "FOCUS_ACCESSIBILITY"

    goto :goto_72

    .line 679
    :cond_70
    const-string v2, "FOCUS_INPUT"

    :goto_72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 676
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_7d
    monitor-exit v6

    return-object v7

    .line 663
    :cond_7f
    :goto_7f
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v0, :cond_ba

    .line 664
    const-string v0, "AccessibilityCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFocus(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 666
    if-ne p1, v8, :cond_ad

    .line 667
    const-string v2, "FOCUS_ACCESSIBILITY"

    goto :goto_af

    .line 668
    :cond_ad
    const-string v2, "FOCUS_INPUT"

    :goto_af
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_ba
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    monitor-exit v6

    return-object v0

    .line 682
    :catchall_c1
    move-exception v0

    monitor-exit v6
    :try_end_c3
    .catchall {:try_start_5 .. :try_end_c3} :catchall_c1

    throw v0
.end method

.method public greylist-max-o getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8

    .line 344
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 346
    sget-boolean p1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz p1, :cond_13

    .line 347
    const-string p1, "AccessibilityCache"

    const-string p2, "Cache is disabled"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_13
    monitor-exit v0

    return-object v2

    .line 351
    :cond_15
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/LongSparseArray;

    .line 352
    if-nez p1, :cond_21

    .line 353
    monitor-exit v0

    return-object v2

    .line 355
    :cond_21
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 356
    if-eqz p1, :cond_2f

    .line 359
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object p1, v1

    .line 361
    :cond_2f
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v1, :cond_59

    .line 362
    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get(0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_59
    monitor-exit v0

    return-object p1

    .line 365
    :catchall_5b
    move-exception p1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw p1
.end method

.method public greylist-max-o getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 7

    .line 459
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 461
    sget-boolean p1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz p1, :cond_13

    .line 462
    const-string p1, "AccessibilityCache"

    const-string v1, "Cache is disabled"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_13
    monitor-exit v0

    return-object v2

    .line 466
    :cond_15
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 467
    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v1, :cond_3b

    .line 468
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 469
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 470
    if-nez v4, :cond_29

    .line 471
    goto :goto_38

    .line 474
    :cond_29
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 475
    if-eqz v4, :cond_38

    .line 476
    new-instance p1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {p1, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    monitor-exit v0

    return-object p1

    .line 467
    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 479
    :cond_3b
    monitor-exit v0

    return-object v2

    .line 480
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public blacklist getWindowsOnAllDisplays()Landroid/util/SparseArray;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 399
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 400
    const-string v1, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_13
    monitor-exit v0

    return-object v2

    .line 404
    :cond_15
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    if-nez v1, :cond_1b

    .line 405
    monitor-exit v0

    return-object v2

    .line 407
    :cond_1b
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 408
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 410
    if-lez v3, :cond_84

    .line 411
    const/4 v2, 0x0

    move v4, v2

    :goto_2a
    if-ge v4, v3, :cond_82

    .line 412
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 413
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 414
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 416
    if-nez v6, :cond_3d

    .line 417
    goto :goto_7f

    .line 420
    :cond_3d
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 421
    if-lez v7, :cond_7f

    .line 423
    iget-object v8, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    .line 424
    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 426
    move v9, v2

    :goto_49
    if-ge v9, v7, :cond_5b

    .line 427
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 428
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v11

    invoke-virtual {v8, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 426
    add-int/lit8 v9, v9, 0x1

    goto :goto_49

    .line 434
    :cond_5b
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 435
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 437
    add-int/lit8 v6, v6, -0x1

    :goto_66
    if-ltz v6, :cond_7c

    .line 438
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 439
    new-instance v10, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v10, v9}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 437
    add-int/lit8 v6, v6, -0x1

    goto :goto_66

    .line 442
    :cond_7c
    invoke-virtual {v1, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    :cond_7f
    :goto_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 445
    :cond_82
    monitor-exit v0

    return-object v1

    .line 447
    :cond_84
    monitor-exit v0

    return-object v2

    .line 448
    :catchall_86
    move-exception v1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_3 .. :try_end_88} :catchall_86

    throw v1
.end method

.method public blacklist isEnabled()Z
    .registers 3

    .line 110
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 112
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isNodeInCache(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 7

    .line 370
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 371
    return v0

    .line 373
    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    .line 374
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    .line 375
    iget-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 376
    :try_start_f
    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v4, :cond_20

    .line 377
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 378
    const-string v1, "AccessibilityCache"

    const-string v2, "Cache is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1e
    monitor-exit p1

    return v0

    .line 382
    :cond_20
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 383
    if-nez v1, :cond_2c

    .line 384
    monitor-exit p1

    return v0

    .line 386
    :cond_2c
    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_33

    const/4 v0, 0x1

    :cond_33
    monitor-exit p1

    return v0

    .line 387
    :catchall_35
    move-exception v0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_35

    throw v0
.end method

.method public greylist-max-o onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 12

    .line 212
    nop

    .line 213
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_4
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_15

    .line 215
    sget-boolean p1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz p1, :cond_13

    .line 216
    const-string p1, "AccessibilityCache"

    const-string v1, "Cache is disabled"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_13
    monitor-exit v0

    return-void

    .line 220
    :cond_15
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_38

    .line 221
    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAccessibilityEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_38
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 224
    const/4 v2, 0x1

    const-wide/32 v3, 0x7fffffff

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_15c

    goto/16 :goto_138

    .line 280
    :sswitch_46
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    .line 281
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowChanges()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5c

    .line 282
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowIdToEventSourceClassName:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 284
    :cond_5c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowChanges()I

    move-result p1

    const/16 v1, 0x80

    if-ne p1, v1, :cond_69

    .line 288
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    .line 289
    goto/16 :goto_138

    .line 291
    :cond_69
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 293
    goto/16 :goto_138

    .line 236
    :sswitch_6e
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_138

    iget v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 237
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result p1

    if-ne v1, p1, :cond_138

    .line 238
    iget p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, p1, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 240
    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 241
    const/4 p1, -0x1

    iput p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    goto/16 :goto_138

    .line 226
    :sswitch_8f
    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_9c

    .line 227
    iget v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v1, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 229
    :cond_9c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 230
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result p1

    iput p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 231
    iget p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, p1, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 233
    goto/16 :goto_138

    .line 276
    :sswitch_b2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-direct {p0, v1, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 277
    goto/16 :goto_138

    .line 263
    :sswitch_bf
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c2
    .catchall {:try_start_4 .. :try_end_c2} :catchall_159

    .line 264
    :try_start_c2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v3

    .line 265
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 266
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result p1

    and-int/2addr p1, v2

    if-eqz p1, :cond_d5

    .line 268
    invoke-direct {p0, v3, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto :goto_d9

    .line 270
    :cond_d5
    invoke-direct {p0, v3, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 272
    :goto_d9
    monitor-exit v1

    .line 273
    goto :goto_138

    .line 272
    :catchall_db
    move-exception p1

    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_c2 .. :try_end_dd} :catchall_db

    :try_start_dd
    throw p1

    .line 295
    :sswitch_de
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    .line 296
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v1

    if-nez v1, :cond_101

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_101

    .line 297
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowIdToEventSourceClassName:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v3

    .line 298
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    :cond_101
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    goto :goto_138

    .line 246
    :sswitch_105
    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_114

    .line 247
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v1, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 249
    :cond_114
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 250
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 251
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result p1

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, p1, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 252
    goto :goto_138

    .line 258
    :sswitch_12b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    .line 259
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    .line 258
    invoke-direct {p0, v1, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 260
    nop

    .line 303
    :cond_138
    :goto_138
    monitor-exit v0
    :try_end_139
    .catchall {:try_start_dd .. :try_end_139} :catchall_159

    .line 305
    if-eqz v5, :cond_151

    .line 306
    sget-boolean p1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz p1, :cond_146

    .line 307
    const-string p1, "AccessibilityCache"

    const-string v0, "Refreshing and re-adding cached node."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_146
    iget-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    invoke-virtual {p1, v5, v2}, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;->refreshNode(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_151

    .line 310
    invoke-virtual {p0, v5}, Landroid/view/accessibility/AccessibilityCache;->add(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 313
    :cond_151
    sget-boolean p1, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    if-eqz p1, :cond_158

    .line 314
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->checkIntegrity()V

    .line 316
    :cond_158
    return-void

    .line 303
    :catchall_159
    move-exception p1

    :try_start_15a
    monitor-exit v0
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_159

    throw p1

    :sswitch_data_15c
    .sparse-switch
        0x1 -> :sswitch_12b
        0x4 -> :sswitch_12b
        0x8 -> :sswitch_105
        0x10 -> :sswitch_12b
        0x20 -> :sswitch_de
        0x800 -> :sswitch_bf
        0x1000 -> :sswitch_b2
        0x2000 -> :sswitch_12b
        0x8000 -> :sswitch_8f
        0x10000 -> :sswitch_6e
        0x400000 -> :sswitch_46
    .end sparse-switch
.end method

.method public blacklist registerOnNodeAddedListener(Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;)V
    .registers 3

    .line 909
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 910
    :try_start_3
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

    .line 911
    monitor-exit v0

    .line 912
    return-void

    .line 911
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public blacklist setEnabled(Z)V
    .registers 3

    .line 117
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    .line 119
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public blacklist setWindowsOnAllDisplays(Landroid/util/SparseArray;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;J)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_14

    .line 136
    sget-boolean p1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz p1, :cond_12

    .line 137
    const-string p1, "AccessibilityCache"

    const-string p2, "Cache is disabled"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_12
    monitor-exit v0

    return-void

    .line 141
    :cond_14
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 142
    const-string v1, "AccessibilityCache"

    const-string v2, "Set windows"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1f
    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    cmp-long p2, v1, p2

    if-lez p2, :cond_27

    .line 146
    monitor-exit v0

    return-void

    .line 148
    :cond_27
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    .line 149
    if-nez p1, :cond_2e

    .line 150
    monitor-exit v0

    return-void

    .line 153
    :cond_2e
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    .line 154
    const/4 p3, 0x0

    move v1, p3

    :goto_34
    if-ge v1, p2, :cond_5a

    .line 155
    nop

    .line 156
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 158
    if-nez v2, :cond_40

    .line 159
    goto :goto_57

    .line 162
    :cond_40
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 163
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 164
    move v5, p3

    :goto_49
    if-ge v5, v4, :cond_57

    .line 165
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {p0, v3, v6}, Landroid/view/accessibility/AccessibilityCache;->addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 164
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 154
    :cond_57
    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 168
    :cond_5a
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    .line 169
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_5f
    move-exception p1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw p1
.end method
