.class Landroid/window/ScreenCapture$1;
.super Landroid/window/IScreenCaptureCallback$Stub;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/ScreenCapture;->capture(Landroid/window/ScreenCapture$ScreenCaptureParams;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$receiver:Landroid/os/OutcomeReceiver;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 540
    iput-object p1, p0, Landroid/window/ScreenCapture$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/window/ScreenCapture$1;->val$receiver:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/window/IScreenCaptureCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V
    .registers 2

    .line 554
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;Landroid/window/ScreenCapture$ScreenCaptureResult;)V
    .registers 2

    .line 542
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .registers 5

    .line 547
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 548
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Caller does not have READ_FRAME_BUFFER permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_12

    .line 552
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Screen capture failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 554
    :goto_12
    iget-object v0, p0, Landroid/window/ScreenCapture$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/window/ScreenCapture$1;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/window/ScreenCapture$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/window/ScreenCapture$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 555
    return-void
.end method

.method public blacklist onSuccess(Landroid/window/ScreenCapture$ScreenCaptureResult;)V
    .registers 5

    .line 542
    iget-object v0, p0, Landroid/window/ScreenCapture$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/window/ScreenCapture$1;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/window/ScreenCapture$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/window/ScreenCapture$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Landroid/window/ScreenCapture$ScreenCaptureResult;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 543
    return-void
.end method
