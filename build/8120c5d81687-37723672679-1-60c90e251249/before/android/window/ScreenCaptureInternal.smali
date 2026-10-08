.class public Landroid/window/ScreenCaptureInternal;
.super Ljava/lang/Object;
.source "ScreenCaptureInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;,
        Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;,
        Landroid/window/ScreenCaptureInternal$SynchronousScreenCaptureListener;,
        Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;,
        Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;,
        Landroid/window/ScreenCaptureInternal$CaptureArgs;
    }
.end annotation


# static fields
.field private static final blacklist SCREENSHOT_WAIT_TIME_S:I

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenCaptureInternal"


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetSCREENSHOT_WAIT_TIME_S()I
    .registers 1

    sget v0, Landroid/window/ScreenCaptureInternal;->SCREENSHOT_WAIT_TIME_S:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNativeListenerFinalizer()J
    .registers 2

    invoke-static {}, Landroid/window/ScreenCaptureInternal;->getNativeListenerFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateScreenCaptureListener(Ljava/util/function/ObjIntConsumer;)J
    .registers 3

    invoke-static {p0}, Landroid/window/ScreenCaptureInternal;->nativeCreateScreenCaptureListener(Ljava/util/function/ObjIntConsumer;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeListenerOnError(JI)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/window/ScreenCaptureInternal;->nativeListenerOnError(JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeReadListenerFromParcel(Landroid/os/Parcel;)J
    .registers 3

    invoke-static {p0}, Landroid/window/ScreenCaptureInternal;->nativeReadListenerFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeWriteListenerToParcel(JLandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/window/ScreenCaptureInternal;->nativeWriteListenerToParcel(JLandroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit8 v0, v0, 0x4

    sput v0, Landroid/window/ScreenCaptureInternal;->SCREENSHOT_WAIT_TIME_S:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist captureDisplay(Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
    .registers 3

    .line 99
    invoke-static {}, Landroid/window/ScreenCaptureInternal;->createSyncCaptureListener()Landroid/window/ScreenCaptureInternal$SynchronousScreenCaptureListener;

    move-result-object v0

    .line 100
    invoke-static {p0, v0}, Landroid/window/ScreenCaptureInternal;->captureDisplayInternal(Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)I

    move-result p0

    .line 101
    const/4 v1, 0x0

    if-eqz p0, :cond_c

    .line 102
    return-object v1

    .line 106
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Landroid/window/ScreenCaptureInternal$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    return-object p0

    .line 107
    :catch_11
    move-exception p0

    .line 108
    return-object v1
.end method

.method public static blacklist captureDisplay(Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)V
    .registers 4

    .line 77
    invoke-static {p0, p1}, Landroid/window/ScreenCaptureInternal;->captureDisplayInternal(Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)I

    move-result p0

    .line 78
    if-eqz p0, :cond_2b

    .line 79
    packed-switch p0, :pswitch_data_2c

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureDisplay failed with unknown status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenCaptureInternal"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->onError(I)V

    goto :goto_2b

    .line 81
    :pswitch_26
    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->onError(I)V

    .line 82
    nop

    .line 89
    :cond_2b
    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch -0x1
        :pswitch_26
    .end packed-switch
.end method

.method private static blacklist captureDisplayInternal(Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)I
    .registers 4

    .line 203
    iget-wide v0, p1, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->mNativeObject:J

    invoke-static {p0, v0, v1}, Landroid/window/ScreenCaptureInternal;->nativeCaptureDisplay(Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;J)I

    move-result p0

    return p0
.end method

.method public static blacklist captureLayers(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)I
    .registers 4

    .line 198
    iget-wide v0, p1, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->mNativeObject:J

    const/4 p1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/window/ScreenCaptureInternal;->nativeCaptureLayers(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;JZ)I

    move-result p0

    return p0
.end method

.method public static blacklist captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
    .registers 4

    .line 127
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/window/ScreenCaptureInternal;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
    .registers 5

    .line 146
    new-instance v0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    invoke-direct {v0, p0}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 147
    invoke-virtual {v0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 148
    invoke-virtual {p0, p2}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 149
    invoke-virtual {p0, p3}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 150
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;

    move-result-object p0

    .line 152
    invoke-static {p0}, Landroid/window/ScreenCaptureInternal;->captureLayers(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist captureLayers(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
    .registers 5

    .line 159
    invoke-static {}, Landroid/window/ScreenCaptureInternal;->createSyncCaptureListener()Landroid/window/ScreenCaptureInternal$SynchronousScreenCaptureListener;

    move-result-object v0

    .line 160
    iget-wide v1, v0, Landroid/window/ScreenCaptureInternal$SynchronousScreenCaptureListener;->mNativeObject:J

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/window/ScreenCaptureInternal;->nativeCaptureLayers(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;JZ)I

    move-result p0

    .line 162
    const/4 v1, 0x0

    if-eqz p0, :cond_f

    .line 163
    return-object v1

    .line 167
    :cond_f
    :try_start_f
    invoke-virtual {v0}, Landroid/window/ScreenCaptureInternal$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_14

    return-object p0

    .line 168
    :catch_14
    move-exception p0

    .line 169
    return-object v1
.end method

.method public static blacklist captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
    .registers 6

    .line 181
    new-instance v0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    invoke-direct {v0, p0}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 182
    invoke-virtual {v0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 183
    invoke-virtual {p0, p2}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 184
    invoke-virtual {p0, p3}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 185
    invoke-virtual {p0, p4}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 186
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;

    move-result-object p0

    .line 188
    invoke-static {p0}, Landroid/window/ScreenCaptureInternal;->captureLayers(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createSyncCaptureListener()Landroid/window/ScreenCaptureInternal$SynchronousScreenCaptureListener;
    .registers 4

    .line 854
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    .line 855
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 856
    new-instance v0, Landroid/window/ScreenCaptureInternal$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, v2}, Landroid/window/ScreenCaptureInternal$$ExternalSyntheticLambda0;-><init>([Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;Ljava/util/concurrent/CountDownLatch;)V

    .line 866
    new-instance v3, Landroid/window/ScreenCaptureInternal$1;

    invoke-direct {v3, v0, v0, v2, v1}, Landroid/window/ScreenCaptureInternal$1;-><init>(Ljava/util/function/ObjIntConsumer;Ljava/util/function/ObjIntConsumer;Ljava/util/concurrent/CountDownLatch;[Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;)V

    return-object v3
.end method

.method private static native blacklist getNativeListenerFinalizer()J
.end method

.method static synthetic blacklist lambda$createSyncCaptureListener$0([Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;Ljava/util/concurrent/CountDownLatch;Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;I)V
    .registers 5

    .line 857
    const/4 v0, 0x0

    if-eqz p3, :cond_1f

    .line 858
    const/4 p2, 0x0

    aput-object p2, p0, v0

    .line 859
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to generate screen capture. Error code: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ScreenCaptureInternal"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 861
    :cond_1f
    aput-object p2, p0, v0

    .line 863
    :goto_21
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 864
    return-void
.end method

.method private static native blacklist nativeCaptureDisplay(Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;J)I
.end method

.method private static native blacklist nativeCaptureLayers(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;JZ)I
.end method

.method private static native blacklist nativeCreateScreenCaptureListener(Ljava/util/function/ObjIntConsumer;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ObjIntConsumer<",
            "Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native blacklist nativeListenerOnError(JI)V
.end method

.method private static native blacklist nativeReadListenerFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nativeWriteListenerToParcel(JLandroid/os/Parcel;)V
.end method
