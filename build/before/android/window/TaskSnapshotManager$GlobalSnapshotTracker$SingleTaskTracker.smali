.class Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;
.super Ljava/lang/Object;
.source "TaskSnapshotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleTaskTracker"
.end annotation


# static fields
.field static final blacklist TRACKER_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/window/TaskSnapshotManager$SnapshotTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mHighResSortedTrackers:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroid/window/TaskSnapshotManager$SnapshotTracker;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mLowResSortedTrackers:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroid/window/TaskSnapshotManager$SnapshotTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 361
    new-instance v0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker$1;

    invoke-direct {v0}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker$1;-><init>()V

    sput-object v0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->TRACKER_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->TRACKER_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->mHighResSortedTrackers:Ljava/util/TreeSet;

    .line 359
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->TRACKER_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->mLowResSortedTrackers:Ljava/util/TreeSet;

    return-void
.end method

.method private static blacklist peekFirst(Ljava/util/TreeSet;)Landroid/window/TaskSnapshotManager$SnapshotTracker;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Landroid/window/TaskSnapshotManager$SnapshotTracker;",
            ">;)",
            "Landroid/window/TaskSnapshotManager$SnapshotTracker;"
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    :cond_8
    invoke-virtual {p0}, Ljava/util/TreeSet;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;

    :goto_e
    return-object p0
.end method


# virtual methods
.method blacklist addTracker(Landroid/window/TaskSnapshotManager$SnapshotTracker;)V
    .registers 3

    .line 374
    iget-boolean v0, p1, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mIsLowResolution:Z

    if-eqz v0, :cond_7

    .line 375
    iget-object v0, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->mLowResSortedTrackers:Ljava/util/TreeSet;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->mHighResSortedTrackers:Ljava/util/TreeSet;

    .line 376
    :goto_9
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method blacklist dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 431
    iget-object v0, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->mHighResSortedTrackers:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskSnapshotManager$SnapshotTracker;

    .line 432
    invoke-virtual {v1, p1}, Landroid/window/TaskSnapshotManager$SnapshotTracker;->dump(Ljava/io/PrintWriter;)V

    .line 433
    goto :goto_6

    .line 434
    :cond_16
    iget-object v0, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->mLowResSortedTrackers:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskSnapshotManager$SnapshotTracker;

    .line 435
    invoke-virtual {v1, p1}, Landroid/window/TaskSnapshotManager$SnapshotTracker;->dump(Ljava/io/PrintWriter;)V

    .line 436
    goto :goto_1c

    .line 437
    :cond_2c
    return-void
.end method

.method blacklist isEmpty()Z
    .registers 2

    .line 427
    iget-object v0, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->mHighResSortedTrackers:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->mLowResSortedTrackers:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method blacklist peekLatestSnapshot(I)Landroid/window/TaskSnapshotManager$SnapshotTracker;
    .registers 10

    .line 381
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_a

    if-ne p1, v0, :cond_8

    goto :goto_a

    .line 382
    :cond_8
    move-object v3, v1

    goto :goto_10

    :cond_a
    :goto_a
    iget-object v3, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->mHighResSortedTrackers:Ljava/util/TreeSet;

    invoke-static {v3}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->peekFirst(Ljava/util/TreeSet;)Landroid/window/TaskSnapshotManager$SnapshotTracker;

    move-result-object v3

    .line 384
    :goto_10
    if-eq p1, v2, :cond_18

    const/4 v2, 0x2

    if-ne p1, v2, :cond_16

    goto :goto_18

    .line 385
    :cond_16
    move-object v2, v1

    goto :goto_1e

    :cond_18
    :goto_18
    iget-object v2, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->mLowResSortedTrackers:Ljava/util/TreeSet;

    invoke-static {v2}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->peekFirst(Ljava/util/TreeSet;)Landroid/window/TaskSnapshotManager$SnapshotTracker;

    move-result-object v2

    .line 388
    :goto_1e
    if-eqz v3, :cond_2d

    if-eqz v2, :cond_2d

    .line 389
    iget-wide v4, v3, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mCaptureTime:J

    iget-wide v6, v2, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mCaptureTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2b

    goto :goto_31

    :cond_2b
    move-object v3, v2

    goto :goto_31

    .line 391
    :cond_2d
    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move-object v3, v2

    .line 393
    :goto_31
    if-nez v3, :cond_34

    .line 394
    return-object v1

    .line 396
    :cond_34
    iget-object v1, v3, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mSnapshot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskSnapshot;

    .line 397
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->isBufferValid()Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_46

    .line 402
    :cond_45
    return-object v3

    .line 398
    :cond_46
    :goto_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove unused tracker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskSnapshotManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p0, v3, v0}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->stopTrack(Landroid/window/TaskSnapshotManager$SnapshotTracker;Z)V

    .line 400
    invoke-virtual {p0, p1}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->peekLatestSnapshot(I)Landroid/window/TaskSnapshotManager$SnapshotTracker;

    move-result-object p1

    return-object p1
.end method

.method blacklist stopTrack(Landroid/window/TaskSnapshotManager$SnapshotTracker;Z)V
    .registers 5

    .line 411
    iget-object v0, p1, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mSnapshot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskSnapshot;

    .line 412
    invoke-virtual {p1}, Landroid/window/TaskSnapshotManager$SnapshotTracker;->decreaseReference()I

    move-result v1

    .line 413
    if-nez p2, :cond_19

    if-lez v1, :cond_19

    if-eqz v0, :cond_19

    .line 414
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->isBufferValid()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 415
    return-void

    .line 417
    :cond_19
    if-eqz v0, :cond_22

    .line 418
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/window/TaskSnapshot;->setSnapshotTracker(Landroid/window/TaskSnapshotManager$SnapshotTracker;)V

    .line 419
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->closeBuffer()V

    .line 421
    :cond_22
    iget-boolean p2, p1, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mIsLowResolution:Z

    if-eqz p2, :cond_29

    .line 422
    iget-object p2, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->mLowResSortedTrackers:Ljava/util/TreeSet;

    goto :goto_2b

    :cond_29
    iget-object p2, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->mHighResSortedTrackers:Ljava/util/TreeSet;

    .line 423
    :goto_2b
    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 424
    return-void
.end method
