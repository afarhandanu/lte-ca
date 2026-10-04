.class Landroid/widget/MediaController$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/MediaController;


# direct methods
.method constructor blacklist <init>(Landroid/widget/MediaController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 226
    iput-object p1, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 231
    iget-object p1, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->-$$Nest$mupdateFloatingWindowLayout(Landroid/widget/MediaController;)V

    .line 232
    iget-object p1, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->-$$Nest$fgetmShowing(Landroid/widget/MediaController;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 233
    iget-object p1, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->-$$Nest$fgetmWindowManager(Landroid/widget/MediaController;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {p2}, Landroid/widget/MediaController;->-$$Nest$fgetmDecor(Landroid/widget/MediaController;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {p3}, Landroid/widget/MediaController;->-$$Nest$fgetmDecorLayoutParams(Landroid/widget/MediaController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    :cond_22
    return-void
.end method
