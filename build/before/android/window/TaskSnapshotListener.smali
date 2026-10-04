.class public abstract Landroid/window/TaskSnapshotListener;
.super Ljava/lang/Object;
.source "TaskSnapshotListener.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .registers 3

    .line 27
    return-void
.end method

.method protected blacklist onTaskSnapshotInvalidated(I)V
    .registers 2

    .line 32
    return-void
.end method
