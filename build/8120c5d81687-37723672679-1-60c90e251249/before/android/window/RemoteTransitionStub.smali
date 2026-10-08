.class public abstract Landroid/window/RemoteTransitionStub;
.super Landroid/window/IRemoteTransition$Stub;
.source "RemoteTransitionStub.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist onTransitionConsumed(Landroid/os/IBinder;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist takeOverAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;[Landroid/window/WindowAnimationState;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Takeovers are not supported by this IRemoteTransition"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
