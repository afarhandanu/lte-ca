.class public Landroid/view/InsetsResizeAnimationRunner;
.super Ljava/lang/Object;
.source "InsetsResizeAnimationRunner.java"

# interfaces
.implements Landroid/view/InsetsAnimationControlRunner;
.implements Landroid/view/InternalInsetsAnimationController;
.implements Landroid/view/WindowInsetsAnimationControlListener;


# instance fields
.field private final blacklist mAnimation:Landroid/view/WindowInsetsAnimation;

.field private blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mCancelled:Z

.field private final blacklist mController:Landroid/view/InsetsAnimationControlCallbacks;

.field private blacklist mFinished:Z

.field private final blacklist mFromState:Landroid/view/InsetsState;

.field private final blacklist mToState:Landroid/view/InsetsState;

.field private final blacklist mTypes:I


# direct methods
.method public static synthetic blacklist $r8$lambda$ISS11IaXBeR3DU0xwVF986dFNKU(Landroid/view/InsetsResizeAnimationRunner;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsResizeAnimationRunner;->lambda$onReady$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmController(Landroid/view/InsetsResizeAnimationRunner;)Landroid/view/InsetsAnimationControlCallbacks;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFinished(Landroid/view/InsetsResizeAnimationRunner;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/animation/Interpolator;JILandroid/view/InsetsAnimationControlCallbacks;)V
    .registers 11

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p3, p0, Landroid/view/InsetsResizeAnimationRunner;->mFromState:Landroid/view/InsetsState;

    .line 74
    iput-object p4, p0, Landroid/view/InsetsResizeAnimationRunner;->mToState:Landroid/view/InsetsState;

    .line 75
    iput p8, p0, Landroid/view/InsetsResizeAnimationRunner;->mTypes:I

    .line 76
    iput-object p9, p0, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    .line 77
    new-instance v0, Landroid/view/WindowInsetsAnimation;

    invoke-direct {v0, p8, p5, p6, p7}, Landroid/view/WindowInsetsAnimation;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    .line 78
    iget-object p5, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    const/high16 p6, 0x3f800000    # 1.0f

    invoke-virtual {p5, p6}, Landroid/view/WindowInsetsAnimation;->setAlpha(F)V

    .line 79
    const/4 p5, 0x0

    invoke-virtual {p3, p1, p2, p8, p5}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p3

    .line 81
    invoke-virtual {p4, p1, p2, p8, p5}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p1

    .line 83
    move p7, p8

    iget-object p8, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    move-object p4, p9

    new-instance p9, Landroid/view/WindowInsetsAnimation$Bounds;

    .line 84
    invoke-static {p3, p1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {p3, p1}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p1

    invoke-direct {p9, p2, p1}, Landroid/view/WindowInsetsAnimation$Bounds;-><init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V

    .line 83
    move-object p6, p0

    move-object p5, p0

    invoke-interface/range {p4 .. p9}, Landroid/view/InsetsAnimationControlCallbacks;->startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V

    .line 85
    return-void
.end method

.method private synthetic blacklist lambda$onReady$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 149
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    .line 150
    iget-object p1, p0, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    invoke-interface {p1, p0}, Landroid/view/InsetsAnimationControlCallbacks;->scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V

    .line 151
    return-void
.end method


# virtual methods
.method public blacklist applyChangeInsets(Landroid/view/InsetsState;)Z
    .registers 6

    .line 165
    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    if-eqz v0, :cond_6

    .line 166
    const/4 p1, 0x0

    return p1

    .line 168
    :cond_6
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v0

    .line 169
    iget-object v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFromState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mToState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsResizeAnimationRunner$2;

    invoke-direct {v3, p0, v0, p1}, Landroid/view/InsetsResizeAnimationRunner$2;-><init>(Landroid/view/InsetsResizeAnimationRunner;FLandroid/view/InsetsState;)V

    invoke-static {v1, v2, v3}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    .line 189
    iget-boolean p1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    if-eqz p1, :cond_22

    .line 190
    iget-object p1, p0, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Landroid/view/InsetsAnimationControlCallbacks;->notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 192
    :cond_22
    iget-boolean p1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    return p1
.end method

.method public blacklist cancel()V
    .registers 2

    .line 126
    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    if-eqz v0, :cond_9

    goto :goto_16

    .line 129
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    .line 130
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_15

    .line 131
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 133
    :cond_15
    return-void

    .line 127
    :cond_16
    :goto_16
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 197
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 198
    const-wide v0, 0x10800000001L

    iget-boolean v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 199
    const-wide v0, 0x10800000002L

    iget-boolean v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 200
    const-wide v0, 0x10900000003L

    const-string/jumbo v2, "null"

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 201
    const-wide v0, 0x10900000004L

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 202
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v0

    const-wide v1, 0x10200000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 203
    const-wide v0, 0x10800000006L

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 204
    const-wide v0, 0x10200000007L

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 205
    const-wide v0, 0x10200000008L

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 206
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 207
    return-void
.end method

.method public whitelist finish(Z)V
    .registers 2

    .line 247
    return-void
.end method

.method public blacklist getAnimation()Landroid/view/WindowInsetsAnimation;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    return-object v0
.end method

.method public blacklist getAnimationType()I
    .registers 2

    .line 108
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getControllingTypes()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mTypes:I

    return v0
.end method

.method public whitelist getCurrentAlpha()F
    .registers 2

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCurrentFraction()F
    .registers 2

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCurrentInsets()Landroid/graphics/Insets;
    .registers 2

    .line 224
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getDurationMs()J
    .registers 3

    .line 274
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getHiddenStateInsets()Landroid/graphics/Insets;
    .registers 2

    .line 212
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getInsetsInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getShownStateInsets()Landroid/graphics/Insets;
    .registers 2

    .line 218
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
    .registers 2

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSurfaceParamsApplier()Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;
    .registers 2

    .line 114
    sget-object v0, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->DEFAULT:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    return-object v0
.end method

.method public whitelist getTypes()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mTypes:I

    return v0
.end method

.method public blacklist hasZeroInsetsIme()Z
    .registers 2

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isCancelled()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    return v0
.end method

.method public whitelist isFinished()Z
    .registers 2

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyControlRevoked(I)V
    .registers 2

    .line 256
    return-void
.end method

.method public whitelist onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .registers 2

    .line 292
    return-void
.end method

.method public whitelist onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .registers 2

    .line 288
    return-void
.end method

.method public whitelist onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .registers 5

    .line 143
    iget-boolean p1, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    if-eqz p1, :cond_5

    .line 144
    return-void

    .line 146
    :cond_5
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_36

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    .line 147
    iget-object p1, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p2}, Landroid/view/WindowInsetsAnimation;->getDurationMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 148
    iget-object p1, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/InsetsResizeAnimationRunner$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Landroid/view/InsetsResizeAnimationRunner$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsResizeAnimationRunner;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 152
    iget-object p1, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/InsetsResizeAnimationRunner$1;

    invoke-direct {p2, p0}, Landroid/view/InsetsResizeAnimationRunner$1;-><init>(Landroid/view/InsetsResizeAnimationRunner;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 160
    iget-object p1, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 161
    return-void

    :array_36
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public whitelist setInsetsAndAlpha(Landroid/graphics/Insets;FF)V
    .registers 4

    .line 243
    return-void
.end method

.method public blacklist setReadyDispatched(Z)V
    .registers 2

    .line 284
    return-void
.end method

.method public blacklist updateLayoutInsetsDuringAnimation(I)V
    .registers 2

    .line 297
    return-void
.end method

.method public blacklist updateSurfacePosition(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 260
    return-void
.end method

.method public blacklist willUpdateSurface()Z
    .registers 2

    .line 264
    const/4 v0, 0x0

    return v0
.end method
