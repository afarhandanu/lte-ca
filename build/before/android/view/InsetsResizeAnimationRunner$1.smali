.class Landroid/view/InsetsResizeAnimationRunner$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InsetsResizeAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/InsetsResizeAnimationRunner;->onReady(Landroid/view/WindowInsetsAnimationController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/InsetsResizeAnimationRunner;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsResizeAnimationRunner;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 152
    iput-object p1, p0, Landroid/view/InsetsResizeAnimationRunner$1;->this$0:Landroid/view/InsetsResizeAnimationRunner;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 156
    iget-object p1, p0, Landroid/view/InsetsResizeAnimationRunner$1;->this$0:Landroid/view/InsetsResizeAnimationRunner;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/view/InsetsResizeAnimationRunner;->-$$Nest$fputmFinished(Landroid/view/InsetsResizeAnimationRunner;Z)V

    .line 157
    iget-object p1, p0, Landroid/view/InsetsResizeAnimationRunner$1;->this$0:Landroid/view/InsetsResizeAnimationRunner;

    invoke-static {p1}, Landroid/view/InsetsResizeAnimationRunner;->-$$Nest$fgetmController(Landroid/view/InsetsResizeAnimationRunner;)Landroid/view/InsetsAnimationControlCallbacks;

    move-result-object p1

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner$1;->this$0:Landroid/view/InsetsResizeAnimationRunner;

    invoke-interface {p1, v0}, Landroid/view/InsetsAnimationControlCallbacks;->scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V

    .line 158
    return-void
.end method
