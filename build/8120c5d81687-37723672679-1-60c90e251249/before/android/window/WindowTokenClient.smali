.class public Landroid/window/WindowTokenClient;
.super Landroid/os/Binder;
.source "WindowTokenClient.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mResourcesManager:Landroid/app/ResourcesManager;

.field private blacklist mShouldDumpConfigForIme:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    const-class v0, Landroid/window/WindowTokenClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 67
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 69
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    .line 74
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public blacklist attachContext(Landroid/content/Context;)V
    .registers 3

    .line 86
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_19

    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 90
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_15

    instance-of p1, p1, Landroid/inputmethodservice/AbstractInputMethodService;

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    iput-boolean p1, p0, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    .line 92
    return-void

    .line 87
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Context is already attached."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getClientTransactionListenerController()Landroid/app/servertransaction/ClientTransactionListenerController;
    .registers 2

    .line 247
    invoke-static {}, Landroid/app/servertransaction/ClientTransactionListenerController;->getInstance()Landroid/app/servertransaction/ClientTransactionListenerController;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 4

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    .line 113
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;IZ)V
    .registers 6

    .line 143
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 144
    if-nez v0, :cond_b

    .line 145
    return-void

    .line 147
    :cond_b
    if-eqz p3, :cond_22

    .line 149
    nop

    .line 150
    invoke-virtual {p0}, Landroid/window/WindowTokenClient;->getClientTransactionListenerController()Landroid/app/servertransaction/ClientTransactionListenerController;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v0}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPreChanged(Landroid/content/Context;)V

    .line 153
    :try_start_15
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/window/WindowTokenClient;->onConfigurationChangedInner(Landroid/content/Context;Landroid/content/res/Configuration;IZ)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1d

    .line 156
    invoke-virtual {v1, v0}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPostChanged(Landroid/content/Context;)V

    .line 157
    nop

    .line 158
    goto :goto_25

    .line 156
    :catchall_1d
    move-exception p1

    invoke-virtual {v1, v0}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPostChanged(Landroid/content/Context;)V

    .line 157
    throw p1

    .line 159
    :cond_22
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/window/WindowTokenClient;->onConfigurationChangedInner(Landroid/content/Context;Landroid/content/res/Configuration;IZ)V

    .line 161
    :goto_25
    return-void
.end method

.method public blacklist onConfigurationChangedInner(Landroid/content/Context;Landroid/content/res/Configuration;IZ)V
    .registers 13

    .line 167
    invoke-static {p2, p3}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;I)V

    .line 173
    iget-object v1, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    monitor-enter v1

    .line 174
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-static {v0, p3}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v6

    .line 175
    iget-object v3, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v7, 0x0

    move-object v5, p2

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Landroid/window/ConfigurationHelper;->shouldUpdateResources(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z

    move-result p2

    .line 178
    iget-object v0, v2, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v0

    .line 179
    iget-boolean v3, v2, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz v3, :cond_2a

    new-instance v3, Landroid/content/res/Configuration;

    iget-object v5, v2, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v3, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    .line 180
    :goto_2b
    if-eqz p2, :cond_32

    .line 181
    iget-object v5, v2, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 183
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_12d

    .line 185
    if-nez p2, :cond_77

    iget-boolean v1, v2, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz v1, :cond_77

    .line 186
    sget-object v1, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configuration not dispatch to IME because configuration is up to date. Current config="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", reported config="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", updated config="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", updated display ID="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_77
    if-eqz v6, :cond_7c

    .line 195
    invoke-virtual {p1, p3}, Landroid/content/Context;->updateDisplay(I)V

    .line 197
    :cond_7c
    if-eqz p2, :cond_12c

    .line 199
    iget-object p2, v2, Landroid/window/WindowTokenClient;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {p2, p0, v4, p3}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 201
    if-eqz p4, :cond_97

    instance-of p2, p1, Landroid/window/ConfigurationDispatcher;

    if-eqz p2, :cond_97

    move-object p2, p1

    check-cast p2, Landroid/window/ConfigurationDispatcher;

    .line 204
    invoke-interface {p2}, Landroid/window/ConfigurationDispatcher;->shouldReportPrivateChanges()Z

    move-result p3

    if-nez p3, :cond_94

    if-eqz v0, :cond_97

    .line 205
    :cond_94
    invoke-interface {p2, v4}, Landroid/window/ConfigurationDispatcher;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 209
    :cond_97
    invoke-static {v0}, Landroid/window/ConfigurationHelper;->freeTextLayoutCachesIfNeeded(I)V

    .line 210
    iget-boolean p2, v2, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz p2, :cond_12c

    .line 211
    if-nez p4, :cond_e8

    .line 212
    sget-object p2, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Only apply configuration update to Resources because shouldReportConfigChange is false. context="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", config="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", display ID="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 217
    const/4 p3, 0x5

    invoke-static {p3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    .line 218
    :cond_e8
    if-nez v0, :cond_12c

    .line 219
    sget-object p2, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Configuration not dispatch to IME because configuration has no  public difference with updated config.  Current config="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", reported config="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", updated config="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", display ID="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_12c
    :goto_12c
    return-void

    .line 183
    :catchall_12d
    move-exception v0

    move-object p1, v0

    :try_start_12f
    monitor-exit v1
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12d

    throw p1
.end method

.method public blacklist onWindowTokenRemoved()V
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 237
    if-eqz v0, :cond_12

    .line 238
    invoke-virtual {v0}, Landroid/content/Context;->destroy()V

    .line 239
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 241
    :cond_12
    return-void
.end method

.method public blacklist postOnConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 6

    .line 120
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda0;-><init>(Landroid/window/WindowTokenClient;)V

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 120
    invoke-static {v1, p1, p2, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 121
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 120
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method
