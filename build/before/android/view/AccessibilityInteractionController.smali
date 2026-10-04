.class public final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$PrivateHandler;,
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;,
        Landroid/view/AccessibilityInteractionController$MessageHolder;,
        Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;,
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;,
        Landroid/view/AccessibilityInteractionController$VirtualNode;,
        Landroid/view/AccessibilityInteractionController$ViewNode;,
        Landroid/view/AccessibilityInteractionController$DequeNode;,
        Landroid/view/AccessibilityInteractionController$PrefetchDeque;
    }
.end annotation


# static fields
.field private static final greylist-max-o CONSIDER_REQUEST_PREPARERS:Z = false

.field private static final greylist-max-o ENFORCE_NODE_TREE_CONSISTENT:Z = false

.field private static final blacklist FLAGS_AFFECTING_REPORTED_DATA:I = 0x380

.field private static final greylist-max-o IGNORE_REQUEST_PREPARERS:Z = true

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionController"

.field private static final greylist-max-o REQUEST_PREPARER_TIMEOUT_MS:J = 0x1f4L


# instance fields
.field private final greylist-max-o mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field private greylist-max-o mActiveRequestPreparerId:I

.field private greylist-max-o mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

.field private final blacklist mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mMessagesWaitingForRequestPreparer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/AccessibilityInteractionController$MessageHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMyLooperThreadId:J

.field private final greylist-max-o mMyProcessId:I

.field private greylist-max-o mNumActiveRequestPreparers:I

.field private blacklist mPendingFindNodeByIdMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

.field private final greylist-max-o mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTempRectF:Landroid/graphics/RectF;

.field private final greylist-max-o mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public static synthetic blacklist $r8$lambda$QEFDW3z2VuKPdniS3pmYang1X2M(Landroid/view/AccessibilityInteractionController;ILandroid/window/ScreenCaptureInternal$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->takeScreenshotOfWindowUiThread(ILandroid/window/ScreenCaptureInternal$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Rjg_OPdy_5ZedB6yPc2apMyWfwM(Landroid/view/AccessibilityInteractionController;Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->attachAccessibilityOverlayToWindowUiThread(Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oFlRaXFPJ-FW6XWPk2XCxvRC-T4(Landroid/view/AccessibilityInteractionController;Landroid/view/accessibility/IWindowSurfaceInfoCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->getWindowSurfaceInfoUiThread(Landroid/view/accessibility/IWindowSurfaceInfoCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/view/AccessibilityInteractionController;)Landroid/view/AccessibilityInteractionController$PrivateHandler;
    .registers 1

    iget-object p0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrefetcher(Landroid/view/AccessibilityInteractionController;)Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    .registers 1

    iget-object p0, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRootImpl(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearAccessibilityFocusUiThread(Landroid/view/AccessibilityInteractionController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->clearAccessibilityFocusUiThread()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindAccessibilityNodeInfosByTextUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindAccessibilityNodeInfosByViewIdUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindFocusUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfocusSearchUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misShown(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misVisibleToAccessibilityService(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyOutsideTouchUiThread(Landroid/view/AccessibilityInteractionController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->notifyOutsideTouchUiThread()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mperformAccessibilityActionUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprepareForExtraDataRequestUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->prepareForExtraDataRequestUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestPreparerDoneUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->requestPreparerDoneUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestPreparerTimeoutUiThread(Landroid/view/AccessibilityInteractionController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->requestPreparerTimeoutUiThread()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/ViewRootImpl;)V
    .registers 5

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    .line 135
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    .line 137
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    .line 138
    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    .line 139
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 140
    new-instance p1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController-IA;)V

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 141
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 142
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    .line 143
    return-void
.end method

.method private blacklist adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;Landroid/view/MagnificationSpec;)V
    .registers 7

    .line 1016
    if-eqz p2, :cond_36

    if-nez p1, :cond_5

    goto :goto_36

    .line 1019
    :cond_5
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 1020
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1021
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v1

    if-nez v1, :cond_25

    .line 1022
    iget v1, p3, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, p3, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1023
    const/high16 v1, 0x3f800000    # 1.0f

    iget p3, p3, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 1026
    :cond_25
    invoke-virtual {p2, v0}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_35

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassAdjustIsVisible()Z

    move-result p2

    if-nez p2, :cond_35

    .line 1027
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 1029
    :cond_35
    return-void

    .line 1017
    :cond_36
    :goto_36
    return-void
.end method

.method private blacklist applyHostWindowMatrixIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7

    .line 1045
    if-eqz p1, :cond_2f

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassApplyWindowMatrix()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2f

    .line 1048
    :cond_9
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 1049
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    .line 1050
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    .line 1052
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1053
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1054
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1055
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1057
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1058
    return-void

    .line 1046
    :cond_2f
    :goto_2f
    return-void
.end method

.method private blacklist applyTransformMatrixToBoundsInParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Matrix;)V
    .registers 6

    .line 1166
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1167
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1168
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 1169
    const/4 v1, 0x0

    aget v2, v0, v1

    aget v0, v0, v1

    invoke-virtual {p2, v2, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1171
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1172
    return-void

    .line 1174
    :cond_1b
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 1175
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    .line 1176
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 1177
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1178
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1179
    invoke-static {v1, v0}, Landroid/view/AccessibilityInteractionController;->roundRectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 1180
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1181
    return-void
.end method

.method private blacklist associateLeashedParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 1066
    if-eqz p1, :cond_2c

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassAssociateLeashedParent()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2c

    .line 1071
    :cond_9
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 1072
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    if-eq v0, v1, :cond_1c

    .line 1073
    return-void

    .line 1075
    :cond_1c
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mLeashedParentAccessibilityViewId:I

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLeashedParent(Landroid/os/IBinder;I)V

    .line 1077
    return-void

    .line 1067
    :cond_2c
    :goto_2c
    return-void
.end method

.method private blacklist attachAccessibilityOverlayToWindowUiThread(Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 6

    .line 2047
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 2048
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2050
    const/4 v1, 0x1

    :try_start_d
    invoke-interface {p3, v1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendAttachOverlayResult(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    .line 2052
    return-void

    .line 2053
    :catch_11
    move-exception v1

    .line 2057
    :cond_12
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2058
    invoke-virtual {v1, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2059
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 2061
    const/4 p1, 0x0

    :try_start_22
    invoke-interface {p3, p1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendAttachOverlayResult(II)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26

    .line 2065
    goto :goto_27

    .line 2063
    :catch_26
    move-exception p1

    .line 2066
    :goto_27
    return-void
.end method

.method private blacklist clearAccessibilityFocusUiThread()V
    .registers 5

    .line 910
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_63

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_d

    goto :goto_63

    .line 916
    :cond_d
    const/16 v0, 0x280

    :try_start_f
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    .line 919
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 920
    if-eqz v0, :cond_59

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 921
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 924
    if-eqz v1, :cond_55

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_55

    .line 927
    :cond_2b
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 928
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 930
    const/4 v3, 0x0

    if-eqz v0, :cond_4b

    if-eqz v2, :cond_4b

    .line 931
    nop

    .line 932
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v1

    .line 931
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v1

    .line 933
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 934
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v2

    .line 933
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 936
    goto :goto_59

    .line 937
    :cond_4b
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 938
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    .line 937
    invoke-virtual {v1, v0, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_54
    .catchall {:try_start_f .. :try_end_54} :catchall_5e

    goto :goto_59

    .line 943
    :cond_55
    :goto_55
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 925
    return-void

    .line 943
    :cond_59
    :goto_59
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 944
    nop

    .line 945
    return-void

    .line 943
    :catchall_5e
    move-exception v0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 944
    throw v0

    .line 911
    :cond_63
    :goto_63
    return-void
.end method

.method private greylist-max-o findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .registers 14

    .line 341
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_3
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 343
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_117

    .line 344
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 346
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 347
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 348
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 349
    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 350
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 352
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Landroid/view/MagnificationSpec;

    .line 353
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Landroid/graphics/Region;

    .line 354
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 355
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, [F

    .line 357
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 359
    nop

    .line 360
    nop

    .line 361
    and-int/lit8 p1, v1, 0x20

    if-nez p1, :cond_38

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    .line 364
    :goto_39
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 365
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 367
    const/4 v10, 0x0

    :try_start_3f
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_f2

    if-eqz v11, :cond_d8

    :try_start_45
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v11, :cond_4f

    move-object v3, p0

    move-object v11, v4

    goto/16 :goto_da

    .line 370
    :cond_4f
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    .line 371
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_d4

    .line 372
    if-eqz v0, :cond_88

    :try_start_58
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_88

    .line 373
    invoke-direct {p0, v0, v3, v2}, Landroid/view/AccessibilityInteractionController;->populateAccessibilityNodeInfoForView(Landroid/view/View;Landroid/os/Bundle;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_f2

    .line 375
    :try_start_62
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    invoke-static {v3, p1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->-$$Nest$fputmInterruptPrefetch(Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;Z)V

    .line 376
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    and-int/lit8 v11, v1, 0x3f

    invoke-static {v3, v11}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->-$$Nest$fputmFetchFlags(Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;I)V

    .line 378
    if-nez p1, :cond_89

    .line 379
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 381
    if-nez v2, :cond_79

    move-object v11, v10

    goto :goto_7e

    :cond_79
    new-instance v11, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v11, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 380
    :goto_7e
    invoke-virtual {v3, v0, v11, v4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    .line 383
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V
    :try_end_84
    .catchall {:try_start_62 .. :try_end_84} :catchall_85

    goto :goto_89

    .line 387
    :catchall_85
    move-exception v0

    goto/16 :goto_f4

    :cond_88
    move-object v2, v10

    :cond_89
    :goto_89
    if-nez p1, :cond_9e

    .line 389
    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 392
    move-object v11, v4

    .line 393
    if-nez v2, :cond_93

    goto :goto_94

    :cond_93
    move-object v10, v2

    :goto_94
    invoke-direct {p0, v10, v11, v1}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object p1

    .line 395
    if-eqz p1, :cond_9d

    .line 396
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 398
    :cond_9d
    return-void

    .line 401
    :cond_9e
    move-object v3, p0

    move-object v11, v4

    .line 402
    if-nez v2, :cond_a4

    move-object v4, v10

    goto :goto_aa

    :cond_a4
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v4, p1

    .line 401
    :goto_aa
    invoke-direct/range {v3 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 405
    nop

    .line 406
    iget-object p1, v3, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 407
    if-nez v2, :cond_b4

    move-object v4, v10

    goto :goto_b9

    :cond_b4
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 406
    :goto_b9
    invoke-virtual {p1, v0, v4, v11}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    .line 408
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 409
    invoke-direct {p0, v11, v7, v8, v9}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 410
    nop

    .line 411
    if-nez v2, :cond_c6

    goto :goto_c7

    :cond_c6
    move-object v10, v2

    :goto_c7
    invoke-direct {p0, v10, v11, v1}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object p1

    .line 415
    invoke-direct {p0, v6, v11, v5}, Landroid/view/AccessibilityInteractionController;->returnPrefetchResult(ILjava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 417
    if-eqz p1, :cond_d3

    .line 418
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 420
    :cond_d3
    return-void

    .line 387
    :catchall_d4
    move-exception v0

    move-object v3, p0

    move-object v11, v4

    goto :goto_f3

    .line 367
    :cond_d8
    move-object v3, p0

    move-object v11, v4

    .line 387
    :goto_da
    if-nez p1, :cond_eb

    .line 389
    move-object v4, v11

    invoke-direct/range {v3 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 392
    nop

    .line 393
    invoke-direct {p0, v10, v4, v1}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object p1

    .line 395
    if-eqz p1, :cond_ea

    .line 396
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 398
    :cond_ea
    return-void

    .line 401
    :cond_eb
    nop

    .line 402
    nop

    .line 401
    const/4 v4, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 368
    return-void

    .line 387
    :catchall_f2
    move-exception v0

    :goto_f3
    move-object v2, v10

    :goto_f4
    if-nez p1, :cond_109

    .line 389
    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 392
    nop

    .line 393
    if-nez v2, :cond_fe

    goto :goto_ff

    :cond_fe
    move-object v10, v2

    :goto_ff
    invoke-direct {p0, v10, v4, v1}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object p1

    .line 395
    if-eqz p1, :cond_108

    .line 396
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 398
    :cond_108
    return-void

    .line 401
    :cond_109
    move-object v3, p0

    .line 402
    if-nez v2, :cond_10d

    goto :goto_112

    :cond_10d
    new-instance v10, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v10, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :goto_112
    move-object v4, v10

    .line 401
    invoke-direct/range {v3 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 405
    throw v0

    .line 343
    :catchall_117
    move-exception v0

    move-object p1, v0

    :try_start_119
    monitor-exit v1
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_117

    throw p1
.end method

.method private greylist-max-o findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .registers 14

    .line 535
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 537
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 538
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 539
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 541
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Landroid/view/MagnificationSpec;

    .line 542
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 543
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 544
    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 545
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v9, v4

    check-cast v9, Landroid/graphics/Region;

    .line 546
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, [F

    .line 547
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 549
    nop

    .line 551
    const/4 v4, 0x0

    :try_start_29
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz p1, :cond_a5

    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez p1, :cond_37

    goto/16 :goto_a5

    .line 554
    :cond_37
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    .line 555
    invoke-direct {p0, v2}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object p1

    .line 556
    if-eqz p1, :cond_9c

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_51

    .line 559
    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    goto :goto_9c

    .line 561
    :cond_51
    const/4 v0, -0x1

    if-ne v3, v0, :cond_9c

    .line 562
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 563
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 564
    const/4 v3, 0x7

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 567
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9c

    .line 568
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 569
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 570
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 571
    const/4 v3, 0x0

    :goto_6d
    if-ge v3, p1, :cond_9c

    .line 572
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 573
    invoke-direct {p0, v10}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_99

    invoke-direct {p0, v10}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_99

    .line 574
    invoke-virtual {v10}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v11

    .line 575
    if-eqz v11, :cond_92

    .line 576
    nop

    .line 577
    invoke-virtual {v11, v1, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 579
    if-eqz v10, :cond_91

    .line 580
    invoke-interface {v4, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 582
    :cond_91
    goto :goto_99

    .line 583
    :cond_92
    invoke-virtual {v10}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_99
    .catchall {:try_start_29 .. :try_end_99} :catchall_ad

    .line 571
    :cond_99
    :goto_99
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 591
    :cond_9c
    :goto_9c
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 592
    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 594
    nop

    .line 595
    return-void

    .line 591
    :cond_a5
    :goto_a5
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 592
    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 552
    return-void

    .line 591
    :catchall_ad
    move-exception v0

    move-object p1, v0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 592
    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 594
    throw p1
.end method

.method private greylist-max-o findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .registers 12

    .line 470
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 471
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 473
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 474
    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 475
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 477
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Landroid/view/MagnificationSpec;

    .line 478
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 479
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Landroid/graphics/Region;

    .line 480
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, [F

    .line 481
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 483
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 484
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 486
    :try_start_2a
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz p1, :cond_81

    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p1, :cond_81

    if-nez v2, :cond_39

    goto :goto_81

    .line 490
    :cond_39
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    .line 491
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object p1
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_89

    .line 492
    if-eqz p1, :cond_78

    .line 493
    :try_start_42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 494
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_75

    .line 495
    if-gtz v0, :cond_59

    .line 506
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 507
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 496
    return-void

    .line 498
    :cond_59
    move-object v2, p0

    :try_start_5a
    iget-object v9, v2, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    if-nez v9, :cond_65

    .line 499
    new-instance v9, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-direct {v9, p0, v1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController-IA;)V

    iput-object v9, v2, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 501
    :cond_65
    iget-object v1, v2, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v1, v0, v3}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    .line 502
    iget-object v0, v2, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 503
    iget-object p1, v2, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {p1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_89

    goto :goto_79

    .line 506
    :catchall_75
    move-exception v0

    move-object v2, p0

    goto :goto_8a

    .line 492
    :cond_78
    move-object v2, p0

    .line 506
    :goto_79
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 507
    invoke-direct/range {v2 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 509
    nop

    .line 510
    return-void

    .line 506
    :cond_81
    :goto_81
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 507
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 488
    return-void

    .line 506
    :catchall_89
    move-exception v0

    :goto_8a
    move-object p1, v0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 507
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 509
    throw p1
.end method

.method private greylist-max-o findFocusUiThread(Landroid/os/Message;)V
    .registers 12

    .line 693
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 694
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 696
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 697
    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 698
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 699
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 700
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 702
    iget-object v6, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/view/MagnificationSpec;

    .line 703
    iget-object v7, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, Landroid/graphics/Region;

    .line 704
    iget-object v7, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, [F

    .line 705
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 707
    nop

    .line 709
    move p1, v3

    const/4 v3, 0x0

    :try_start_25
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v9, :cond_cf

    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v9, :cond_33

    goto/16 :goto_cf

    .line 712
    :cond_33
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    .line 713
    invoke-direct {p0, v2}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 714
    if-eqz v0, :cond_c6

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 715
    packed-switch v1, :pswitch_data_e2

    .line 762
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_af

    .line 717
    :pswitch_49
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 720
    if-eqz v1, :cond_c6

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 721
    goto/16 :goto_c6

    .line 724
    :cond_57
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 725
    goto/16 :goto_c6

    .line 727
    :cond_5f
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 728
    goto :goto_c6

    .line 732
    :cond_66
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 733
    if-eqz v0, :cond_80

    .line 734
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 736
    if-eqz p1, :cond_89

    .line 737
    nop

    .line 738
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result p1

    .line 739
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    goto :goto_89

    .line 741
    :cond_80
    const/4 v0, -0x1

    if-ne p1, v0, :cond_89

    .line 742
    invoke-virtual {v1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    move-object v3, p1

    goto :goto_8a

    .line 741
    :cond_89
    :goto_89
    nop

    .line 744
    :goto_8a
    goto :goto_c6

    .line 746
    :pswitch_8b
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    .line 747
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_96

    .line 748
    goto :goto_c6

    .line 750
    :cond_96
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 751
    goto :goto_c6

    .line 753
    :cond_9d
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 754
    if-eqz v0, :cond_a7

    .line 755
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 757
    :cond_a7
    if-nez v3, :cond_ae

    .line 758
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    move-object v3, p1

    .line 760
    :cond_ae
    goto :goto_c6

    .line 762
    :goto_af
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown focus type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_c6
    .catchall {:try_start_25 .. :try_end_c6} :catchall_d7

    .line 766
    :cond_c6
    :goto_c6
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 767
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 769
    nop

    .line 770
    return-void

    .line 766
    :cond_cf
    :goto_cf
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 767
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 710
    return-void

    .line 766
    :catchall_d7
    move-exception v0

    move-object p1, v0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 767
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 769
    throw p1

    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_49
    .end packed-switch
.end method

.method private greylist-max-o findViewByAccessibilityId(I)Landroid/view/View;
    .registers 3

    .line 975
    const v0, 0x7ffffffe

    if-ne p1, v0, :cond_a

    .line 976
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController;->getRootView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 978
    :cond_a
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeIdManager;->getInstance()Landroid/view/accessibility/AccessibilityNodeIdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeIdManager;->findView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o focusSearchUiThread(Landroid/os/Message;)V
    .registers 12

    .line 795
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 796
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 798
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 799
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 800
    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 801
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 803
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Landroid/view/MagnificationSpec;

    .line 804
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Landroid/graphics/Region;

    .line 805
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, [F

    .line 806
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 808
    nop

    .line 810
    const/4 v4, 0x0

    :try_start_25
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz p1, :cond_54

    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez p1, :cond_32

    goto :goto_54

    .line 813
    :cond_32
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    .line 814
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object p1

    .line 815
    if-eqz p1, :cond_4b

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 816
    invoke-virtual {p1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    .line 817
    if-eqz p1, :cond_4b

    .line 818
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4
    :try_end_4b
    .catchall {:try_start_25 .. :try_end_4b} :catchall_5c

    .line 822
    :cond_4b
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 823
    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 825
    nop

    .line 826
    return-void

    .line 822
    :cond_54
    :goto_54
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 823
    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 811
    return-void

    .line 822
    :catchall_5c
    move-exception v0

    move-object p1, v0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 823
    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 825
    throw p1
.end method

.method private blacklist getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)",
            "Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;"
        }
    .end annotation

    .line 1229
    nop

    .line 1230
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1231
    const/4 v1, 0x0

    :goto_5
    :try_start_5
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 1232
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1233
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 1234
    and-int/lit16 v3, v3, 0x380

    and-int/lit16 v4, p3, 0x380

    if-eq v3, v4, :cond_1e

    .line 1236
    goto :goto_48

    .line 1238
    :cond_1e
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 1239
    iget v4, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1240
    iget v5, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1242
    nop

    .line 1243
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v4

    .line 1242
    invoke-direct {p0, p1, p2, v4, v5}, Landroid/view/AccessibilityInteractionController;->nodeWithIdFromList(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 1246
    if-eqz v4, :cond_48

    .line 1247
    iget-object p3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-virtual {p3, v2, v1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1250
    iget-object p3, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 1252
    iget v1, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1253
    new-instance v2, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    invoke-direct {v2, v4, p3, v1}, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    .line 1256
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1257
    goto :goto_4c

    .line 1231
    :cond_48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4b
    const/4 v2, 0x0

    .line 1260
    :goto_4c
    iget-object p3, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 1262
    if-eqz v2, :cond_5c

    iget-object p3, v2, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eq p3, p1, :cond_5c

    .line 1264
    iget-object p1, v2, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1266
    :cond_5c
    monitor-exit v0

    return-object v2

    .line 1267
    :catchall_5e
    move-exception p1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_5e

    throw p1
.end method

.method private blacklist getWindowSurfaceInfoUiThread(Landroid/view/accessibility/IWindowSurfaceInfoCallback;)V
    .registers 5

    .line 651
    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->copySurfaceControlForWindowScreenshots()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 652
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 654
    new-instance v1, Landroid/view/SurfaceControl;

    const-string v2, "AccessibilityInteractionController#getWindowSurfaceInfoUiThread"

    invoke-direct {v1, v0, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result v0

    .line 658
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 657
    invoke-interface {p1, v0, v2, v1}, Landroid/view/accessibility/IWindowSurfaceInfoCallback;->provideWindowSurfaceInfo(IILandroid/view/SurfaceControl;)V

    .line 661
    :cond_26
    goto :goto_3a

    .line 662
    :cond_27
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 663
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 662
    invoke-interface {p1, v0, v1, v2}, Landroid/view/accessibility/IWindowSurfaceInfoCallback;->provideWindowSurfaceInfo(IILandroid/view/SurfaceControl;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 667
    :goto_3a
    goto :goto_3c

    .line 665
    :catch_3b
    move-exception p1

    .line 668
    :goto_3c
    return-void
.end method

.method private greylist-max-o handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6

    .line 1304
    const-string v0, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    const-class v1, Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/text/style/AccessibilityClickableSpan;

    .line 1306
    const/4 v0, 0x0

    if-nez p3, :cond_e

    .line 1307
    return v0

    .line 1310
    :cond_e
    nop

    .line 1311
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 1312
    if-eqz v1, :cond_1a

    .line 1313
    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    goto :goto_23

    .line 1314
    :cond_1a
    const/4 v1, -0x1

    if-ne p2, v1, :cond_22

    .line 1315
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    goto :goto_23

    .line 1314
    :cond_22
    const/4 p2, 0x0

    .line 1317
    :goto_23
    if-nez p2, :cond_26

    .line 1318
    return v0

    .line 1322
    :cond_26
    nop

    .line 1323
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object p2

    .line 1322
    invoke-virtual {p3, p2}, Landroid/text/style/AccessibilityClickableSpan;->findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;

    move-result-object p2

    .line 1324
    if-eqz p2, :cond_36

    .line 1325
    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 1326
    const/4 p1, 0x1

    return p1

    .line 1328
    :cond_36
    return v0
.end method

.method private greylist-max-o holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z
    .registers 18

    .line 219
    iget-object v6, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 221
    :try_start_3
    iget v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    const/4 v7, 0x1

    if-eqz v1, :cond_d

    .line 222
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    .line 223
    monitor-exit v6

    return v7

    .line 227
    :cond_d
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_15

    .line 229
    monitor-exit v6

    return v3

    .line 231
    :cond_15
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 232
    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Landroid/os/Bundle;

    .line 233
    if-nez v9, :cond_23

    .line 234
    monitor-exit v6

    return v3

    .line 238
    :cond_23
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 239
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 240
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getRequestPreparersForAccessibilityId(I)Ljava/util/List;

    move-result-object v10

    .line 241
    if-nez v10, :cond_2f

    .line 242
    monitor-exit v6

    return v3

    .line 246
    :cond_2f
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 247
    if-nez v11, :cond_39

    .line 248
    monitor-exit v6

    return v3

    .line 252
    :cond_39
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 253
    move v12, v3

    :goto_40
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_95

    .line 254
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 256
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 258
    nop

    .line 259
    iget v3, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_5b

    .line 260
    const/4 v3, -0x1

    goto :goto_5d

    :cond_5b
    iget v3, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    :goto_5d
    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 261
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 262
    iput-object v11, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 263
    iput-object v9, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 264
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 266
    iget v4, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    add-int/2addr v4, v7

    iput v4, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 267
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 269
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 272
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    .line 273
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 253
    add-int/lit8 v12, v12, 0x1

    goto :goto_40

    .line 278
    :cond_95
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    .line 279
    monitor-exit v6

    return v7

    .line 280
    :catchall_9a
    move-exception v0

    monitor-exit v6
    :try_end_9c
    .catchall {:try_start_3 .. :try_end_9c} :catchall_9a

    throw v0
.end method

.method private greylist-max-o isShown(Landroid/view/View;)Z
    .registers 3

    .line 171
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private blacklist isVisibleToAccessibilityService(Landroid/view/View;)Z
    .registers 3

    .line 175
    if-eqz p1, :cond_12

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isRequestFromAccessibilityTool()Z

    move-result v0

    if-nez v0, :cond_10

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityDataSensitive()Z

    move-result p1

    if-nez p1, :cond_12

    :cond_10
    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 175
    :goto_13
    return p1
.end method

.method private blacklist nodeWithIdFromList(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)",
            "Landroid/view/accessibility/AccessibilityNodeInfo;"
        }
    .end annotation

    .line 1272
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-nez v0, :cond_b

    .line 1273
    return-object p1

    .line 1275
    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_24

    .line 1276
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1277
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v1

    cmp-long v1, v1, p3

    if-nez v1, :cond_21

    .line 1278
    return-object v0

    .line 1275
    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 1281
    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist notifyOutsideTouchUiThread()V
    .registers 10

    .line 959
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v0, :cond_19

    goto :goto_3d

    .line 963
    :cond_19
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 964
    if-eqz v0, :cond_3c

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 966
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 967
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-wide v3, v1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 969
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 970
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 972
    :cond_3c
    return-void

    .line 961
    :cond_3d
    :goto_3d
    return-void
.end method

.method private greylist-max-o performAccessibilityActionUiThread(Landroid/os/Message;)V
    .registers 11

    .line 850
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 851
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 853
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 854
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 855
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 856
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 857
    iget-object v5, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 859
    iget-object v6, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 861
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 863
    nop

    .line 865
    const/4 p1, 0x0

    :try_start_1b
    iget-object v7, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v7, :cond_82

    iget-object v7, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_82

    iget-object v7, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v7, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v7, :cond_82

    iget-object v7, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v7, v7, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v7, :cond_34

    goto :goto_82

    .line 869
    :cond_34
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    .line 870
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 871
    if-eqz v0, :cond_78

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 872
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityManager;->notifyPerformingAction(I)V

    .line 873
    const v1, 0x10201aa

    if-ne v3, v1, :cond_58

    .line 875
    invoke-direct {p0, v0, v2, v6}, Landroid/view/AccessibilityInteractionController;->handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_6c

    .line 878
    :cond_58
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 879
    if-eqz v1, :cond_63

    .line 880
    invoke-virtual {v1, v2, v3, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_6c

    .line 882
    :cond_63
    const/4 v1, -0x1

    if-ne v2, v1, :cond_6b

    .line 883
    invoke-virtual {v0, v3, v6}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0
    :try_end_6a
    .catchall {:try_start_1b .. :try_end_6a} :catchall_8b

    goto :goto_6c

    .line 882
    :cond_6b
    move v0, p1

    .line 886
    :goto_6c
    :try_start_6c
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyPerformingAction(I)V
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_73

    move p1, v0

    goto :goto_78

    .line 889
    :catchall_73
    move-exception p1

    move v8, v0

    move-object v0, p1

    move p1, v8

    goto :goto_8c

    .line 890
    :cond_78
    :goto_78
    :try_start_78
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 891
    invoke-interface {v5, p1, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_7e} :catch_7f

    .line 894
    goto :goto_81

    .line 892
    :catch_7f
    move-exception p1

    .line 895
    nop

    .line 896
    :goto_81
    return-void

    .line 890
    :cond_82
    :goto_82
    :try_start_82
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 891
    invoke-interface {v5, p1, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_88} :catch_89

    .line 894
    goto :goto_8a

    .line 892
    :catch_89
    move-exception p1

    .line 867
    :goto_8a
    return-void

    .line 889
    :catchall_8b
    move-exception v0

    .line 890
    :goto_8c
    :try_start_8c
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 891
    invoke-interface {v5, p1, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_92} :catch_93

    .line 894
    goto :goto_94

    .line 892
    :catch_93
    move-exception p1

    .line 895
    :goto_94
    throw v0
.end method

.method private blacklist populateAccessibilityNodeInfoForView(Landroid/view/View;Landroid/os/Bundle;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 6

    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 426
    if-nez p2, :cond_8

    const/4 v1, 0x0

    goto :goto_e

    .line 427
    :cond_8
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    :goto_e
    nop

    .line 429
    if-nez v0, :cond_1d

    .line 430
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p3

    .line 431
    if-eqz p3, :cond_29

    .line 432
    if-eqz v1, :cond_29

    .line 433
    invoke-virtual {p1, p3, v1, p2}, Landroid/view/View;->addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_29

    .line 437
    :cond_1d
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 438
    if-eqz p1, :cond_28

    .line 439
    if-eqz v1, :cond_28

    .line 440
    invoke-virtual {v0, p3, p1, v1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 445
    :cond_28
    move-object p3, p1

    :cond_29
    :goto_29
    return-object p3
.end method

.method private greylist-max-o prepareForExtraDataRequestUiThread(Landroid/os/Message;)V
    .registers 6

    .line 284
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 285
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 286
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 287
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 288
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 289
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    .line 291
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/view/accessibility/AccessibilityRequestPreparer;->onPrepareExtraData(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)V

    .line 293
    return-void
.end method

.method private greylist-max-o queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V
    .registers 7

    .line 297
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    if-nez v0, :cond_c

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    .line 300
    :cond_c
    new-instance v0, Landroid/view/AccessibilityInteractionController$MessageHolder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController$MessageHolder;-><init>(Landroid/os/Message;IJ)V

    .line 302
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method

.method private greylist-max-o requestPreparerDoneUiThread(Landroid/os/Message;)V
    .registers 4

    .line 306
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    if-eq p1, v1, :cond_12

    .line 308
    const-string p1, "AccessibilityInteractionController"

    const-string v1, "Surprising AccessibilityRequestPreparer callback (likely late)"

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-exit v0

    return-void

    .line 311
    :cond_12
    iget p1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 312
    iget p1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    if-gtz p1, :cond_26

    .line 313
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->removeMessages(I)V

    .line 314
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    .line 316
    :cond_26
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method private greylist-max-o requestPreparerTimeoutUiThread()V
    .registers 4

    .line 320
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_3
    const-string v1, "AccessibilityInteractionController"

    const-string v2, "AccessibilityRequestPreparer timed out"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    .line 323
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private blacklist resetAccessibilityFetchFlags()V
    .registers 3

    .line 1008
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 1009
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->setRequestFromAccessibilityTool(Z)V

    .line 1010
    return-void
.end method

.method private blacklist returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V
    .registers 4

    .line 1205
    :try_start_0
    iget-object v0, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1206
    iget-object v1, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 1208
    iget p1, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestInteractionId:I

    .line 1209
    invoke-interface {v1, v0, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1212
    goto :goto_b

    .line 1210
    :catch_a
    move-exception p1

    .line 1213
    :goto_b
    return-void
.end method

.method private blacklist returnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V
    .registers 4

    .line 1196
    :try_start_0
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1199
    goto :goto_5

    .line 1197
    :catch_4
    move-exception p1

    .line 1200
    :goto_5
    return-void
.end method

.method private blacklist returnFindNodesResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            "I)V"
        }
    .end annotation

    .line 1218
    :try_start_0
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 1219
    if-eqz p1, :cond_8

    .line 1220
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 1224
    :cond_8
    goto :goto_a

    .line 1222
    :catch_9
    move-exception p1

    .line 1225
    :goto_a
    return-void
.end method

.method private blacklist returnPrefetchResult(ILjava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            ")V"
        }
    .end annotation

    .line 1286
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1288
    :try_start_6
    invoke-interface {p3, p2, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1291
    goto :goto_b

    .line 1289
    :catch_a
    move-exception p1

    .line 1293
    :cond_b
    :goto_b
    return-void
.end method

.method private static blacklist roundRectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .registers 9

    .line 1333
    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    float-to-double v4, v1

    add-double/2addr v4, v2

    double-to-int v1, v4

    iget v4, p0, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int v4, v4

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, p0

    add-double/2addr v5, v2

    double-to-int p0, v5

    invoke-virtual {p1, v0, v1, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1335
    return-void
.end method

.method private greylist-max-o scheduleAllMessagesWaitingForRequestPreparerLocked()V
    .registers 11

    .line 328
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 329
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_25

    .line 330
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/AccessibilityInteractionController$MessageHolder;

    .line 331
    iget-object v5, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mMessage:Landroid/os/Message;

    iget v6, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingPid:I

    iget-wide v7, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingTid:J

    if-nez v2, :cond_1d

    const/4 v3, 0x1

    move v9, v3

    goto :goto_1e

    :cond_1d
    move v9, v1

    :goto_1e
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 335
    :cond_25
    move-object v4, p0

    iget-object v0, v4, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 336
    iput v1, v4, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 337
    const/4 v0, -0x1

    iput v0, v4, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    .line 338
    return-void
.end method

.method private greylist-max-o scheduleMessage(Landroid/os/Message;IJZ)V
    .registers 8

    .line 147
    if-nez p5, :cond_8

    .line 148
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z

    move-result p5

    if-nez p5, :cond_43

    .line 153
    :cond_8
    iget p5, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p2, p5, :cond_22

    iget-wide v0, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long p2, p3, v0

    if-nez p2, :cond_22

    iget-object p2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    .line 154
    invoke-virtual {p2, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->hasAccessibilityCallback(Landroid/os/Message;)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 155
    invoke-static {p3, p4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object p2

    .line 156
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    goto :goto_43

    .line 160
    :cond_22
    iget-object p2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {p2, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->hasAccessibilityCallback(Landroid/os/Message;)Z

    move-result p2

    if-nez p2, :cond_3e

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    iget-wide p4, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long p2, p2, p4

    if-nez p2, :cond_3e

    .line 162
    iget-object p2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {p2, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_43

    .line 164
    :cond_3e
    iget-object p2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {p2, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    :cond_43
    :goto_43
    return-void
.end method

.method private blacklist setAccessibilityFetchFlags(I)V
    .registers 3

    .line 1002
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 1003
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->setRequestFromAccessibilityTool(Z)V

    .line 1005
    return-void
.end method

.method private greylist-max-o shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .registers 4

    .line 1086
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_11

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method private blacklist shouldBypassAdjustIsVisible()Z
    .registers 3

    .line 1032
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v0, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 1033
    const/16 v1, 0x7db

    if-ne v0, v1, :cond_a

    .line 1034
    const/4 v0, 0x1

    return v0

    .line 1036
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist shouldBypassApplyWindowMatrix()Z
    .registers 2

    .line 1061
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    .line 1062
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private blacklist shouldBypassAssociateLeashedParent()Z
    .registers 3

    .line 1080
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentAccessibilityViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private blacklist takeScreenshotOfWindowUiThread(ILandroid/window/ScreenCaptureInternal$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 7

    .line 619
    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_f

    .line 620
    const/4 p2, 0x6

    invoke-interface {p3, p2, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V

    .line 622
    return-void

    .line 624
    :cond_f
    new-instance v0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 626
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 627
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    move-result-object v0

    .line 628
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setUid(J)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 629
    invoke-virtual {v0}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;

    move-result-object v0

    .line 630
    invoke-static {v0, p2}, Landroid/window/ScreenCaptureInternal;->captureLayers(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)I

    move-result p2

    if-eqz p2, :cond_38

    .line 631
    const/4 p2, 0x1

    invoke-interface {p3, p2, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_38} :catch_39

    .line 636
    :cond_38
    goto :goto_3a

    .line 634
    :catch_39
    move-exception p1

    .line 637
    :goto_3a
    return-void
.end method

.method private blacklist transformBoundsWithScreenMatrix(Landroid/view/accessibility/AccessibilityNodeInfo;[F)V
    .registers 7

    .line 1116
    if-eqz p1, :cond_7a

    if-nez p2, :cond_6

    goto/16 :goto_7a

    .line 1119
    :cond_6
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 1120
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    .line 1122
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1123
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1125
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1126
    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1127
    iget-object p2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object p2, p2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget p2, p2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1128
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v3

    if-eqz v3, :cond_27

    .line 1129
    invoke-virtual {v2, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1134
    :cond_27
    iget-object p2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object p2, p2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p2, p2, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    if-nez p2, :cond_42

    .line 1135
    iget-object p2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object p2, p2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget p2, p2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int p2, p2

    int-to-float p2, p2

    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, p2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1139
    :cond_42
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p2

    if-eqz p2, :cond_49

    .line 1140
    return-void

    .line 1142
    :cond_49
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1143
    invoke-static {v1, v0}, Landroid/view/AccessibilityInteractionController;->roundRectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 1144
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1146
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->hasExtras()Z

    move-result p2

    if-eqz p2, :cond_76

    .line 1147
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 1148
    const-class v0, Landroid/graphics/RectF;

    .line 1149
    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/graphics/RectF;

    .line 1150
    if-eqz p2, :cond_76

    .line 1151
    const/4 v0, 0x0

    :goto_69
    array-length v1, p2

    if-ge v0, v1, :cond_76

    .line 1154
    aget-object v1, p2, v0

    .line 1155
    if-eqz v1, :cond_73

    .line 1156
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1151
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 1161
    :cond_76
    invoke-direct {p0, p1, v2}, Landroid/view/AccessibilityInteractionController;->applyTransformMatrixToBoundsInParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Matrix;)V

    .line 1162
    return-void

    .line 1117
    :cond_7a
    :goto_7a
    return-void
.end method

.method private blacklist updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .registers 5

    .line 1098
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->associateLeashedParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1100
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->applyHostWindowMatrixIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1102
    invoke-direct {p0, p1, p3}, Landroid/view/AccessibilityInteractionController;->transformBoundsWithScreenMatrix(Landroid/view/accessibility/AccessibilityNodeInfo;[F)V

    .line 1103
    invoke-direct {p0, p1, p4, p2}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;Landroid/view/MagnificationSpec;)V

    .line 1104
    return-void
.end method

.method private blacklist updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .registers 7

    .line 1298
    invoke-direct {p0, p1, p4, p5, p6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 1299
    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    .line 1300
    return-void
.end method

.method private blacklist updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            "[F",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .line 1091
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1092
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 1091
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1094
    :cond_13
    return-void
.end method

.method private blacklist updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            "I",
            "Landroid/view/MagnificationSpec;",
            "[F",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .line 1186
    if-eqz p1, :cond_5

    .line 1187
    invoke-direct {p0, p1, p4, p5, p6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 1189
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->returnFindNodesResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    .line 1190
    return-void
.end method


# virtual methods
.method public blacklist attachAccessibilityOverlayToWindowClientThread(Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 6

    .line 2033
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    new-instance v1, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda1;-><init>()V

    .line 2039
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2034
    invoke-static {v1, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2033
    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2041
    return-void
.end method

.method public blacklist clearAccessibilityFocusClientThread()V
    .registers 8

    .line 902
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 903
    const/16 v0, 0x65

    iput v0, v2, Landroid/os/Message;->what:I

    .line 906
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 907
    return-void
.end method

.method public blacklist destroy()V
    .registers 3

    .line 1341
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->preventLeakingViewrootimpl()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1342
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1344
    :cond_c
    return-void
.end method

.method public blacklist findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V
    .registers 15

    .line 184
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 185
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 186
    iput p6, v0, Landroid/os/Message;->arg1:I

    .line 188
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p6

    .line 189
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    iput v1, p6, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 190
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result p1

    iput p1, p6, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 191
    iput p4, p6, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 192
    iput-object p5, p6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 193
    iput-object p10, p6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 194
    iput-object p3, p6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 195
    iput-object p12, p6, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 196
    iput-object p11, p6, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 197
    iput-object p6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    iget-object p10, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter p10

    .line 200
    :try_start_2c
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    const/4 p6, 0x0

    move-object p1, p0

    move p3, p7

    move-wide p4, p8

    move-object p2, v0

    invoke-direct/range {p1 .. p6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 203
    monitor-exit p10

    .line 204
    return-void

    .line 203
    :catchall_3b
    move-exception v0

    move-object p1, v0

    monitor-exit p10
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_3b

    throw p1
.end method

.method public blacklist findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 15

    .line 516
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 517
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 518
    iput p7, v0, Landroid/os/Message;->arg1:I

    .line 520
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p7

    .line 521
    iput-object p3, p7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 522
    iput-object p6, p7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 523
    iput-object p11, p7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 524
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p3

    iput p3, p7, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 525
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result p1

    iput p1, p7, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 526
    iput p5, p7, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 527
    iput-object p4, p7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 528
    iput-object p12, p7, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 529
    iput-object p7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 531
    const/4 p6, 0x0

    move-object p1, p0

    move p3, p8

    move-wide p4, p9

    move-object p2, v0

    invoke-direct/range {p1 .. p6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 532
    return-void
.end method

.method public blacklist findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 15

    .line 452
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 453
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 454
    iput p7, v0, Landroid/os/Message;->arg1:I

    .line 455
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 457
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p1

    .line 458
    iput p5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 459
    iput-object p6, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 460
    iput-object p11, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 461
    iput-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 462
    iput-object p4, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 463
    iput-object p12, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 464
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 466
    const/4 p6, 0x0

    move-object p1, p0

    move p3, p8

    move-wide p4, p9

    move-object p2, v0

    invoke-direct/range {p1 .. p6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 467
    return-void
.end method

.method public blacklist findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 15

    .line 674
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 675
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 676
    iput p7, v0, Landroid/os/Message;->arg1:I

    .line 677
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 679
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 680
    iput p5, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 681
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p5

    iput p5, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 682
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result p1

    iput p1, p3, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 683
    iput-object p6, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 684
    iput-object p11, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 685
    iput-object p4, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 686
    iput-object p12, p3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 687
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 689
    const/4 p6, 0x0

    move-object p1, p0

    move p3, p8

    move-wide p4, p9

    move-object p2, v0

    invoke-direct/range {p1 .. p6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 690
    return-void
.end method

.method public blacklist focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 15

    .line 776
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 777
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 778
    iput p7, v0, Landroid/os/Message;->arg1:I

    .line 779
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 781
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p1

    .line 782
    iput p3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 783
    iput p5, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 784
    iput-object p6, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 785
    iput-object p11, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 786
    iput-object p4, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 787
    iput-object p12, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 789
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 791
    const/4 p6, 0x0

    move-object p1, p0

    move p3, p8

    move-wide p4, p9

    move-object p2, v0

    invoke-direct/range {p1 .. p6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 792
    return-void
.end method

.method public blacklist getRootView()Landroid/view/View;
    .registers 3

    .line 987
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 988
    return-object v1

    .line 990
    :cond_c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->ignoreUnimportantRoot()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 991
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_28

    .line 994
    :cond_23
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0

    .line 992
    :cond_28
    :goto_28
    return-object v1

    .line 997
    :cond_29
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getWindowSurfaceInfoClientThread(Landroid/view/accessibility/IWindowSurfaceInfoCallback;)V
    .registers 3

    .line 643
    new-instance v0, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 646
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 647
    return-void
.end method

.method public blacklist notifyOutsideTouchClientThread()V
    .registers 8

    .line 951
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 952
    const/16 v0, 0x66

    iput v0, v2, Landroid/os/Message;->what:I

    .line 955
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 956
    return-void
.end method

.method public greylist-max-o performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .registers 13

    .line 832
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 833
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 834
    iput p7, v0, Landroid/os/Message;->arg1:I

    .line 835
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p7

    iput p7, v0, Landroid/os/Message;->arg2:I

    .line 837
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p7

    .line 838
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result p1

    iput p1, p7, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 839
    iput p3, p7, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 840
    iput p5, p7, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 841
    iput-object p6, p7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 842
    iput-object p4, p7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 844
    iput-object p7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 846
    const/4 p6, 0x0

    move-object p1, p0

    move p3, p8

    move-wide p4, p9

    move-object p2, v0

    invoke-direct/range {p1 .. p6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 847
    return-void
.end method

.method public blacklist takeScreenshotOfWindowClientThread(ILandroid/window/ScreenCaptureInternal$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 5

    .line 605
    new-instance v0, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda2;-><init>()V

    .line 607
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 605
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 611
    iget-object p2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {p2, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 612
    return-void
.end method
