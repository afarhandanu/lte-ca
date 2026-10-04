.class public interface abstract Landroid/window/ITaskSnapshotListener;
.super Ljava/lang/Object;
.source "ITaskSnapshotListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskSnapshotListener$Stub;,
        Landroid/window/ITaskSnapshotListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.ITaskSnapshotListener"


# virtual methods
.method public abstract blacklist onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTaskSnapshotInvalidated(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
