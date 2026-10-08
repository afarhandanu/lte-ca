.class Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;
.super Ljava/lang/Object;
.source "TaskSnapshotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskSnapshotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalSnapshotTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;
    }
.end annotation


# instance fields
.field final blacklist mSnapshotTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$dkMYLZ36xthuH4Mh9BHrYiQOBdk(Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;Landroid/window/TaskSnapshotManager$SnapshotTracker;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->lambda$createTracker$0(Landroid/window/TaskSnapshotManager$SnapshotTracker;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->mSnapshotTrackers:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/TaskSnapshotManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$createTracker$0(Landroid/window/TaskSnapshotManager$SnapshotTracker;)V
    .registers 4

    .line 309
    invoke-static {}, Landroid/window/TaskSnapshotManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 310
    const/4 v1, 0x1

    :try_start_6
    invoke-virtual {p0, p1, v1}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->removeTracker(Landroid/window/TaskSnapshotManager$SnapshotTracker;Z)V

    .line 311
    monitor-exit v0

    .line 312
    return-void

    .line 311
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw p1
.end method


# virtual methods
.method blacklist createTracker(ILandroid/window/TaskSnapshot;)V
    .registers 4

    .line 316
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->createTracker(ILandroid/window/TaskSnapshot;I)V

    .line 317
    return-void
.end method

.method blacklist createTracker(ILandroid/window/TaskSnapshot;I)V
    .registers 6

    .line 300
    iget-object v0, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->mSnapshotTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;

    .line 301
    if-nez v0, :cond_14

    .line 302
    new-instance v0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;

    invoke-direct {v0}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;-><init>()V

    .line 303
    iget-object v1, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->mSnapshotTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    :cond_14
    new-instance v1, Landroid/window/TaskSnapshotManager$SnapshotTracker;

    invoke-direct {v1, p1, p2, p3}, Landroid/window/TaskSnapshotManager$SnapshotTracker;-><init>(ILandroid/window/TaskSnapshot;I)V

    .line 307
    invoke-virtual {v0, v1}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->addTracker(Landroid/window/TaskSnapshotManager$SnapshotTracker;)V

    .line 308
    sget-object p1, Landroid/window/TaskSnapshotManager;->sCleaner:Ljava/lang/ref/Cleaner;

    new-instance p3, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v1}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$$ExternalSyntheticLambda0;-><init>(Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;Landroid/window/TaskSnapshotManager$SnapshotTracker;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/ref/Cleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/ref/Cleaner$Cleanable;

    .line 313
    return-void
.end method

.method blacklist dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 347
    iget-object v0, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->mSnapshotTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 348
    return-void

    .line 350
    :cond_9
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    const-string v0, "Task Snapshot Usage:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->mSnapshotTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-ltz v0, :cond_2b

    .line 353
    iget-object v1, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->mSnapshotTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;

    invoke-virtual {v1, p1}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->dump(Ljava/io/PrintWriter;)V

    .line 352
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 355
    :cond_2b
    return-void
.end method

.method blacklist peekLatestSnapshot(II)Landroid/window/TaskSnapshotManager$SnapshotTracker;
    .registers 4

    .line 335
    iget-object v0, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->mSnapshotTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;

    .line 336
    if-nez p1, :cond_c

    .line 338
    const/4 p1, 0x0

    return-object p1

    .line 340
    :cond_c
    invoke-virtual {p1, p2}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->peekLatestSnapshot(I)Landroid/window/TaskSnapshotManager$SnapshotTracker;

    move-result-object p1

    return-object p1
.end method

.method blacklist removeTracker(Landroid/window/TaskSnapshotManager$SnapshotTracker;Z)V
    .registers 5

    .line 320
    if-nez p1, :cond_3

    .line 321
    return-void

    .line 323
    :cond_3
    iget v0, p1, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mTaskId:I

    .line 324
    iget-object v1, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->mSnapshotTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;

    .line 325
    if-nez v1, :cond_10

    .line 326
    return-void

    .line 328
    :cond_10
    invoke-virtual {v1, p1, p2}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->stopTrack(Landroid/window/TaskSnapshotManager$SnapshotTracker;Z)V

    .line 329
    invoke-virtual {v1}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 330
    iget-object p1, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->mSnapshotTrackers:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 332
    :cond_1e
    return-void
.end method
