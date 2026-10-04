.class public Landroid/window/WindowContext;
.super Landroid/content/ContextWrapper;
.source "WindowContext.java"

# interfaces
.implements Landroid/window/WindowProvider;
.implements Landroid/window/ConfigurationDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContext$WindowWrapper;
    }
.end annotation


# instance fields
.field private final blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;

.field private final blacklist mController:Landroid/window/WindowContextController;

.field private blacklist mFallbackWindowType:I

.field private final blacklist mOptions:Landroid/os/Bundle;

.field private final blacklist mType:I

.field private blacklist mWindow:Landroid/view/Window;

.field private final blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    .line 93
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/WindowContext;->mFallbackWindowType:I

    .line 64
    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    .line 95
    iput p2, p0, Landroid/window/WindowContext;->mType:I

    .line 96
    iput-object p3, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    .line 97
    invoke-static {p0}, Landroid/view/WindowManagerImpl;->createWindowContextWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p2

    iput-object p2, p0, Landroid/window/WindowContext;->mWindowManager:Landroid/view/WindowManager;

    .line 98
    invoke-virtual {p0}, Landroid/window/WindowContext;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/window/WindowTokenClient;

    .line 99
    new-instance p3, Landroid/window/WindowContextController;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/window/WindowTokenClient;

    invoke-direct {p3, p2}, Landroid/window/WindowContextController;-><init>(Landroid/window/WindowTokenClient;)V

    iput-object p3, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    .line 101
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 102
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->forceInvertColor()Z

    move-result p2

    if-eqz p2, :cond_40

    .line 104
    invoke-virtual {p0}, Landroid/window/WindowContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->setTheme(I)V

    .line 106
    :cond_40
    return-void
.end method

.method public static blacklist shouldFallbackToDefaultDisplay(Landroid/os/Bundle;)Z
    .registers 3

    .line 222
    const/4 v0, 0x0

    if-eqz p0, :cond_d

    .line 223
    const-string v1, "android.window.WindowProvider.reparentToDefaultDisplayWithDisplayRemoval"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    nop

    .line 222
    :goto_e
    return v0
.end method


# virtual methods
.method public blacklist attachToDisplayArea()V
    .registers 5

    .line 114
    iget-object v0, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    iget v1, p0, Landroid/window/WindowContext;->mType:I

    invoke-virtual {p0}, Landroid/window/WindowContext;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/window/WindowContextController;->attachToDisplayArea(IILandroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public blacklist attachWindow(Landroid/view/View;)V
    .registers 8

    .line 199
    iget-object v0, p0, Landroid/window/WindowContext;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_29

    .line 205
    new-instance v0, Landroid/window/WindowContext$WindowWrapper;

    invoke-direct {v0, p0, p1}, Landroid/window/WindowContext$WindowWrapper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/window/WindowContext;->mWindow:Landroid/view/Window;

    .line 206
    nop

    .line 207
    invoke-virtual {p0}, Landroid/window/WindowContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x20000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    move v4, p1

    .line 208
    iget-object v0, p0, Landroid/window/WindowContext;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/window/WindowContext;->mWindowManager:Landroid/view/WindowManager;

    .line 210
    invoke-virtual {p0}, Landroid/window/WindowContext;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v2

    .line 208
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;ZZ)V

    .line 215
    return-void

    .line 200
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This WindowContext has already attached a window. Window="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContext;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Please create another WindowContext if you want to attach another window."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist destroy()V
    .registers 2

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->clearCallbacks()V

    .line 163
    invoke-virtual {p0}, Landroid/window/WindowContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->destroy()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 165
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 166
    nop

    .line 167
    return-void

    .line 165
    :catchall_11
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 166
    throw v0
.end method

.method public blacklist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 284
    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 285
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 145
    :try_start_0
    invoke-virtual {p0}, Landroid/window/WindowContext;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 147
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 148
    nop

    .line 149
    return-void

    .line 147
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 148
    throw v0
.end method

.method public blacklist getFallbackWindowType()I
    .registers 2

    .line 182
    iget v0, p0, Landroid/window/WindowContext;->mFallbackWindowType:I

    return v0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 136
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 137
    iget-object p1, p0, Landroid/window/WindowContext;->mWindowManager:Landroid/view/WindowManager;

    return-object p1

    .line 139
    :cond_c
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getWindowContextOptions()Landroid/os/Bundle;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getWindowType()I
    .registers 2

    .line 230
    iget v0, p0, Landroid/window/WindowContext;->mType:I

    return v0
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    .line 171
    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 172
    return-void
.end method

.method public blacklist release()V
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    invoke-virtual {v0}, Landroid/window/WindowContextController;->detachIfNeeded()V

    .line 155
    invoke-virtual {p0}, Landroid/window/WindowContext;->destroy()V

    .line 156
    return-void
.end method

.method public blacklist reparentToDisplay(I)V
    .registers 5

    .line 125
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->reparentWindowTokenApi()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 126
    invoke-virtual {p0}, Landroid/window/WindowContext;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 127
    return-void

    .line 129
    :cond_d
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->updateDisplay(I)V

    .line 130
    iget-object v0, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    iget v1, p0, Landroid/window/WindowContext;->mType:I

    iget-object v2, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1, v2}, Landroid/window/WindowContextController;->reparentToDisplayArea(IILandroid/os/Bundle;)V

    .line 132
    :cond_19
    return-void
.end method

.method public blacklist setFallbackWindowType(I)V
    .registers 5

    .line 261
    invoke-virtual {p0, p1}, Landroid/window/WindowContext;->isSelfOrSubWindowType(I)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    goto :goto_2f

    .line 263
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The window type override must be either "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/WindowContext;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or a sub window type, but it\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_2f
    :goto_2f
    iput p1, p0, Landroid/window/WindowContext;->mFallbackWindowType:I

    .line 271
    return-void
.end method

.method public blacklist shouldReportPrivateChanges()Z
    .registers 2

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    .line 176
    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 177
    return-void
.end method
