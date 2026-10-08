.class Landroid/telephony/VisualVoicemailService$1;
.super Landroid/os/Handler;
.source "VisualVoicemailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/VisualVoicemailService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/VisualVoicemailService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 156
    iput-object p1, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 159
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Landroid/telecom/PhoneAccountHandle;

    .line 160
    const-string v2, "data_phone_account_handle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 161
    new-instance v1, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;-><init>(Landroid/os/Messenger;ILandroid/telephony/VisualVoicemailService-IA;)V

    .line 162
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_48

    .line 177
    :pswitch_1d
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_47

    .line 174
    :pswitch_21
    iget-object p1, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-virtual {p1, v1}, Landroid/telephony/VisualVoicemailService;->onStopped(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;)V

    .line 175
    goto :goto_47

    .line 171
    :pswitch_27
    iget-object p1, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-virtual {p1, v1, v0}, Landroid/telephony/VisualVoicemailService;->onSimRemoved(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V

    .line 172
    goto :goto_47

    .line 167
    :pswitch_2d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data_sms"

    const-class v2, Landroid/telephony/VisualVoicemailSms;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/VisualVoicemailSms;

    .line 168
    iget-object v0, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/VisualVoicemailService;->onSmsReceived(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telephony/VisualVoicemailSms;)V

    .line 169
    goto :goto_47

    .line 164
    :pswitch_41
    iget-object p1, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-virtual {p1, v1, v0}, Landroid/telephony/VisualVoicemailService;->onCellServiceConnected(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V

    .line 165
    nop

    .line 180
    :goto_47
    return-void

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_41
        :pswitch_2d
        :pswitch_27
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method
