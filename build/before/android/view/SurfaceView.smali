.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$SurfaceControlViewHostParent;,
        Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;,
        Landroid/view/SurfaceView$SyncBufferTransactionCallback;,
        Landroid/view/SurfaceView$SurfaceLifecycleStrategy;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEBUG_POSITION:Z = false

.field private static final blacklist FORWARD_BACK_KEY_TOLERANCE_MS:J = 0x64L

.field private static final blacklist LOGTAG_SURFACEVIEW_CALLBACK:I = 0xea66

.field private static final blacklist LOGTAG_SURFACEVIEW_LAYOUT:I = 0xea65

.field public static final whitelist SURFACE_LIFECYCLE_DEFAULT:I = 0x0

.field public static final whitelist SURFACE_LIFECYCLE_FOLLOWS_ATTACHMENT:I = 0x2

.field public static final whitelist SURFACE_LIFECYCLE_FOLLOWS_VISIBILITY:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field blacklist mAlpha:F

.field private greylist-max-o mAttachedToWindow:Z

.field blacklist mBackgroundColor:I

.field blacklist mBackgroundControl:Landroid/view/SurfaceControl;

.field private blacklist mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private blacklist mBlastSurfaceControl:Landroid/view/SurfaceControl;

.field final greylist mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mClipSurfaceToBounds:Z

.field blacklist mCornerRadius:F

.field private blacklist mDisableBackgroundLayer:Z

.field greylist-max-o mDrawFinished:Z

.field private final greylist mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field greylist-max-p mDrawingStopped:Z

.field private final blacklist mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field greylist mFormat:I

.field private final blacklist mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

.field private greylist-max-o mGlobalListenersAdded:Z

.field greylist mHaveFrame:Z

.field private blacklist mHdrHeadroom:F

.field greylist-max-p mIsCreating:Z

.field greylist-max-p mLastLockTime:J

.field greylist-max-o mLastSurfaceHeight:I

.field greylist-max-o mLastSurfaceWidth:I

.field greylist-max-o mLastWindowVisibility:Z

.field final greylist-max-o mLocation:[I

.field private blacklist mParentSurfaceSequenceId:I

.field private blacklist mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

.field private final greylist-max-o mRTLastReportedPosition:Landroid/graphics/Rect;

.field private final blacklist mRTLastSetCrop:Landroid/graphics/RectF;

.field private blacklist mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

.field greylist mRequestedFormat:I

.field private blacklist mRequestedHdrHeadroom:F

.field greylist-max-p mRequestedHeight:I

.field private blacklist mRequestedPictureProfileHandle:Landroid/media/quality/PictureProfileHandle;

.field blacklist mRequestedSubLayer:I

.field private blacklist mRequestedSurfaceLifecycleStrategy:I

.field greylist-max-o mRequestedVisible:Z

.field greylist-max-p mRequestedWidth:I

.field blacklist mRoundedViewportPaint:Landroid/graphics/Paint;

.field private final blacklist mRtDrivenClipping:Z

.field private final greylist-max-o mRtTransaction:Landroid/view/SurfaceControl$Transaction;

.field final greylist-max-o mScreenRect:Landroid/graphics/Rect;

.field private final greylist-max-o mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field greylist-max-o mSubLayer:I

.field final greylist mSurface:Landroid/view/Surface;

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field final blacklist mSurfaceControlLock:Ljava/lang/Object;

.field private final blacklist mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

.field greylist-max-o mSurfaceCreated:Z

.field private greylist-max-o mSurfaceFlags:I

.field final greylist-max-p mSurfaceFrame:Landroid/graphics/Rect;

.field greylist-max-o mSurfaceHeight:I

.field private final greylist mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private blacklist mSurfaceLifecycleStrategy:I

.field final greylist mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field greylist-max-o mSurfaceWidth:I

.field private final blacklist mSyncGroups:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/window/SurfaceSyncGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTag:Ljava/lang/String;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field final greylist-max-o mTmpRect:Landroid/graphics/Rect;

.field blacklist mTransformHint:I

.field greylist-max-o mViewVisibility:Z

.field greylist-max-o mVisible:Z

.field greylist-max-o mWindowSpaceLeft:I

.field greylist-max-o mWindowSpaceTop:I

.field greylist-max-o mWindowStopped:Z

.field greylist-max-o mWindowVisibility:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$NfZyM_TG8F8lqzaOVZ7noREFjzU(Landroid/view/SurfaceView;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->lambda$new$0()Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$YBnSWna8pqXfO6ChPyR7fiW9mv4(Landroid/view/SurfaceView;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_pMdvlkS5pGjU0467JiRLPVZuqU(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->lambda$handleSyncNoBuffer$2(Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fEUJ8AN5zlaEQlBS9kCb2vUfWDI(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;->lambda$handleSyncBufferCallback$1(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEmbeddedWindowParams(Landroid/view/SurfaceView;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastSetCrop:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;->applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 442
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 445
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 446
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 450
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    .line 453
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    .line 454
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .registers 9

    .line 459
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 182
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 184
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 188
    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1}, Landroid/view/Surface;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 192
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 198
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 200
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 204
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    .line 206
    iput p2, p0, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    .line 208
    iput p2, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    .line 211
    const/4 p3, 0x0

    iput p3, p0, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    .line 212
    iput p3, p0, Landroid/view/SurfaceView;->mHdrHeadroom:F

    .line 214
    const/4 p3, 0x0

    iput-object p3, p0, Landroid/view/SurfaceView;->mRequestedPictureProfileHandle:Landroid/media/quality/PictureProfileHandle;

    .line 220
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    .line 221
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    .line 225
    const/4 p4, -0x2

    iput p4, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 226
    iput p4, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 228
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 232
    new-instance p4, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView;)V

    iput-object p4, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 235
    new-instance p4, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceView;)V

    iput-object p4, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 245
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 246
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 247
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 248
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 249
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 251
    const/4 p4, -0x1

    iput p4, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 254
    iput p4, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 260
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 265
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/SurfaceView;->mAlpha:F

    .line 267
    const/high16 v1, -0x1000000

    iput v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 269
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 274
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 275
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 279
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 280
    iput p4, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 281
    iput p4, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 282
    iput p4, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 283
    iput p4, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 285
    iput p4, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 290
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 293
    iput p4, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput p4, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 294
    iput p2, p0, Landroid/view/SurfaceView;->mTransformHint:I

    .line 299
    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 301
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    .line 307
    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object p2, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 314
    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object p2, p0, Landroid/view/SurfaceView;->mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 319
    new-instance p2, Landroid/view/RemoteAccessibilityController;

    invoke-direct {p2, p0}, Landroid/view/RemoteAccessibilityController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    .line 322
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 330
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 333
    const-string p2, "SurfaceView"

    iput-object p2, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    .line 435
    new-instance p2, Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    invoke-direct {p2, p3}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;-><init>(Landroid/view/SurfaceView-IA;)V

    iput-object p2, p0, Landroid/view/SurfaceView;->mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    .line 438
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->clipSurfaceviews()Z

    move-result p2

    iput-boolean p2, p0, Landroid/view/SurfaceView;->mRtDrivenClipping:Z

    .line 1760
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 1761
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroid/view/SurfaceView;->mRTLastSetCrop:Landroid/graphics/RectF;

    .line 1896
    iput-object p3, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    .line 1961
    new-instance p2, Landroid/view/SurfaceView$1;

    invoke-direct {p2, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object p2, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 460
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 461
    iput-boolean p5, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    .line 462
    return-void
.end method

.method private blacklist applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 5

    .line 1751
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1752
    if-eqz v0, :cond_a

    .line 1754
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_d

    .line 1756
    :cond_a
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1758
    :goto_d
    return-void
.end method

.method private blacklist applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 2447
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2448
    if-eqz v0, :cond_a

    .line 2450
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_d

    .line 2452
    :cond_a
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2454
    :goto_d
    return-void
.end method

.method private blacklist clearSurfaceViewPort(Landroid/graphics/Canvas;)V
    .registers 10

    .line 759
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v7

    .line 760
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3c

    .line 761
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 762
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1f

    .line 763
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 765
    :cond_1f
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget v5, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    iget v6, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFFF)V

    goto :goto_4e

    .line 775
    :cond_3c
    move-object v0, p1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result p1

    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result p1

    int-to-float v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFFF)V

    .line 777
    :goto_4e
    return-void
.end method

.method private blacklist copySurface(ZZ)V
    .registers 4

    .line 1593
    if-eqz p1, :cond_9

    .line 1594
    iget-object p1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {p1, v0}, Landroid/view/Surface;->copyFrom(Landroid/graphics/BLASTBufferQueue;)V

    .line 1597
    :cond_9
    if-eqz p2, :cond_28

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x1a

    if-ge p1, p2, :cond_28

    .line 1604
    iget-object p1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz p1, :cond_28

    .line 1605
    iget-object p1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object p2, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {p2}, Landroid/graphics/BLASTBufferQueue;->createSurfaceWithHandle()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 1608
    :cond_28
    return-void
.end method

.method private blacklist createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    .line 1644
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "SurfaceView.updateSurface"

    if-nez v0, :cond_29

    .line 1645
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 1646
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1647
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1648
    invoke-virtual {p1, p3}, Landroid/view/ViewRootImpl;->updateAndGetBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1649
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1650
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1651
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1654
    :cond_29
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_6e

    .line 1655
    new-instance p3, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "(BLAST)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1656
    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1657
    invoke-virtual {p3, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1658
    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 1659
    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1660
    invoke-virtual {p3, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1661
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1662
    invoke-virtual {p3, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1663
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p3

    iput-object p3, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_91

    .line 1666
    :cond_6e
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_78

    move v4, v2

    goto :goto_79

    :cond_78
    move v4, v3

    .line 1667
    :goto_79
    invoke-virtual {p3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_87

    move v4, v2

    goto :goto_88

    :cond_87
    move v4, v3

    .line 1668
    :goto_88
    invoke-virtual {p3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    .line 1669
    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1672
    :goto_91
    iget-object p3, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez p3, :cond_cd

    .line 1673
    new-instance p3, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Background for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1674
    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1675
    invoke-virtual {p3, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1676
    invoke-virtual {p3, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1677
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1678
    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1679
    invoke-virtual {p3, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    .line 1680
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p3

    iput-object p3, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 1685
    :cond_cd
    iget-object p3, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz p3, :cond_d6

    .line 1686
    iget-object p3, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {p3}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 1688
    :cond_d6
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result p1

    iput p1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    .line 1689
    iget-object p1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget p3, p0, Landroid/view/SurfaceView;->mTransformHint:I

    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1691
    new-instance p1, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {p1, p2, v3}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1692
    iget-object p1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object p2, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget p3, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v1, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1693
    iget-object p1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    sget-object p2, Landroid/view/ViewRootImpl;->sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    invoke-virtual {p1, p2}, Landroid/graphics/BLASTBufferQueue;->setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    .line 1694
    return-void
.end method

.method private blacklist dispatchScvhAttachedToHost()V
    .registers 4

    .line 499
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 500
    if-nez v0, :cond_7

    .line 501
    return-void

    .line 504
    :cond_7
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v0

    .line 505
    if-nez v0, :cond_e

    .line 508
    return-void

    .line 512
    :cond_e
    :try_start_e
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 513
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v1

    new-instance v2, Landroid/window/InputTransferToken;

    invoke-direct {v2, v0}, Landroid/window/InputTransferToken;-><init>(Landroid/os/IBinder;)V

    .line 514
    invoke-interface {v1, v2}, Landroid/view/ISurfaceControlViewHost;->onDispatchAttachedToWindow(Landroid/window/InputTransferToken;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1c} :catch_1d

    .line 519
    goto :goto_25

    .line 515
    :catch_1d
    move-exception v0

    .line 516
    const-string v0, "SurfaceView"

    const-string v1, "Failed to onDispatchAttachedToWindow to SCVH. Likely SCVH is already dead."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_25
    return-void
.end method

.method private greylist-max-o getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .registers 4

    .line 1900
    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1901
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 1902
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1903
    monitor-exit v0

    .line 1904
    return-object v1

    .line 1903
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    .registers 5

    .line 1513
    new-instance v0, Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 1514
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->addToSync(Landroid/window/SurfaceSyncGroup;)V

    .line 1515
    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V

    invoke-direct {p0, p1, v1}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    .line 1526
    return-void
.end method

.method private blacklist handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    .registers 5

    .line 1529
    new-instance v0, Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 1530
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1531
    :try_start_c
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1532
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1b

    .line 1534
    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;-><init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V

    invoke-direct {p0, p1, v1}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    .line 1542
    return-void

    .line 1532
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method private blacklist initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 5

    .line 2372
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object p1

    .line 2373
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0, p1}, Landroid/view/RemoteAccessibilityController;->alreadyAssociated(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2374
    return-void

    .line 2376
    :cond_d
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    .line 2377
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAccessibilityViewId()I

    move-result v2

    .line 2376
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/RemoteAccessibilityController;->assosciateHierarchy(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;I)V

    .line 2379
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    .line 2380
    return-void
.end method

.method private greylist-max-o isAboveParent()Z
    .registers 2

    .line 1931
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private synthetic blacklist lambda$handleSyncBufferCallback$1(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V
    .registers 4

    .line 1516
    nop

    .line 1517
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_f

    .line 1518
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->stopContinuousSyncTransaction()V

    .line 1519
    invoke-virtual {p1}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->waitForTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    goto :goto_10

    .line 1517
    :cond_f
    const/4 p1, 0x0

    .line 1522
    :goto_10
    invoke-virtual {p2, p1}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 1523
    invoke-virtual {p2}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 1524
    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    .line 1525
    return-void
.end method

.method private synthetic blacklist lambda$handleSyncNoBuffer$2(Landroid/window/SurfaceSyncGroup;)V
    .registers 4

    .line 1535
    iget-object v0, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1536
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1537
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    .line 1538
    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 1539
    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    .line 1540
    return-void

    .line 1537
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method private synthetic blacklist lambda$new$0()Z
    .registers 3

    .line 240
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_f

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 241
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 242
    return v1
.end method

.method private blacklist notifySurfaceDestroyed()V
    .registers 6

    .line 2383
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2386
    iget-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "surfaceDestroyed"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0xea66

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2387
    invoke-direct {p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 2388
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 2389
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2388
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 2402
    :cond_29
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2403
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->forceScopedDisconnect()V

    .line 2406
    :cond_36
    return-void
.end method

.method private greylist-max-o onDrawFinished()V
    .registers 2

    .line 1702
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1703
    return-void
.end method

.method private greylist-max-o performDrawFinished()V
    .registers 2

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 603
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_f

    .line 604
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 605
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 607
    :cond_f
    return-void
.end method

.method private blacklist performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZZZLandroid/media/quality/PictureProfileHandle;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 13

    .line 1125
    nop

    .line 1127
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1129
    :try_start_6
    invoke-direct {p0}, Landroid/view/SurfaceView;->surfaceShouldExist()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_150

    .line 1139
    if-eqz p3, :cond_27

    .line 1140
    :try_start_15
    invoke-direct {p0, p9}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 1141
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_27

    .line 1142
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-direct {p0, p9, v0}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_22

    goto :goto_27

    .line 1244
    :catchall_22
    move-exception v0

    move-object p1, v0

    move-object p3, p0

    goto/16 :goto_153

    .line 1145
    :cond_27
    :goto_27
    :try_start_27
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceSequenceId()I

    move-result p1

    iput p1, p0, Landroid/view/SurfaceView;->mParentSurfaceSequenceId:I

    .line 1149
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result p1
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_150

    if-nez p1, :cond_42

    .line 1150
    :try_start_33
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz p1, :cond_3d

    .line 1151
    iget-object p1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p9, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_42

    .line 1153
    :cond_3d
    iget-object p1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p9, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_22

    .line 1157
    :cond_42
    :goto_42
    :try_start_42
    invoke-direct {p0, p9}, Landroid/view/SurfaceView;->updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V

    .line 1158
    invoke-direct {p0, p9}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1159
    if-nez p7, :cond_4c

    if-eqz p3, :cond_53

    .line 1160
    :cond_4c
    iget-object p1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget p7, p0, Landroid/view/SurfaceView;->mHdrHeadroom:F

    invoke-virtual {p9, p1, p7}, Landroid/view/SurfaceControl$Transaction;->setDesiredHdrHeadroom(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_150

    .line 1163
    :cond_53
    if-eqz p8, :cond_5a

    .line 1164
    :try_start_55
    iget-object p1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p9, p1, p8}, Landroid/view/SurfaceControl$Transaction;->setPictureProfileHandle(Landroid/view/SurfaceControl;Landroid/media/quality/PictureProfileHandle;)Landroid/view/SurfaceControl$Transaction;
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_22

    .line 1167
    :cond_5a
    :try_start_5a
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result p1
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_150

    if-eqz p1, :cond_69

    .line 1168
    :try_start_60
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result p1

    .line 1169
    iget-object p7, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p9, p7, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1172
    :cond_69
    if-eqz p6, :cond_7b

    .line 1173
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result p1

    if-nez p1, :cond_78

    .line 1176
    iget-object p1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 p6, 0x3f800000    # 1.0f

    invoke-virtual {p9, p1, p6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1178
    :cond_78
    invoke-direct {p0, p9}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_22

    .line 1181
    :cond_7b
    :try_start_7b
    iget-object p1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget p6, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    invoke-virtual {p9, p1, p6}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_150

    .line 1182
    if-nez p4, :cond_86

    if-eqz p5, :cond_8b

    :cond_86
    if-nez p3, :cond_8b

    .line 1183
    :try_start_88
    invoke-direct {p0, p9}, Landroid/view/SurfaceView;->setBufferSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 1185
    :cond_8b
    if-nez p4, :cond_99

    if-nez p3, :cond_99

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result p1
    :try_end_93
    .catchall {:try_start_88 .. :try_end_93} :catchall_22

    if-nez p1, :cond_96

    goto :goto_99

    :cond_96
    move-object p3, p0

    move-object p4, p9

    goto :goto_fc

    .line 1187
    :cond_99
    :goto_99
    :try_start_99
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mRtDrivenClipping:Z
    :try_end_9b
    .catchall {:try_start_99 .. :try_end_9b} :catchall_150

    if-eqz p1, :cond_a3

    :try_start_9d
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result p1
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_22

    if-nez p1, :cond_bc

    .line 1192
    :cond_a3
    :try_start_a3
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z
    :try_end_a5
    .catchall {:try_start_a3 .. :try_end_a5} :catchall_150

    if-eqz p1, :cond_b3

    :try_start_a7
    iget-object p1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_b3

    .line 1193
    iget-object p1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p3, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p9, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    :try_end_b2
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_22

    goto :goto_bc

    .line 1195
    :cond_b3
    :try_start_b3
    iget-object p1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget p3, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget p4, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {p9, p1, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1200
    :cond_bc
    :goto_bc
    iget-object p1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget p3, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget p4, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {p9, p1, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setDestinationFrame(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1203
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result p1
    :try_end_c9
    .catchall {:try_start_b3 .. :try_end_c9} :catchall_150

    if-eqz p1, :cond_d5

    .line 1206
    :try_start_cb
    iget p1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget p3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-direct {p0, p1, p3}, Landroid/view/SurfaceView;->replacePositionUpdateListener(II)V
    :try_end_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_22

    move-object p3, p0

    move-object p4, p9

    goto :goto_fc

    .line 1208
    :cond_d5
    :try_start_d5
    iget-object p5, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget p6, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget p7, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1211
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget p3, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float p3, p3

    div-float p8, p1, p3

    iget-object p1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1212
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget p3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I
    :try_end_f4
    .catchall {:try_start_d5 .. :try_end_f4} :catchall_150

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 1208
    move-object p3, p0

    move-object p4, p9

    move p9, p1

    :try_start_f9
    invoke-virtual/range {p3 .. p9}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1224
    :goto_fc
    invoke-direct {p0, p4}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1225
    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    .line 1227
    iget-object p1, p3, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 1228
    iget-object p1, p3, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 1229
    if-nez p2, :cond_119

    .line 1230
    iget-object p1, p3, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget p2, p3, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 1231
    iget-object p1, p3, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget p2, p3, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_131

    .line 1233
    :cond_119
    iget p1, p2, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 1234
    iget-object p2, p3, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget p4, p3, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float p4, p4

    mul-float/2addr p4, p1

    const/high16 p5, 0x3f000000    # 0.5f

    add-float/2addr p4, p5

    float-to-int p4, p4

    iput p4, p2, Landroid/graphics/Rect;->right:I

    .line 1235
    iget-object p2, p3, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget p4, p3, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p1

    add-float/2addr p4, p5

    float-to-int p1, p4

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 1237
    :goto_131
    iget-object p1, p3, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 1238
    iget-object p2, p3, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 1239
    iget p4, p3, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    if-ne p4, p1, :cond_143

    iget p4, p3, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    if-eq p4, p2, :cond_142

    goto :goto_143

    :cond_142
    move v1, v2

    .line 1241
    :cond_143
    :goto_143
    iput p1, p3, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 1242
    iput p2, p3, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_147
    .catchall {:try_start_f9 .. :try_end_147} :catchall_14e

    .line 1244
    iget-object p1, p3, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1245
    nop

    .line 1247
    return v1

    .line 1244
    :catchall_14e
    move-exception v0

    goto :goto_152

    :catchall_150
    move-exception v0

    move-object p3, p0

    :goto_152
    move-object p1, v0

    :goto_153
    iget-object p2, p3, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1245
    throw p1
.end method

.method private blacklist redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V
    .registers 5

    .line 1546
    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1547
    iget-object p2, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    .line 1548
    return-void
.end method

.method private blacklist releaseSurfaces(Z)V
    .registers 6

    .line 1071
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/SurfaceView;->mAlpha:F

    .line 1072
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 1073
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1074
    :try_start_c
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 1075
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 1076
    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1079
    :cond_18
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1080
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_28

    .line 1081
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1082
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1084
    :cond_28
    iget-object v3, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_33

    .line 1085
    iget-object v3, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1086
    iput-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 1088
    :cond_33
    iget-object v3, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_3e

    .line 1089
    iget-object v3, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1090
    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    .line 1093
    :cond_3e
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v3, :cond_55

    .line 1094
    iget-object v3, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1095
    if-eqz p1, :cond_55

    .line 1096
    iget-object p1, p0, Landroid/view/SurfaceView;->mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    invoke-virtual {p1}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->detach()V

    .line 1097
    iget-object p1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 1098
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1102
    :cond_55
    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1103
    monitor-exit v0

    .line 1104
    return-void

    .line 1103
    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_c .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method private blacklist reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 5

    .line 2319
    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 2320
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1a

    .line 2323
    :cond_d
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;->initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 2324
    iget-object p2, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2325
    return-void

    .line 2321
    :cond_1a
    :goto_1a
    return-void
.end method

.method private blacklist replacePositionUpdateListener(II)V
    .registers 5

    .line 1114
    iget-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    if-eqz v0, :cond_b

    .line 1115
    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->removePositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 1117
    :cond_b
    new-instance v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;-><init>(Landroid/view/SurfaceView;II)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    .line 1118
    iget-object p1, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object p2, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {p1, p2}, Landroid/graphics/RenderNode;->addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 1119
    return-void
.end method

.method private blacklist requestEmbeddedFocus(Z)V
    .registers 5

    .line 2433
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2434
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v1, :cond_37

    if-nez v0, :cond_b

    goto :goto_37

    .line 2438
    :cond_b
    :try_start_b
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2439
    invoke-virtual {v2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v2

    .line 2438
    invoke-interface {v1, v0, v2, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    .line 2443
    goto :goto_36

    .line 2440
    :catch_19
    move-exception p1

    .line 2441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Exception requesting focus on embedded window"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2444
    :goto_36
    return-void

    .line 2435
    :cond_37
    :goto_37
    return-void
.end method

.method private blacklist requiresSurfaceControlCreation(ZZ)Z
    .registers 7

    .line 1251
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_14

    .line 1252
    iget-object p2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_d

    if-eqz p1, :cond_12

    :cond_d
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz p1, :cond_12

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    return v2

    .line 1255
    :cond_14
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    if-nez p1, :cond_1c

    if-eqz p2, :cond_21

    :cond_1c
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    :goto_22
    return v2
.end method

.method private greylist-max-o runOnUiThread(Ljava/lang/Runnable;)V
    .registers 5

    .line 1908
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1909
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_14

    .line 1910
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 1912
    :cond_14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1914
    :goto_17
    return-void
.end method

.method private blacklist setBufferSize(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 1611
    iget-object p1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v0, p0, Landroid/view/SurfaceView;->mTransformHint:I

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1612
    iget-object p1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz p1, :cond_18

    .line 1613
    iget-object p1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v3, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1616
    :cond_18
    return-void
.end method

.method private blacklist setTag()V
    .registers 4

    .line 485
    nop

    .line 486
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_33

    .line 489
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 490
    array-length v1, v0

    if-lez v1, :cond_33

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    .line 495
    :cond_33
    const-string v0, ""

    :goto_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SV["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    .line 496
    return-void
.end method

.method private blacklist setWindowStopped(Z)V
    .registers 2

    .line 479
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 480
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 481
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 482
    return-void
.end method

.method private blacklist surfaceShouldExist()Z
    .registers 5

    .line 1259
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v3

    .line 1261
    :goto_a
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    if-nez v1, :cond_16

    if-nez v0, :cond_15

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    move v2, v3

    :cond_16
    :goto_16
    return v2
.end method

.method private blacklist updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    .line 1064
    iget v0, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget v2, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 1065
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    const/4 v0, 0x1

    aput v2, v1, v0

    const/4 v0, 0x2

    aput v3, v1, v0

    .line 1066
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 1067
    return-object p1
.end method

.method private blacklist updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 1052
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1053
    return-void

    .line 1055
    :cond_5
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v0, :cond_19

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    if-nez v0, :cond_19

    .line 1057
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1e

    .line 1059
    :cond_19
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1061
    :goto_1e
    return-void
.end method

.method private greylist-max-o updateOpaqueFlag()V
    .registers 2

    .line 1044
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1045
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_15

    .line 1047
    :cond_f
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 1049
    :goto_15
    return-void
.end method

.method private blacklist updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 2220
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2221
    if-nez v0, :cond_7

    .line 2223
    return-void

    .line 2225
    :cond_7
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 2226
    iget-object v1, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2227
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2228
    return-void
.end method

.method private greylist-max-o updateRequestedVisibility()V
    .registers 2

    .line 475
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 476
    return-void
.end method


# virtual methods
.method public whitelist applyTransactionToFrame(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 2481
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2482
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_17

    .line 2486
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->getLastAcquiredFrameNum()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 2487
    iget-object v3, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v3, p1, v1, v2}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 2488
    monitor-exit v0

    .line 2489
    return-void

    .line 2483
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Surface does not exist!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2488
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public whitelist clearChildSurfacePackage()V
    .registers 4

    .line 2301
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_2a

    .line 2302
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    invoke-virtual {v0}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->detach()V

    .line 2303
    iget-object v0, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 2306
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 2307
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2308
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2309
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 2310
    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 2312
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2313
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 2315
    :cond_2a
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 700
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_14

    .line 702
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    .line 704
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    .line 707
    :cond_14
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 708
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 688
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_13

    .line 690
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_13

    .line 692
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    .line 695
    :cond_13
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 696
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 13

    .line 661
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_c

    move-object v5, p1

    goto :goto_4c

    .line 665
    :cond_c
    nop

    .line 666
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 668
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    goto :goto_40

    .line 669
    :cond_19
    const/4 v0, 0x1

    if-eqz p1, :cond_3f

    .line 670
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    .line 671
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    .line 672
    if-lez v2, :cond_3f

    if-lez v3, :cond_3f

    .line 673
    iget-object v4, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 675
    iget-object v4, p0, Landroid/view/SurfaceView;->mLocation:[I

    aget v6, v4, v1

    .line 676
    iget-object v4, p0, Landroid/view/SurfaceView;->mLocation:[I

    aget v7, v4, v0

    .line 677
    add-int v8, v6, v2

    add-int v9, v7, v3

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 680
    :cond_3f
    move p1, v0

    :goto_40
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 681
    goto :goto_4a

    .line 680
    :cond_49
    move v1, p1

    .line 683
    :goto_4a
    return v1

    .line 661
    :cond_4b
    move-object v5, p1

    .line 662
    :goto_4c
    invoke-super {p0, v5}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    return p1
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 2508
    const-class v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChildSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 2

    .line 2289
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object v0
.end method

.method public whitelist getCompositionOrder()I
    .registers 2

    .line 833
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    return v0
.end method

.method public blacklist getCornerRadius()F
    .registers 2

    .line 803
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    return v0
.end method

.method public whitelist getHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .line 471
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public whitelist getHostToken()Landroid/os/IBinder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2179
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2180
    if-nez v0, :cond_8

    .line 2181
    const/4 v0, 0x0

    return-object v0

    .line 2183
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImportantForAccessibility()I
    .registers 3

    .line 2360
    invoke-super {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    .line 2364
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v1}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_10
    if-eqz v0, :cond_13

    .line 2366
    :cond_12
    return v0

    .line 2368
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 4

    .line 1496
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1497
    if-nez v0, :cond_9

    const-string v0, "detached"

    goto :goto_11

    :cond_9
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1498
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SurfaceView["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRenderingSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 1489
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public whitelist getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 2167
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getSurfaceRenderPosition()Landroid/graphics/Rect;
    .registers 2

    .line 1747
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .registers 2

    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isFixedSize()Z
    .registers 3

    .line 1927
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public blacklist isZOrderedOnTop()Z
    .registers 2

    .line 892
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4

    .line 524
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 525
    invoke-direct {p0}, Landroid/view/SurfaceView;->setTag()V

    .line 526
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_d

    .line 527
    invoke-direct {p0}, Landroid/view/SurfaceView;->dispatchScvhAttachedToHost()V

    .line 529
    :cond_d
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 531
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1f

    move v0, v2

    :cond_1f
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 532
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 534
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 535
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 536
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_3f

    .line 537
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 538
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 539
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 540
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 542
    :cond_3f
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 4

    .line 611
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_9

    .line 618
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 621
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 622
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v1, :cond_20

    .line 623
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 624
    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 625
    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 626
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 630
    :cond_20
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 632
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 633
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 635
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 636
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 637
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    .line 2428
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2429
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->requestEmbeddedFocus(Z)V

    .line 2430
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 2349
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2350
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2351
    return-void

    .line 2355
    :cond_c
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->getLeashToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/os/IBinder;)V

    .line 2356
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 5

    .line 641
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_c

    .line 642
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v0, p1, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result p1

    goto :goto_10

    .line 643
    :cond_c
    invoke-static {v1, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result p1

    .line 644
    :goto_10
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v0, :cond_1b

    .line 645
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v0, p2, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result p2

    goto :goto_1f

    .line 646
    :cond_1b
    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result p2

    .line 647
    :goto_1f
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 648
    return-void
.end method

.method protected blacklist onProvideStructure(Landroid/view/ViewStructure;II)V
    .registers 4

    .line 2339
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;II)V

    .line 2340
    iget p2, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_13

    .line 2341
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.view.ViewStructure.extra.CONTAINS_SECURE_LAYERS"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2344
    :cond_13
    return-void
.end method

.method protected whitelist onSetAlpha(I)Z
    .registers 4

    .line 595
    iget v0, p0, Landroid/view/SurfaceView;->mAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eq v0, p1, :cond_e

    .line 596
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 598
    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method protected blacklist onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V
    .registers 13

    .line 1721
    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1722
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1724
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .registers 2

    .line 546
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 547
    if-nez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 548
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 549
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 550
    return-void
.end method

.method blacklist performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .registers 5

    .line 2493
    invoke-super {p0, p1, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 2494
    iget-object p2, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 2495
    return-void

    .line 2498
    :cond_c
    iget-object p2, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2499
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_29

    .line 2500
    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 2501
    goto :goto_2a

    .line 2503
    :cond_29
    goto :goto_12

    .line 2504
    :cond_2a
    :goto_2a
    return-void
.end method

.method public blacklist requestUpdateSurfacePositionAndScale()V
    .registers 9

    .line 1728
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1729
    return-void

    .line 1731
    :cond_5
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1732
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1735
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float v6, v0, v1

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1736
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 1732
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1737
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1738
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1739
    return-void
.end method

.method public blacklist sendPictureProfileHandle(Landroid/media/quality/PictureProfileHandle;)V
    .registers 3

    .line 1036
    if-eqz p1, :cond_8

    .line 1039
    iput-object p1, p0, Landroid/view/SurfaceView;->mRequestedPictureProfileHandle:Landroid/media/quality/PictureProfileHandle;

    .line 1040
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 1041
    return-void

    .line 1037
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PictureProfileHandle is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setAlpha(F)V
    .registers 2

    .line 590
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 591
    return-void
.end method

.method public whitelist setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 6

    .line 2256
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2257
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 2258
    :goto_d
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2259
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_26

    .line 2260
    if-eqz v0, :cond_20

    .line 2261
    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2262
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 2264
    :cond_20
    invoke-direct {p0, v2, p1}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 2265
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 2267
    :cond_26
    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2268
    invoke-direct {p0}, Landroid/view/SurfaceView;->dispatchScvhAttachedToHost()V

    .line 2269
    iget-object p1, p0, Landroid/view/SurfaceView;->mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->attach(Landroid/view/SurfaceView;)V

    .line 2271
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 2272
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->requestEmbeddedFocus(Z)V

    .line 2274
    :cond_3a
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 2275
    return-void
.end method

.method public whitelist setClipBounds(Landroid/graphics/Rect;)V
    .registers 5

    .line 724
    invoke-super {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 726
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mRtDrivenClipping:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 727
    return-void

    .line 730
    :cond_e
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz p1, :cond_50

    iget-object p1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p1, :cond_17

    goto :goto_50

    .line 736
    :cond_17
    iget p1, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_27

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result p1

    if-nez p1, :cond_27

    .line 737
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 740
    :cond_27
    iget-object p1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_33

    .line 741
    iget-object p1, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3d

    .line 743
    :cond_33
    iget-object p1, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 745
    :goto_3d
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 746
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 747
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 748
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 749
    return-void

    .line 731
    :cond_50
    :goto_50
    return-void
.end method

.method public whitelist setCompositionOrder(I)V
    .registers 3

    .line 818
    iput p1, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 819
    iget p1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    if-eq p1, v0, :cond_b

    .line 820
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 822
    :cond_b
    return-void
.end method

.method public blacklist setCornerRadius(F)V
    .registers 3

    .line 787
    iput p1, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    .line 788
    iget p1, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_22

    iget-object p1, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_22

    .line 789
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    .line 790
    iget-object p1, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 791
    iget-object p1, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 793
    :cond_22
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 794
    return-void
.end method

.method public whitelist setDesiredHdrHeadroom(F)V
    .registers 5

    .line 1006
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1010
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_32

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_19

    const v0, 0x461c4000    # 10000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_19

    goto :goto_32

    .line 1011
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredHeadroom must be 0.0 or in the range [1.0, 10000.0f], received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_32
    :goto_32
    iput p1, p0, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    .line 1016
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 1017
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1018
    return-void

    .line 1007
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredHeadroom must be finite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setEnableSurfaceClipping(Z)V
    .registers 2

    .line 718
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    .line 719
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 720
    return-void
.end method

.method protected greylist setFrame(IIII)Z
    .registers 5

    .line 654
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result p1

    .line 655
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 656
    return p1
.end method

.method public greylist-max-o setResizeBackgroundColor(I)V
    .registers 3

    .line 1942
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1943
    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1944
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1945
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1946
    return-void
.end method

.method public blacklist setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 1954
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1955
    return-void

    .line 1957
    :cond_5
    iput p2, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 1958
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1959
    return-void
.end method

.method public whitelist setSecure(Z)V
    .registers 2

    .line 956
    if-eqz p1, :cond_9

    .line 957
    iget p1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_f

    .line 959
    :cond_9
    iget p1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 961
    :goto_f
    return-void
.end method

.method public whitelist setSurfaceLifecycle(I)V
    .registers 2

    .line 973
    iput p1, p0, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    .line 974
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 975
    return-void
.end method

.method public blacklist setUseAlpha()V
    .registers 1

    .line 581
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 4

    .line 554
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 555
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    move p1, v0

    goto :goto_a

    :cond_9
    move p1, v1

    :goto_a
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 556
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz p1, :cond_19

    iget-boolean p1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz p1, :cond_19

    iget-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 557
    :goto_1a
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, p1, :cond_21

    .line 564
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 566
    :cond_21
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 567
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 568
    return-void
.end method

.method public whitelist setZOrderMediaOverlay(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 853
    if-eqz p1, :cond_4

    .line 854
    const/4 p1, -0x1

    goto :goto_5

    :cond_4
    const/4 p1, -0x2

    :goto_5
    iput p1, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 855
    return-void
.end method

.method public whitelist setZOrderOnTop(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 881
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 883
    :goto_11
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    .line 884
    return-void
.end method

.method public blacklist setZOrderedOnTop(ZZ)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 917
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 918
    move p1, v0

    goto :goto_6

    .line 920
    :cond_5
    const/4 p1, -0x2

    .line 922
    :goto_6
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_c

    .line 923
    return v2

    .line 925
    :cond_c
    iput p1, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 927
    if-nez p2, :cond_11

    .line 928
    return v2

    .line 930
    :cond_11
    iget-object p1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p1, :cond_16

    .line 931
    return v0

    .line 933
    :cond_16
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    .line 934
    if-nez p1, :cond_1d

    .line 935
    return v0

    .line 938
    :cond_1d
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 939
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 940
    return v0
.end method

.method public blacklist surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 2193
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    .line 2194
    return-void
.end method

.method public blacklist surfaceDestroyed()V
    .registers 2

    .line 2203
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    .line 2204
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->disassosciateHierarchy()V

    .line 2205
    return-void
.end method

.method public blacklist surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 2214
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    .line 2215
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 2217
    :cond_b
    return-void
.end method

.method public blacklist syncNextFrame(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 2460
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, p1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)Z

    .line 2461
    return-void
.end method

.method blacklist updateEmbeddedAccessibilityMatrix(Z)V
    .registers 6

    .line 2409
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2410
    return-void

    .line 2412
    :cond_9
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 2417
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2418
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2419
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2420
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 2421
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2420
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2422
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p1}, Landroid/view/RemoteAccessibilityController;->setWindowMatrix(Landroid/graphics/Matrix;Z)V

    .line 2423
    return-void
.end method

.method protected greylist-max-o updateSurface()V
    .registers 31

    .line 1266
    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v0, :cond_7

    .line 1270
    return-void

    .line 1272
    :cond_7
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 1274
    if-nez v2, :cond_e

    .line 1275
    return-void

    .line 1278
    :cond_e
    iget-object v0, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    const/4 v11, 0x0

    if-eqz v0, :cond_396

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_396

    .line 1284
    :cond_1d
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 1285
    if-eqz v3, :cond_26

    .line 1286
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 1289
    :cond_26
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1290
    if-gtz v0, :cond_2e

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    .line 1291
    :cond_2e
    iget v4, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1292
    if-gtz v4, :cond_36

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    :cond_36
    move v12, v4

    .line 1294
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v4

    .line 1295
    iget v5, v1, Landroid/view/SurfaceView;->mFormat:I

    iget v6, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    const/4 v13, 0x1

    if-eq v5, v6, :cond_44

    move v14, v13

    goto :goto_45

    :cond_44
    move v14, v11

    .line 1296
    :goto_45
    iget-boolean v5, v1, Landroid/view/SurfaceView;->mVisible:Z

    iget-boolean v6, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v5, v6, :cond_4d

    move v15, v13

    goto :goto_4e

    :cond_4d
    move v15, v11

    .line 1297
    :goto_4e
    iget v5, v1, Landroid/view/SurfaceView;->mAlpha:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_56

    move v5, v13

    goto :goto_57

    :cond_56
    move v5, v11

    .line 1298
    :goto_57
    invoke-direct {v1, v14, v15}, Landroid/view/SurfaceView;->requiresSurfaceControlCreation(ZZ)Z

    move-result v6

    .line 1299
    iget v7, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    if-ne v7, v0, :cond_67

    iget v7, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    if-eq v7, v12, :cond_64

    goto :goto_67

    :cond_64
    move v7, v5

    move v5, v11

    goto :goto_69

    :cond_67
    :goto_67
    move v7, v5

    move v5, v13

    .line 1300
    :goto_69
    iget-boolean v8, v1, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iget-boolean v9, v1, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v8, v9, :cond_71

    move v8, v13

    goto :goto_72

    :cond_71
    move v8, v11

    .line 1301
    :goto_72
    iget-object v9, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v1, v9}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 1302
    iget v9, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v10, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v10, v10, v11

    if-ne v9, v10, :cond_8a

    iget v9, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v10, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v10, v10, v13

    if-eq v9, v10, :cond_88

    goto :goto_8a

    :cond_88
    move v9, v11

    goto :goto_8b

    :cond_8a
    :goto_8a
    move v9, v13

    .line 1304
    :goto_8b
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v10

    move/from16 v16, v13

    iget-object v13, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-ne v10, v13, :cond_a8

    .line 1305
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v10

    iget-object v13, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-eq v10, v13, :cond_a6

    goto :goto_a8

    :cond_a6
    move v10, v11

    goto :goto_aa

    :cond_a8
    :goto_a8
    move/from16 v10, v16

    .line 1306
    :goto_aa
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v13

    move/from16 v17, v11

    iget v11, v1, Landroid/view/SurfaceView;->mTransformHint:I

    if-eq v13, v11, :cond_bc

    iget-boolean v11, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v11, :cond_bc

    move v11, v6

    move/from16 v6, v16

    goto :goto_bf

    :cond_bc
    move v11, v6

    move/from16 v6, v17

    .line 1308
    :goto_bf
    iget v13, v1, Landroid/view/SurfaceView;->mSubLayer:I

    move/from16 v18, v5

    iget v5, v1, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    if-eq v13, v5, :cond_cb

    move v13, v7

    move/from16 v7, v16

    goto :goto_ce

    :cond_cb
    move v13, v7

    move/from16 v7, v17

    .line 1309
    :goto_ce
    iget v5, v1, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    move/from16 v19, v6

    iget v6, v1, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    if-eq v5, v6, :cond_d9

    move/from16 v5, v16

    goto :goto_db

    :cond_d9
    move/from16 v5, v17

    .line 1311
    :goto_db
    iget v6, v1, Landroid/view/SurfaceView;->mHdrHeadroom:F

    move/from16 v20, v5

    iget v5, v1, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    cmpl-float v5, v6, v5

    if-eqz v5, :cond_e9

    move v5, v8

    move/from16 v8, v16

    goto :goto_ec

    :cond_e9
    move v5, v8

    move/from16 v8, v17

    .line 1312
    :goto_ec
    iget-object v6, v1, Landroid/view/SurfaceView;->mRequestedPictureProfileHandle:Landroid/media/quality/PictureProfileHandle;

    if-eqz v6, :cond_f3

    move/from16 v6, v16

    goto :goto_f5

    :cond_f3
    move/from16 v6, v17

    .line 1314
    :goto_f5
    if-nez v11, :cond_113

    if-nez v14, :cond_113

    if-nez v18, :cond_113

    if-nez v15, :cond_113

    if-nez v13, :cond_113

    if-nez v5, :cond_113

    if-nez v9, :cond_113

    if-nez v10, :cond_113

    if-nez v19, :cond_113

    if-nez v7, :cond_113

    iget-boolean v5, v1, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v5, :cond_113

    if-nez v20, :cond_113

    if-nez v8, :cond_113

    if-eqz v6, :cond_395

    .line 1330
    :cond_113
    if-nez v11, :cond_125

    if-nez v14, :cond_125

    if-nez v18, :cond_125

    if-nez v15, :cond_125

    if-nez v10, :cond_125

    if-nez v7, :cond_125

    iget-boolean v5, v1, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v5, :cond_125

    if-eqz v20, :cond_165

    .line 1333
    :cond_125
    iget-object v5, v1, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    iget v6, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 1334
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget v6, v1, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 1335
    iget v6, v1, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-lez v6, :cond_143

    const-string/jumbo v6, "setFixedSize"

    goto :goto_145

    :cond_143
    const-string v6, "layout"

    :goto_145
    move-object/from16 v26, v6

    .line 1336
    iget-boolean v6, v1, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    iget v6, v1, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    .line 1337
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    iget-boolean v6, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v21, v5

    filled-new-array/range {v21 .. v29}, [Ljava/lang/Object;

    move-result-object v5

    .line 1333
    const v6, 0xea65

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1341
    :cond_165
    :try_start_165
    iget-boolean v5, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v5, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 1342
    iget-object v5, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v5, v5, v17

    iput v5, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 1343
    iget-object v5, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v5, v5, v16

    iput v5, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 1344
    iput v0, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 1345
    iput v12, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 1346
    iget v5, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v5, v1, Landroid/view/SurfaceView;->mFormat:I

    .line 1347
    iput v4, v1, Landroid/view/SurfaceView;->mAlpha:F

    .line 1348
    iget-boolean v4, v1, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v4, v1, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 1349
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v4

    iput v4, v1, Landroid/view/SurfaceView;->mTransformHint:I

    .line 1350
    iget v4, v1, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    iput v4, v1, Landroid/view/SurfaceView;->mSubLayer:I

    .line 1352
    iget v4, v1, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    .line 1353
    iget v5, v1, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    iput v5, v1, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    .line 1354
    iget v5, v1, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    iput v5, v1, Landroid/view/SurfaceView;->mHdrHeadroom:F

    .line 1359
    iget-object v9, v1, Landroid/view/SurfaceView;->mRequestedPictureProfileHandle:Landroid/media/quality/PictureProfileHandle;

    .line 1360
    const/4 v5, 0x0

    iput-object v5, v1, Landroid/view/SurfaceView;->mRequestedPictureProfileHandle:Landroid/media/quality/PictureProfileHandle;

    .line 1362
    iget-object v6, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v10, v6, Landroid/graphics/Rect;->left:I

    .line 1363
    iget-object v6, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v10, v6, Landroid/graphics/Rect;->top:I

    .line 1364
    iget-object v6, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v20

    add-int v10, v10, v20

    iput v10, v6, Landroid/graphics/Rect;->right:I

    .line 1365
    iget-object v6, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v20

    add-int v10, v10, v20

    iput v10, v6, Landroid/graphics/Rect;->bottom:I

    .line 1366
    if-eqz v3, :cond_1c7

    .line 1367
    iget-object v6, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 1370
    :cond_1c7
    iget-object v6, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1371
    iget-object v10, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v6, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1374
    new-instance v10, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v10}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1375
    if-eqz v11, :cond_20f

    .line 1376
    invoke-direct {v1}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    .line 1377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SurfaceView["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1378
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1379
    invoke-direct {v1, v2, v5, v10}, Landroid/view/SurfaceView;->createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_214

    .line 1380
    :cond_20f
    iget-object v5, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v5, :cond_214

    .line 1381
    return-void

    .line 1380
    :cond_214
    :goto_214
    nop

    .line 1384
    if-nez v18, :cond_22b

    if-nez v11, :cond_22b

    if-nez v19, :cond_22b

    iget-boolean v5, v1, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v5, :cond_223

    iget-boolean v5, v1, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v5, :cond_22b

    :cond_223
    if-nez v13, :cond_22b

    if-eqz v7, :cond_228

    goto :goto_22b

    :cond_228
    move/from16 v13, v17

    goto :goto_22d

    :cond_22b
    :goto_22b
    move/from16 v13, v16

    .line 1386
    :goto_22d
    if-eqz v13, :cond_23e

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->wasRelayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_23e

    .line 1387
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->isInWMSRequestedSync()Z

    move-result v5

    if-eqz v5, :cond_23e

    move/from16 v21, v16

    goto :goto_240

    :cond_23e
    move/from16 v21, v17

    .line 1388
    :goto_240
    nop

    .line 1389
    if-eqz v21, :cond_25b

    .line 1390
    new-instance v5, Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;-><init>(Landroid/view/SurfaceView-IA;)V

    .line 1391
    iget-object v6, v1, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1393
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;

    invoke-direct {v1, v5}, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    .line 1391
    move-object/from16 v22, v2

    move/from16 v2, v17

    invoke-virtual {v6, v2, v1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(ZLjava/util/function/Consumer;)Z

    goto :goto_25e

    .line 1389
    :cond_25b
    move-object/from16 v22, v2

    const/4 v5, 0x0

    .line 1396
    :goto_25e
    move v1, v11

    move v11, v4

    move v4, v1

    move v1, v13

    move-object v13, v5

    move/from16 v5, v18

    move/from16 v18, v1

    move-object/from16 v1, p0

    move/from16 v6, v19

    move-object/from16 v2, v22

    const/16 v20, 0x0

    invoke-direct/range {v1 .. v10}, Landroid/view/SurfaceView;->performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZZZLandroid/media/quality/PictureProfileHandle;Landroid/view/SurfaceControl$Transaction;)Z

    move-result v2
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_273} :catch_38d

    .line 1401
    nop

    .line 1403
    nop

    .line 1404
    :try_start_275
    iget v3, v1, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_27d

    move/from16 v3, v16

    goto :goto_27e

    :cond_27d
    const/4 v3, 0x0

    .line 1406
    :goto_27e
    if-ne v11, v6, :cond_283

    move/from16 v6, v16

    goto :goto_284

    :cond_283
    const/4 v6, 0x0

    .line 1409
    :goto_284
    if-eqz v3, :cond_28b

    if-eqz v6, :cond_28b

    move/from16 v6, v16

    goto :goto_28c

    :cond_28b
    const/4 v6, 0x0

    .line 1411
    :goto_28c
    iget-boolean v7, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v7, :cond_2a8

    .line 1412
    if-nez v4, :cond_2a2

    if-nez v3, :cond_298

    iget-boolean v7, v1, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v7, :cond_2a2

    :cond_298
    if-eqz v3, :cond_2a8

    iget-boolean v7, v1, Landroid/view/SurfaceView;->mVisible:Z

    if-nez v7, :cond_2a8

    if-nez v15, :cond_2a2

    if-eqz v6, :cond_2a8

    .line 1415
    :cond_2a2
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1416
    invoke-direct {v1}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V

    .line 1420
    :cond_2a8
    invoke-direct {v1, v4, v5}, Landroid/view/SurfaceView;->copySurface(ZZ)V

    .line 1422
    invoke-direct {v1}, Landroid/view/SurfaceView;->surfaceShouldExist()Z

    move-result v6

    if-eqz v6, :cond_36c

    iget-object v6, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_36c

    .line 1423
    iget-boolean v6, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    const v7, 0xea66

    if-nez v6, :cond_2ec

    if-nez v4, :cond_2c6

    if-eqz v3, :cond_2ec

    if-eqz v15, :cond_2ec

    .line 1425
    :cond_2c6
    move/from16 v6, v16

    iput-boolean v6, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1426
    iput-boolean v6, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1429
    iget-object v6, v1, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v8, "surfaceCreated"

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1431
    invoke-direct {v1}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v6

    .line 1432
    array-length v8, v6

    const/4 v9, 0x0

    :goto_2de
    if-ge v9, v8, :cond_2ea

    aget-object v10, v6, v9

    .line 1433
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v10, v11}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1432
    add-int/lit8 v9, v9, 0x1

    goto :goto_2de

    :cond_2ea
    move-object/from16 v20, v6

    .line 1436
    :cond_2ec
    if-nez v4, :cond_2fa

    if-nez v14, :cond_2fa

    if-nez v5, :cond_2fa

    if-nez v19, :cond_2fa

    if-eqz v3, :cond_2f8

    if-nez v15, :cond_2fa

    :cond_2f8
    if-eqz v2, :cond_34a

    .line 1441
    :cond_2fa
    iget-object v2, v1, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "surfaceChanged -- format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1444
    if-nez v20, :cond_336

    .line 1445
    invoke-direct {v1}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v20

    move-object/from16 v2, v20

    goto :goto_338

    .line 1444
    :cond_336
    move-object/from16 v2, v20

    .line 1447
    :goto_338
    array-length v3, v2

    const/4 v4, 0x0

    :goto_33a
    if-ge v4, v3, :cond_348

    aget-object v5, v2, v4

    .line 1448
    iget-object v6, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v8, v1, Landroid/view/SurfaceView;->mFormat:I

    invoke-interface {v5, v6, v8, v0, v12}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1447
    add-int/lit8 v4, v4, 0x1

    goto :goto_33a

    :cond_348
    move-object/from16 v20, v2

    .line 1451
    :cond_34a
    if-eqz v18, :cond_36c

    .line 1455
    iget-object v0, v1, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "surfaceRedrawNeeded"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1458
    if-nez v20, :cond_361

    .line 1459
    invoke-direct {v1}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v20

    move-object/from16 v0, v20

    goto :goto_363

    .line 1458
    :cond_361
    move-object/from16 v0, v20

    .line 1462
    :goto_363
    if-eqz v21, :cond_369

    .line 1463
    invoke-direct {v1, v0, v13}, Landroid/view/SurfaceView;->handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    goto :goto_36c

    .line 1465
    :cond_369
    invoke-direct {v1, v0}, Landroid/view/SurfaceView;->handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    :try_end_36c
    .catchall {:try_start_275 .. :try_end_36c} :catchall_37c

    .line 1470
    :cond_36c
    :goto_36c
    const/4 v2, 0x0

    :try_start_36d
    iput-boolean v2, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1471
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_37b

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v0, :cond_37b

    .line 1472
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1477
    :cond_37b
    goto :goto_395

    .line 1470
    :catchall_37c
    move-exception v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1471
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_38c

    iget-boolean v2, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v2, :cond_38c

    .line 1472
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1474
    :cond_38c
    throw v0
    :try_end_38d
    .catch Ljava/lang/Exception; {:try_start_36d .. :try_end_38d} :catch_38d

    .line 1475
    :catch_38d
    move-exception v0

    .line 1476
    const-string v1, "SurfaceView"

    const-string v2, "Exception configuring surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1483
    :cond_395
    :goto_395
    return-void

    .line 1279
    :cond_396
    :goto_396
    invoke-direct {v1}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V

    .line 1280
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1281
    return-void
.end method

.method public blacklist vriDrawStarted(Z)V
    .registers 5

    .line 1555
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1556
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1557
    if-eqz p1, :cond_21

    if-eqz v0, :cond_21

    .line 1558
    :try_start_b
    iget-object p1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SurfaceSyncGroup;

    .line 1559
    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->addToSync(Landroid/window/SurfaceSyncGroup;)V

    .line 1560
    goto :goto_11

    .line 1562
    :cond_21
    iget-object p1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 1563
    monitor-exit v1

    .line 1564
    return-void

    .line 1563
    :catchall_28
    move-exception p1

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_28

    throw p1
.end method
