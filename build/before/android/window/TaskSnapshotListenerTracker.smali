.class Landroid/window/TaskSnapshotListenerTracker;
.super Landroid/window/ITaskSnapshotListener$Stub;
.source "TaskSnapshotListenerTracker.java"


# instance fields
.field private final blacklist mLocalListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/TaskSnapshotListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mManager:Landroid/window/TaskSnapshotManager;


# direct methods
.method constructor blacklist <init>(Landroid/window/TaskSnapshotManager;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Landroid/window/ITaskSnapshotListener$Stub;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TaskSnapshotListenerTracker;->mLocalListeners:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Landroid/window/TaskSnapshotListenerTracker;->mManager:Landroid/window/TaskSnapshotManager;

    .line 33
    return-void
.end method


# virtual methods
.method blacklist isEmpty()Z
    .registers 3

    .line 51
    iget-object v0, p0, Landroid/window/TaskSnapshotListenerTracker;->mLocalListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object v1, p0, Landroid/window/TaskSnapshotListenerTracker;->mLocalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 53
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .registers 6

    .line 62
    iget-object v0, p0, Landroid/window/TaskSnapshotListenerTracker;->mLocalListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 63
    :try_start_3
    invoke-virtual {p0}, Landroid/window/TaskSnapshotListenerTracker;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 64
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->closeBuffer()V

    .line 65
    monitor-exit v0

    return-void

    .line 67
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/window/TaskSnapshotListenerTracker;->mLocalListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_34

    .line 69
    iget-object v0, p0, Landroid/window/TaskSnapshotListenerTracker;->mManager:Landroid/window/TaskSnapshotManager;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Landroid/window/TaskSnapshotManager;->createTrackerWithCount(ILandroid/window/TaskSnapshot;I)V

    .line 70
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskSnapshotListener;

    .line 71
    invoke-virtual {v1, p1, p2}, Landroid/window/TaskSnapshotListener;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    .line 72
    goto :goto_23

    .line 73
    :cond_33
    return-void

    .line 68
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onTaskSnapshotInvalidated(I)V
    .registers 5

    .line 81
    iget-object v0, p0, Landroid/window/TaskSnapshotListenerTracker;->mLocalListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 82
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/window/TaskSnapshotListenerTracker;->mLocalListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskSnapshotListener;

    .line 85
    invoke-virtual {v1, p1}, Landroid/window/TaskSnapshotListener;->onTaskSnapshotInvalidated(I)V

    .line 86
    goto :goto_f

    .line 87
    :cond_1f
    return-void

    .line 83
    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method blacklist registerLocalListener(Landroid/window/TaskSnapshotListener;)V
    .registers 4

    .line 36
    iget-object v0, p0, Landroid/window/TaskSnapshotListenerTracker;->mLocalListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 37
    :try_start_3
    iget-object v1, p0, Landroid/window/TaskSnapshotListenerTracker;->mLocalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 38
    monitor-exit v0

    return-void

    .line 40
    :cond_d
    iget-object v1, p0, Landroid/window/TaskSnapshotListenerTracker;->mLocalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 41
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method blacklist unregisterLocalListener(Landroid/window/TaskSnapshotListener;)V
    .registers 4

    .line 45
    iget-object v0, p0, Landroid/window/TaskSnapshotListenerTracker;->mLocalListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 46
    :try_start_3
    iget-object v1, p0, Landroid/window/TaskSnapshotListenerTracker;->mLocalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 47
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
