.class Landroid/view/ImeBackAnimationController$1;
.super Ljava/lang/Object;
.source "ImeBackAnimationController.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ImeBackAnimationController;->onBackStarted(Landroid/window/BackEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ImeBackAnimationController;


# direct methods
.method constructor blacklist <init>(Landroid/view/ImeBackAnimationController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 101
    iput-object p1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .registers 2

    .line 122
    iget-object p1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p1}, Landroid/view/ImeBackAnimationController;->-$$Nest$mreset(Landroid/view/ImeBackAnimationController;)V

    .line 123
    return-void
.end method

.method public whitelist onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .registers 2

    .line 117
    iget-object p1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p1}, Landroid/view/ImeBackAnimationController;->-$$Nest$mreset(Landroid/view/ImeBackAnimationController;)V

    .line 118
    return-void
.end method

.method public whitelist onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .registers 3

    .line 105
    iget-object p2, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p2, p1}, Landroid/view/ImeBackAnimationController;->-$$Nest$fputmWindowInsetsAnimationController(Landroid/view/ImeBackAnimationController;Landroid/view/WindowInsetsAnimationController;)V

    .line 106
    iget-object p1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p1}, Landroid/view/ImeBackAnimationController;->-$$Nest$misAdjustPan(Landroid/view/ImeBackAnimationController;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    iget-object p2, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p2}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmViewRoot(Landroid/view/ImeBackAnimationController;)Landroid/view/ViewRootImpl;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewRootImpl;->mScrollY:I

    invoke-static {p1, p2}, Landroid/view/ImeBackAnimationController;->-$$Nest$fputmStartRootScrollY(Landroid/view/ImeBackAnimationController;I)V

    .line 107
    :cond_1a
    iget-object p1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p1}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmIsPreCommitAnimationInProgress(Landroid/view/ImeBackAnimationController;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 108
    iget-object p1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    iget-object p2, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p2}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmLastProgress(Landroid/view/ImeBackAnimationController;)F

    move-result p2

    invoke-static {p1, p2}, Landroid/view/ImeBackAnimationController;->-$$Nest$msetPreCommitProgress(Landroid/view/ImeBackAnimationController;F)V

    goto :goto_39

    .line 111
    :cond_2e
    iget-object p1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    iget-object p2, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {p2}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmTriggerBack(Landroid/view/ImeBackAnimationController;)Z

    move-result p2

    invoke-static {p1, p2}, Landroid/view/ImeBackAnimationController;->-$$Nest$mstartPostCommitAnim(Landroid/view/ImeBackAnimationController;Z)V

    .line 113
    :goto_39
    return-void
.end method
