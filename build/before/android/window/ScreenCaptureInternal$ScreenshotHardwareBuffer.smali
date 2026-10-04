.class public Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
.super Ljava/lang/Object;
.source "ScreenCaptureInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCaptureInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshotHardwareBuffer"
.end annotation


# static fields
.field private static final blacklist EPSILON:F = 0.015625f


# instance fields
.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mContainsHdrLayers:Z

.field private final blacklist mContainsSecureLayers:Z

.field private final blacklist mGainmap:Landroid/hardware/HardwareBuffer;

.field private final blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final blacklist mHdrSdrRatio:F


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V
    .registers 12

    .line 224
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZLandroid/hardware/HardwareBuffer;F)V

    .line 225
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZLandroid/hardware/HardwareBuffer;F)V
    .registers 7

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 231
    iput-object p2, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 232
    iput-boolean p3, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    .line 233
    iput-boolean p4, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    .line 234
    iput-object p5, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mGainmap:Landroid/hardware/HardwareBuffer;

    .line 235
    iput p6, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mHdrSdrRatio:F

    .line 236
    return-void
.end method

.method private static blacklist createFromNative(Landroid/hardware/HardwareBuffer;IZZLandroid/hardware/HardwareBuffer;F)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
    .registers 13

    .line 252
    invoke-static {p1}, Landroid/graphics/ColorSpace;->getFromDataSpace(I)Landroid/graphics/ColorSpace;

    move-result-object p1

    .line 253
    new-instance v0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    .line 254
    if-eqz p1, :cond_9

    goto :goto_f

    :cond_9
    sget-object p1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    :goto_f
    move-object v2, p1

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZLandroid/hardware/HardwareBuffer;F)V

    .line 253
    return-object v0
.end method


# virtual methods
.method public blacklist asBitmap()Landroid/graphics/Bitmap;
    .registers 7

    .line 295
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 296
    const-string v0, "ScreenCaptureInternal"

    const-string v2, "Failed to take screenshot. Null screenshot object"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-object v1

    .line 300
    :cond_d
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    iget-object v2, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v0, v2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    iget-object v2, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mGainmap:Landroid/hardware/HardwareBuffer;

    if-eqz v2, :cond_48

    .line 302
    iget-object v2, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mGainmap:Landroid/hardware/HardwareBuffer;

    invoke-static {v2, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 303
    new-instance v2, Landroid/graphics/Gainmap;

    invoke-direct {v2, v1}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 304
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1, v1, v1}, Landroid/graphics/Gainmap;->setRatioMin(FFF)V

    .line 305
    iget v3, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mHdrSdrRatio:F

    iget v4, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mHdrSdrRatio:F

    iget v5, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mHdrSdrRatio:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Gainmap;->setRatioMax(FFF)V

    .line 306
    invoke-virtual {v2, v1, v1, v1}, Landroid/graphics/Gainmap;->setGamma(FFF)V

    .line 307
    const/high16 v3, 0x3c800000    # 0.015625f

    invoke-virtual {v2, v3, v3, v3}, Landroid/graphics/Gainmap;->setEpsilonSdr(FFF)V

    .line 308
    invoke-virtual {v2, v3, v3, v3}, Landroid/graphics/Gainmap;->setEpsilonHdr(FFF)V

    .line 309
    invoke-virtual {v2, v1}, Landroid/graphics/Gainmap;->setMinDisplayRatioForHdrTransition(F)V

    .line 310
    iget v1, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mHdrSdrRatio:F

    invoke-virtual {v2, v1}, Landroid/graphics/Gainmap;->setDisplayRatioForFullHdr(F)V

    .line 311
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    .line 314
    :cond_48
    return-object v0
.end method

.method public blacklist containsHdrLayers()Z
    .registers 2

    .line 279
    iget-boolean v0, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return v0
.end method

.method public blacklist containsSecureLayers()Z
    .registers 2

    .line 270
    iget-boolean v0, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    return v0
.end method

.method public blacklist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 259
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public blacklist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 263
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method
