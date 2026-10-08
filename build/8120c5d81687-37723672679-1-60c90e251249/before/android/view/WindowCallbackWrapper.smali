.class public Landroid/view/WindowCallbackWrapper;
.super Ljava/lang/Object;
.source "WindowCallbackWrapper.java"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field private greylist-max-o mWrapped:Landroid/view/Window$Callback;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/Window$Callback;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-eqz p1, :cond_8

    .line 38
    iput-object p1, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    .line 39
    return-void

    .line 36
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Window callback may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 63
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 43
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 48
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    .line 68
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 53
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 58
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    .line 153
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 154
    return-void
.end method

.method public whitelist onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    .line 148
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 149
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 114
    return-void
.end method

.method public whitelist onContentChanged()V
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 104
    return-void
.end method

.method public whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    .line 78
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .registers 3

    .line 73
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 119
    return-void
.end method

.method public whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    .line 93
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public whitelist onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4

    .line 88
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public whitelist onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    .line 123
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 124
    return-void
.end method

.method public whitelist onPointerCaptureChanged(Z)V
    .registers 3

    .line 164
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    .line 165
    return-void
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    .line 83
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public whitelist onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 160
    return-void
.end method

.method public whitelist onSearchRequested()Z
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 3

    .line 128
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    .line 98
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 99
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 3

    .line 108
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 109
    return-void
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 138
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    .line 143
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
