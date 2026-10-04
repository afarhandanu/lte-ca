.class Landroid/widget/Magnifier$InternalPopupWindow;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Magnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalPopupWindow"
.end annotation


# static fields
.field private static final greylist-max-o SURFACE_Z:I = 0x5


# instance fields
.field private final blacklist mBBQ:Landroid/graphics/BLASTBufferQueue;

.field private final blacklist mBbqSurfaceControl:Landroid/view/SurfaceControl;

.field private greylist-max-o mBitmap:Landroid/graphics/Bitmap;

.field private final blacklist mBitmapRenderNode:Landroid/graphics/RenderNode;

.field private greylist-max-o mCallback:Landroid/widget/Magnifier$Callback;

.field private greylist-max-o mContentHeight:I

.field private final greylist-max-o mContentWidth:I

.field private blacklist mCurrentContent:Landroid/graphics/Bitmap;

.field private final greylist-max-o mDisplay:Landroid/view/Display;

.field private greylist-max-o mFirstDraw:Z

.field private greylist-max-o mFrameDrawScheduled:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private blacklist mIsFishEyeStyle:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMagnifierUpdater:Ljava/lang/Runnable;

.field private blacklist mMeshHeight:I

.field private blacklist mMeshLeft:[F

.field private blacklist mMeshRight:[F

.field private blacklist mMeshWidth:I

.field private final greylist-max-o mOffsetX:I

.field private final greylist-max-o mOffsetY:I

.field private final blacklist mOverlay:Landroid/graphics/drawable/Drawable;

.field private final blacklist mOverlayRenderNode:Landroid/graphics/RenderNode;

.field private greylist-max-o mPendingWindowPositionUpdate:Z

.field private final blacklist mRamp:I

.field private final greylist-max-o mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

.field private final greylist-max-o mSurface:Landroid/view/Surface;

.field private final greylist-max-o mSurfaceControl:Landroid/view/SurfaceControl;

.field private final greylist-max-o mSurfaceSession:Landroid/view/SurfaceSession;

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private greylist-max-o mWindowPositionX:I

.field private greylist-max-o mWindowPositionY:I

.field private blacklist mZoom:F


# direct methods
.method public static synthetic blacklist $r8$lambda$anz8nud3Iq6rx1egcDwS_UvEQMc(Landroid/widget/Magnifier$InternalPopupWindow;ZIIZJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/widget/Magnifier$InternalPopupWindow;->lambda$doDraw$0(ZIIZJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mVc55Ea-sk0FReygcyspBh5G-GU(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->doDraw()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBitmap(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/widget/Magnifier$Callback;
    .registers 1

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentContent(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/widget/Magnifier$InternalPopupWindow;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/widget/Magnifier$Callback;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdrawOverlay(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->drawOverlay()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateContentFactors(Landroid/widget/Magnifier$InternalPopupWindow;IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContentFactors(IF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateCurrentContentForTesting(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceControl;IIFIFFLandroid/graphics/drawable/Drawable;Landroid/os/Handler;Ljava/lang/Object;Landroid/widget/Magnifier$Callback;Z)V
    .registers 16

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 968
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    .line 994
    iput-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mDisplay:Landroid/view/Display;

    .line 995
    iput-object p10, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 996
    iput-object p12, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    .line 997
    iput-object p13, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    .line 999
    iput p4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    .line 1000
    iput p5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    .line 1001
    iput p6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    .line 1002
    iput p7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    .line 1003
    const p2, 0x3f866666    # 1.05f

    mul-float/2addr p2, p8

    float-to-int p2, p2

    iput p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    .line 1004
    iput p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    .line 1006
    iget p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget p6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    mul-int/lit8 p6, p6, 0x2

    add-int/2addr p2, p6

    .line 1007
    iget p6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    iget p7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    mul-int/lit8 p7, p7, 0x2

    add-int/2addr p6, p7

    .line 1008
    new-instance p7, Landroid/view/SurfaceSession;

    invoke-direct {p7}, Landroid/view/SurfaceSession;-><init>()V

    iput-object p7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 1009
    new-instance p7, Landroid/view/SurfaceControl$Builder;

    iget-object p10, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {p7, p10}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 1010
    const-string/jumbo p10, "magnifier surface"

    invoke-virtual {p7, p10}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p7

    .line 1011
    const/4 p12, 0x4

    invoke-virtual {p7, p12}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p7

    .line 1012
    invoke-virtual {p7}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p7

    .line 1013
    invoke-virtual {p7, p3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1014
    const-string p7, "InternalPopupWindow"

    invoke-virtual {p3, p7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1015
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1016
    new-instance p3, Landroid/view/SurfaceControl$Builder;

    iget-object p12, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {p3, p12}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 1017
    const-string/jumbo p12, "magnifier surface bbq wrapper"

    invoke-virtual {p3, p12}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1018
    const/4 p12, 0x0

    invoke-virtual {p3, p12}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1019
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    iget-object p13, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1020
    invoke-virtual {p3, p13}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1021
    invoke-virtual {p3, p7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1022
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 1024
    new-instance p3, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {p3, p10, v0}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object p3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    .line 1025
    iget-object p3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    iget-object p7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    const/4 p10, -0x3

    invoke-virtual {p3, p7, p2, p6, p10}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1027
    iget-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {p2}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    .line 1032
    new-instance p2, Landroid/view/ThreadedRenderer$SimpleRenderer;

    const-string/jumbo p3, "magnifier renderer"

    iget-object p6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-direct {p2, p1, p3, p6}, Landroid/view/ThreadedRenderer$SimpleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V

    iput-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 1037
    const-string/jumbo p1, "magnifier content"

    invoke-direct {p0, p1, p8, p9}, Landroid/widget/Magnifier$InternalPopupWindow;->createRenderNodeForBitmap(Ljava/lang/String;FF)Landroid/graphics/RenderNode;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    .line 1042
    const-string/jumbo p1, "magnifier overlay"

    invoke-direct {p0, p1, p9}, Landroid/widget/Magnifier$InternalPopupWindow;->createRenderNodeForOverlay(Ljava/lang/String;F)Landroid/graphics/RenderNode;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    .line 1046
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->setupOverlay()V

    .line 1048
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {p1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object p1

    .line 1050
    :try_start_cb
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->enableZ()V

    .line 1051
    iget-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, p2}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 1052
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->disableZ()V

    .line 1053
    iget-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, p2}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 1054
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->disableZ()V
    :try_end_de
    .catchall {:try_start_cb .. :try_end_de} :catchall_110

    .line 1056
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {p1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1057
    nop

    .line 1058
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    if-eqz p1, :cond_fb

    .line 1059
    iget p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1060
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    .line 1061
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    .line 1065
    :cond_fb
    iput-object p11, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    .line 1066
    new-instance p1, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;)V

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    .line 1067
    iput-boolean p12, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    .line 1068
    iput-boolean p14, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    .line 1070
    iget-boolean p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    if-eqz p1, :cond_10f

    .line 1071
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->createMeshMatrixForFishEyeEffect()V

    .line 1073
    :cond_10f
    return-void

    .line 1056
    :catchall_110
    move-exception p1

    iget-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {p2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1057
    throw p1
.end method

.method private blacklist createMeshMatrixForFishEyeEffect()V
    .registers 4

    .line 1120
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    .line 1121
    const/4 v1, 0x6

    iput v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    .line 1122
    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    add-int/2addr v2, v0

    mul-int/2addr v1, v2

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    .line 1123
    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    add-int/2addr v2, v0

    mul-int/2addr v1, v2

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    .line 1124
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->fillMeshMatrix()V

    .line 1125
    return-void
.end method

.method private blacklist createRenderNodeForBitmap(Ljava/lang/String;FF)Landroid/graphics/RenderNode;
    .registers 14

    .line 1153
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object p1

    .line 1157
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 1159
    invoke-virtual {p1, p2}, Landroid/graphics/RenderNode;->setElevation(F)Z

    .line 1161
    new-instance v4, Landroid/graphics/Outline;

    invoke-direct {v4}, Landroid/graphics/Outline;-><init>()V

    .line 1162
    iget v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v8, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1163
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v4, p2}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1164
    invoke-virtual {p1, v4}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 1165
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    .line 1168
    iget p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget p3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object p2

    .line 1171
    const p3, -0xff0100

    :try_start_3f
    invoke-virtual {p2, p3}, Landroid/graphics/RecordingCanvas;->drawColor(I)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_47

    .line 1173
    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1174
    nop

    .line 1176
    return-object p1

    .line 1173
    :catchall_47
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1174
    throw p2
.end method

.method private blacklist createRenderNodeForOverlay(Ljava/lang/String;F)Landroid/graphics/RenderNode;
    .registers 13

    .line 1180
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object p1

    .line 1184
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 1187
    new-instance v4, Landroid/graphics/Outline;

    invoke-direct {v4}, Landroid/graphics/Outline;-><init>()V

    .line 1188
    iget v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v8, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1189
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v4, p2}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1190
    invoke-virtual {p1, v4}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 1191
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    .line 1193
    return-object p1
.end method

.method private greylist-max-o doDraw()V
    .registers 15

    .line 1301
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1302
    :try_start_3
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1304
    monitor-exit v1

    return-void

    .line 1307
    :cond_d
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    .line 1308
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v4
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_e2

    .line 1310
    :try_start_17
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1311
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1312
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 1313
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1314
    iget-boolean v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    const/4 v13, 0x0

    if-eqz v3, :cond_82

    .line 1315
    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    int-to-float v3, v3

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    float-to-int v3, v3

    .line 1319
    new-instance v5, Landroid/graphics/Rect;

    sub-int/2addr v0, v3

    invoke-direct {v5, v3, v13, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1320
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    iget v8, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v9, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-direct {v6, v7, v13, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1322
    iget-object v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7, v5, v6, v12}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1325
    iget-object v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    .line 1326
    invoke-static {v5, v13, v13, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    iget v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    iget-object v8, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    .line 1325
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/RecordingCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 1328
    iget-object v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    .line 1329
    invoke-static {v5, v0, v13, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    iget v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    iget-object v8, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    .line 1328
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/RecordingCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 1331
    goto :goto_95

    .line 1332
    :cond_82
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v13, v13, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1333
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-direct {v0, v13, v13, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1334
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v2, v3, v0, v12}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_95
    .catchall {:try_start_17 .. :try_end_95} :catchall_da

    .line 1337
    :goto_95
    :try_start_95
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1338
    nop

    .line 1339
    iget-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    if-nez v0, :cond_a7

    iget-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    if-eqz v0, :cond_a4

    goto :goto_a7

    .line 1368
    :cond_a4
    const/4 v0, 0x0

    move-object v3, p0

    goto :goto_c5

    .line 1341
    :cond_a7
    :goto_a7
    iget-boolean v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    .line 1342
    iput-boolean v13, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    .line 1343
    iget-boolean v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    .line 1344
    iput-boolean v13, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    .line 1345
    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionX:I

    .line 1346
    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionY:I

    .line 1348
    new-instance v2, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;ZIIZ)V

    .line 1363
    iget-boolean v0, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    if-nez v0, :cond_c4

    .line 1365
    iget-object v0, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    iget-object v4, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setLightCenter(Landroid/view/Display;II)V

    .line 1367
    :cond_c4
    move-object v0, v2

    .line 1371
    :goto_c5
    iput-boolean v13, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    .line 1372
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_95 .. :try_end_c8} :catchall_e2

    .line 1374
    iget-object v1, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v1, v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->draw(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 1375
    iget-object v0, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    if-eqz v0, :cond_d9

    .line 1379
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    .line 1380
    iget-object v0, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    invoke-interface {v0}, Landroid/widget/Magnifier$Callback;->onOperationComplete()V

    .line 1382
    :cond_d9
    return-void

    .line 1337
    :catchall_da
    move-exception v0

    move-object v3, p0

    :try_start_dc
    iget-object v2, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1338
    throw v0

    .line 1372
    :catchall_e2
    move-exception v0

    monitor-exit v1
    :try_end_e4
    .catchall {:try_start_dc .. :try_end_e4} :catchall_e2

    throw v0
.end method

.method private blacklist drawOverlay()V
    .registers 6

    .line 1224
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    .line 1225
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 1227
    :try_start_a
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1228
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_20

    .line 1230
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1231
    nop

    .line 1232
    return-void

    .line 1230
    :catchall_20
    move-exception v0

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1231
    throw v0
.end method

.method private blacklist fillMeshMatrix()V
    .registers 15

    .line 1128
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    .line 1129
    const/4 v1, 0x6

    iput v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    .line 1130
    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    int-to-float v1, v1

    .line 1131
    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    int-to-float v2, v2

    .line 1132
    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    div-float v3, v2, v3

    .line 1133
    sub-float v4, v2, v3

    .line 1134
    const/4 v5, 0x0

    :goto_13
    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v6, v0

    mul-int/lit8 v6, v6, 0x2

    iget v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    add-int/2addr v7, v0

    mul-int/2addr v6, v7

    if-ge v5, v6, :cond_7a

    .line 1136
    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v6, v0

    mul-int/lit8 v6, v6, 0x2

    rem-int v6, v5, v6

    div-int/lit8 v6, v6, 0x2

    .line 1137
    iget-object v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    int-to-float v8, v6

    iget v9, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    iget v10, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v7, v5

    .line 1138
    iget-object v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    iget v9, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    int-to-float v9, v9

    sub-float v9, v1, v9

    iget v10, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    mul-int/2addr v6, v10

    iget v10, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    div-int/2addr v6, v10

    int-to-float v6, v6

    add-float/2addr v9, v6

    aput v9, v7, v5

    .line 1141
    div-int/lit8 v6, v5, 0x2

    iget v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v7, v0

    div-int/2addr v6, v7

    .line 1142
    mul-float/2addr v8, v4

    iget v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    int-to-float v7, v7

    div-float v7, v8, v7

    add-float/2addr v7, v3

    .line 1143
    sub-float v9, v2, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 1144
    iget-object v11, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    add-int/lit8 v12, v5, 0x1

    int-to-float v6, v6

    mul-float/2addr v7, v6

    iget v13, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    int-to-float v13, v13

    div-float/2addr v7, v13

    add-float/2addr v9, v7

    aput v9, v11, v12

    .line 1145
    iget v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    int-to-float v7, v7

    div-float/2addr v8, v7

    sub-float v7, v2, v8

    .line 1146
    sub-float v8, v2, v7

    div-float/2addr v8, v10

    .line 1147
    iget-object v9, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    mul-float/2addr v7, v6

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    int-to-float v6, v6

    div-float/2addr v7, v6

    add-float/2addr v8, v7

    aput v8, v9, v12

    .line 1134
    add-int/lit8 v5, v5, 0x2

    goto :goto_13

    .line 1149
    :cond_7a
    return-void
.end method

.method private synthetic blacklist lambda$doDraw$0(ZIIZJ)V
    .registers 8

    .line 1349
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1350
    return-void

    .line 1352
    :cond_9
    if-eqz p1, :cond_14

    .line 1353
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1355
    :cond_14
    if-eqz p4, :cond_24

    .line 1356
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 p3, 0x5

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1357
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1361
    :cond_24
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    iget-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p2, p5, p6}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 1362
    return-void
.end method

.method private greylist-max-o requestUpdate()V
    .registers 3

    .line 1266
    iget-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    if-eqz v0, :cond_5

    .line 1267
    return-void

    .line 1269
    :cond_5
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 1270
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1271
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1272
    iput-boolean v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    .line 1273
    return-void
.end method

.method private blacklist setupOverlay()V
    .registers 3

    .line 1197
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->drawOverlay()V

    .line 1199
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/widget/Magnifier$InternalPopupWindow$1;

    invoke-direct {v1, p0}, Landroid/widget/Magnifier$InternalPopupWindow$1;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1219
    return-void
.end method

.method private blacklist updateContentFactors(IF)V
    .registers 11

    .line 1081
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    if-ne v0, p1, :cond_b

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_b

    .line 1082
    return-void

    .line 1084
    :cond_b
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    if-ge v0, p1, :cond_94

    .line 1086
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    const/4 v3, -0x3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1088
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setSurface(Landroid/view/Surface;)V

    .line 1090
    new-instance v2, Landroid/graphics/Outline;

    invoke-direct {v2}, Landroid/graphics/Outline;-><init>()V

    .line 1091
    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1092
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1094
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    add-int/2addr v4, v6

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 1096
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v2}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 1098
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    add-int/2addr v4, v6

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 1100
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v2}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 1102
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 1103
    invoke-virtual {p1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object p1

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    invoke-virtual {p1, v0, v6}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object p1

    .line 1105
    :try_start_6b
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->enableZ()V

    .line 1106
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 1107
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->disableZ()V

    .line 1108
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 1109
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->disableZ()V
    :try_end_7e
    .catchall {:try_start_6b .. :try_end_7e} :catchall_88

    .line 1111
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {p1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1112
    goto :goto_95

    .line 1111
    :catchall_88
    move-exception v0

    move-object p1, v0

    iget-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {p2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1112
    throw p1

    .line 1084
    :cond_94
    move v6, p1

    .line 1114
    :goto_95
    iput v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    .line 1115
    iput p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    .line 1116
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->fillMeshMatrix()V

    .line 1117
    return-void
.end method

.method private blacklist updateCurrentContentForTesting()V
    .registers 7

    .line 1390
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1391
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1392
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_34

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_34

    .line 1393
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v4, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1394
    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1396
    :cond_34
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1397
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1398
    return-void
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .registers 3

    .line 1280
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->destroy()V

    .line 1281
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 1282
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 1283
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1284
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 1285
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1286
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1287
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V

    .line 1288
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1289
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_38

    .line 1290
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1292
    :cond_38
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1293
    return-void
.end method

.method public greylist-max-o setContentPositionForNextDraw(II)V
    .registers 4

    .line 1243
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionX:I

    .line 1244
    iget p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionY:I

    .line 1245
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    .line 1246
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->requestUpdate()V

    .line 1247
    return-void
.end method

.method public greylist-max-o updateContent(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 1258
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 1259
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1261
    :cond_9
    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    .line 1262
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->requestUpdate()V

    .line 1263
    return-void
.end method
