.class Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;
.super Landroid/window/IOnBackInvokedCallback$Stub;
.source "ImeBackCallbackSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ImeBackCallbackSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImeOnBackInvokedCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/window/OnBackInvokedCallback;

.field final synthetic blacklist this$0:Landroid/window/ImeBackCallbackSender;


# direct methods
.method public static synthetic blacklist $r8$lambda$D96iV7XpO4irrRdm4PEy81Tg-Cw(Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;->lambda$maybeRunOnAnimationCallback$2(Ljava/util/function/Consumer;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/window/ImeBackCallbackSender;Landroid/window/OnBackInvokedCallback;)V
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

    .line 195
    iput-object p1, p0, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;->this$0:Landroid/window/ImeBackCallbackSender;

    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Stub;-><init>()V

    .line 196
    iput-object p2, p0, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;->mCallback:Landroid/window/OnBackInvokedCallback;

    .line 197
    return-void
.end method

.method private synthetic blacklist lambda$maybeRunOnAnimationCallback$2(Ljava/util/function/Consumer;)V
    .registers 3

    .line 233
    iget-object v0, p0, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;->mCallback:Landroid/window/OnBackInvokedCallback;

    check-cast v0, Landroid/window/OnBackAnimationCallback;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onBackProgressed$1(Landroid/window/BackMotionEvent;Landroid/window/OnBackAnimationCallback;)V
    .registers 2

    .line 207
    nop

    .line 208
    invoke-static {p0}, Landroid/window/BackEvent;->fromBackMotionEvent(Landroid/window/BackMotionEvent;)Landroid/window/BackEvent;

    move-result-object p0

    .line 207
    invoke-interface {p1, p0}, Landroid/window/OnBackAnimationCallback;->onBackProgressed(Landroid/window/BackEvent;)V

    return-void
.end method

.method static synthetic blacklist lambda$onBackStarted$0(Landroid/window/BackMotionEvent;Landroid/window/OnBackAnimationCallback;)V
    .registers 2

    .line 201
    nop

    .line 202
    invoke-static {p0}, Landroid/window/BackEvent;->fromBackMotionEvent(Landroid/window/BackMotionEvent;)Landroid/window/BackEvent;

    move-result-object p0

    .line 201
    invoke-interface {p1, p0}, Landroid/window/OnBackAnimationCallback;->onBackStarted(Landroid/window/BackEvent;)V

    return-void
.end method

.method private blacklist maybeRunOnAnimationCallback(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/window/OnBackAnimationCallback;",
            ">;)V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;->mCallback:Landroid/window/OnBackInvokedCallback;

    instance-of v0, v0, Landroid/window/OnBackAnimationCallback;

    if-eqz v0, :cond_14

    .line 233
    iget-object v0, p0, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;->this$0:Landroid/window/ImeBackCallbackSender;

    invoke-static {v0}, Landroid/window/ImeBackCallbackSender;->-$$Nest$fgetmHandler(Landroid/window/ImeBackCallbackSender;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    :cond_14
    return-void
.end method


# virtual methods
.method public blacklist onBackCancelled()V
    .registers 2

    .line 213
    new-instance v0, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, v0}, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;->maybeRunOnAnimationCallback(Ljava/util/function/Consumer;)V

    .line 214
    return-void
.end method

.method public blacklist onBackInvoked()V
    .registers 4

    .line 218
    iget-object v0, p0, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;->this$0:Landroid/window/ImeBackCallbackSender;

    invoke-static {v0}, Landroid/window/ImeBackCallbackSender;->-$$Nest$fgetmHandler(Landroid/window/ImeBackCallbackSender;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;->mCallback:Landroid/window/OnBackInvokedCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method public blacklist onBackProgressed(Landroid/window/BackMotionEvent;)V
    .registers 3

    .line 207
    new-instance v0, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/window/BackMotionEvent;)V

    invoke-direct {p0, v0}, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;->maybeRunOnAnimationCallback(Ljava/util/function/Consumer;)V

    .line 209
    return-void
.end method

.method public blacklist onBackStarted(Landroid/window/BackMotionEvent;)V
    .registers 3

    .line 201
    new-instance v0, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/window/BackMotionEvent;)V

    invoke-direct {p0, v0}, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;->maybeRunOnAnimationCallback(Ljava/util/function/Consumer;)V

    .line 203
    return-void
.end method

.method public blacklist setHandoffHandler(Landroid/window/IBackAnimationHandoffHandler;)V
    .registers 2

    .line 229
    return-void
.end method

.method public blacklist setTriggerBack(Z)V
    .registers 2

    .line 224
    return-void
.end method
