.class public Landroid/window/ScreenCapture;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCapture$ScreenCaptureParams;,
        Landroid/window/ScreenCapture$ScreenCaptureErrorCode;,
        Landroid/window/ScreenCapture$ScreenCaptureResult;
    }
.end annotation


# static fields
.field public static final blacklist SCREEN_CAPTURE_ERROR_CODE_UNKNOWN:I = 0x1

.field public static final blacklist SCREEN_CAPTURE_ERROR_MISSING_PERMISSIONS:I = 0x3

.field public static final blacklist SCREEN_CAPTURE_ERROR_SENSITIVE_CONTENT:I = 0x2


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    return-void
.end method

.method public static whitelist capture(Landroid/window/ScreenCapture$ScreenCaptureParams;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/ScreenCapture$ScreenCaptureParams;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/window/ScreenCapture$ScreenCaptureResult;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 539
    new-instance v0, Landroid/window/ScreenCapture$1;

    invoke-direct {v0, p1, p2}, Landroid/window/ScreenCapture$1;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 557
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    .line 559
    if-eqz p1, :cond_f

    .line 560
    :try_start_b
    invoke-interface {p1, p0, v0}, Landroid/view/IWindowManager;->screenCapture(Landroid/window/ScreenCapture$ScreenCaptureParams;Landroid/window/IScreenCaptureCallback;)V

    goto :goto_19

    .line 562
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to retrieve WindowManagerService."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_1a

    .line 567
    :goto_19
    goto :goto_23

    .line 565
    :catch_1a
    move-exception p0

    .line 566
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 568
    :goto_23
    return-void
.end method

.method public static whitelist isScreenCaptureOptimizationEnabled()Z
    .registers 2

    .line 577
    const-string v0, "debug.sf.productionize_readback_screenshot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
