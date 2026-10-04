.class public final Landroid/view/PixelCopy$Request$Builder;
.super Ljava/lang/Object;
.source "PixelCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PixelCopy$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRequest:Landroid/view/PixelCopy$Request;


# direct methods
.method private constructor blacklist <init>(Landroid/view/PixelCopy$Request;)V
    .registers 2

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p1, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    .line 382
    return-void
.end method

.method public static whitelist ofSurface(Landroid/view/Surface;)Landroid/view/PixelCopy$Request$Builder;
    .registers 4

    .line 437
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 440
    new-instance v0, Landroid/view/PixelCopy$Request$Builder;

    new-instance v1, Landroid/view/PixelCopy$Request;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroid/view/PixelCopy$Request;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/view/PixelCopy-IA;)V

    invoke-direct {v0, v1}, Landroid/view/PixelCopy$Request$Builder;-><init>(Landroid/view/PixelCopy$Request;)V

    return-object v0

    .line 438
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source must not be null & must be valid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist ofSurface(Landroid/view/SurfaceView;)Landroid/view/PixelCopy$Request$Builder;
    .registers 1

    .line 453
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-static {p0}, Landroid/view/PixelCopy$Request$Builder;->ofSurface(Landroid/view/Surface;)Landroid/view/PixelCopy$Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist ofWindow(Landroid/view/View;)Landroid/view/PixelCopy$Request$Builder;
    .registers 5

    .line 411
    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 415
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 416
    nop

    .line 417
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    .line 418
    const/4 v1, 0x0

    if-eqz p0, :cond_1f

    .line 419
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 420
    iget-object p0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_20

    .line 418
    :cond_1f
    move-object v2, v1

    .line 422
    :goto_20
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result p0

    if-eqz p0, :cond_33

    .line 426
    new-instance p0, Landroid/view/PixelCopy$Request$Builder;

    new-instance v3, Landroid/view/PixelCopy$Request;

    invoke-direct {v3, v2, v0, v1}, Landroid/view/PixelCopy$Request;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/view/PixelCopy-IA;)V

    invoke-direct {p0, v3}, Landroid/view/PixelCopy$Request$Builder;-><init>(Landroid/view/PixelCopy$Request;)V

    return-object p0

    .line 423
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Window doesn\'t have a backing surface!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 412
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "View must not be null & must be attached to window"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist ofWindow(Landroid/view/Window;)Landroid/view/PixelCopy$Request$Builder;
    .registers 5

    .line 391
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 392
    invoke-static {p0, v0}, Landroid/view/PixelCopy;->-$$Nest$smsourceForWindow(Landroid/view/Window;Landroid/graphics/Rect;)Landroid/view/Surface;

    move-result-object p0

    .line 393
    new-instance v1, Landroid/view/PixelCopy$Request$Builder;

    new-instance v2, Landroid/view/PixelCopy$Request;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Landroid/view/PixelCopy$Request;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/view/PixelCopy-IA;)V

    invoke-direct {v1, v2}, Landroid/view/PixelCopy$Request$Builder;-><init>(Landroid/view/PixelCopy$Request;)V

    return-object v1
.end method

.method private blacklist requireNotBuilt()V
    .registers 3

    .line 457
    iget-object v0, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    if-eqz v0, :cond_5

    .line 460
    return-void

    .line 458
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() already called on this builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/view/PixelCopy$Request;
    .registers 3

    .line 503
    invoke-direct {p0}, Landroid/view/PixelCopy$Request$Builder;->requireNotBuilt()V

    .line 504
    iget-object v0, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    .line 505
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    .line 506
    return-object v0
.end method

.method public whitelist setDestinationBitmap(Landroid/graphics/Bitmap;)Landroid/view/PixelCopy$Request$Builder;
    .registers 3

    .line 491
    invoke-direct {p0}, Landroid/view/PixelCopy$Request$Builder;->requireNotBuilt()V

    .line 492
    if-eqz p1, :cond_8

    .line 493
    invoke-static {p1}, Landroid/view/PixelCopy;->-$$Nest$smvalidateBitmapDest(Landroid/graphics/Bitmap;)V

    .line 495
    :cond_8
    iget-object v0, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    invoke-static {v0, p1}, Landroid/view/PixelCopy$Request;->-$$Nest$fputmDest(Landroid/view/PixelCopy$Request;Landroid/graphics/Bitmap;)V

    .line 496
    return-object p0
.end method

.method public whitelist setSourceRect(Landroid/graphics/Rect;)Landroid/view/PixelCopy$Request$Builder;
    .registers 3

    .line 473
    invoke-direct {p0}, Landroid/view/PixelCopy$Request$Builder;->requireNotBuilt()V

    .line 474
    iget-object v0, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    invoke-static {v0, p1}, Landroid/view/PixelCopy$Request;->-$$Nest$fputmSrcRect(Landroid/view/PixelCopy$Request;Landroid/graphics/Rect;)V

    .line 475
    return-object p0
.end method
