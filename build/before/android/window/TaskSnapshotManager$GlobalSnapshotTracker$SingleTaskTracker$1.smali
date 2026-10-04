.class Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker$1;
.super Ljava/lang/Object;
.source "TaskSnapshotManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/window/TaskSnapshotManager$SnapshotTracker;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/window/TaskSnapshotManager$SnapshotTracker;Landroid/window/TaskSnapshotManager$SnapshotTracker;)I
    .registers 7

    .line 364
    iget-wide v0, p1, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mCaptureTime:J

    iget-wide v2, p2, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mCaptureTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 365
    const/4 p1, 0x1

    return p1

    .line 366
    :cond_a
    iget-wide v0, p1, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mCaptureTime:J

    iget-wide p1, p2, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mCaptureTime:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_14

    .line 367
    const/4 p1, -0x1

    return p1

    .line 369
    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 361
    check-cast p1, Landroid/window/TaskSnapshotManager$SnapshotTracker;

    check-cast p2, Landroid/window/TaskSnapshotManager$SnapshotTracker;

    invoke-virtual {p0, p1, p2}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$SingleTaskTracker$1;->compare(Landroid/window/TaskSnapshotManager$SnapshotTracker;Landroid/window/TaskSnapshotManager$SnapshotTracker;)I

    move-result p1

    return p1
.end method
