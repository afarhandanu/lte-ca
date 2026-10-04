.class public final synthetic Landroid/window/ScreenCaptureInternal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# instance fields
.field public final synthetic blacklist f$0:[Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

.field public final synthetic blacklist f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor blacklist <init>([Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/ScreenCaptureInternal$$ExternalSyntheticLambda0;->f$0:[Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    iput-object p2, p0, Landroid/window/ScreenCaptureInternal$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$$ExternalSyntheticLambda0;->f$0:[Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    iget-object v1, p0, Landroid/window/ScreenCaptureInternal$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    invoke-static {v0, v1, p1, p2}, Landroid/window/ScreenCaptureInternal;->lambda$createSyncCaptureListener$0([Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;Ljava/util/concurrent/CountDownLatch;Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;I)V

    return-void
.end method
