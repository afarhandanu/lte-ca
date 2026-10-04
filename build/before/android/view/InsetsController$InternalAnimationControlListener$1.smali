.class Landroid/view/InsetsController$InternalAnimationControlListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/InsetsController$InternalAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/InsetsController$InternalAnimationControlListener;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 466
    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 478
    iget-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {p1}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$fgetmInputMethodJankContext(Landroid/view/InsetsController$InternalAnimationControlListener;)Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 479
    :cond_9
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forJank()Landroid/view/inputmethod/ImeTracker$ImeJankTracker;

    move-result-object p1

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {v0}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$mgetAnimationType(Landroid/view/InsetsController$InternalAnimationControlListener;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->onCancelAnimation(I)V

    .line 480
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 484
    iget-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-virtual {p1}, Landroid/view/InsetsController$InternalAnimationControlListener;->onAnimationFinish()V

    .line 485
    iget-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {p1}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$fgetmInputMethodJankContext(Landroid/view/InsetsController$InternalAnimationControlListener;)Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    .line 486
    :cond_e
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forJank()Landroid/view/inputmethod/ImeTracker$ImeJankTracker;

    move-result-object p1

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {v0}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$mgetAnimationType(Landroid/view/InsetsController$InternalAnimationControlListener;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->onFinishAnimation(I)V

    .line 487
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    .line 469
    iget-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {p1}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$fgetmInputMethodJankContext(Landroid/view/InsetsController$InternalAnimationControlListener;)Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 470
    :cond_9
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forJank()Landroid/view/inputmethod/ImeTracker$ImeJankTracker;

    move-result-object p1

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {v0}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$fgetmInputMethodJankContext(Landroid/view/InsetsController$InternalAnimationControlListener;)Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    .line 472
    invoke-static {v1}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$mgetAnimationType(Landroid/view/InsetsController$InternalAnimationControlListener;)I

    move-result v1

    iget-object v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-static {v2}, Landroid/view/InsetsController$InternalAnimationControlListener;->-$$Nest$fgetmHasAnimationCallbacks(Landroid/view/InsetsController$InternalAnimationControlListener;)Z

    move-result v2

    .line 470
    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->onRequestAnimation(Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;IZ)V

    .line 474
    return-void
.end method
