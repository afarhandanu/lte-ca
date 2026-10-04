.class public Landroid/window/ITaskSnapshotManager$Default;
.super Ljava/lang/Object;
.source "ITaskSnapshotManager.java"

# interfaces
.implements Landroid/window/ITaskSnapshotManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskSnapshotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTaskSnapshot(IJI)Landroid/window/TaskSnapshot;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist registerTaskSnapshotListener(Landroid/window/ITaskSnapshotListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist takeTaskSnapshot(IZZ)Landroid/window/TaskSnapshot;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist unregisterTaskSnapshotListener(Landroid/window/ITaskSnapshotListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method
