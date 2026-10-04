.class Landroid/view/ViewGroup$4;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewGroup;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 7257
    iput-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 5

    .line 7271
    iget-object p2, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-static {p2}, Landroid/view/ViewGroup;->-$$Nest$fgetmLayoutCalledWhileSuppressed(Landroid/view/ViewGroup;)Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result p1

    if-nez p1, :cond_19

    .line 7272
    iget-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 7273
    iget-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/view/ViewGroup;->-$$Nest$fputmLayoutCalledWhileSuppressed(Landroid/view/ViewGroup;Z)V

    .line 7275
    :cond_19
    const/4 p1, 0x3

    if-ne p4, p1, :cond_29

    iget-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/view/ViewGroup;->-$$Nest$fgetmTransitioningViews(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 7276
    iget-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 7278
    :cond_29
    return-void
.end method

.method public whitelist startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 5

    .line 7263
    const/4 p1, 0x3

    if-ne p4, p1, :cond_8

    .line 7264
    iget-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 7266
    :cond_8
    return-void
.end method
