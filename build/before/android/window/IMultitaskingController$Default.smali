.class public Landroid/window/IMultitaskingController$Default;
.super Ljava/lang/Object;
.source "IMultitaskingController.java"

# interfaces
.implements Landroid/window/IMultitaskingController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IMultitaskingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getClientInterface(Landroid/window/IMultitaskingControllerCallback;)Landroid/window/IMultitaskingDelegate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist setMultitaskingDelegate(Landroid/window/IMultitaskingDelegate;)Landroid/window/IMultitaskingControllerCallback;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 p1, 0x0

    return-object p1
.end method
