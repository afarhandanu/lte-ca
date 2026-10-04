.class Landroid/widget/ZoomButtonsController$2;
.super Landroid/os/Handler;
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

    .line 172
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 175
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_30

    goto :goto_2e

    .line 185
    :pswitch_6
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {p1}, Landroid/widget/ZoomButtonsController;->-$$Nest$fgetmOwnerView(Landroid/widget/ZoomButtonsController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1a

    .line 187
    const-string p1, "ZoomButtonsController"

    const-string v0, "Cannot make the zoom controller visible if the owner view is not attached to a window."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 191
    :cond_1a
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_2e

    .line 181
    :pswitch_21
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 182
    goto :goto_2e

    .line 177
    :pswitch_28
    iget-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {p1}, Landroid/widget/ZoomButtonsController;->-$$Nest$monPostConfigurationChanged(Landroid/widget/ZoomButtonsController;)V

    .line 178
    nop

    .line 196
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_28
        :pswitch_21
        :pswitch_6
    .end packed-switch
.end method
