.class public Landroid/view/WindowlessWindowManager;
.super Ljava/lang/Object;
.source "WindowlessWindowManager.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowlessWindowManager$State;,
        Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WindowlessWindowManager"


# instance fields
.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mHostInputTransferToken:Landroid/window/InputTransferToken;

.field private final blacklist mInputTransferToken:Landroid/window/InputTransferToken;

.field private blacklist mInsetsState:Landroid/view/InsetsState;

.field private final blacklist mLayout:Landroid/view/WindowlessWindowLayout;

.field private blacklist mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

.field private final blacklist mRealWm:Landroid/view/IWindowSession;

.field final blacklist mResizeCompletionForWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mRootSurface:Landroid/view/SurfaceControl;

.field final blacklist mStateForWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowlessWindowManager$State;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTmpConfig:Landroid/util/MergedConfiguration;

.field private final blacklist mTmpFrames:Landroid/window/ClientWindowFrames;


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)V
    .registers 5

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    .line 93
    new-instance v0, Landroid/window/InputTransferToken;

    invoke-direct {v0}, Landroid/window/InputTransferToken;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 95
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    .line 96
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    .line 97
    new-instance v0, Landroid/view/WindowlessWindowLayout;

    invoke-direct {v0}, Landroid/view/WindowlessWindowLayout;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mLayout:Landroid/view/WindowlessWindowLayout;

    .line 103
    iput-object p2, p0, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    .line 104
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p2, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    .line 105
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object p1

    iput-object p1, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    .line 106
    iput-object p3, p0, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    .line 107
    return-void
.end method

.method private blacklist clearLastReportedParams()V
    .registers 4

    .line 733
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 734
    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowlessWindowManager$State;

    .line 735
    iget-object v2, v2, Landroid/view/WindowlessWindowManager$State;->mLastReportedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 736
    goto :goto_f

    .line 737
    :cond_21
    return-void
.end method

.method private blacklist isInTouchModeInternal(I)Z
    .registers 4

    .line 326
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->isInTouchMode(I)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 327
    :catch_9
    move-exception p1

    .line 328
    const-string v0, "WindowlessWindowManager"

    const-string v1, "Unable to check if the window is in touch mode"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist isOpaque(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3

    .line 316
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_26

    :cond_a
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_26

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_26

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1d

    goto :goto_26

    .line 321
    :cond_1d
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {p1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 319
    :cond_26
    :goto_26
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist relayoutInner(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)I
    .registers 36

    .line 420
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    monitor-enter p0

    .line 421
    :try_start_d
    iget-object v6, v1, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowlessWindowManager$State;

    .line 422
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_12d

    .line 423
    if-eqz v6, :cond_125

    .line 427
    iget-object v7, v6, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 428
    iget-object v8, v6, Landroid/view/WindowlessWindowManager$State;->mLeash:Landroid/view/SurfaceControl;

    .line 429
    new-instance v9, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v9}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 431
    nop

    .line 432
    const/4 v10, 0x0

    if-eqz v0, :cond_30

    .line 433
    iget-object v11, v6, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v11, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    goto :goto_31

    .line 432
    :cond_30
    move v0, v10

    .line 435
    :goto_31
    iget-object v12, v6, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 437
    new-instance v11, Landroid/window/ClientWindowFrames;

    invoke-direct {v11}, Landroid/window/ClientWindowFrames;-><init>()V

    .line 438
    iget-object v13, v6, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;

    iput-object v13, v11, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 440
    move-object/from16 v21, v11

    iget-object v11, v1, Landroid/view/WindowlessWindowManager;->mLayout:Landroid/view/WindowlessWindowLayout;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, p3

    move/from16 v18, p4

    invoke-virtual/range {v11 .. v21}, Landroid/view/WindowlessWindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V

    .line 444
    move-object/from16 v11, v21

    iget-object v13, v6, Landroid/view/WindowlessWindowManager$State;->mFrame:Landroid/graphics/Rect;

    iget-object v14, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 445
    if-eqz v2, :cond_70

    .line 446
    iget-object v13, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v14, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 447
    iget-object v13, v2, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v14, v11, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 448
    iget-object v2, v2, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v13, v11, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 451
    :cond_70
    iget-object v2, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v11, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {v9, v8, v2, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 453
    if-nez p5, :cond_96

    .line 457
    invoke-direct {v1, v12}, Landroid/view/WindowlessWindowManager;->isOpaque(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    invoke-virtual {v9, v7, v2}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 458
    if-eqz v4, :cond_a2

    .line 459
    const-string v2, "WindowlessWindowManager.relayout"

    invoke-virtual {v4, v7, v2}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    goto :goto_a2

    .line 462
    :cond_96
    invoke-virtual {v9, v8}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 463
    if-eqz v4, :cond_a2

    .line 464
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    .line 468
    :cond_a2
    :goto_a2
    if-eqz v3, :cond_ab

    .line 469
    iget-object v2, v1, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, v1, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v2, v4}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 474
    :cond_ab
    const v2, 0x10004

    and-int/2addr v0, v2

    if-eqz v0, :cond_116

    iget-object v0, v6, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    if-eqz v0, :cond_116

    .line 476
    :try_start_b5
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    instance-of v0, v0, Landroid/view/IWindowSession$Stub;

    if-eqz v0, :cond_e8

    .line 477
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object v2, v6, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget-object v3, v1, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    iget v4, v6, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    new-instance v8, Landroid/view/SurfaceControl;

    const-string v9, "WindowlessWindowManager.relayout"

    invoke-direct {v8, v7, v9}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget v7, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v9, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v11, v12, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v6, v6, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p9, v6

    move/from16 p6, v7

    move-object/from16 p5, v8

    move/from16 p7, v9

    move/from16 p8, v11

    invoke-interface/range {p1 .. p9}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;Landroid/window/InputTransferToken;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V

    goto :goto_10d

    .line 483
    :cond_e8
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object v2, v6, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget-object v3, v1, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    iget v4, v6, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    iget v8, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v9, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v11, v12, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v6, v6, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p9, v6

    move-object/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v11

    invoke-interface/range {p1 .. p9}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;Landroid/window/InputTransferToken;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_10d
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_10d} :catch_10e

    .line 489
    :goto_10d
    goto :goto_116

    .line 487
    :catch_10e
    move-exception v0

    .line 488
    const-string v2, "WindowlessWindowManager"

    const-string v3, "Failed to update surface input channel: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    :cond_116
    :goto_116
    if-eqz v5, :cond_121

    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    if-eqz v0, :cond_121

    .line 493
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v5, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 496
    :cond_121
    invoke-direct {v1}, Landroid/view/WindowlessWindowManager;->sendLayoutParamsToParent()V

    .line 497
    return v10

    .line 424
    :cond_125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid window token (never added or removed already)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :catchall_12d
    move-exception v0

    :try_start_12e
    monitor-exit p0
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    throw v0
.end method

.method private blacklist sendLayoutParamsToParent()V
    .registers 9

    .line 740
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    if-nez v0, :cond_5

    .line 741
    return-void

    .line 743
    :cond_5
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    .line 744
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/WindowManager$LayoutParams;

    .line 745
    nop

    .line 746
    nop

    .line 747
    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowlessWindowManager$State;

    .line 748
    iget-object v6, v5, Landroid/view/WindowlessWindowManager$State;->mLastReportedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v5, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 749
    if-eqz v6, :cond_34

    const/4 v6, 0x1

    goto :goto_35

    :cond_34
    move v6, v2

    :goto_35
    or-int/2addr v3, v6

    .line 750
    add-int/lit8 v6, v4, 0x1

    iget-object v5, v5, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    aput-object v5, v0, v4

    .line 751
    move v4, v6

    goto :goto_1c

    .line 753
    :cond_3e
    if-eqz v3, :cond_47

    .line 755
    :try_start_40
    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    invoke-interface {v1, v0}, Landroid/view/ISurfaceControlViewHostParent;->updateParams([Landroid/view/WindowManager$LayoutParams;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_45} :catch_46

    .line 757
    goto :goto_47

    .line 756
    :catch_46
    move-exception v0

    .line 759
    :cond_47
    :goto_47
    return-void
.end method


# virtual methods
.method public blacklist addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/WindowRelayoutResult;)I
    .registers 29

    .line 202
    move-object/from16 v3, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Leash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "WindowlessWindowManager.addToDisplay"

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 205
    invoke-virtual/range {p0 .. p2}, Landroid/view/WindowlessWindowManager;->getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 208
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "WindowlessWindowManager.addToDisplay"

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v11

    .line 217
    new-instance v0, Landroid/view/WindowlessWindowManager$State;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v4, p4

    move-object v2, v11

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowlessWindowManager$State;-><init>(Landroid/view/WindowlessWindowManager;Landroid/view/SurfaceControl;Landroid/view/WindowManager$LayoutParams;ILandroid/view/IWindow;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    .line 218
    monitor-enter p0

    .line 219
    :try_start_7c
    iget-object v2, v1, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    iget-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowlessWindowManager$State;

    .line 220
    if-eqz v2, :cond_8c

    .line 221
    iget-object v2, v2, Landroid/view/WindowlessWindowManager$State;->mFrame:Landroid/graphics/Rect;

    iput-object v2, v0, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;

    .line 226
    :cond_8c
    iget-object v2, v1, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 227
    iget-object v2, v1, Landroid/view/WindowlessWindowManager;->mInputTransferToken:Landroid/window/InputTransferToken;

    iput-object v2, v0, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    goto :goto_a0

    .line 229
    :cond_99
    new-instance v2, Landroid/window/InputTransferToken;

    invoke-direct {v2}, Landroid/window/InputTransferToken;-><init>()V

    iput-object v2, v0, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 232
    :goto_a0
    iget-object v2, v1, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_7c .. :try_end_aa} :catchall_155

    .line 235
    iget-object v2, v0, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-nez v2, :cond_b4

    .line 236
    iget-object v2, v9, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    iput-object v4, v2, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    goto :goto_bf

    .line 238
    :cond_b4
    iget-object v2, v9, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v5, v2, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 240
    :goto_bf
    iget-object v2, v9, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/window/ClientWindowFrames;->compatScale:F

    .line 242
    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_146

    .line 245
    :try_start_cb
    iget-object v2, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    instance-of v2, v2, Landroid/view/IWindowSession$Stub;

    if-eqz v2, :cond_107

    .line 246
    iget-object v9, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    new-instance v2, Landroid/view/SurfaceControl;

    const-string v5, "WindowlessWindowManager.addToDisplay"

    invoke-direct {v2, v11, v5}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 249
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    iget-object v13, v1, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    iget v14, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v15, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v7, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v10, v0, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 251
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    .line 246
    move-object v11, v2

    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v10

    move/from16 v10, p4

    invoke-interface/range {v9 .. v20}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    .line 252
    invoke-virtual {v2, v8}, Landroid/view/InputChannel;->copyTo(Landroid/view/InputChannel;)V

    .line 253
    goto :goto_134

    .line 254
    :cond_107
    iget-object v9, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    .line 255
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    iget-object v13, v1, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    iget v14, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v15, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v6, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v7, v0, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 257
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    .line 254
    move/from16 v10, p4

    move/from16 v16, v2

    move/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-interface/range {v9 .. v20}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    .line 258
    invoke-virtual {v2, v8}, Landroid/view/InputChannel;->copyTo(Landroid/view/InputChannel;)V

    .line 260
    :goto_134
    nop

    .line 261
    if-eqz v8, :cond_13b

    invoke-virtual {v8}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v4

    :cond_13b
    iput-object v4, v0, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;
    :try_end_13d
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_13d} :catch_13e

    .line 264
    goto :goto_146

    .line 262
    :catch_13e
    move-exception v0

    .line 263
    const-string v2, "WindowlessWindowManager"

    const-string v3, "Failed to grant input to surface: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    :cond_146
    :goto_146
    invoke-direct {v1}, Landroid/view/WindowlessWindowManager;->sendLayoutParamsToParent()V

    .line 271
    move/from16 v10, p4

    invoke-direct {v1, v10}, Landroid/view/WindowlessWindowManager;->isInTouchModeInternal(I)Z

    move-result v0

    if-eqz v0, :cond_153

    const/4 v0, 0x3

    goto :goto_154

    .line 272
    :cond_153
    const/4 v0, 0x2

    .line 271
    :goto_154
    return v0

    .line 233
    :catchall_155
    move-exception v0

    :try_start_156
    monitor-exit p0
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_155

    throw v0
.end method

.method public blacklist addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/WindowRelayoutResult;)I
    .registers 9

    .line 282
    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p8}, Landroid/view/WindowlessWindowManager;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/WindowRelayoutResult;)I

    move-result p1

    return p1
.end method

.method public blacklist addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/WindowRelayoutResult;)I
    .registers 6

    .line 290
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 663
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 3

    .line 557
    return-void
.end method

.method public blacklist cancelDraw(Landroid/view/IWindow;I)Z
    .registers 3

    .line 705
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist clearTouchableRegion(Landroid/view/IWindow;)V
    .registers 3

    .line 524
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    .line 525
    return-void
.end method

.method public blacklist dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 2

    .line 561
    return-void
.end method

.method public blacklist dragRecipientExited(Landroid/view/IWindow;)V
    .registers 2

    .line 565
    return-void
.end method

.method public blacklist dropForAccessibility(Landroid/view/IWindow;II)Z
    .registers 4

    .line 682
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    .registers 5

    .line 530
    monitor-enter p0

    .line 531
    :try_start_1
    iget-object p3, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    .line 532
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;

    .line 533
    if-nez p3, :cond_14

    .line 535
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 536
    monitor-exit p0

    return-void

    .line 538
    :cond_14
    invoke-interface {p3, p2}, Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;->finished(Landroid/view/SurfaceControl$Transaction;)V

    .line 539
    iget-object p2, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    monitor-exit p0

    .line 541
    return-void

    .line 540
    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public blacklist finishMovingTask(Landroid/view/IWindow;)V
    .registers 2

    .line 610
    return-void
.end method

.method blacklist forwardBackKeyToParent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 762
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 763
    return v1

    .line 766
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    invoke-interface {v0, p1}, Landroid/view/ISurfaceControlViewHostParent;->forwardBackKeyToParent(Landroid/view/KeyEvent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_e

    .line 770
    nop

    .line 771
    const/4 p1, 0x1

    return p1

    .line 767
    :catch_e
    move-exception p1

    .line 768
    const-string v0, "WindowlessWindowManager"

    const-string v2, "Failed to forward back key To Parent: "

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    return v1
.end method

.method public blacklist generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 674
    return-void
.end method

.method blacklist getHostInputTransferToken()Landroid/window/InputTransferToken;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    return-object v0
.end method

.method blacklist getInputTransferToken(Landroid/os/IBinder;)Landroid/window/InputTransferToken;
    .registers 3

    .line 114
    monitor-enter p0

    .line 118
    :try_start_1
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 119
    iget-object p1, p0, Landroid/view/WindowlessWindowManager;->mInputTransferToken:Landroid/window/InputTransferToken;

    monitor-exit p0

    return-object p1

    .line 121
    :cond_d
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowlessWindowManager$State;

    .line 122
    if-eqz p1, :cond_1b

    .line 123
    iget-object p1, p1, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    monitor-exit p0

    return-object p1

    .line 125
    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_25

    .line 127
    const-string p1, "WindowlessWindowManager"

    const-string v0, "Failed to get focusGrantToken. Returning null token"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 p1, 0x0

    return-object p1

    .line 125
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method protected blacklist getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;
    .registers 3

    .line 189
    monitor-enter p0

    .line 190
    :try_start_1
    iget-object p1, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 191
    iget-object p1, p0, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    monitor-exit p0

    return-object p1

    .line 193
    :cond_d
    iget-object p1, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowlessWindowManager$State;

    iget-object p1, p1, Landroid/view/WindowlessWindowManager$State;->mLeash:Landroid/view/SurfaceControl;

    monitor-exit p0

    return-object p1

    .line 194
    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method protected blacklist getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;
    .registers 3

    .line 357
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowlessWindowManager$State;

    .line 358
    if-nez p1, :cond_10

    .line 359
    const/4 p1, 0x0

    return-object p1

    .line 361
    :cond_10
    iget-object p1, p1, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p1
.end method

.method protected blacklist getSurfaceControl(Landroid/view/View;)Landroid/view/SurfaceControl;
    .registers 2

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    .line 348
    if-nez p1, :cond_8

    .line 349
    const/4 p1, 0x0

    return-object p1

    .line 351
    :cond_8
    iget-object p1, p1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {p0, p1}, Landroid/view/WindowlessWindowManager;->getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getWindowBinder(Landroid/view/View;)Landroid/os/IBinder;
    .registers 2

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    .line 338
    if-nez p1, :cond_8

    .line 339
    const/4 p1, 0x0

    return-object p1

    .line 341
    :cond_8
    iget-object p1, p1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 2

    .line 596
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    .registers 4

    .line 669
    return-void
.end method

.method public blacklist grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 12

    .line 652
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist moveFocusToAdjacentWindow(Landroid/view/IWindow;I)Z
    .registers 3

    .line 710
    const-string p1, "WindowlessWindowManager"

    const-string p2, "Received request to moveFocusToAdjacentWindow on WindowlessWindowManager. We shouldn\'t get here!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist notifyImeWindowVisibilityChangedFromClient(Landroid/view/IWindow;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    .line 718
    return-void
.end method

.method public blacklist onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 4

    .line 592
    return-void
.end method

.method public blacklist outOfMemory(Landroid/view/IWindow;)Z
    .registers 2

    .line 512
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 12

    .line 548
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist pokeDrawLock(Landroid/os/IBinder;)V
    .registers 2

    .line 601
    return-void
.end method

.method public blacklist relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;Landroid/view/SurfaceControl;)I
    .registers 27

    .line 395
    move-object/from16 v0, p9

    .line 398
    if-eqz v0, :cond_11

    .line 399
    iget-object v1, v0, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    .line 400
    iget-object v2, v0, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    .line 401
    iget-object v3, v0, Landroid/view/WindowRelayoutResult;->insetsState:Landroid/view/InsetsState;

    .line 402
    iget-object v0, v0, Landroid/view/WindowRelayoutResult;->activeControls:Landroid/view/InsetsSourceControl$Array;

    move-object v15, v0

    move-object v11, v1

    move-object v12, v2

    move-object v14, v3

    goto :goto_19

    .line 404
    :cond_11
    nop

    .line 405
    nop

    .line 406
    nop

    .line 407
    const/4 v1, 0x0

    move-object v11, v1

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    .line 409
    :goto_19
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v13, p10

    invoke-direct/range {v2 .. v15}, Landroid/view/WindowlessWindowManager;->relayoutInner(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)I

    move-result v0

    return v0
.end method

.method public blacklist relayoutAsync(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIII)V
    .registers 23

    .line 504
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v13}, Landroid/view/WindowlessWindowManager;->relayoutInner(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)I

    .line 508
    return-void
.end method

.method public blacklist remove(Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    invoke-interface {v0, p1}, Landroid/view/IWindowSession;->remove(Landroid/os/IBinder;)V

    .line 297
    monitor-enter p0

    .line 298
    :try_start_6
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowlessWindowManager$State;

    .line 299
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_24

    .line 300
    if-eqz p1, :cond_1c

    .line 304
    iget-object v0, p1, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Landroid/view/WindowlessWindowManager;->removeSurface(Landroid/view/SurfaceControl;)V

    .line 305
    iget-object p1, p1, Landroid/view/WindowlessWindowManager$State;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1}, Landroid/view/WindowlessWindowManager;->removeSurface(Landroid/view/SurfaceControl;)V

    .line 306
    return-void

    .line 301
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid window token (never added or removed already)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method protected blacklist removeSurface(Landroid/view/SurfaceControl;)V
    .registers 3

    .line 310
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 311
    :try_start_5
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 312
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 313
    return-void

    .line 310
    :catchall_10
    move-exception p1

    :try_start_11
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw p1
.end method

.method public blacklist reportDecorViewGestureInterceptionChanged(Landroid/view/IWindow;Z)V
    .registers 3

    .line 639
    return-void
.end method

.method public blacklist reportDropResult(Landroid/view/IWindow;Z)V
    .registers 3

    .line 553
    return-void
.end method

.method public blacklist reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 645
    return-void
.end method

.method public blacklist reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 636
    return-void
.end method

.method blacklist requestInputFocus(Landroid/view/ViewRootImpl;Z)Z
    .registers 7

    .line 374
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowlessWindowManager$State;

    .line 375
    const/4 v0, 0x0

    const-string v1, "WindowlessWindowManager"

    if-nez p1, :cond_19

    .line 376
    const-string p1, "Invalid view root specified, not an embedded window"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return v0

    .line 380
    :cond_19
    :try_start_19
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object p1, p1, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, p2}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_21} :catch_23

    .line 382
    const/4 p1, 0x1

    return p1

    .line 383
    :catch_23
    move-exception p1

    .line 384
    const-string p2, "Failed to request input focus on embedded window"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    return v0
.end method

.method public blacklist sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 7

    .line 587
    return-void
.end method

.method blacklist setCompletionCallback(Landroid/os/IBinder;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V
    .registers 5

    .line 141
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 142
    const-string v0, "WindowlessWindowManager"

    const-string v1, "Unsupported overlapping resizes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_f
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public blacklist setConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    .line 110
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 111
    return-void
.end method

.method blacklist setHostInputTransferToken(Landroid/window/InputTransferToken;)V
    .registers 2

    .line 132
    iput-object p1, p0, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    .line 133
    return-void
.end method

.method public blacklist setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 6

    .line 519
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    .line 520
    return-void
.end method

.method public blacklist setInsetsState(Landroid/view/InsetsState;)V
    .registers 14

    .line 686
    iput-object p1, p0, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    .line 687
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    .line 689
    :try_start_18
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, v0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 690
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v3, v3, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 691
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    iget-object v3, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3, v4}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 692
    new-instance v6, Landroid/view/WindowRelayoutResult;

    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v3, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    const/4 v4, 0x0

    invoke-direct {v6, v2, v3, p1, v4}, Landroid/view/WindowRelayoutResult;-><init>(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    .line 694
    const v2, 0x7fffffff

    iput v2, v6, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    .line 695
    iget-object v5, v0, Landroid/view/WindowlessWindowManager$State;->mClient:Landroid/view/IWindow;

    iget v9, v0, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v5 .. v11}, Landroid/view/IWindow;->resized(Landroid/view/WindowRelayoutResult;ZZIZZ)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_56} :catch_57

    .line 699
    goto :goto_58

    .line 697
    :catch_57
    move-exception v0

    .line 700
    :goto_58
    goto :goto_c

    .line 701
    :cond_59
    return-void
.end method

.method public blacklist setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    return-void
.end method

.method blacklist setParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V
    .registers 4

    .line 721
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    invoke-interface {v0}, Landroid/view/ISurfaceControlViewHostParent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 722
    :goto_d
    if-nez p1, :cond_10

    goto :goto_14

    :cond_10
    invoke-interface {p1}, Landroid/view/ISurfaceControlViewHostParent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 725
    :goto_14
    if-eq v0, v1, :cond_19

    .line 726
    invoke-direct {p0}, Landroid/view/WindowlessWindowManager;->clearLastReportedParams()V

    .line 728
    :cond_19
    iput-object p1, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    .line 729
    invoke-direct {p0}, Landroid/view/WindowlessWindowManager;->sendLayoutParamsToParent()V

    .line 730
    return-void
.end method

.method public blacklist setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V
    .registers 3

    .line 578
    return-void
.end method

.method protected blacklist setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
    .registers 5

    .line 149
    monitor-enter p0

    .line 152
    :try_start_1
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    .line 153
    if-nez v0, :cond_d

    .line 154
    monitor-exit p0

    return-void

    .line 156
    :cond_d
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 157
    monitor-exit p0

    return-void

    .line 159
    :cond_17
    if-eqz p2, :cond_1f

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iput-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    .line 160
    invoke-virtual {p0, p1}, Landroid/view/WindowlessWindowManager;->updateInputChannel(Landroid/os/IBinder;)V

    .line 161
    monitor-exit p0

    .line 162
    return-void

    .line 161
    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public blacklist setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .registers 4

    .line 582
    return-void
.end method

.method public blacklist setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .registers 6

    .line 570
    return-void
.end method

.method public blacklist setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .registers 3

    .line 574
    return-void
.end method

.method public blacklist startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 4

    .line 605
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist updateAnimatingTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    .line 631
    return-void
.end method

.method protected blacklist updateInputChannel(Landroid/os/IBinder;)V
    .registers 12

    .line 166
    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowlessWindowManager$State;

    .line 170
    if-nez p1, :cond_d

    .line 171
    monitor-exit p0

    return-void

    .line 173
    :cond_d
    iget-object v0, p1, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_38

    if-eqz v0, :cond_36

    .line 175
    :try_start_11
    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object v2, p1, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    iget v4, p1, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    iget-object v5, p1, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p1, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p1, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p1, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v9, p1, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    invoke-interface/range {v1 .. v9}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;Landroid/window/InputTransferToken;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2c} :catch_2d
    .catchall {:try_start_11 .. :try_end_2c} :catchall_38

    .line 181
    goto :goto_36

    .line 179
    :catch_2d
    move-exception v0

    move-object p1, v0

    .line 180
    :try_start_2f
    const-string v0, "WindowlessWindowManager"

    const-string v1, "Failed to update surface input channel: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    :cond_36
    :goto_36
    monitor-exit p0

    .line 184
    return-void

    .line 183
    :catchall_38
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_38

    throw p1
.end method

.method public blacklist updateInputChannel(Landroid/os/IBinder;Landroid/window/InputTransferToken;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    .registers 9

    .line 659
    return-void
.end method

.method public blacklist updateRequestedVisibleTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    .line 624
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr p2, v1

    .line 623
    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowSession;->updateRequestedVisibleTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 625
    return-void
.end method

.method public blacklist updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 3

    .line 615
    return-void
.end method
