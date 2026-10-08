.class public interface abstract Landroid/view/inputmethod/InputMethod;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethod$SessionCallback;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.view.InputMethod"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.view.im"

.field public static final whitelist SHOW_EXPLICIT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SHOW_FORCED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TAG:Ljava/lang/String; = "InputMethod"


# virtual methods
.method public abstract whitelist attachToken(Landroid/os/IBinder;)V
.end method

.method public abstract whitelist bindInput(Landroid/view/inputmethod/InputBinding;)V
.end method

.method public blacklist canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V
    .registers 5

    .line 377
    return-void
.end method

.method public abstract whitelist changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
.end method

.method public blacklist commitHandwritingDelegationTextIfAvailable()V
    .registers 1

    .line 405
    return-void
.end method

.method public abstract whitelist createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V
.end method

.method public blacklist discardHandwritingDelegationText()V
    .registers 1

    .line 415
    return-void
.end method

.method public blacklist dispatchStartInput(Landroid/view/inputmethod/InputConnection;Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;)V
    .registers 4

    .line 225
    iget-boolean v0, p2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->restarting:Z

    if-eqz v0, :cond_a

    .line 226
    iget-object p2, p2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputMethod;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_f

    .line 228
    :cond_a
    iget-object p2, p2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputMethod;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 230
    :goto_f
    return-void
.end method

.method public blacklist finishStylusHandwriting()V
    .registers 1

    .line 431
    return-void
.end method

.method public abstract whitelist hideSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public blacklist hideSoftInputWithToken(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    .line 332
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/view/inputmethod/InputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    .line 333
    return-void
.end method

.method public blacklist initInkWindow()V
    .registers 1

    .line 423
    return-void
.end method

.method public blacklist initializeInternal(Lcom/android/internal/inputmethod/IInputMethod$InitParams;)V
    .registers 2

    .line 109
    iget-object p1, p1, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->token:Landroid/os/IBinder;

    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputMethod;->attachToken(Landroid/os/IBinder;)V

    .line 110
    return-void
.end method

.method public blacklist onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V
    .registers 4

    .line 123
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 126
    goto :goto_c

    .line 124
    :catch_4
    move-exception p1

    .line 125
    const-string p2, "InputMethod"

    const-string v0, "Failed to call onInlineSuggestionsUnsupported."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    :goto_c
    return-void
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .registers 2

    .line 240
    return-void
.end method

.method public blacklist removeStylusHandwritingWindow()V
    .registers 1

    .line 439
    return-void
.end method

.method public abstract whitelist restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
.end method

.method public abstract whitelist revokeSession(Landroid/view/inputmethod/InputMethodSession;)V
.end method

.method public abstract whitelist setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V
.end method

.method public blacklist setStylusWindowIdleTimeoutForTest(J)V
    .registers 3

    .line 447
    return-void
.end method

.method public abstract whitelist showSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public blacklist showSoftInputWithToken(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    .line 307
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/view/inputmethod/InputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V

    .line 308
    return-void
.end method

.method public abstract whitelist startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
.end method

.method public blacklist startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InputChannel;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 395
    return-void
.end method

.method public abstract whitelist unbindInput()V
.end method

.method public blacklist updateEditorToolType(I)V
    .registers 2

    .line 386
    return-void
.end method
