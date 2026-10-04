.class public Landroid/view/inputmethod/InputMethodManagerGlobal;
.super Ljava/lang/Object;
.source "InputMethodManagerGlobal.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isImeTraceAvailable()Z
    .registers 1

    .line 41
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static blacklist isImeTraceEnabled()Z
    .registers 1

    .line 74
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->isImeTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist startImeTrace(Ljava/util/function/Consumer;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-static {p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startImeTrace(Ljava/util/function/Consumer;)V

    .line 53
    return-void
.end method

.method public static blacklist stopImeTrace(Ljava/util/function/Consumer;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-static {p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->stopImeTrace(Ljava/util/function/Consumer;)V

    .line 64
    return-void
.end method
