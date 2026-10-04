.class public Landroid/view/SurfaceControl$LockDebuggingTransaction;
.super Landroid/view/SurfaceControl$Transaction;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockDebuggingTransaction"
.end annotation


# instance fields
.field blacklist mMonitor:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2

    .line 5564
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 5565
    iput-object p1, p0, Landroid/view/SurfaceControl$LockDebuggingTransaction;->mMonitor:Ljava/lang/Object;

    .line 5566
    return-void
.end method


# virtual methods
.method protected blacklist checkPreconditions(Landroid/view/SurfaceControl;)V
    .registers 3

    .line 5570
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 5571
    iget-object p1, p0, Landroid/view/SurfaceControl$LockDebuggingTransaction;->mMonitor:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 5575
    return-void

    .line 5572
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unlocked access to synchronized SurfaceControl.Transaction"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
