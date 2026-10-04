.class public Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
.super Ljava/lang/Object;
.source "ScreenCaptureInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCaptureInternal$CaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mCaptureMode:I

.field private blacklist mExcludeLayers:[Landroid/view/SurfaceControl;

.field private blacklist mFrameScaleX:F

.field private blacklist mFrameScaleY:F

.field private blacklist mGrayscale:Z

.field private blacklist mIncludeSystemOverlays:Z

.field private blacklist mPixelFormat:I

.field private blacklist mPreserveDisplayColors:Z

.field private blacklist mProtectedContentPolicy:I

.field private blacklist mSecureContentPolicy:I

.field private final blacklist mSourceCrop:Landroid/graphics/Rect;

.field private blacklist mUid:J

.field private blacklist mUseDisplayInstallationOrientation:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCaptureMode(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mCaptureMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExcludeLayers(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)[Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mExcludeLayers:[Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameScaleX(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)F
    .registers 1

    iget p0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mFrameScaleX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameScaleY(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)F
    .registers 1

    iget p0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mFrameScaleY:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGrayscale(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mGrayscale:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludeSystemOverlays(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mIncludeSystemOverlays:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPixelFormat(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mPixelFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreserveDisplayColors(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mPreserveDisplayColors:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProtectedContentPolicy(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mProtectedContentPolicy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecureContentPolicy(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mSecureContentPolicy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSourceCrop(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUid(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mUid:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseDisplayInstallationOrientation(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mUseDisplayInstallationOrientation:Z

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/4 v0, 0x1

    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mPixelFormat:I

    .line 417
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    .line 418
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mFrameScaleX:F

    .line 419
    iput v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mFrameScaleY:F

    .line 423
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mUid:J

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/ScreenCaptureInternal$CaptureArgs;
    .registers 3

    .line 435
    new-instance v0, Landroid/window/ScreenCaptureInternal$CaptureArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/window/ScreenCaptureInternal$CaptureArgs;-><init>(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;Landroid/window/ScreenCaptureInternal-IA;)V

    return-object v0
.end method

.method blacklist getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 581
    return-object p0
.end method

.method public blacklist setCaptureMode(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 501
    iput p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mCaptureMode:I

    .line 502
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/SurfaceControl;",
            ")TT;"
        }
    .end annotation

    .line 526
    iput-object p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mExcludeLayers:[Landroid/view/SurfaceControl;

    .line 527
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFrameScale(F)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 463
    iput p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mFrameScaleX:F

    .line 464
    iput p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mFrameScaleY:F

    .line 465
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFrameScale(FF)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation

    .line 473
    iput p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mFrameScaleX:F

    .line 474
    iput p2, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mFrameScaleY:F

    .line 475
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setGrayscale(Z)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 518
    iput-boolean p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mGrayscale:Z

    .line 519
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setIncludeSystemOverlays(Z)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 573
    iput-boolean p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mIncludeSystemOverlays:Z

    .line 574
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPixelFormat(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 442
    iput p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mPixelFormat:I

    .line 443
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPreserveDisplayColors(Z)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 544
    iput-boolean p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mPreserveDisplayColors:Z

    .line 545
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProtectedContentPolicy(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 493
    iput p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mProtectedContentPolicy:I

    .line 494
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSecureContentPolicy(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 482
    iput p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mSecureContentPolicy:I

    .line 483
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")TT;"
        }
    .end annotation

    .line 451
    if-nez p1, :cond_8

    .line 452
    iget-object p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_d

    .line 454
    :cond_8
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 456
    :goto_d
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUid(J)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 510
    iput-wide p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mUid:J

    .line 511
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUseDisplayInstallationOrientation(Z)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 559
    iput-boolean p1, p0, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->mUseDisplayInstallationOrientation:Z

    .line 560
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p1

    return-object p1
.end method
