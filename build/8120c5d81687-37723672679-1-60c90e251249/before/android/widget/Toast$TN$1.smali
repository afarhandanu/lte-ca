.class Landroid/widget/Toast$TN$1;
.super Landroid/os/Handler;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toast$TN;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Binder;Ljava/util/List;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Toast$TN;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Toast$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 678
    iput-object p1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 681
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_38

    goto :goto_36

    .line 695
    :pswitch_7
    iget-object p1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/widget/Toast$TN;->handleHide()V

    .line 698
    iget-object p1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iput-object v1, p1, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 700
    :try_start_10
    invoke-static {}, Landroid/widget/Toast;->-$$Nest$smgetService()Landroid/app/INotificationManager;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iget-object v0, v0, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iget-object v1, v1, Landroid/widget/Toast$TN;->mToken:Landroid/os/Binder;

    invoke-interface {p1, v0, v1}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1f} :catch_20

    .line 702
    goto :goto_36

    .line 701
    :catch_20
    move-exception p1

    goto :goto_36

    .line 688
    :pswitch_22
    iget-object p1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/widget/Toast$TN;->handleHide()V

    .line 691
    iget-object p1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iput-object v1, p1, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 692
    goto :goto_36

    .line 683
    :pswitch_2c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    .line 684
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-virtual {v0, p1}, Landroid/widget/Toast$TN;->handleShow(Landroid/os/IBinder;)V

    .line 685
    nop

    .line 706
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_22
        :pswitch_7
    .end packed-switch
.end method
