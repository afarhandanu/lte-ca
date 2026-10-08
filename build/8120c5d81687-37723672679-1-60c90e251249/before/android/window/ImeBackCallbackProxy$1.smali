.class Landroid/window/ImeBackCallbackProxy$1;
.super Landroid/os/ResultReceiver;
.source "ImeBackCallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/ImeBackCallbackProxy;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/ImeBackCallbackProxy;


# direct methods
.method constructor blacklist <init>(Landroid/window/ImeBackCallbackProxy;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Landroid/window/ImeBackCallbackProxy$1;->this$0:Landroid/window/ImeBackCallbackProxy;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    .line 73
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy$1;->this$0:Landroid/window/ImeBackCallbackProxy;

    invoke-virtual {v0}, Landroid/window/ImeBackCallbackProxy;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_e

    .line 75
    iget-object v1, p0, Landroid/window/ImeBackCallbackProxy$1;->this$0:Landroid/window/ImeBackCallbackProxy;

    invoke-static {v1, p1, p2, v0}, Landroid/window/ImeBackCallbackProxy;->-$$Nest$mreceive(Landroid/window/ImeBackCallbackProxy;ILandroid/os/Bundle;Landroid/window/WindowOnBackInvokedDispatcher;)V

    goto :goto_20

    .line 77
    :cond_e
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy$1;->this$0:Landroid/window/ImeBackCallbackProxy;

    invoke-static {v0}, Landroid/window/ImeBackCallbackProxy;->-$$Nest$fgetmQueuedReceive(Landroid/window/ImeBackCallbackProxy;)Ljava/util/ArrayDeque;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 79
    :goto_20
    return-void
.end method
