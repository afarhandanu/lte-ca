.class public abstract Landroid/window/ScreenCaptureInternal$SynchronousScreenCaptureListener;
.super Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;
.source "ScreenCaptureInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCaptureInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SynchronousScreenCaptureListener"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/function/ObjIntConsumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ObjIntConsumer<",
            "Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;",
            ">;)V"
        }
    .end annotation

    .line 896
    invoke-direct {p0, p1}, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;-><init>(Ljava/util/function/ObjIntConsumer;)V

    .line 897
    return-void
.end method


# virtual methods
.method public abstract blacklist getBuffer()Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
.end method
