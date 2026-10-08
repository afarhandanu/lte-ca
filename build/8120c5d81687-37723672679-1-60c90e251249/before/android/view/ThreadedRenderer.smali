.class public final Landroid/view/ThreadedRenderer;
.super Landroid/graphics/HardwareRenderer;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$WebViewOverlayProvider;,
        Landroid/view/ThreadedRenderer$DrawCallbacks;,
        Landroid/view/ThreadedRenderer$SimpleRenderer;
    }
.end annotation


# static fields
.field public static final greylist-max-o DEBUG_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.show_dirty_regions"

.field public static final blacklist DEBUG_FORCE_DARK:Ljava/lang/String; = "debug.hwui.force_dark"

.field public static final greylist-max-o DEBUG_FPS_DIVISOR:Ljava/lang/String; = "debug.hwui.fps_divisor"

.field public static final greylist-max-o DEBUG_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.overdraw"

.field public static final greylist-max-o DEBUG_SHOW_LAYERS_UPDATES_PROPERTY:Ljava/lang/String; = "debug.hwui.show_layers_updates"

.field public static final greylist-max-o DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY:Ljava/lang/String; = "debug.hwui.show_non_rect_clip"

.field public static greylist-max-o EGL_CONTEXT_PRIORITY_HIGH_IMG:I = 0x0

.field public static greylist-max-o EGL_CONTEXT_PRIORITY_LOW_IMG:I = 0x0

.field public static greylist-max-o EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I = 0x0

.field public static blacklist EGL_CONTEXT_PRIORITY_REALTIME_NV:I = 0x0

.field public static final greylist-max-o OVERDRAW_PROPERTY_SHOW:Ljava/lang/String; = "show"

.field static final greylist-max-o PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "debug.hwui.print_config"

.field static final greylist-max-o PROFILE_MAXFRAMES_PROPERTY:Ljava/lang/String; = "debug.hwui.profile.maxframes"

.field public static final greylist-max-o PROFILE_PROPERTY:Ljava/lang/String; = "debug.hwui.profile"

.field public static final greylist-max-o PROFILE_PROPERTY_VISUALIZE_BARS:Ljava/lang/String; = "visual_bars"

.field private static final greylist-max-o VISUALIZERS:[Ljava/lang/String;

.field public static blacklist sRendererEnabled:Z


# instance fields
.field private blacklist mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mHeight:I

.field private greylist-max-o mInitialized:Z

.field private greylist-max-o mInsetLeft:I

.field private greylist-max-o mInsetTop:I

.field private final greylist-max-o mLightRadius:F

.field private final greylist-max-o mLightY:F

.field private final greylist-max-o mLightZ:F

.field private blacklist mNextRtFrameCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/HardwareRenderer$FrameDrawingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOutline:Landroid/graphics/Outline;

.field private greylist-max-o mRequested:Z

.field private greylist-max-o mRootNodeNeedsUpdate:Z

.field private greylist-max-o mSurfaceHeight:I

.field private greylist-max-o mSurfaceWidth:I

.field private final blacklist mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

.field private blacklist mWebViewOverlaysEnabled:Z

.field private greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 191
    const/16 v0, 0x3357

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_REALTIME_NV:I

    .line 192
    const/16 v0, 0x3101

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_HIGH_IMG:I

    .line 193
    const/16 v0, 0x3102

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I

    .line 194
    const/16 v0, 0x3103

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_LOW_IMG:I

    .line 201
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    .line 239
    const-string/jumbo v0, "visual_bars"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 8

    .line 341
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer;-><init>()V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    .line 334
    new-instance v2, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;-><init>(Landroid/view/ThreadedRenderer-IA;)V

    iput-object v2, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    .line 335
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlaysEnabled:Z

    .line 342
    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer;->setName(Ljava/lang/String;)V

    .line 343
    xor-int/2addr p2, v1

    invoke-virtual {p0, p2}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    .line 345
    sget-object p2, Lcom/android/internal/R$styleable;->Lighting:[I

    invoke-virtual {p1, v3, p2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 346
    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    .line 347
    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    .line 348
    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    .line 349
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 350
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 351
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 352
    invoke-virtual {p0, p2, p3}, Landroid/view/ThreadedRenderer;->setLightSourceAlpha(FF)V

    .line 353
    return-void
.end method

.method static synthetic blacklist access$000()Z
    .registers 1

    .line 67
    invoke-static {}, Landroid/view/ThreadedRenderer;->isWebViewOverlaysEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;
    .registers 4

    .line 236
    new-instance v0, Landroid/view/ThreadedRenderer;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/ThreadedRenderer;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    return-object v0
.end method

.method private static greylist-max-o destroyResources(Landroid/view/View;)V
    .registers 1

    .line 511
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 512
    return-void
.end method

.method private static blacklist dumpArgsToFlags([Ljava/lang/String;)I
    .registers 7

    .line 675
    const/4 v0, 0x1

    if-eqz p0, :cond_48

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_48

    .line 678
    :cond_7
    nop

    .line 679
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_b
    array-length v4, p0

    if-ge v2, v4, :cond_47

    .line 680
    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_4a

    :cond_17
    goto :goto_37

    :sswitch_18
    const-string/jumbo v5, "reset"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    move v4, v0

    goto :goto_38

    :sswitch_23
    const-string v5, "-a"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x2

    goto :goto_38

    :sswitch_2d
    const-string v5, "framestats"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    move v4, v1

    goto :goto_38

    :goto_37
    const/4 v4, -0x1

    :goto_38
    packed-switch v4, :pswitch_data_58

    goto :goto_44

    .line 688
    :pswitch_3c
    move v3, v0

    goto :goto_44

    .line 685
    :pswitch_3e
    or-int/lit8 v3, v3, 0x2

    .line 686
    goto :goto_44

    .line 682
    :pswitch_41
    or-int/lit8 v3, v3, 0x1

    .line 683
    nop

    .line 679
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 692
    :cond_47
    return v3

    .line 676
    :cond_48
    :goto_48
    return v0

    nop

    :sswitch_data_4a
    .sparse-switch
        -0xf0608ae -> :sswitch_2d
        0x5d4 -> :sswitch_23
        0x6761d4f -> :sswitch_18
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3e
        :pswitch_3c
    .end packed-switch
.end method

.method public static greylist-max-o enableForegroundTrimming()V
    .registers 0

    .line 211
    return-void
.end method

.method public static blacklist handleDumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 3

    .line 697
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->dumpArgsToFlags([Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/view/ThreadedRenderer;->dumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V

    .line 698
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public static blacklist initForSystemProcess()V
    .registers 1

    .line 222
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-nez v0, :cond_9

    .line 223
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    .line 225
    :cond_9
    invoke-static {}, Landroid/view/ThreadedRenderer;->setIsSystemOrPersistent()V

    .line 226
    return-void
.end method

.method private greylist-max-o updateEnabledState(Landroid/view/Surface;)V
    .registers 2

    .line 399
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_f

    .line 402
    :cond_9
    iget-boolean p1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    goto :goto_13

    .line 400
    :cond_f
    :goto_f
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 404
    :goto_13
    return-void
.end method

.method private greylist-max-o updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
    .registers 9

    .line 732
    const-string v0, "Record View#draw()"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 733
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateViewTreeDisplayList(Landroid/view/View;)V

    .line 738
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 739
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    .line 740
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    .line 741
    new-instance v3, Landroid/view/ThreadedRenderer$1;

    invoke-direct {v3, p0, v0}, Landroid/view/ThreadedRenderer$1;-><init>(Landroid/view/ThreadedRenderer;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Landroid/view/ThreadedRenderer;->setFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 770
    :cond_1b
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 771
    :cond_27
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 773
    :try_start_31
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->save()I

    move-result v3

    .line 774
    iget v4, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 775
    invoke-interface {p2, v0}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPreDraw(Landroid/graphics/RecordingCanvas;)V

    .line 777
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->enableZ()V

    .line 778
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 779
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->disableZ()V

    .line 781
    invoke-interface {p2, v0}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPostDraw(Landroid/graphics/RecordingCanvas;)V

    .line 782
    invoke-virtual {v0, v3}, Landroid/graphics/RecordingCanvas;->restoreToCount(I)V

    .line 783
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z
    :try_end_57
    .catchall {:try_start_31 .. :try_end_57} :catchall_61

    .line 785
    iget-object p1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 786
    nop

    .line 788
    :cond_5d
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 789
    return-void

    .line 785
    :catchall_61
    move-exception p1

    iget-object p2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {p2}, Landroid/graphics/RenderNode;->endRecording()V

    .line 786
    throw p1
.end method

.method private greylist-max-o updateViewTreeDisplayList(Landroid/view/View;)V
    .registers 5

    .line 723
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 724
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 726
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 727
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    .line 728
    iput-boolean v2, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 729
    return-void
.end method

.method private blacklist updateWebViewOverlayCallbacks()V
    .registers 3

    .line 594
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->shouldEnableOverlaySupport()Z

    move-result v0

    .line 595
    iget-boolean v1, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlaysEnabled:Z

    if-eq v0, v1, :cond_20

    .line 596
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlaysEnabled:Z

    .line 597
    if-eqz v0, :cond_19

    .line 598
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setASurfaceTransactionCallback(Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V

    .line 599
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setPrepareSurfaceControlForWebviewCallback(Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V

    goto :goto_20

    .line 601
    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setASurfaceTransactionCallback(Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V

    .line 602
    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setPrepareSurfaceControlForWebviewCallback(Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V

    .line 605
    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method blacklist captureRenderingCommands()Landroid/graphics/Picture;
    .registers 2

    .line 710
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist destroy()V
    .registers 2

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 359
    invoke-super {p0}, Landroid/graphics/HardwareRenderer;->destroy()V

    .line 360
    return-void
.end method

.method greylist-max-o destroyHardwareResources(Landroid/view/View;)V
    .registers 2

    .line 506
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    .line 507
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->clearContent()V

    .line 508
    return-void
.end method

.method blacklist draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
    .registers 6

    .line 829
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    invoke-virtual {v0}, Landroid/view/ViewFrameInfo;->markDrawStart()V

    .line 831
    invoke-direct {p0, p1, p3}, Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V

    .line 835
    iget-object p1, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz p1, :cond_2d

    .line 836
    iget-object p1, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 837
    const/4 p3, 0x0

    :goto_15
    if-ge p3, p1, :cond_25

    .line 838
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 839
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RenderNode;

    .line 838
    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V

    .line 837
    add-int/lit8 p3, p3, 0x1

    goto :goto_15

    .line 841
    :cond_25
    iget-object p1, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 844
    const/4 p1, 0x0

    iput-object p1, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 847
    :cond_2d
    iget-object p1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getUpdatedFrameInfo()Landroid/graphics/FrameInfo;

    move-result-object p1

    .line 849
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->syncAndDrawFrame(Landroid/graphics/FrameInfo;)I

    move-result p1

    .line 850
    and-int/lit8 p3, p1, 0x2

    const/4 v0, 0x1

    if-eqz p3, :cond_4c

    .line 851
    const-string p3, "HWUI"

    const-string v1, "Surface lost, forcing relayout"

    invoke-static {p3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object p3, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iput-boolean v0, p3, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 855
    iget-object p3, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {p3}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 857
    :cond_4c
    and-int/2addr p1, v0

    if-eqz p1, :cond_54

    .line 858
    iget-object p1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 860
    :cond_54
    return-void
.end method

.method greylist-max-o dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 4

    .line 705
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 706
    invoke-static {p3}, Landroid/view/ThreadedRenderer;->dumpArgsToFlags([Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ThreadedRenderer;->dumpProfileInfo(Ljava/io/FileDescriptor;I)V

    .line 707
    return-void
.end method

.method greylist-max-o getHeight()I
    .registers 2

    .line 668
    iget v0, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    return v0
.end method

.method public blacklist getRootNode()Landroid/graphics/RenderNode;
    .registers 2

    .line 864
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    return-object v0
.end method

.method blacklist getRoundedClipBounds()Landroid/graphics/RectF;
    .registers 6

    .line 549
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    int-to-float v3, v3

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method greylist-max-o getWidth()I
    .registers 2

    .line 658
    iget v0, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    return v0
.end method

.method greylist-max-o initialize(Landroid/view/Surface;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 414
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 415
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 416
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 417
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->setSurface(Landroid/view/Surface;)V

    .line 418
    return v0
.end method

.method greylist-max-o initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 441
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 442
    invoke-virtual {p0, p4}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    move-result p4

    if-eqz p4, :cond_17

    .line 443
    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 444
    const/4 p1, 0x1

    return p1

    .line 448
    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method greylist-max-o invalidateRoot()V
    .registers 2

    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    .line 820
    return-void
.end method

.method greylist-max-o isEnabled()Z
    .registers 2

    .line 368
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    return v0
.end method

.method greylist-max-o isRequested()Z
    .registers 2

    .line 387
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    return v0
.end method

.method public greylist-max-o loadSystemProperties()Z
    .registers 2

    .line 715
    invoke-super {p0}, Landroid/graphics/HardwareRenderer;->loadSystemProperties()Z

    move-result v0

    .line 716
    if-eqz v0, :cond_9

    .line 717
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 719
    :cond_9
    return v0
.end method

.method public blacklist notifyCallbackPending()V
    .registers 2

    .line 618
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 619
    invoke-super {p0}, Landroid/graphics/HardwareRenderer;->notifyCallbackPending()V

    .line 621
    :cond_9
    return-void
.end method

.method public blacklist notifyExpensiveFrame()V
    .registers 2

    .line 625
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 626
    invoke-super {p0}, Landroid/graphics/HardwareRenderer;->notifyExpensiveFrame()V

    .line 628
    :cond_9
    return-void
.end method

.method blacklist registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 3

    .line 480
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    .line 483
    :cond_b
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    return-void
.end method

.method public blacklist rendererOwnsSurfaceControlOpacity()Z
    .registers 2

    .line 578
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-static {v0}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->-$$Nest$fgetmSurfaceControl(Landroid/view/ThreadedRenderer$WebViewOverlayProvider;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method blacklist setCornerRadius(Landroid/view/ViewRootImpl$CornerRadii;)V
    .registers 13

    .line 553
    const/4 v0, 0x0

    if-eqz p1, :cond_81

    invoke-virtual {p1}, Landroid/view/ViewRootImpl$CornerRadii;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_81

    .line 557
    :cond_a
    iput-object p1, p0, Landroid/view/ThreadedRenderer;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    .line 558
    iget-object p1, p0, Landroid/view/ThreadedRenderer;->mOutline:Landroid/graphics/Outline;

    if-nez p1, :cond_17

    .line 559
    new-instance p1, Landroid/graphics/Outline;

    invoke-direct {p1}, Landroid/graphics/Outline;-><init>()V

    iput-object p1, p0, Landroid/view/ThreadedRenderer;->mOutline:Landroid/graphics/Outline;

    .line 561
    :cond_17
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 562
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 563
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    iget v2, v2, Landroid/view/ViewRootImpl$CornerRadii;->topLeft:F

    iget-object v3, p0, Landroid/view/ThreadedRenderer;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    iget v3, v3, Landroid/view/ViewRootImpl$CornerRadii;->topLeft:F

    iget-object v4, p0, Landroid/view/ThreadedRenderer;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    iget v4, v4, Landroid/view/ViewRootImpl$CornerRadii;->topRight:F

    iget-object v5, p0, Landroid/view/ThreadedRenderer;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    iget v5, v5, Landroid/view/ViewRootImpl$CornerRadii;->topRight:F

    iget-object v6, p0, Landroid/view/ThreadedRenderer;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    iget v6, v6, Landroid/view/ViewRootImpl$CornerRadii;->bottomRight:F

    iget-object v7, p0, Landroid/view/ThreadedRenderer;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    iget v7, v7, Landroid/view/ViewRootImpl$CornerRadii;->bottomRight:F

    iget-object v8, p0, Landroid/view/ThreadedRenderer;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    iget v8, v8, Landroid/view/ViewRootImpl$CornerRadii;->bottomLeft:F

    iget-object v9, p0, Landroid/view/ThreadedRenderer;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    iget v9, v9, Landroid/view/ViewRootImpl$CornerRadii;->bottomLeft:F

    const/16 v10, 0x8

    new-array v10, v10, [F

    aput v2, v10, v0

    const/4 v0, 0x1

    aput v3, v10, v0

    const/4 v2, 0x2

    aput v4, v10, v2

    const/4 v2, 0x3

    aput v5, v10, v2

    const/4 v2, 0x4

    aput v6, v10, v2

    const/4 v2, 0x5

    aput v7, v10, v2

    const/4 v2, 0x6

    aput v8, v10, v2

    const/4 v2, 0x7

    aput v9, v10, v2

    .line 567
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v10, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 568
    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v1, p1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 569
    iget-object p1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {p1, v1}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 570
    iget-object p1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    .line 571
    return-void

    .line 554
    :cond_81
    :goto_81
    iget-object p1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    .line 555
    return-void
.end method

.method greylist-max-o setEnabled(Z)V
    .registers 2

    .line 377
    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    .line 378
    return-void
.end method

.method greylist-max-o setLightCenter(Landroid/view/View$AttachInfo;)V
    .registers 7

    .line 637
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 638
    iget-object v1, p1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 639
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 640
    iget v3, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    iget p1, p1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float p1, p1

    sub-float/2addr v3, p1

    .line 643
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v4, 0x43e10000    # 450.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v4

    div-float/2addr p1, v0

    .line 645
    add-float/2addr p1, v2

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    .line 646
    iget v0, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    mul-float/2addr v0, p1

    .line 648
    iget p1, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    invoke-virtual {p0, v1, v3, v0, p1}, Landroid/view/ThreadedRenderer;->setLightSourceGeometry(FFFF)V

    .line 649
    return-void
.end method

.method greylist-max-o setRequested(Z)V
    .registers 2

    .line 395
    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    .line 396
    return-void
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .registers 3

    .line 465
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 466
    invoke-super {p0, p1}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    goto :goto_10

    .line 468
    :cond_c
    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    .line 470
    :goto_10
    return-void
.end method

.method public blacklist setSurfaceControl(Landroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;)V
    .registers 4

    .line 610
    invoke-super {p0, p1, p2}, Landroid/graphics/HardwareRenderer;->setSurfaceControl(Landroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;)V

    .line 611
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 612
    iget-object p1, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {p1, p2}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V

    .line 613
    invoke-direct {p0}, Landroid/view/ThreadedRenderer;->updateWebViewOverlayCallbacks()V

    .line 614
    return-void
.end method

.method public blacklist setSurfaceControlOpaque(Z)Z
    .registers 3

    .line 590
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->setSurfaceControlOpaque(Z)Z

    move-result p1

    return p1
.end method

.method greylist-max-o setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V
    .registers 7

    .line 523
    iput p1, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    .line 524
    iput p2, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    .line 526
    const/4 v0, 0x0

    if-eqz p4, :cond_33

    iget v1, p4, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_17

    iget v1, p4, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_17

    iget v1, p4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_17

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_33

    .line 528
    :cond_17
    iget v1, p4, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 529
    iget v1, p4, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 530
    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    add-int/2addr p1, v1

    iget v1, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 531
    iget p1, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    add-int/2addr p2, p1

    iget p1, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 534
    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    goto :goto_3b

    .line 536
    :cond_33
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 537
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 538
    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 539
    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 542
    :goto_3b
    iget-object p1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget p2, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    neg-int p2, p2

    iget p4, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    neg-int p4, p4

    iget v0, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v1, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {p1, p2, p4, v0, v1}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 544
    iget-object p1, p0, Landroid/view/ThreadedRenderer;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->setCornerRadius(Landroid/view/ViewRootImpl$CornerRadii;)V

    .line 545
    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    .line 546
    return-void
.end method

.method blacklist unregisterRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 3

    .line 493
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 494
    return-void

    .line 496
    :cond_5
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 497
    return-void
.end method

.method greylist-max-o updateSurface(Landroid/view/Surface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 457
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 458
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->setSurface(Landroid/view/Surface;)V

    .line 459
    return-void
.end method
