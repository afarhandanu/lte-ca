.class public Landroid/view/ViewDebug$SoftwareCanvasProvider;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Landroid/view/ViewDebug$CanvasProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoftwareCanvasProvider"
.end annotation


# instance fields
.field private greylist-max-o mBitmap:Landroid/graphics/Bitmap;

.field private greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field private blacklist mEnabledHwFeaturesInSwMode:Z


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o createBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 1973
    iget-object v0, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1974
    iget-object v0, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    iget-boolean v1, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mEnabledHwFeaturesInSwMode:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setHwFeaturesInSwModeEnabled(Z)V

    .line 1975
    iget-object v0, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public greylist-max-o getCanvas(Landroid/view/View;II)Landroid/graphics/Canvas;
    .registers 6

    .line 1953
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mBitmap:Landroid/graphics/Bitmap;

    .line 1955
    iget-object p2, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4a

    .line 1958
    iget-object p2, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1960
    iget-object p2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p2, :cond_2d

    .line 1961
    iget-object p1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p1, p1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    iput-object p1, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    .line 1963
    :cond_2d
    iget-object p1, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    if-nez p1, :cond_38

    .line 1964
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    .line 1966
    :cond_38
    iget-object p1, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHwFeaturesInSwModeEnabled()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mEnabledHwFeaturesInSwMode:Z

    .line 1967
    iget-object p1, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    iget-object p2, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1968
    iget-object p1, p0, Landroid/view/ViewDebug$SoftwareCanvasProvider;->mCanvas:Landroid/graphics/Canvas;

    return-object p1

    .line 1956
    :cond_4a
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method
