.class public Landroid/window/SystemUiContext;
.super Landroid/content/ContextWrapper;
.source "SystemUiContext.java"

# interfaces
.implements Landroid/window/ConfigurationDispatcher;


# instance fields
.field private final blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Landroid/content/ComponentCallbacksController;

    invoke-direct {p1}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object p1, p0, Landroid/window/SystemUiContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 57
    iget-object v0, p0, Landroid/window/SystemUiContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/window/SystemUiContext;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/window/WindowTokenClient;

    .line 72
    invoke-static {}, Landroid/window/WindowTokenClientController;->getInstance()Landroid/window/WindowTokenClientController;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowTokenClient;

    invoke-virtual {v1, v0}, Landroid/window/WindowTokenClientController;->detachIfNeeded(Landroid/window/WindowTokenClient;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_18

    .line 74
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 75
    nop

    .line 76
    return-void

    .line 74
    :catchall_18
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 75
    throw v0
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    .line 46
    iget-object v0, p0, Landroid/window/SystemUiContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 47
    return-void
.end method

.method public blacklist shouldReportPrivateChanges()Z
    .registers 2

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    .line 51
    iget-object v0, p0, Landroid/window/SystemUiContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 52
    return-void
.end method
