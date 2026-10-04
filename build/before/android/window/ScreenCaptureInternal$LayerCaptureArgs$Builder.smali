.class public Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;
.super Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
.source "ScreenCaptureInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder<",
        "Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mChildrenOnly:Z

.field private blacklist mLayer:Landroid/view/SurfaceControl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChildrenOnly(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->mChildrenOnly:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLayer(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->mLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl;)V
    .registers 3

    .line 752
    invoke-direct {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;-><init>()V

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->mChildrenOnly:Z

    .line 753
    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setLayer(Landroid/view/SurfaceControl;)Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 754
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl;Landroid/window/ScreenCaptureInternal$CaptureArgs;)V
    .registers 5

    .line 738
    invoke-direct {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;-><init>()V

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->mChildrenOnly:Z

    .line 739
    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setLayer(Landroid/view/SurfaceControl;)Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 740
    iget p1, p2, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mPixelFormat:I

    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    .line 741
    iget-object p1, p2, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    .line 742
    iget p1, p2, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mFrameScaleX:F

    iget v0, p2, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mFrameScaleY:F

    invoke-virtual {p0, p1, v0}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setFrameScale(FF)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    .line 743
    iget p1, p2, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mSecureContentPolicy:I

    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setSecureContentPolicy(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    .line 744
    iget p1, p2, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mProtectedContentPolicy:I

    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setProtectedContentPolicy(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    .line 745
    iget p1, p2, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mCaptureMode:I

    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setCaptureMode(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    .line 746
    iget-wide v0, p2, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mUid:J

    invoke-virtual {p0, v0, v1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setUid(J)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    .line 747
    iget-boolean p1, p2, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mGrayscale:Z

    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setGrayscale(Z)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    .line 748
    iget-object p1, p2, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    .line 749
    iget-boolean p1, p2, Landroid/window/ScreenCaptureInternal$CaptureArgs;->mPreserveDisplayColors:Z

    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setPreserveDisplayColors(Z)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    .line 750
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist build()Landroid/window/ScreenCaptureInternal$CaptureArgs;
    .registers 2

    .line 722
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build()Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;
    .registers 3

    .line 731
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->mLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    .line 735
    new-instance v0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;-><init>(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;Landroid/window/ScreenCaptureInternal-IA;)V

    return-object v0

    .line 732
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t take screenshot with null layer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method bridge synthetic blacklist getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 2

    .line 722
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method blacklist getThis()Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;
    .registers 1

    .line 775
    return-object p0
.end method

.method public blacklist setChildrenOnly(Z)Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;
    .registers 2

    .line 769
    iput-boolean p1, p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->mChildrenOnly:Z

    .line 770
    return-object p0
.end method

.method public blacklist setLayer(Landroid/view/SurfaceControl;)Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;
    .registers 2

    .line 760
    iput-object p1, p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->mLayer:Landroid/view/SurfaceControl;

    .line 761
    return-object p0
.end method
