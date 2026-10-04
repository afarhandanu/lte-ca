.class public abstract Landroid/window/WindowBase;
.super Landroid/view/Window;
.source "WindowBase.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 68
    return-void
.end method

.method public blacklist alwaysReadCloseOnTouchAttr()V
    .registers 1

    .line 56
    return-void
.end method

.method public blacklist clearContentView()V
    .registers 1

    .line 71
    return-void
.end method

.method public whitelist closeAllPanels()V
    .registers 1

    .line 108
    return-void
.end method

.method public whitelist closePanel(I)V
    .registers 2

    .line 89
    return-void
.end method

.method public whitelist getCurrentFocus()Landroid/view/View;
    .registers 2

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getNavigationBarColor()I
    .registers 2

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getStatusBarColor()I
    .registers 2

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getVolumeControlStream()I
    .registers 2

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist invalidatePanelMenu(I)V
    .registers 2

    .line 95
    return-void
.end method

.method public whitelist isFloating()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 188
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist onActive()V
    .registers 1

    .line 178
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 116
    return-void
.end method

.method public blacklist onMultiWindowModeChanged()V
    .registers 1

    .line 222
    return-void
.end method

.method public blacklist onPictureInPictureModeChanged(Z)V
    .registers 2

    .line 225
    return-void
.end method

.method public whitelist openPanel(ILandroid/view/KeyEvent;)V
    .registers 3

    .line 86
    return-void
.end method

.method public whitelist peekDecorView()Landroid/view/View;
    .registers 2

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist performContextMenuIdentifierAction(II)Z
    .registers 3

    .line 112
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist performPanelIdentifierAction(III)Z
    .registers 4

    .line 104
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .registers 5

    .line 99
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 2

    .line 175
    return-void
.end method

.method public whitelist saveHierarchyState()Landroid/os/Bundle;
    .registers 2

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 119
    return-void
.end method

.method public whitelist setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 181
    return-void
.end method

.method public whitelist setChildInt(II)V
    .registers 3

    .line 184
    return-void
.end method

.method public whitelist setContentView(I)V
    .registers 2

    .line 59
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 2

    .line 62
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 65
    return-void
.end method

.method public whitelist setDecorCaptionShade(I)V
    .registers 2

    .line 216
    return-void
.end method

.method public whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 128
    return-void
.end method

.method public whitelist setFeatureDrawableAlpha(II)V
    .registers 3

    .line 131
    return-void
.end method

.method public whitelist setFeatureDrawableResource(II)V
    .registers 3

    .line 122
    return-void
.end method

.method public whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 3

    .line 125
    return-void
.end method

.method public whitelist setFeatureInt(II)V
    .registers 3

    .line 134
    return-void
.end method

.method public whitelist setNavigationBarColor(I)V
    .registers 2

    .line 213
    return-void
.end method

.method public whitelist setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 219
    return-void
.end method

.method public whitelist setStatusBarColor(I)V
    .registers 2

    .line 205
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 80
    return-void
.end method

.method public whitelist setTitleColor(I)V
    .registers 2

    .line 83
    return-void
.end method

.method public whitelist setVolumeControlStream(I)V
    .registers 2

    .line 192
    return-void
.end method

.method public whitelist superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 161
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 141
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 146
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 151
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 156
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .registers 2

    .line 48
    return-void
.end method

.method public whitelist takeKeyEvents(Z)V
    .registers 2

    .line 137
    return-void
.end method

.method public whitelist takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .registers 2

    .line 45
    return-void
.end method

.method public whitelist togglePanel(ILandroid/view/KeyEvent;)V
    .registers 3

    .line 92
    return-void
.end method
