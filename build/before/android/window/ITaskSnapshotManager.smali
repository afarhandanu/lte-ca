.class public interface abstract Landroid/window/ITaskSnapshotManager;
.super Ljava/lang/Object;
.source "ITaskSnapshotManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskSnapshotManager$Stub;,
        Landroid/window/ITaskSnapshotManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.ITaskSnapshotManager"


# virtual methods
.method public abstract blacklist getTaskSnapshot(IJI)Landroid/window/TaskSnapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerTaskSnapshotListener(Landroid/window/ITaskSnapshotListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist takeTaskSnapshot(IZZ)Landroid/window/TaskSnapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterTaskSnapshotListener(Landroid/window/ITaskSnapshotListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
