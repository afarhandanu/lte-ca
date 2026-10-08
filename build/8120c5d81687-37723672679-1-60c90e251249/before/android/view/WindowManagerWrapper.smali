.class public Landroid/view/WindowManagerWrapper;
.super Ljava/lang/Object;
.source "WindowManagerWrapper.java"

# interfaces
.implements Landroid/view/WindowManager;


# instance fields
.field private final blacklist mBase:Landroid/view/WindowManager;


# direct methods
.method public constructor blacklist <init>(Landroid/view/WindowManager;)V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 172
    return-void
.end method

.method public whitelist addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    .line 166
    return-void
.end method

.method public whitelist addProposedRotationListener(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 4

    .line 182
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->addProposedRotationListener(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 183
    return-void
.end method

.method public whitelist addScreenRecordingCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->addScreenRecordingCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I

    move-result p1

    return p1
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 63
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    return-void
.end method

.method public blacklist createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManager;
    .registers 3

    .line 308
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManager;

    move-result-object p1

    .line 309
    new-instance v0, Landroid/view/WindowManagerWrapper;

    invoke-direct {v0, p1}, Landroid/view/WindowManagerWrapper;-><init>(Landroid/view/WindowManager;)V

    return-object v0
.end method

.method public blacklist getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;
    .registers 3

    .line 113
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getCurrentImeTouchRegion()Landroid/graphics/Region;
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefaultDisplay()Landroid/view/Display;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultToken()Landroid/os/IBinder;
    .registers 2

    .line 287
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayImePolicy(I)I
    .registers 3

    .line 150
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->getDisplayImePolicy(I)I

    move-result p1

    return p1
.end method

.method public whitelist getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPossibleMaximumWindowMetrics(I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->getPossibleMaximumWindowMetrics(I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getSurfaceControlInputClientToken(Landroid/view/SurfaceControl;)Landroid/os/IBinder;
    .registers 3

    .line 275
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->getSurfaceControlInputClientToken(Landroid/view/SurfaceControl;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .registers 4

    .line 192
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->holdLock(Landroid/os/IBinder;I)V

    .line 193
    return-void
.end method

.method public whitelist isCrossWindowBlurEnabled()Z
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->isCrossWindowBlurEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isEligibleForDesktopMode(I)Z
    .registers 3

    .line 145
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->isEligibleForDesktopMode(I)Z

    move-result p1

    return p1
.end method

.method public blacklist isGlobalKey(I)Z
    .registers 3

    .line 155
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->isGlobalKey(I)Z

    move-result p1

    return p1
.end method

.method public blacklist isTaskSnapshotSupported()Z
    .registers 2

    .line 197
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->isTaskSnapshotSupported()Z

    move-result v0

    return v0
.end method

.method public whitelist notifyScreenshotListeners(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->notifyScreenshotListeners(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerBatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/view/Choreographer;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;
    .registers 6

    .line 253
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/WindowManager;->registerBatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/view/Choreographer;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerTaskFpsCallback(ILjava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;)V
    .registers 5

    .line 203
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManager;->registerTaskFpsCallback(ILjava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;)V

    .line 204
    return-void
.end method

.method public whitelist registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/window/TrustedPresentationThresholds;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/WindowManager;->registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 240
    return-void
.end method

.method public whitelist registerUnbatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/os/Looper;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;
    .registers 6

    .line 263
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/WindowManager;->registerUnbatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/os/Looper;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;

    move-result-object p1

    return-object p1
.end method

.method public whitelist removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    .line 177
    return-void
.end method

.method public whitelist removeProposedRotationListener(Ljava/util/function/IntConsumer;)V
    .registers 3

    .line 187
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeProposedRotationListener(Ljava/util/function/IntConsumer;)V

    .line 188
    return-void
.end method

.method public whitelist removeScreenRecordingCallback(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeScreenRecordingCallback(Ljava/util/function/Consumer;)V

    .line 304
    return-void
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .registers 3

    .line 73
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method public whitelist removeViewImmediate(Landroid/view/View;)V
    .registers 3

    .line 84
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public blacklist replaceContentOnDisplayWithMirror(ILandroid/view/Window;)Z
    .registers 4

    .line 226
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->replaceContentOnDisplayWithMirror(ILandroid/view/Window;)Z

    move-result p1

    return p1
.end method

.method public blacklist replaceContentOnDisplayWithSc(ILandroid/view/SurfaceControl;)Z
    .registers 4

    .line 232
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->replaceContentOnDisplayWithSc(ILandroid/view/SurfaceControl;)Z

    move-result p1

    return p1
.end method

.method public blacklist requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
    .registers 4

    .line 108
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    .line 109
    return-void
.end method

.method public blacklist requestImeKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
    .registers 4

    .line 118
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->requestImeKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    .line 119
    return-void
.end method

.method public blacklist setDisplayImePolicy(II)V
    .registers 4

    .line 139
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->setDisplayImePolicy(II)V

    .line 140
    return-void
.end method

.method public blacklist setParentWindow(Landroid/view/Window;)V
    .registers 3

    .line 314
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->setParentWindow(Landroid/view/Window;)V

    .line 315
    return-void
.end method

.method public blacklist setShouldShowWithInsecureKeyguard(IZ)V
    .registers 4

    .line 129
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->setShouldShowWithInsecureKeyguard(IZ)V

    .line 130
    return-void
.end method

.method public blacklist shouldShowSystemDecors(I)Z
    .registers 3

    .line 134
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->shouldShowSystemDecors(I)Z

    move-result p1

    return p1
.end method

.method public blacklist snapshotTaskForRecents(I)Landroid/graphics/Bitmap;
    .registers 3

    .line 214
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->snapshotTaskForRecents(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public whitelist transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z
    .registers 4

    .line 281
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z

    move-result p1

    return p1
.end method

.method public whitelist unregisterSurfaceControlInputReceiver(Landroid/view/SurfaceControl;)V
    .registers 3

    .line 269
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->unregisterSurfaceControlInputReceiver(Landroid/view/SurfaceControl;)V

    .line 270
    return-void
.end method

.method public whitelist unregisterTaskFpsCallback(Landroid/window/TaskFpsCallback;)V
    .registers 3

    .line 208
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->unregisterTaskFpsCallback(Landroid/window/TaskFpsCallback;)V

    .line 209
    return-void
.end method

.method public whitelist unregisterTrustedPresentationListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->unregisterTrustedPresentationListener(Ljava/util/function/Consumer;)V

    .line 245
    return-void
.end method

.method public whitelist updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 68
    iget-object v0, p0, Landroid/view/WindowManagerWrapper;->mBase:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    return-void
.end method
