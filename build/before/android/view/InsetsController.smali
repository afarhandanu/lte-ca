.class public Landroid/view/InsetsController;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;
.implements Landroid/view/InsetsAnimationControlCallbacks;
.implements Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsController$Host;,
        Landroid/view/InsetsController$RunningAnimation;,
        Landroid/view/InsetsController$PendingControlRequest;,
        Landroid/view/InsetsController$InternalAnimationControlListener;,
        Landroid/view/InsetsController$AnimationType;,
        Landroid/view/InsetsController$LayoutInsetsDuringAnimation;
    }
.end annotation


# static fields
.field private static final blacklist ANIMATION_DELAY_DIM_MS:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_FADE_IN_MS:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_FADE_OUT_MS:I = 0x5dc

.field private static final blacklist ANIMATION_DURATION_MOVE_IN_MS:I = 0x113

.field private static final blacklist ANIMATION_DURATION_MOVE_OUT_MS:I = 0x154

.field public static final blacklist ANIMATION_DURATION_RESIZE:I = 0x12c

.field static final blacklist ANIMATION_DURATION_SYNC_IME_MS:I = 0x11d

.field static final blacklist ANIMATION_DURATION_UNSYNC_IME_MS:I = 0xc8

.field public static final blacklist ANIMATION_TYPE_HIDE:I = 0x1

.field public static final blacklist ANIMATION_TYPE_NONE:I = -0x1

.field public static final blacklist ANIMATION_TYPE_RESIZE:I = 0x3

.field public static final blacklist ANIMATION_TYPE_SHOW:I = 0x0

.field public static final blacklist ANIMATION_TYPE_USER:I = 0x2

.field static final blacklist DEBUG:Z = false

.field static final blacklist FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist FLOATING_IME_BOTTOM_INSET_DP:I = -0x50

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_HIDDEN:I = 0x1

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_SHOWN:I = 0x0

.field private static final blacklist LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist PENDING_CONTROL_TIMEOUT_MS:I = 0x7d0

.field public static final blacklist RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final blacklist SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "InsetsController"

.field static final blacklist WARN:Z = false

.field private static final blacklist sEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAnimCallback:Ljava/lang/Runnable;

.field private blacklist mAnimCallbackScheduled:Z

.field private blacklist mAnimatingTypes:I

.field private blacklist mAnimationsDisabled:Z

.field private blacklist mAppearanceControlled:I

.field private blacklist mAppearanceFromResource:I

.field private blacklist mBehaviorControlled:Z

.field private final blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mCancelledForNewAnimationTypes:I

.field private blacklist mCompatSysUiVisibilityStaled:Z

.field private final blacklist mControllableInsetsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mControllableTypes:I

.field private blacklist mExistingTypes:I

.field private final blacklist mFrame:Landroid/graphics/Rect;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHost:Landroid/view/InsetsController$Host;

.field private blacklist mImeCaptionBarInsetsHeight:I

.field private final blacklist mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

.field private blacklist mIsPredictiveBackImeHideAnimInProgress:Z

.field private final blacklist mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

.field private blacklist mLastActivityType:I

.field private final blacklist mLastDispatchedState:Landroid/view/InsetsState;

.field private blacklist mLastInsets:Landroid/view/WindowInsets;

.field private blacklist mLastLegacySoftInputMode:I

.field private blacklist mLastLegacySystemUiFlags:I

.field private blacklist mLastLegacyWindowFlags:I

.field private blacklist mLastStartedAnimTypes:I

.field private blacklist mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private final blacklist mPendingControlTimeout:Ljava/lang/Runnable;

.field private blacklist mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

.field private final blacklist mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

.field private blacklist mReportedRequestedVisibleTypes:I

.field private blacklist mRequestedVisibleTypes:I

.field private final blacklist mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InsetsController$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSourceConsumers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

.field private blacklist mStartingAnimation:Z

.field private final blacklist mState:Landroid/view/InsetsState;

.field private final blacklist mTmpControlArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTypesBeingCancelled:I

.field private blacklist mVisibleTypes:I

.field private blacklist mWindowType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$0XNO8m1y9x70BHGTRknWtIUG5ZY(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/InsetsController;->lambda$startAnimation$5(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2LIr3EryRYmtQ1HDd2j7SPwxf78(Landroid/view/InsetsController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P0Et6dF81NzyKDNeemN72hpEdME(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$4(Landroid/view/InsetsAnimationControlRunner;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UMKdWKYzR_LvqTgvnvzzCDU665I(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$3(Landroid/view/InsetsController$PendingControlRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qtJwrqYeGbBDImJCUq0MAKG6dQ0(Landroid/view/InsetsController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController;->lambda$new$2()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimatingTypes(Landroid/view/InsetsController;)I
    .registers 1

    iget p0, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBounds(Landroid/view/InsetsController;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsController;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimatingTypes(Landroid/view/InsetsController;I)V
    .registers 2

    iput p1, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelExistingControllers(Landroid/view/InsetsController;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 256
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 258
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 260
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 272
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 274
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 276
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 280
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 350
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;)V
    .registers 3

    .line 828
    invoke-interface {p1}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;Landroid/os/Handler;)V

    .line 829
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;Landroid/os/Handler;)V
    .registers 5

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Landroid/view/InsetsController$1;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$1;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    .line 645
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    .line 649
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    .line 652
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 654
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mBounds:Landroid/graphics/Rect;

    .line 657
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    .line 665
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    .line 689
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    .line 699
    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda5;-><init>(Landroid/view/InsetsController;)V

    iput-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    .line 701
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    .line 710
    iput v0, p0, Landroid/view/InsetsController;->mExistingTypes:I

    .line 714
    nop

    .line 715
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    iput v1, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    .line 718
    nop

    .line 719
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    iput v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .line 722
    nop

    .line 723
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    iput v1, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    .line 726
    iput v0, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    .line 740
    new-instance v0, Landroid/view/InsetsController$2;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$2;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

    .line 766
    new-instance v0, Landroid/view/InsetsController$3;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$3;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

    .line 833
    iput-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 834
    iput-object p2, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    .line 835
    new-instance p1, Landroid/view/InsetsController$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda6;-><init>(Landroid/view/InsetsController;)V

    iput-object p1, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    .line 884
    sget p1, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object p1

    iput-object p1, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 885
    return-void
.end method

.method private blacklist abortPendingImeControlRequest()V
    .registers 4

    .line 1622
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v0, :cond_1f

    .line 1623
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v0, v0, Landroid/view/InsetsController$PendingControlRequest;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1624
    iput-object v1, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1625
    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1626
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INSETS_CONTROLLER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "abortPendingImeControlRequest"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1628
    :cond_1f
    return-void
.end method

.method private blacklist applyLocalVisibilityOverride()V
    .registers 3

    .line 1741
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1742
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    .line 1743
    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    .line 1741
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1745
    :cond_18
    return-void
.end method

.method private blacklist calculateControllableTypes()I
    .registers 6

    .line 2120
    nop

    .line 2121
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_2e

    .line 2122
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 2123
    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 2124
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    if-eqz v4, :cond_2b

    if-eqz v3, :cond_2b

    .line 2125
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v2

    or-int/2addr v1, v2

    .line 2121
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2128
    :cond_2e
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/InsetsController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    not-int v0, v0

    and-int/2addr v0, v1

    return v0
.end method

.method private blacklist cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V
    .registers 9

    .line 1679
    const/16 v0, 0x28

    if-eqz p2, :cond_13

    .line 1680
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1682
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->cancel()V

    goto :goto_1e

    .line 1685
    :cond_13
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1688
    :goto_1e
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INSETS_CONTROLLER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1690
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1691
    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 1688
    const-string v2, "cancelAnimation of types: %s, animType: %d, host: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1693
    nop

    .line 1694
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_48
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v0, :cond_9c

    .line 1695
    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsController$RunningAnimation;

    .line 1696
    iget-object v5, v4, Landroid/view/InsetsController$RunningAnimation;->mRunner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v5, p1, :cond_99

    .line 1697
    iget-object v5, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1698
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    .line 1699
    if-eqz p2, :cond_6d

    .line 1700
    iget-object p2, v4, Landroid/view/InsetsController$RunningAnimation;->mRunner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {p2}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    goto :goto_9d

    .line 1702
    :cond_6d
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    and-int/2addr p2, v0

    if-eqz p2, :cond_9d

    .line 1703
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result p2

    if-ne p2, v1, :cond_9d

    .line 1706
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->reportAnimatingInsetsTypes()Z

    move-result p2

    if-nez p2, :cond_85

    .line 1707
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p2

    goto :goto_86

    :cond_85
    move-object p2, v2

    .line 1706
    :goto_86
    invoke-direct {p0, p2}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1708
    iget-object p2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p2

    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1709
    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/inputmethod/InputMethodManager;->removeImeSurfaceFromWindow(Landroid/os/IBinder;)V

    goto :goto_9d

    .line 1694
    :cond_99
    add-int/lit8 v0, v0, -0x1

    goto :goto_48

    :cond_9c
    move v0, v3

    .line 1715
    :cond_9d
    :goto_9d
    if-lez v0, :cond_c7

    .line 1716
    iget p2, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    not-int v4, v0

    and-int/2addr p2, v4

    iput p2, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    .line 1718
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->reportAnimatingInsetsTypes()Z

    move-result p2

    if-eqz p2, :cond_b9

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    and-int/2addr p2, v0

    if-eqz p2, :cond_b9

    .line 1719
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result p2

    if-ne p2, v1, :cond_b9

    goto :goto_ba

    :cond_b9
    move v1, v3

    .line 1720
    :goto_ba
    iget-object p2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v4, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    .line 1721
    if-eqz v1, :cond_c4

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    .line 1720
    :cond_c4
    invoke-interface {p2, v4, v2}, Landroid/view/InsetsController$Host;->updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1724
    :cond_c7
    invoke-virtual {p0, v0, v3}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    .line 1725
    return-void
.end method

.method private blacklist cancelExistingControllers(I)V
    .registers 7

    .line 1604
    iget v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1605
    iget v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1607
    :try_start_7
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_f
    if-ltz v1, :cond_28

    .line 1608
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->mRunner:Landroid/view/InsetsAnimationControlRunner;

    .line 1609
    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_25

    .line 1610
    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1607
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 1613
    :cond_28
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr p1, v1

    if-eqz p1, :cond_32

    .line 1614
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_36

    .line 1617
    :cond_32
    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1618
    nop

    .line 1619
    return-void

    .line 1617
    :catchall_36
    move-exception p1

    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1618
    throw p1
.end method

.method private blacklist collectSourceControls(ILandroid/util/SparseArray;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1560
    nop

    .line 1562
    nop

    .line 1564
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ltz v0, :cond_4d

    .line 1565
    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    .line 1566
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    and-int/2addr v4, p1

    if-nez v4, :cond_1e

    .line 1567
    goto :goto_4a

    .line 1570
    :cond_1e
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    .line 1571
    if-eqz v4, :cond_4a

    .line 1572
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    if-nez v5, :cond_39

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    sget v6, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v5, v6, :cond_33

    goto :goto_39

    .line 1576
    :cond_33
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    or-int/2addr v2, v3

    goto :goto_4a

    .line 1573
    :cond_39
    :goto_39
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    new-instance v6, Landroid/view/InsetsSourceControl;

    invoke-direct {v6, v4}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    invoke-virtual {p2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1574
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    or-int/2addr v1, v3

    .line 1564
    :cond_4a
    :goto_4a
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1580
    :cond_4d
    new-instance p1, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private blacklist controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V
    .registers 15

    .line 1374
    const/4 v0, 0x0

    if-nez p8, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 1376
    :goto_6
    if-nez p11, :cond_27

    if-nez v1, :cond_27

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p11

    and-int/2addr p11, p1

    if-eqz p11, :cond_27

    iget p11, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .line 1377
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr p11, v2

    if-eqz p11, :cond_27

    .line 1379
    iget-object p11, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p11}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p11

    invoke-virtual {p11}, Landroid/view/inputmethod/InputMethodManager;->getImeBackCallbackProxy()Landroid/window/ImeBackCallbackProxy;

    move-result-object p11

    invoke-virtual {p11}, Landroid/window/ImeBackCallbackProxy;->preliminaryClear()V

    .line 1382
    :cond_27
    if-eqz v1, :cond_2a

    move v0, p1

    :cond_2a
    invoke-virtual {p0, v0, p1}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 1386
    invoke-direct/range {p0 .. p10}, Landroid/view/InsetsController;->controlAnimationUncheckedInner(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1392
    move-object p1, p0

    invoke-direct {p0, p10}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1393
    return-void
.end method

.method private blacklist controlAnimationUncheckedInner(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 29

    .line 1402
    move-object/from16 v7, p0

    move/from16 v1, p1

    move-object/from16 v5, p3

    move/from16 v9, p7

    move-object/from16 v13, p10

    iget v0, v7, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    and-int/2addr v0, v1

    const/16 v2, 0x21

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_79

    .line 1403
    if-eqz v9, :cond_19

    if-ne v9, v14, :cond_18

    goto :goto_19

    :cond_18
    move v14, v15

    .line 1405
    :cond_19
    :goto_19
    if-eqz v14, :cond_46

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_46

    .line 1406
    const/16 v0, 0x28

    if-nez v9, :cond_33

    .line 1407
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v3

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v13, v0, v4}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    goto :goto_3f

    .line 1411
    :cond_33
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v3

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v13, v0, v4}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1415
    :goto_3f
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v13, v2}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1418
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot start a new insets animation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1419
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while an existing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1420
    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is being cancelled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1423
    :cond_79
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v13, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1424
    const-string v6, "IC.showRequestFromApi"

    const/4 v8, 0x0

    const-wide/16 v10, 0x8

    if-nez v1, :cond_a4

    .line 1426
    invoke-interface {v5, v8}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1427
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INSETS_CONTROLLER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string/jumbo v1, "no types to animate in controlAnimationUnchecked"

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1428
    invoke-static {v10, v11, v6, v15}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1429
    const-string v0, "IC.showRequestFromApiToImeReady"

    invoke-static {v10, v11, v0, v15}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1430
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v13, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1431
    return-void

    .line 1436
    :cond_a4
    iget v0, v7, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    or-int/2addr v0, v1

    iput v0, v7, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    .line 1438
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 1441
    invoke-direct {v7, v1, v12}, Landroid/view/InsetsController;->collectSourceControls(ILandroid/util/SparseArray;)Landroid/util/Pair;

    move-result-object v0

    .line 1443
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1444
    const/4 v3, 0x2

    if-ne v9, v3, :cond_11c

    .line 1446
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1452
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_101

    and-int/2addr v0, v1

    if-eqz v0, :cond_101

    .line 1456
    new-instance v0, Landroid/view/InsetsController$PendingControlRequest;

    move-object/from16 v3, p6

    move v4, v9

    move v9, v2

    move-object v2, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/InsetsAnimationSpec;ILandroid/os/CancellationSignal;)V

    .line 1458
    move-object/from16 v17, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v5

    move-object/from16 v5, v17

    iput-object v2, v7, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1460
    iget-object v3, v7, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v4, v7, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1462
    sget-object v3, Landroid/view/ViewProtoLogGroups;->INSETS_CONTROLLER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v4, "Ime not ready. Create pending request"

    new-array v10, v15, [Ljava/lang/Object;

    invoke-static {v3, v4, v10}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1464
    if-eqz v1, :cond_105

    .line 1465
    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v7, v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda1;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v1, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    goto :goto_105

    .line 1452
    :cond_101
    move v0, v1

    move v9, v2

    move-object/from16 v1, p2

    .line 1475
    :cond_105
    :goto_105
    if-eq v9, v0, :cond_120

    .line 1476
    sget-object v1, Landroid/view/ViewProtoLogGroups;->INSETS_CONTROLLER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1478
    invoke-static {v9}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1476
    const-string/jumbo v2, "not all types are ready yet, waiting. typesReady=[%s], types=[%s]"

    invoke-static {v1, v2, v0}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1479
    return-void

    .line 1444
    :cond_11c
    move v0, v1

    move v9, v2

    move-object/from16 v1, p2

    .line 1483
    :cond_120
    if-nez v9, :cond_12b

    .line 1488
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v6, v15}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1489
    invoke-interface {v5, v8}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1490
    return-void

    .line 1493
    :cond_12b
    const-wide/16 v2, 0x8

    iput v9, v7, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    .line 1494
    invoke-direct {v7, v9}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1495
    iput v15, v7, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    .line 1497
    if-eqz p9, :cond_15d

    .line 1498
    new-instance v0, Landroid/view/InsetsAnimationThreadControlRunner;

    iget-object v4, v7, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v6, v7, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1501
    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v11

    iget-object v6, v7, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v10, p8

    move-object v15, v1

    move-object v1, v12

    move/from16 v16, v14

    move-object v12, v6

    move-object v14, v8

    move v6, v9

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v13}, Landroid/view/InsetsAnimationThreadControlRunner;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsAnimationSpec;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/os/Handler;Landroid/view/inputmethod/ImeTracker$Token;)V

    move-object/from16 v13, p10

    goto :goto_181

    .line 1502
    :cond_15d
    move-object v15, v1

    move v6, v9

    move-object v1, v12

    move/from16 v16, v14

    move-object v14, v8

    new-instance v0, Landroid/view/InsetsAnimationControlImpl;

    iget-object v4, v7, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, v7, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1505
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v12

    move-object/from16 v8, p0

    move-object/from16 v5, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;Landroid/view/InsetsAnimationSpec;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/view/inputmethod/ImeTracker$Token;)V

    move v9, v10

    .line 1506
    :goto_181
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_187
    if-ltz v2, :cond_1a1

    .line 1507
    iget-object v3, v7, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    .line 1508
    if-eqz v3, :cond_19e

    .line 1509
    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getSurfaceParamsApplier()Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsSourceConsumer;->setSurfaceParamsApplier(Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;)V

    .line 1506
    :cond_19e
    add-int/lit8 v2, v2, -0x1

    goto :goto_187

    .line 1512
    :cond_1a1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, v6

    if-eqz v1, :cond_1c7

    .line 1513
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    iget-object v2, v7, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1514
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1513
    const-string v3, "InsetsAnimationControlImpl"

    invoke-virtual {v1, v3, v2, v14}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1515
    move/from16 v1, v16

    if-ne v9, v1, :cond_1c7

    .line 1516
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v1

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v13, v2}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1519
    :cond_1c7
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/16 v2, 0x27

    invoke-interface {v1, v13, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1520
    iget v1, v7, Landroid/view/InsetsController;->mAnimatingTypes:I

    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v7, Landroid/view/InsetsController;->mAnimatingTypes:I

    .line 1521
    iget-object v1, v7, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v2, v7, Landroid/view/InsetsController;->mAnimatingTypes:I

    invoke-interface {v1, v2, v14}, Landroid/view/InsetsController$Host;->updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1522
    iget-object v1, v7, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v2, Landroid/view/InsetsController$RunningAnimation;

    invoke-direct {v2, v0, v9}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    sget-object v1, Landroid/view/ViewProtoLogGroups;->INSETS_CONTROLLER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1525
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1523
    const-string v3, "Animation added to runner. useInsetsAnimationThread: %s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1526
    if-eqz v15, :cond_207

    .line 1527
    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v7, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V

    invoke-virtual {v15, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x8

    goto :goto_20f

    .line 1530
    :cond_207
    const-string v0, "IC.pendingAnim"

    const/4 v1, 0x0

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1533
    :goto_20f
    move/from16 v0, p1

    const/4 v4, 0x1

    invoke-virtual {v7, v0, v4}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    .line 1535
    if-ne v9, v4, :cond_21c

    .line 1536
    const-string v0, "IC.hideRequestFromApi"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1538
    :cond_21c
    return-void
.end method

.method private blacklist getLayoutInsetsDuringAnimationMode(IZ)I
    .registers 4

    .line 1586
    const/4 v0, 0x0

    if-eqz p2, :cond_c

    iget-object p2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p2}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result p2

    if-nez p2, :cond_c

    .line 1590
    return v0

    .line 1598
    :cond_c
    iget p2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr p2, p1

    if-eq p2, p1, :cond_12

    .line 1599
    goto :goto_13

    .line 1600
    :cond_12
    const/4 v0, 0x1

    .line 1598
    :goto_13
    return v0
.end method

.method private blacklist handlePendingControlRequest(Landroid/view/InsetsController$PendingControlRequest;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 15

    .line 1243
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1244
    iget-object v2, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1248
    iget v2, p1, Landroid/view/InsetsController$PendingControlRequest;->mTypes:I

    move v3, v2

    iget-object v2, p1, Landroid/view/InsetsController$PendingControlRequest;->mCancellationSignal:Landroid/os/CancellationSignal;

    move v4, v3

    iget-object v3, p1, Landroid/view/InsetsController$PendingControlRequest;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-object v6, p1, Landroid/view/InsetsController$PendingControlRequest;->mInsetsAnimationSpec:Landroid/view/InsetsAnimationSpec;

    iget v7, p1, Landroid/view/InsetsController$PendingControlRequest;->mAnimationType:I

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v1, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v10, p2

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    .line 1253
    return-void
.end method

.method private blacklist invokeControllableInsetsChangedListeners()I
    .registers 5

    .line 2136
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    .line 2138
    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v1

    .line 2139
    iget-object v2, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2140
    nop

    :goto_e
    if-ge v0, v2, :cond_1e

    .line 2141
    iget-object v3, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    invoke-interface {v3, p0, v1}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 2140
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2143
    :cond_1e
    iget v0, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    return v0
.end method

.method private synthetic blacklist lambda$controlAnimationUncheckedInner$3(Landroid/view/InsetsController$PendingControlRequest;)V
    .registers 4

    .line 1466
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_11

    .line 1467
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INSETS_CONTROLLER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cancellation signal abortPendingImeControlRequest"

    invoke-static {p1, v1, v0}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1469
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1471
    :cond_11
    return-void
.end method

.method private synthetic blacklist lambda$controlAnimationUncheckedInner$4(Landroid/view/InsetsAnimationControlRunner;)V
    .registers 3

    .line 1528
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$new$2()V
    .registers 15

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 837
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 838
    return-void

    .line 841
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 842
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 843
    new-instance v2, Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v13, 0x1

    invoke-direct {v2, v3, v13}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 844
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v13

    :goto_25
    if-ltz v3, :cond_53

    .line 845
    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsController$RunningAnimation;

    .line 849
    iget-object v5, v4, Landroid/view/InsetsController$RunningAnimation;->mRunner:Landroid/view/InsetsAnimationControlRunner;

    .line 850
    instance-of v6, v5, Landroid/view/WindowInsetsAnimationController;

    if-eqz v6, :cond_50

    .line 855
    iget-boolean v4, v4, Landroid/view/InsetsController$RunningAnimation;->mStartDispatched:Z

    if-eqz v4, :cond_40

    .line 856
    invoke-interface {v5}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_40
    move-object v4, v5

    check-cast v4, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v4, v2}, Landroid/view/InternalInsetsAnimationController;->applyChangeInsets(Landroid/view/InsetsState;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 860
    invoke-interface {v5}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_50
    add-int/lit8 v3, v3, -0x1

    goto :goto_25

    .line 865
    :cond_53
    iget-object v3, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/InsetsController;->mBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v6, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    .line 866
    invoke-virtual {v6}, Landroid/view/WindowInsets;->isRound()Z

    move-result v6

    iget v7, p0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    iget v8, p0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    iget v9, p0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    iget v10, p0, Landroid/view/InsetsController;->mWindowType:I

    iget v11, p0, Landroid/view/InsetsController;->mLastActivityType:I

    .line 865
    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v2

    .line 869
    iget-object v3, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 870
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 869
    invoke-interface {v3, v2, v0}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    .line 878
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v13

    :goto_7c
    if-ltz v0, :cond_8a

    .line 879
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 878
    add-int/lit8 v0, v0, -0x1

    goto :goto_7c

    .line 881
    :cond_8a
    return-void
.end method

.method private synthetic blacklist lambda$startAnimation$5(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 13

    .line 1990
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1994
    return-void

    .line 1996
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsetsAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1997
    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1996
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v1, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1998
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    :goto_2e
    if-ltz v1, :cond_41

    .line 1999
    iget-object v5, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InsetsController$RunningAnimation;

    .line 2000
    iget-object v6, v5, Landroid/view/InsetsController$RunningAnimation;->mRunner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v6, p1, :cond_3e

    .line 2001
    iput-boolean v4, v5, Landroid/view/InsetsController$RunningAnimation;->mStartDispatched:Z

    .line 1998
    :cond_3e
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    .line 2004
    :cond_41
    const-string v1, "IC.pendingAnim"

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2005
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1, p3, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 2006
    iput-boolean v4, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    .line 2007
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_60

    .line 2008
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p3

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p4

    invoke-interface {p3, p4}, Landroid/view/inputmethod/ImeTracker;->onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 2010
    :cond_60
    check-cast p1, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {p1, v4}, Landroid/view/InternalInsetsAnimationController;->setReadyDispatched(Z)V

    .line 2011
    invoke-interface {p5, v0, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    .line 2012
    iput-boolean v5, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    .line 2013
    return-void
.end method

.method static synthetic blacklist lambda$static$0(F)F
    .registers 4

    .line 263
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p0, v0, p0

    .line 264
    nop

    .line 265
    const v1, 0x3eaaaaab

    cmpg-float v2, p0, v1

    if-gtz v2, :cond_d

    .line 266
    return v0

    .line 268
    :cond_d
    sub-float/2addr p0, v1

    const v1, 0x3f2aaaaa

    div-float/2addr p0, v1

    .line 269
    sget-object v1, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method static synthetic blacklist lambda$static$1(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .registers 8

    .line 351
    iget v0, p1, Landroid/graphics/Insets;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Insets;->top:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Insets;->right:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Insets;->right:I

    iget v4, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Insets;->bottom:I

    int-to-float v3, v3

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p0, p1

    add-float/2addr v3, p0

    float-to-int p0, v3

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method static blacklist releaseControls(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 1541
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_19

    .line 1542
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 1541
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1544
    :cond_19
    return-void
.end method

.method private blacklist reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5

    .line 1874
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->reportAnimatingInsetsTypes()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1875
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    goto :goto_13

    .line 1877
    :cond_9
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iget v1, p0, Landroid/view/InsetsController;->mAnimatingTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 1880
    :goto_13
    iget v1, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    const/16 v2, 0x30

    if-eq v0, v1, :cond_46

    .line 1882
    iget v1, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    xor-int/2addr v1, v0

    .line 1883
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1884
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 1886
    :cond_25
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1888
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->reportAnimatingInsetsTypes()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_3a

    .line 1891
    const/4 p1, 0x0

    .line 1893
    :cond_3a
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iput v0, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    .line 1894
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v1, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    invoke-interface {v0, v1, p1}, Landroid/view/InsetsController$Host;->updateRequestedVisibleTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1895
    goto :goto_62

    .line 1896
    :cond_46
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_62

    .line 1897
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    .line 1898
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_62

    .line 1902
    :cond_5b
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1907
    :cond_62
    :goto_62
    invoke-virtual {p0}, Landroid/view/InsetsController;->updateCompatSysUiVisibility()V

    .line 1908
    return-void
.end method

.method private blacklist updateState(Landroid/view/InsetsState;)V
    .registers 11

    .line 954
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 955
    nop

    .line 956
    nop

    .line 957
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_e
    if-ge v1, v0, :cond_43

    .line 958
    new-instance v4, Landroid/view/InsetsSource;

    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 959
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    .line 960
    invoke-virtual {p0, v5}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v6

    .line 961
    iget-object v7, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsSourceConsumer;

    .line 962
    if-eqz v7, :cond_33

    .line 963
    invoke-virtual {v7, v4, v6}, Landroid/view/InsetsSourceConsumer;->updateSource(Landroid/view/InsetsSource;I)V

    goto :goto_38

    .line 965
    :cond_33
    iget-object v6, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v6, v4}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 967
    :goto_38
    or-int/2addr v3, v5

    .line 968
    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 969
    or-int/2addr v2, v5

    .line 957
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 974
    :cond_43
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    not-int v1, v3

    and-int/2addr v0, v1

    or-int/2addr v0, v2

    .line 976
    iget v1, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    const/4 v2, 0x1

    if-eq v1, v0, :cond_5c

    .line 977
    iget v1, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    xor-int/2addr v1, v0

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 978
    iput-boolean v2, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 980
    :cond_5a
    iput v0, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    .line 982
    :cond_5c
    iget v0, p0, Landroid/view/InsetsController;->mExistingTypes:I

    if-eq v0, v3, :cond_6d

    .line 983
    iget v0, p0, Landroid/view/InsetsController;->mExistingTypes:I

    xor-int/2addr v0, v3

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 984
    iput-boolean v2, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 986
    :cond_6b
    iput v3, p0, Landroid/view/InsetsController;->mExistingTypes:I

    .line 988
    :cond_6d
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

    invoke-static {v0, p1, v1}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    .line 989
    return-void
.end method


# virtual methods
.method public whitelist addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3

    .line 2149
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2151
    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 2152
    return-void
.end method

.method public blacklist applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 13

    .line 1914
    nop

    .line 1915
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->unifySkipAnimationOnceWithInitiallyVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_2d

    .line 1916
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    .line 1919
    if-eqz v0, :cond_2d

    .line 1920
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz p2, :cond_2a

    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 1921
    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->hasViewFocusWhenWindowFocusGain()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    move v1, v0

    goto :goto_2b

    :cond_2a
    nop

    :goto_2b
    move v5, v1

    goto :goto_2e

    .line 1924
    :cond_2d
    move v5, v1

    :goto_2e
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1925
    return-void
.end method

.method public blacklist applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 18

    .line 1930
    const/4 v1, 0x0

    if-nez p1, :cond_b

    .line 1935
    const-wide/16 v2, 0x8

    const-string v0, "IC.showRequestFromApi"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1936
    return-void

    .line 1939
    :cond_b
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v5

    .line 1940
    new-instance v3, Landroid/view/InsetsController$InternalAnimationControlListener;

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1941
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v7

    const/4 v2, 0x1

    if-nez p3, :cond_23

    iget-boolean v4, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    if-eqz v4, :cond_21

    goto :goto_23

    :cond_21
    move v8, v1

    goto :goto_24

    :cond_23
    :goto_23
    move v8, v2

    :goto_24
    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1942
    const/16 v6, -0x50

    invoke-interface {v4, v6}, Landroid/view/InsetsController$Host;->dipToPx(I)I

    move-result v9

    iget-object v10, p0, Landroid/view/InsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-object v11, p0, Landroid/view/InsetsController;->mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    move v6, p1

    move v4, p2

    invoke-direct/range {v3 .. v11}, Landroid/view/InsetsController$InternalAnimationControlListener;-><init>(ZZIIZILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;)V

    .line 1947
    nop

    .line 1950
    nop

    .line 1951
    xor-int/lit8 v7, p2, 0x1

    xor-int/lit8 v8, p2, 0x1

    if-eqz v5, :cond_42

    if-eqz p4, :cond_40

    goto :goto_42

    :cond_40
    move v9, v1

    goto :goto_43

    :cond_42
    :goto_42
    move v9, v2

    .line 1947
    :goto_43
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    move-object v0, p0

    move v1, p1

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    .line 1954
    return-void
.end method

.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 3

    .line 1655
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 1656
    return-void
.end method

.method public blacklist calculateInsets(ZIIIII)Landroid/view/WindowInsets;
    .registers 18

    .line 1001
    iput p2, p0, Landroid/view/InsetsController;->mWindowType:I

    .line 1002
    iput p3, p0, Landroid/view/InsetsController;->mLastActivityType:I

    .line 1003
    iput p4, p0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    .line 1004
    move/from16 v6, p5

    iput v6, p0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    .line 1005
    move/from16 v7, p6

    iput v7, p0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    .line 1006
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/InsetsController;->mBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v10, 0x0

    move v4, p1

    move v8, p2

    move v9, p3

    move v5, p4

    invoke-virtual/range {v0 .. v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    .line 1009
    iget-object p1, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    return-object p1
.end method

.method public blacklist calculateVisibleInsets(IIII)Landroid/graphics/Insets;
    .registers 12

    .line 1018
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/InsetsController;->mBounds:Landroid/graphics/Rect;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public blacklist cancelExistingAnimations()V
    .registers 2

    .line 1961
    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1962
    return-void
.end method

.method public blacklist computeUserAnimatingTypes()I
    .registers 5

    .line 1853
    nop

    .line 1854
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2e

    .line 1855
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->mRunner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 1856
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->mRunner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    or-int/2addr v1, v2

    .line 1854
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1859
    :cond_2e
    return v1
.end method

.method public whitelist controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 16

    .line 1325
    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v2, p5

    move-object v3, p6

    invoke-virtual/range {v0 .. v8}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;JLandroid/view/animation/Interpolator;IZ)V

    .line 1327
    return-void
.end method

.method public blacklist controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;JLandroid/view/animation/Interpolator;IZ)V
    .registers 21

    .line 1335
    move/from16 v11, p8

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/InsetsController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_54

    if-eqz v11, :cond_1c

    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .line 1336
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_1c

    goto :goto_54

    .line 1343
    :cond_1c
    new-instance v6, Landroid/view/InsetsController$4;

    move-wide/from16 v2, p4

    move-object/from16 v0, p6

    invoke-direct {v6, p0, v2, v3, v0}, Landroid/view/InsetsController$4;-><init>(Landroid/view/InsetsController;JLandroid/view/animation/Interpolator;)V

    .line 1355
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    if-nez v0, :cond_2e

    .line 1356
    move-object v10, v1

    goto :goto_41

    .line 1357
    :cond_2e
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1360
    invoke-interface {v1}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v1

    .line 1357
    const/4 v2, 0x3

    const/4 v3, 0x5

    const/16 v4, 0x37

    invoke-interface {v0, v2, v3, v4, v1}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    move-object v10, v1

    .line 1361
    :goto_41
    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/InsetsController;->mBounds:Landroid/graphics/Rect;

    .line 1362
    invoke-direct {p0, p1, v11}, Landroid/view/InsetsController;->getLayoutInsetsDuringAnimationMode(IZ)I

    move-result v8

    .line 1361
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v7, p7

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsAnimationSpec;IIZLandroid/view/inputmethod/ImeTracker$Token;Z)V

    .line 1364
    return-void

    .line 1339
    :cond_54
    :goto_54
    invoke-interface {p3, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1340
    return-void
.end method

.method public blacklist dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 6

    .line 2018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2019
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2020
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    .line 2018
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2021
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 2022
    return-void
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 1965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "InsetsController:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1967
    iget-object p1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {p1, v0, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1968
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "mIsPredictiveBackImeHideAnimInProgress="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1970
    return-void
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 1973
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1974
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/InsetsState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1975
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_16
    if-ltz v0, :cond_2d

    .line 1976
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->mRunner:Landroid/view/InsetsAnimationControlRunner;

    .line 1977
    const-wide v2, 0x20b00000002L

    invoke-interface {v1, p1, v2, v3}, Landroid/view/InsetsAnimationControlRunner;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1975
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 1979
    :cond_2d
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1980
    return-void
.end method

.method public blacklist getAnimationType(I)I
    .registers 4

    .line 1804
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_28

    .line 1805
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->mRunner:Landroid/view/InsetsAnimationControlRunner;

    .line 1806
    invoke-interface {v1, p1}, Landroid/view/InsetsAnimationControlRunner;->controlsType(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1807
    iget-object p1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsController$RunningAnimation;

    iget p1, p1, Landroid/view/InsetsController$RunningAnimation;->mType:I

    return p1

    .line 1804
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1810
    :cond_28
    const/4 p1, -0x1

    return p1
.end method

.method public blacklist getAppearanceControlled()I
    .registers 2

    .line 2063
    iget v0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    return v0
.end method

.method blacklist getCancelledForNewAnimationTypes()I
    .registers 2

    .line 1749
    iget v0, p0, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    return v0
.end method

.method public blacklist getHost()Landroid/view/InsetsController$Host;
    .registers 2

    .line 2180
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object v0
.end method

.method public blacklist getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;
    .registers 2

    .line 1767
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    return-object v0
.end method

.method public blacklist getLastDispatchedState()Landroid/view/InsetsState;
    .registers 2

    .line 921
    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public blacklist getRequestedVisibleTypes()I
    .registers 2

    .line 916
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    return v0
.end method

.method public final blacklist getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;
    .registers 5

    .line 1755
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    .line 1756
    if-eqz v0, :cond_b

    .line 1757
    return-object v0

    .line 1759
    :cond_b
    new-instance v0, Landroid/view/InsetsSourceConsumer;

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {v0, p1, p2, v1, p0}, Landroid/view/InsetsSourceConsumer;-><init>(IILandroid/view/InsetsState;Landroid/view/InsetsController;)V

    .line 1760
    iget-object p2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1761
    return-object v0
.end method

.method public blacklist getState()Landroid/view/InsetsState;
    .registers 2

    .line 910
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public whitelist getSystemBarsAppearance()I
    .registers 4

    .line 2057
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsAppearance()I

    move-result v0

    iget v1, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    and-int/2addr v0, v1

    iget v1, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    iget v2, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    not-int v2, v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSystemBarsBehavior()I
    .registers 2

    .line 2101
    iget-boolean v0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    if-nez v0, :cond_6

    .line 2103
    const/4 v0, 0x1

    return v0

    .line 2105
    :cond_6
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method blacklist hasSurfaceAnimation(I)Z
    .registers 6

    .line 1820
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_24

    .line 1821
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->mRunner:Landroid/view/InsetsAnimationControlRunner;

    .line 1822
    invoke-interface {v2, p1}, Landroid/view/InsetsAnimationControlRunner;->controlsType(I)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->willUpdateSurface()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1823
    return v1

    .line 1820
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1826
    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist hide(I)V
    .registers 3

    .line 1257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->hide(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1258
    return-void
.end method

.method public blacklist hide(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 19

    .line 1261
    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int v1, p1, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    .line 1262
    sget-object v1, Landroid/view/ViewProtoLogGroups;->IME_INSETS_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v4, "hide(ime())"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1264
    if-nez p2, :cond_29

    .line 1265
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    iget-object v4, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1268
    invoke-interface {v4}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v4

    .line 1265
    const/4 v5, 0x5

    const/16 v6, 0x1c

    invoke-interface {v1, v2, v5, v6, v4}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    goto :goto_2b

    .line 1271
    :cond_29
    move-object/from16 v1, p2

    :goto_2b
    const-wide/16 v4, 0x8

    const-string v6, "IC.hideRequestFromApi"

    invoke-static {v4, v5, v6, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1274
    nop

    .line 1275
    sget-object v4, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v5, v4

    move v6, v3

    move v7, v6

    :goto_38
    if-ge v6, v5, :cond_af

    aget v8, v4, v6

    .line 1276
    and-int v9, p1, v8

    if-nez v9, :cond_42

    .line 1277
    goto/16 :goto_ac

    .line 1279
    :cond_42
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v9

    const/4 v10, 0x1

    if-ne v8, v9, :cond_4b

    move v9, v10

    goto :goto_4c

    :cond_4b
    move v9, v3

    .line 1281
    :goto_4c
    invoke-virtual {v0, v8}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v11

    .line 1282
    if-eqz v9, :cond_67

    .line 1286
    iget v12, v0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v13

    and-int/2addr v12, v13

    if-nez v12, :cond_67

    if-eq v11, v2, :cond_67

    .line 1287
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v8

    const/16 v9, 0x41

    invoke-interface {v8, v1, v9}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1289
    goto :goto_ac

    .line 1292
    :cond_67
    iget v12, v0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v12, v8

    if-eqz v12, :cond_6e

    move v12, v10

    goto :goto_6f

    :cond_6e
    move v12, v3

    .line 1293
    :goto_6f
    iget-object v13, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v13, :cond_86

    if-nez v12, :cond_86

    .line 1295
    iget-object v13, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget v14, v13, Landroid/view/InsetsController$PendingControlRequest;->mTypes:I

    not-int v15, v8

    and-int/2addr v14, v15

    iput v14, v13, Landroid/view/InsetsController$PendingControlRequest;->mTypes:I

    .line 1296
    iget-object v13, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget v13, v13, Landroid/view/InsetsController$PendingControlRequest;->mTypes:I

    if-nez v13, :cond_86

    .line 1297
    invoke-direct {v0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1300
    :cond_86
    const/16 v13, 0x20

    if-nez v12, :cond_8d

    const/4 v12, -0x1

    if-eq v11, v12, :cond_a3

    :cond_8d
    if-eq v11, v10, :cond_a3

    if-eqz v9, :cond_98

    if-ne v11, v2, :cond_98

    iget-boolean v10, v0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    if-eqz v10, :cond_98

    goto :goto_a3

    .line 1311
    :cond_98
    if-eqz v9, :cond_a1

    .line 1312
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v9

    invoke-interface {v9, v1, v13}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1315
    :cond_a1
    or-int/2addr v7, v8

    goto :goto_ac

    .line 1305
    :cond_a3
    :goto_a3
    if-eqz v9, :cond_ac

    .line 1306
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v8

    invoke-interface {v8, v1, v13}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1275
    :cond_ac
    :goto_ac
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 1317
    :cond_af
    invoke-virtual {v0, v7, v3, v3, v1}, Landroid/view/InsetsController;->applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1318
    return-void
.end method

.method public blacklist isBehaviorControlled()Z
    .registers 2

    .line 2109
    iget-boolean v0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    return v0
.end method

.method public blacklist isPredictiveBackImeHideAnimInProgress()Z
    .registers 2

    .line 1167
    iget-boolean v0, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    return v0
.end method

.method blacklist notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V
    .registers 7

    .line 1660
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v0

    .line 1661
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_c
    if-ltz v1, :cond_27

    .line 1662
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->mRunner:Landroid/view/InsetsAnimationControlRunner;

    .line 1663
    invoke-interface {v3, v0}, Landroid/view/InsetsAnimationControlRunner;->notifyControlRevoked(I)V

    .line 1664
    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getControllingTypes()I

    move-result v4

    if-nez v4, :cond_24

    .line 1665
    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1661
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1668
    :cond_27
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-eq v0, v1, :cond_37

    .line 1671
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3a

    .line 1673
    :cond_37
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1675
    :goto_3a
    return-void
.end method

.method public blacklist notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .registers 6

    .line 1633
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    .line 1634
    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1635
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INSETS_CONTROLLER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "notifyFinished. shown: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1636
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    .line 1639
    return-void

    .line 1641
    :cond_2b
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 1642
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3e

    .line 1643
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Landroid/view/inputmethod/ImeTracker;->onUserFinished(Landroid/view/inputmethod/ImeTracker$Token;Z)V

    goto :goto_50

    .line 1644
    :cond_3e
    if-eqz p2, :cond_50

    .line 1645
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    const/16 p2, 0x29

    invoke-interface {p1, v0, p2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1647
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/inputmethod/ImeTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1649
    :cond_50
    :goto_50
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1650
    return-void
.end method

.method blacklist notifyVisibilityChanged()V
    .registers 2

    .line 1771
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 1772
    return-void
.end method

.method blacklist onAnimationStateChanged(IZ)V
    .registers 7

    .line 1728
    nop

    .line 1729
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_23

    .line 1730
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 1731
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_20

    .line 1732
    invoke-virtual {v2, p2}, Landroid/view/InsetsSourceConsumer;->onAnimationStateChanged(Z)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1729
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1735
    :cond_23
    if-eqz v1, :cond_28

    .line 1736
    invoke-virtual {p0}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 1738
    :cond_28
    return-void
.end method

.method public blacklist onBoundsChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 900
    iget-object v0, p0, Landroid/view/InsetsController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 901
    return-void

    .line 903
    :cond_9
    iget-object v0, p0, Landroid/view/InsetsController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 904
    iget-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p1}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 905
    return-void
.end method

.method public blacklist onControlsChanged([Landroid/view/InsetsSourceControl;)V
    .registers 19

    .line 1026
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 1027
    array-length v3, v1

    move v4, v2

    :goto_9
    if-ge v4, v3, :cond_1b

    aget-object v5, v1, v4

    .line 1028
    if-eqz v5, :cond_18

    .line 1030
    iget-object v6, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1027
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1035
    :cond_1b
    iget-object v1, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_3f

    .line 1037
    iget-object v1, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_2b
    if-ltz v1, :cond_3f

    .line 1038
    iget-object v4, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsController$RunningAnimation;

    iget-object v4, v4, Landroid/view/InsetsController$RunningAnimation;->mRunner:Landroid/view/InsetsAnimationControlRunner;

    iget-object v5, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-interface {v4, v5}, Landroid/view/InsetsAnimationControlRunner;->updateSurfacePosition(Landroid/util/SparseArray;)V

    .line 1037
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    .line 1043
    :cond_3f
    nop

    .line 1044
    nop

    .line 1046
    new-array v6, v3, [I

    .line 1048
    new-array v7, v3, [I

    .line 1050
    new-array v8, v3, [I

    .line 1052
    new-array v9, v3, [I

    .line 1053
    nop

    .line 1056
    iget-object v1, v0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v10, 0x0

    move v4, v2

    move v5, v4

    move-object v11, v10

    :goto_55
    if-ltz v1, :cond_9f

    .line 1057
    iget-object v12, v0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/InsetsSourceConsumer;

    .line 1058
    invoke-virtual {v12}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v13

    sget v14, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v13, v14, :cond_68

    .line 1061
    goto :goto_9c

    .line 1064
    :cond_68
    iget-object v13, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/InsetsSourceControl;

    .line 1065
    if-eqz v13, :cond_91

    .line 1066
    invoke-virtual {v13}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v14

    or-int/2addr v5, v14

    .line 1067
    add-int/lit8 v4, v4, 0x1

    .line 1069
    invoke-virtual {v13}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v14

    sget v15, Landroid/view/InsetsSource;->ID_IME:I

    if-ne v14, v15, :cond_8d

    .line 1070
    invoke-virtual {v13}, Landroid/view/InsetsSourceControl;->getImeStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v11

    move v14, v5

    move-object v15, v11

    move v11, v4

    goto :goto_94

    .line 1069
    :cond_8d
    move v14, v5

    move-object v15, v11

    move v11, v4

    goto :goto_94

    .line 1065
    :cond_91
    move v14, v5

    move-object v15, v11

    move v11, v4

    .line 1076
    :goto_94
    move-object v4, v12

    move-object v5, v13

    invoke-virtual/range {v4 .. v9}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    move v4, v11

    move v5, v14

    move-object v11, v15

    .line 1056
    :goto_9c
    add-int/lit8 v1, v1, -0x1

    goto :goto_55

    .line 1080
    :cond_9f
    iget-object v1, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eq v4, v1, :cond_d5

    .line 1081
    iget-object v1, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_ae
    if-ltz v1, :cond_d5

    .line 1082
    iget-object v4, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsSourceControl;

    .line 1083
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v12

    or-int/2addr v12, v5

    .line 1084
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v13

    invoke-virtual {v0, v5, v13}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v5

    .line 1085
    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    invoke-virtual/range {v4 .. v9}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    .line 1081
    add-int/lit8 v1, v1, -0x1

    move v5, v12

    goto :goto_ae

    .line 1088
    :cond_d5
    iget-object v1, v0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1090
    aget v1, v8, v2

    if-eqz v1, :cond_e3

    .line 1091
    aget v1, v8, v2

    invoke-direct {v0, v1}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1097
    :cond_e3
    invoke-direct {v0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result v1

    .line 1098
    aget v4, v6, v2

    not-int v1, v1

    and-int/2addr v4, v1

    aput v4, v6, v2

    .line 1099
    aget v4, v7, v2

    and-int/2addr v1, v4

    aput v1, v7, v2

    .line 1101
    iget-object v1, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v1, :cond_114

    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v1

    if-eqz v1, :cond_114

    .line 1102
    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_114

    .line 1103
    iget-object v1, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    invoke-direct {v0, v1, v11}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/InsetsController$PendingControlRequest;Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_16c

    .line 1105
    :cond_114
    aget v1, v6, v2

    const/16 v4, 0x4c

    if-eqz v1, :cond_12f

    .line 1106
    aget v1, v6, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v8

    and-int/2addr v1, v8

    if-eqz v1, :cond_12a

    .line 1107
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v11, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1110
    :cond_12a
    aget v1, v6, v2

    invoke-virtual {v0, v1, v3, v2, v11}, Landroid/view/InsetsController;->applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1113
    :cond_12f
    aget v1, v7, v2

    if-eqz v1, :cond_153

    .line 1114
    aget v1, v7, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v8

    and-int/2addr v1, v8

    if-eqz v1, :cond_143

    .line 1115
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v11, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1118
    :cond_143
    aget v1, v7, v2

    aget v8, v7, v2

    aget v9, v9, v2

    not-int v9, v9

    and-int/2addr v8, v9

    if-nez v8, :cond_14f

    move v8, v3

    goto :goto_150

    :cond_14f
    move v8, v2

    :goto_150
    invoke-virtual {v0, v1, v2, v8, v11}, Landroid/view/InsetsController;->applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1125
    :cond_153
    aget v1, v6, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    and-int/2addr v1, v6

    if-nez v1, :cond_16c

    aget v1, v7, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_16c

    .line 1126
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v11, v4}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1131
    :cond_16c
    :goto_16c
    iget v1, v0, Landroid/view/InsetsController;->mControllableTypes:I

    if-eq v1, v5, :cond_17d

    .line 1132
    iget v1, v0, Landroid/view/InsetsController;->mControllableTypes:I

    xor-int/2addr v1, v5

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 1133
    iput-boolean v3, v0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 1135
    :cond_17b
    iput v5, v0, Landroid/view/InsetsController;->mControllableTypes:I

    .line 1139
    :cond_17d
    invoke-direct {v0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    .line 1144
    invoke-direct {v0, v10}, Landroid/view/InsetsController;->reportRequestedVisibleTypes(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1145
    return-void
.end method

.method public blacklist onFrameChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 889
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 890
    return-void

    .line 892
    :cond_9
    iget v0, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    if-eqz v0, :cond_12

    .line 893
    iget v0, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->setImeCaptionBarInsetsHeight(I)V

    .line 895
    :cond_12
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 896
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 897
    return-void
.end method

.method public blacklist onStateChanged(Landroid/view/InsetsState;)Z
    .registers 6

    .line 925
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 926
    return v1

    .line 932
    :cond_12
    new-instance v0, Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 933
    invoke-direct {p0, p1}, Landroid/view/InsetsController;->updateState(Landroid/view/InsetsState;)V

    .line 934
    invoke-direct {p0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    .line 935
    invoke-virtual {p0}, Landroid/view/InsetsController;->updateCompatSysUiVisibility()V

    .line 937
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZZ)Z

    move-result v0

    if-nez v0, :cond_47

    .line 942
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 943
    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 946
    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

    invoke-static {v0, p1, v1}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    .line 949
    :cond_47
    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 950
    return v3
.end method

.method public blacklist onWindowFocusGained(Z)V
    .registers 3

    .line 1790
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    .line 1791
    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .registers 2

    .line 1797
    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    .line 1798
    return-void
.end method

.method public blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .registers 3

    .line 2163
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V

    .line 2164
    return-void
.end method

.method public whitelist removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3

    .line 2157
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2159
    return-void
.end method

.method public blacklist reportPerceptible(IZ)V
    .registers 7

    .line 2168
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2169
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 2170
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 2171
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_1b

    .line 2172
    invoke-virtual {v2, p2}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    .line 2169
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2175
    :cond_1e
    return-void
.end method

.method public blacklist scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .registers 3

    .line 2027
    iget-boolean v0, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    if-nez v0, :cond_1b

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    goto :goto_1b

    .line 2032
    :cond_c
    iget-boolean p1, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    if-nez p1, :cond_1a

    .line 2033
    iget-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Landroid/view/InsetsController$Host;->postInsetsAnimationCallback(Ljava/lang/Runnable;)V

    .line 2034
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 2036
    :cond_1a
    return-void

    .line 2028
    :cond_1b
    :goto_1b
    iget-object p1, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2029
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 2030
    return-void
.end method

.method public blacklist setAnimationsDisabled(Z)V
    .registers 2

    .line 2114
    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    .line 2115
    return-void
.end method

.method public blacklist setImeCaptionBarInsetsHeight(I)V
    .registers 12

    .line 2068
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2069
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v2, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 2070
    iget v2, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    if-ne v2, p1, :cond_2e

    if-eqz v1, :cond_93

    .line 2071
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_93

    .line 2072
    :cond_2e
    iput p1, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    .line 2073
    iget p1, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    const/4 v1, 0x1

    if-eqz p1, :cond_6e

    .line 2074
    iget-object p1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v2, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object p1

    .line 2075
    invoke-virtual {p1, v0}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 2076
    sget p1, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsSourceControl;

    sget v4, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    .line 2077
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v5

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    sget-object v9, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/view/InsetsSourceControl;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;)V

    new-array v4, v1, [I

    new-array v5, v1, [I

    new-array v6, v1, [I

    new-array v7, v1, [I

    .line 2076
    invoke-virtual/range {v2 .. v7}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    goto :goto_8e

    .line 2082
    :cond_6e
    iget-object p1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v0, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2083
    iget-object p1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    sget v0, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 2084
    if-eqz v2, :cond_8e

    .line 2085
    new-array v4, v1, [I

    new-array v5, v1, [I

    new-array v6, v1, [I

    new-array v7, v1, [I

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    .line 2088
    :cond_8e
    :goto_8e
    iget-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {p1}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 2090
    :cond_93
    return-void
.end method

.method public blacklist setPredictiveBackImeHideAnimInProgress(Z)V
    .registers 6

    .line 1149
    iput-boolean p1, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    .line 1150
    if-eqz p1, :cond_2a

    .line 1156
    iget-object p1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_c
    if-ltz p1, :cond_2a

    .line 1157
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->mRunner:Landroid/view/InsetsAnimationControlRunner;

    .line 1158
    invoke-interface {v1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_27

    .line 1159
    invoke-interface {v1, v0}, Landroid/view/InsetsAnimationControlRunner;->updateLayoutInsetsDuringAnimation(I)V

    .line 1160
    goto :goto_2a

    .line 1156
    :cond_27
    add-int/lit8 p1, p1, -0x1

    goto :goto_c

    .line 1164
    :cond_2a
    :goto_2a
    return-void
.end method

.method public blacklist setRequestedVisibleTypes(II)V
    .registers 5

    .line 1832
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    .line 1833
    iget p2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    if-eq p2, p1, :cond_40

    .line 1834
    iget p2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr p2, v0

    if-nez p2, :cond_29

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    and-int/2addr p2, p1

    if-eqz p2, :cond_29

    .line 1838
    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->getImeBackCallbackProxy()Landroid/window/ImeBackCallbackProxy;

    move-result-object p2

    .line 1839
    invoke-virtual {p2}, Landroid/window/ImeBackCallbackProxy;->undoPreliminaryClear()V

    .line 1841
    :cond_29
    sget-object p2, Landroid/view/ViewProtoLogGroups;->IME_INSETS_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1842
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1841
    const-string v1, "Setting requestedVisibleTypes to %d (was %d)"

    invoke-static {p2, v1, v0}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1843
    iput p1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    .line 1845
    :cond_40
    return-void
.end method

.method public whitelist setSystemBarsAppearance(II)V
    .registers 4

    .line 2040
    iget v0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    .line 2041
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    .line 2042
    return-void
.end method

.method public blacklist setSystemBarsAppearanceFromResource(II)V
    .registers 5

    .line 2047
    iget v0, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    .line 2050
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v1, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    not-int v1, v1

    and-int/2addr p2, v1

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    .line 2051
    return-void
.end method

.method public whitelist setSystemBarsBehavior(I)V
    .registers 3

    .line 2094
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    .line 2095
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->setSystemBarsBehavior(I)V

    .line 2096
    return-void
.end method

.method public blacklist setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 2

    .line 1550
    iput-object p1, p0, Landroid/view/InsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 1551
    return-void
.end method

.method public whitelist show(I)V
    .registers 3

    .line 1172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->show(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1173
    return-void
.end method

.method public blacklist show(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 15

    .line 1176
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 1177
    sget-object v0, Landroid/view/ViewProtoLogGroups;->IME_INSETS_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string/jumbo v3, "show(ime())"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    if-nez p2, :cond_26

    .line 1180
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p2

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1183
    invoke-interface {v0}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v0

    .line 1180
    const/4 v3, 0x5

    const/16 v4, 0x1a

    invoke-interface {p2, v1, v3, v4, v0}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p2

    .line 1187
    :cond_26
    const-string v0, "IC.showRequestFromApi"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v0, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1188
    const-string v0, "IC.showRequestFromApiToImeReady"

    invoke-static {v3, v4, v0, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1193
    nop

    .line 1194
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    .line 1195
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    .line 1194
    invoke-virtual {v0, v3, v4}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v0

    .line 1196
    sget-object v3, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v4, v3

    move v5, v2

    move v6, v5

    :goto_48
    if-ge v5, v4, :cond_95

    aget v7, v3, v5

    .line 1197
    and-int v8, p1, v7

    if-nez v8, :cond_51

    .line 1198
    goto :goto_92

    .line 1201
    :cond_51
    invoke-virtual {p0, v7}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v8

    .line 1202
    iget v9, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v9, v7

    if-eqz v9, :cond_5c

    move v9, v1

    goto :goto_5d

    :cond_5c
    move v9, v2

    .line 1203
    :goto_5d
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v10

    if-ne v7, v10, :cond_65

    move v10, v1

    goto :goto_66

    :cond_65
    move v10, v2

    .line 1204
    :goto_66
    if-eqz v9, :cond_71

    if-eqz v10, :cond_6c

    if-eqz v0, :cond_71

    :cond_6c
    const/4 v9, -0x1

    if-ne v8, v9, :cond_71

    move v9, v1

    goto :goto_72

    :cond_71
    move v9, v2

    .line 1206
    :goto_72
    if-nez v8, :cond_76

    move v8, v1

    goto :goto_77

    :cond_76
    move v8, v2

    .line 1207
    :goto_77
    const/16 v11, 0x20

    if-nez v9, :cond_89

    if-eqz v8, :cond_7e

    goto :goto_89

    .line 1221
    :cond_7e
    if-eqz v10, :cond_87

    .line 1222
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v8

    invoke-interface {v8, p2, v11}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1225
    :cond_87
    or-int/2addr v6, v7

    goto :goto_92

    .line 1215
    :cond_89
    :goto_89
    if-eqz v10, :cond_92

    .line 1216
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v7

    invoke-interface {v7, p2, v11}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1196
    :cond_92
    :goto_92
    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 1230
    :cond_95
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    and-int/2addr p1, v6

    if-eqz p1, :cond_a8

    .line 1232
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object p1

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1234
    :cond_a8
    invoke-virtual {p0, v6, v1, v2, p2}, Landroid/view/InsetsController;->applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1235
    return-void
.end method

.method public blacklist startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/view/InsetsAnimationControlRunner;",
            ":",
            "Landroid/view/InternalInsetsAnimationController;",
            ">(TT;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/WindowInsetsAnimation;",
            "Landroid/view/WindowInsetsAnimation$Bounds;",
            ")V"
        }
    .end annotation

    .line 1988
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 1989
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->addOnPreDrawRunnable(Ljava/lang/Runnable;)V

    .line 2014
    return-void
.end method

.method public blacklist updateCompatSysUiVisibility()V
    .registers 6

    .line 1778
    iget-boolean v0, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    if-eqz v0, :cond_16

    .line 1779
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    .line 1780
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v1, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    iget v2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iget v3, p0, Landroid/view/InsetsController;->mControllableTypes:I

    iget v4, p0, Landroid/view/InsetsController;->mExistingTypes:I

    not-int v4, v4

    or-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/view/InsetsController$Host;->updateCompatSysUiVisibility(III)V

    .line 1784
    :cond_16
    return-void
.end method
