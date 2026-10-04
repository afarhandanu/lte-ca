.class public final synthetic Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;

.field public final synthetic blacklist f$1:Landroid/window/TaskSnapshotManager$SnapshotTracker;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;Landroid/window/TaskSnapshotManager$SnapshotTracker;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$$ExternalSyntheticLambda0;->f$0:Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;

    iput-object p2, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$$ExternalSyntheticLambda0;->f$1:Landroid/window/TaskSnapshotManager$SnapshotTracker;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$$ExternalSyntheticLambda0;->f$0:Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;

    iget-object v1, p0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker$$ExternalSyntheticLambda0;->f$1:Landroid/window/TaskSnapshotManager$SnapshotTracker;

    invoke-static {v0, v1}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->$r8$lambda$dkMYLZ36xthuH4Mh9BHrYiQOBdk(Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;Landroid/window/TaskSnapshotManager$SnapshotTracker;)V

    return-void
.end method
