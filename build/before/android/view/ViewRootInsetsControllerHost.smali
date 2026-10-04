.class public Landroid/view/ViewRootInsetsControllerHost;
.super Ljava/lang/Object;
.source "ViewRootInsetsControllerHost.java"

# interfaces
.implements Landroid/view/InsetsController$Host;


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Landroid/view/ViewRootInsetsControllerHost;)Landroid/view/ViewRootImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "VRInsetsControllerHost"

    iput-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->TAG:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 49
    return-void
.end method

.method private blacklist isVisibleToUser()Z
    .registers 2

    .line 309
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic blacklist lambda$releaseSurfaceControlFromRt$0(Landroid/view/SurfaceControl;J)V
    .registers 3

    .line 243
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    .line 244
    return-void
.end method


# virtual methods
.method public blacklist addOnPreDrawRunnable(Ljava/lang/Runnable;)V
    .registers 4

    .line 64
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 65
    return-void

    .line 67
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/view/ViewRootInsetsControllerHost$1;

    invoke-direct {v1, p0, p1}, Landroid/view/ViewRootInsetsControllerHost$1;-><init>(Landroid/view/ViewRootInsetsControllerHost;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 76
    iget-object p1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 77
    return-void
.end method

.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 4

    .line 129
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_39

    .line 132
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-nez v0, :cond_15

    .line 133
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 135
    :cond_15
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Landroid/view/ViewRootInsetsControllerHost;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 136
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-virtual {v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    goto :goto_38

    .line 142
    :cond_2b
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 143
    iget-object v1, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-virtual {v1, v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 144
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 146
    :goto_38
    return-void

    .line 130
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "View of the ViewRootImpl is not initiated."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist dipToPx(I)I
    .registers 3

    .line 275
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_b

    .line 276
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result p1

    return p1

    .line 278
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 3

    .line 119
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 121
    return-void

    .line 123
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 124
    return-void
.end method

.method public blacklist dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .registers 3

    .line 81
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 82
    return-void

    .line 84
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 85
    return-void
.end method

.method public blacklist dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 105
    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public blacklist dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .registers 4

    .line 92
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 93
    const/4 p1, 0x0

    return-object p1

    .line 96
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    return-object v0
.end method

.method public blacklist getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 3

    .line 255
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public blacklist getRootViewContext()Landroid/content/Context;
    .registers 2

    .line 270
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public blacklist getRootViewTitle()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_6

    .line 262
    const/4 v0, 0x0

    return-object v0

    .line 264
    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSystemBarsAppearance()I
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    return v0
.end method

.method public blacklist getSystemBarsBehavior()I
    .registers 2

    .line 229
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    return v0
.end method

.method public blacklist getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    .line 297
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_9

    .line 298
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    return-object v0

    .line 300
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWindowToken()Landroid/os/IBinder;
    .registers 3

    .line 284
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 285
    return-object v1

    .line 287
    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 288
    if-nez v0, :cond_f

    .line 289
    return-object v1

    .line 291
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasAnimationCallbacks()Z
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 195
    const/4 v0, 0x0

    return v0

    .line 197
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v0

    return v0
.end method

.method public blacklist isHandlingPointerEvent()Z
    .registers 2

    .line 305
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isHandlingPointerEvent()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist notifyInsetsChanged()V
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->notifyInsetsChanged()V

    .line 60
    return-void
.end method

.method public blacklist postInsetsAnimationCallback(Ljava/lang/Runnable;)V
    .registers 5

    .line 150
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .registers 4

    .line 241
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 242
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/ViewRootInsetsControllerHost$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/view/ViewRootInsetsControllerHost$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 246
    iget-object p1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_25

    .line 248
    :cond_22
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 250
    :goto_25
    return-void
.end method

.method public blacklist setSystemBarsAppearance(II)V
    .registers 6

    .line 202
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 203
    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    .line 204
    iget p2, v0, Landroid/view/InsetsFlags;->appearance:I

    if-eq p2, p1, :cond_1c

    .line 205
    iput p1, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 206
    iget-object p1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 207
    iget-object p1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 209
    :cond_1c
    return-void
.end method

.method public blacklist setSystemBarsBehavior(I)V
    .registers 3

    .line 219
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    if-eq v0, p1, :cond_1c

    .line 220
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput p1, v0, Landroid/view/InsetsFlags;->behavior:I

    .line 221
    iget-object p1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 222
    iget-object p1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 224
    :cond_1c
    return-void
.end method

.method public blacklist updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5

    .line 182
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/16 v1, 0x47

    if-eqz v0, :cond_13

    .line 183
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 185
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_1a

    .line 187
    :cond_13
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 190
    :goto_1a
    return-void
.end method

.method public blacklist updateCompatSysUiVisibility(III)V
    .registers 5

    .line 157
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->updateCompatSysUiVisibility(III)V

    .line 159
    return-void
.end method

.method public blacklist updateRequestedVisibleTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5

    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    const/16 v1, 0x35

    if-eqz v0, :cond_1b

    .line 166
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 168
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowSession;->updateRequestedVisibleTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_22

    .line 171
    :cond_1b
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    .line 176
    :goto_22
    goto :goto_2b

    .line 174
    :catch_23
    move-exception p1

    .line 175
    const-string p2, "VRInsetsControllerHost"

    const-string v0, "Failed to call insetsModified"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :goto_2b
    return-void
.end method
