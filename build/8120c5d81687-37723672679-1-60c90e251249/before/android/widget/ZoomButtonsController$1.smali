.class Landroid/widget/ZoomButtonsController$1;
.super Landroid/content/BroadcastReceiver;
.source "ZoomButtonsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ZoomButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ZoomButtonsController;)V
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
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 155
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {p1}, Landroid/widget/ZoomButtonsController;->-$$Nest$fgetmIsVisible(Landroid/widget/ZoomButtonsController;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 157
    :cond_9
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {p1}, Landroid/widget/ZoomButtonsController;->-$$Nest$fgetmHandler(Landroid/widget/ZoomButtonsController;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {p1}, Landroid/widget/ZoomButtonsController;->-$$Nest$fgetmHandler(Landroid/widget/ZoomButtonsController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    return-void
.end method
