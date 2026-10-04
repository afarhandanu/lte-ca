.class public Landroid/view/SurfaceControlViewHost;
.super Ljava/lang/Object;
.source "SurfaceControlViewHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;,
        Landroid/view/SurfaceControlViewHost$SurfacePackage;,
        Landroid/view/SurfaceControlViewHost$LayoutParams;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceControlViewHost"


# instance fields
.field private blacklist mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field private final blacklist mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

.field private final blacklist mOwnsSurfaceControl:Z

.field private blacklist mReleased:Z

.field private blacklist mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;

.field private final blacklist mWm:Landroid/view/WindowlessWindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWm(Landroid/view/SurfaceControlViewHost;)Landroid/view/WindowlessWindowManager;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V
    .registers 5

    .line 371
    if-nez p3, :cond_4

    const/4 p3, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Landroid/window/InputTransferToken;

    invoke-direct {v0, p3}, Landroid/window/InputTransferToken;-><init>(Landroid/os/IBinder;)V

    move-object p3, v0

    :goto_a
    const-string/jumbo v0, "untracked"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V
    .registers 8

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    .line 147
    new-instance v1, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControlViewHost-IA;)V

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    .line 345
    iget-object v1, p3, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 346
    iput-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mOwnsSurfaceControl:Z

    .line 347
    iput-object p3, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    .line 348
    new-instance p3, Landroid/view/ViewRootImpl;

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    new-instance v1, Landroid/view/WindowlessWindowLayout;

    invoke-direct {v1}, Landroid/view/WindowlessWindowLayout;-><init>()V

    invoke-direct {p3, p1, p2, v0, v1}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Landroid/view/WindowLayout;)V

    iput-object p3, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 349
    iget-object p3, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v0, "release"

    invoke-virtual {p3, v0, p4}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;->setConfigCallback(Landroid/content/Context;Landroid/view/Display;)V

    .line 352
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p1

    iget-object p2, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p1, p2}, Landroid/view/WindowManagerGlobal;->addWindowlessRoot(Landroid/view/ViewRootImpl;)V

    .line 354
    iget-object p1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object p1

    iput-object p1, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 355
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;)V
    .registers 5

    .line 390
    const-string/jumbo v0, "untracked"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V
    .registers 8

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    .line 147
    new-instance v0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControlViewHost-IA;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    .line 409
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 410
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 411
    const-string v1, "SurfaceControlViewHost"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SurfaceControlViewHost["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mOwnsSurfaceControl:Z

    .line 415
    new-instance v0, Landroid/view/WindowlessWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1, v2, p3}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    .line 418
    new-instance p3, Landroid/view/ViewRootImpl;

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    new-instance v1, Landroid/view/WindowlessWindowLayout;

    invoke-direct {v1}, Landroid/view/WindowlessWindowLayout;-><init>()V

    invoke-direct {p3, p1, p2, v0, v1}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Landroid/view/WindowLayout;)V

    iput-object p3, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 419
    iget-object p3, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v0, "release"

    invoke-virtual {p3, v0, p4}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;->setConfigCallback(Landroid/content/Context;Landroid/view/Display;)V

    .line 422
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p1

    iget-object p2, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p1, p2}, Landroid/view/WindowManagerGlobal;->addWindowlessRoot(Landroid/view/ViewRootImpl;)V

    .line 424
    iget-object p1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object p1

    iput-object p1, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 425
    return-void
.end method

.method private blacklist addWindowToken(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .line 622
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 623
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 624
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 625
    return-void
.end method

.method private blacklist doRelease(Z)V
    .registers 3

    .line 597
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    if-eqz v0, :cond_c

    .line 598
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->removeConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    .line 602
    :cond_c
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->die(Z)Z

    .line 603
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p1, v0}, Landroid/view/WindowManagerGlobal;->removeWindowlessRoot(Landroid/view/ViewRootImpl;)V

    .line 604
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->scvhSurfaceControlLifetimeFix()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-boolean p1, p0, Landroid/view/SurfaceControlViewHost;->mOwnsSurfaceControl:Z

    if-eqz p1, :cond_29

    .line 605
    iget-object p1, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 607
    :cond_29
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    .line 608
    iget-object p1, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p1}, Ldalvik/system/CloseGuard;->close()V

    .line 609
    return-void
.end method

.method static synthetic blacklist lambda$setConfigCallback$0(Landroid/os/IBinder;Landroid/view/Display;Landroid/content/res/Configuration;)V
    .registers 4

    .line 430
    instance-of v0, p0, Landroid/window/WindowTokenClient;

    if-eqz v0, :cond_e

    .line 431
    check-cast p0, Landroid/window/WindowTokenClient;

    .line 432
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    .line 434
    :cond_e
    return-void
.end method

.method private blacklist setConfigCallback(Landroid/content/Context;Landroid/view/Display;)V
    .registers 4

    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object p1

    .line 429
    new-instance v0, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;Landroid/view/Display;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    .line 436
    iget-object p1, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 437
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 444
    iget-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    if-eqz v0, :cond_5

    .line 445
    return-void

    .line 447
    :cond_5
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_e

    .line 448
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 451
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceControlViewHost;->doRelease(Z)V

    .line 452
    return-void
.end method

.method public blacklist getInputTransferToken()Landroid/window/InputTransferToken;
    .registers 3

    .line 618
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getWindowToken()Landroid/view/IWindow;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowlessWindowManager;->getInputTransferToken(Landroid/os/IBinder;)Landroid/window/InputTransferToken;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLayoutParams()Landroid/view/SurfaceControlViewHost$LayoutParams;
    .registers 2

    .line 584
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost$LayoutParams;->from(Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControlViewHost$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;
    .registers 2

    .line 474
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method public whitelist getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 6

    .line 462
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    if-eqz v0, :cond_1f

    .line 463
    new-instance v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    new-instance v1, Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v3, "getSurfacePackage"

    invoke-direct {v1, v2, v3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 464
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v3

    iget-object v4, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControlViewHost$SurfacePackage;-><init>(Landroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/window/InputTransferToken;Landroid/view/ISurfaceControlViewHost;)V

    .line 463
    return-object v0

    .line 466
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getView()Landroid/view/View;
    .registers 2

    .line 522
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWindowToken()Landroid/view/IWindow;
    .registers 2

    .line 530
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    return-object v0
.end method

.method public blacklist getWindowlessWM()Landroid/view/WindowlessWindowManager;
    .registers 2

    .line 538
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    return-object v0
.end method

.method public whitelist relayout(II)V
    .registers 5

    .line 567
    new-instance v0, Landroid/view/SurfaceControlViewHost$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Landroid/view/SurfaceControlViewHost$LayoutParams;-><init>(IIZ)V

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/SurfaceControlViewHost$LayoutParams;)V

    .line 568
    return-void
.end method

.method public blacklist relayout(Landroid/view/SurfaceControlViewHost$LayoutParams;)V
    .registers 2

    .line 575
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$LayoutParams;->toWindowManagerLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 577
    return-void
.end method

.method public blacklist relayout(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .line 557
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 558
    return-void
.end method

.method public blacklist relayout(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V
    .registers 5

    .line 547
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 548
    iget-object p1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v0, 0x1

    const-string/jumbo v1, "scvh_relayout"

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewRootImpl;->setReportNextDraw(ZLjava/lang/String;)V

    .line 549
    iget-object p1, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/view/WindowlessWindowManager;->setCompletionCallback(Landroid/os/IBinder;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V

    .line 550
    return-void
.end method

.method public whitelist release()V
    .registers 2

    .line 593
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceControlViewHost;->doRelease(Z)V

    .line 594
    return-void
.end method

.method public blacklist requestInputFocus(Z)Z
    .registers 4

    .line 662
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_6

    .line 663
    const/4 p1, 0x0

    return p1

    .line 665
    :cond_6
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1, p1}, Landroid/view/WindowlessWindowManager;->requestInputFocus(Landroid/view/ViewRootImpl;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist setView(Landroid/view/View;II)V
    .registers 6

    .line 487
    new-instance v0, Landroid/view/SurfaceControlViewHost$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p3, v1}, Landroid/view/SurfaceControlViewHost$LayoutParams;-><init>(IIZ)V

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/SurfaceControlViewHost$LayoutParams;)V

    .line 488
    return-void
.end method

.method public blacklist setView(Landroid/view/View;Landroid/view/SurfaceControlViewHost$LayoutParams;)V
    .registers 3

    .line 500
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost$LayoutParams;->toWindowManagerLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 502
    return-void
.end method

.method public blacklist setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5

    .line 509
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 512
    invoke-direct {p0, p2}, Landroid/view/SurfaceControlViewHost;->addWindowToken(Landroid/view/WindowManager$LayoutParams;)V

    .line 513
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V

    .line 515
    iget-object p1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p2, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;-><init>(Landroid/view/WindowlessWindowManager;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl;->setBackKeyCallbackForWindowlessWindow(Ljava/util/function/Predicate;)V

    .line 516
    return-void
.end method

.method public whitelist transferTouchGestureToHost()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 639
    return v1

    .line 641
    :cond_6
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 643
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v2

    .line 644
    iget-object v3, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    invoke-virtual {v3}, Landroid/view/WindowlessWindowManager;->getHostInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v3

    .line 645
    if-eqz v2, :cond_27

    if-nez v3, :cond_22

    goto :goto_27

    .line 649
    :cond_22
    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z

    move-result v0

    return v0

    .line 646
    :cond_27
    :goto_27
    const-string v0, "SurfaceControlViewHost"

    const-string v2, "Failed to transferTouchGestureToHost. Host or embedded token is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return v1
.end method
