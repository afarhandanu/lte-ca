.class public Landroid/view/ViewDebug$HardwareCanvasProvider;
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
    name = "HardwareCanvasProvider"
.end annotation


# instance fields
.field private greylist-max-o mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o createBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 1993
    iget-object v0, p0, Landroid/view/ViewDebug$HardwareCanvasProvider;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 1994
    iget-object v0, p0, Landroid/view/ViewDebug$HardwareCanvasProvider;->mPicture:Landroid/graphics/Picture;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCanvas(Landroid/view/View;II)Landroid/graphics/Canvas;
    .registers 4

    .line 1987
    new-instance p1, Landroid/graphics/Picture;

    invoke-direct {p1}, Landroid/graphics/Picture;-><init>()V

    iput-object p1, p0, Landroid/view/ViewDebug$HardwareCanvasProvider;->mPicture:Landroid/graphics/Picture;

    .line 1988
    iget-object p1, p0, Landroid/view/ViewDebug$HardwareCanvasProvider;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p1

    return-object p1
.end method
