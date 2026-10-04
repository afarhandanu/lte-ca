.class final Landroid/view/InputFilter$H;
.super Landroid/os/Handler;
.source "InputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/InputFilter;


# direct methods
.method public constructor blacklist <init>(Landroid/view/InputFilter;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 228
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 229
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    goto :goto_72

    .line 254
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    .line 256
    :try_start_a
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v1}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 257
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v1}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 259
    :cond_1c
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, p1}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_28

    .line 261
    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    .line 262
    nop

    .line 263
    goto :goto_72

    .line 261
    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    .line 262
    throw p1

    .line 247
    :pswitch_2d
    const/4 p1, 0x0

    :try_start_2e
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-virtual {v0}, Landroid/view/InputFilter;->onUninstalled()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_3a

    .line 249
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v0, p1}, Landroid/view/InputFilter;->-$$Nest$fputmHost(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)V

    .line 250
    nop

    .line 251
    goto :goto_72

    .line 249
    :catchall_3a
    move-exception v0

    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v1, p1}, Landroid/view/InputFilter;->-$$Nest$fputmHost(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)V

    .line 250
    throw v0

    .line 235
    :pswitch_41
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/IInputFilterHost;

    invoke-static {v0, p1}, Landroid/view/InputFilter;->-$$Nest$fputmHost(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)V

    .line 236
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {p1}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 237
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {p1}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    .line 239
    :cond_5b
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {p1}, Landroid/view/InputFilter;->-$$Nest$fgetmOutboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object p1

    if-eqz p1, :cond_6c

    .line 240
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {p1}, Landroid/view/InputFilter;->-$$Nest$fgetmOutboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    .line 242
    :cond_6c
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-virtual {p1}, Landroid/view/InputFilter;->onInstalled()V

    .line 243
    nop

    .line 266
    :goto_72
    return-void

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_41
        :pswitch_2d
        :pswitch_6
    .end packed-switch
.end method
