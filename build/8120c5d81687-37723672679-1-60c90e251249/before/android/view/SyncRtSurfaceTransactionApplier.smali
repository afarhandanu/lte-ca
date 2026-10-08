.class public Landroid/view/SyncRtSurfaceTransactionApplier;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_ALL:I = -0x1

.field public static final blacklist FLAG_ALPHA:I = 0x1

.field public static final blacklist FLAG_BACKGROUND_BLUR_RADIUS:I = 0x20

.field public static final blacklist FLAG_BACKGROUND_BLUR_SCALE:I = 0x40

.field public static final blacklist FLAG_CORNER_RADIUS:I = 0x10

.field public static final blacklist FLAG_EARLY_WAKEUP_END:I = 0x400

.field public static final blacklist FLAG_EARLY_WAKEUP_START:I = 0x200

.field public static final blacklist FLAG_LAYER:I = 0x8

.field public static final blacklist FLAG_MATRIX:I = 0x2

.field public static final blacklist FLAG_OPAQUE:I = 0x800

.field public static final blacklist FLAG_TRANSACTION:I = 0x100

.field public static final blacklist FLAG_VISIBILITY:I = 0x80

.field public static final blacklist FLAG_WINDOW_CROP:I = 0x4


# instance fields
.field private blacklist mTargetSc:Landroid/view/SurfaceControl;

.field private final blacklist mTargetViewRootImpl:Landroid/view/ViewRootImpl;

.field private final blacklist mTmpFloat9:[F


# direct methods
.method public static synthetic blacklist $r8$lambda$afI4fXg3U3-nBZQEDQMiNy-B06s(Landroid/view/SyncRtSurfaceTransactionApplier;Landroid/view/SurfaceControl$Transaction;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SyncRtSurfaceTransactionApplier;->lambda$scheduleApply$0(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTmpFloat9:[F

    .line 57
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    .line 58
    return-void
.end method

.method public static blacklist applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V
    .registers 5

    .line 110
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_d

    .line 111
    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->mergeTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 114
    :cond_d
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    .line 115
    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 117
    :cond_1c
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result p2

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2b

    .line 118
    iget-object p2, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 120
    :cond_2b
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result p2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_3a

    .line 121
    iget-object p2, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->alpha:F

    invoke-virtual {p0, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 123
    :cond_3a
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result p2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_49

    .line 124
    iget-object p2, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->layer:I

    invoke-virtual {p0, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 126
    :cond_49
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result p2

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_58

    .line 127
    iget-object p2, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->cornerRadius:F

    invoke-virtual {p0, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 129
    :cond_58
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result p2

    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_67

    .line 130
    iget-object p2, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->backgroundBlurRadius:I

    invoke-virtual {p0, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 132
    :cond_67
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result p2

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_76

    .line 133
    iget-object p2, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->backgroundBlurScale:F

    invoke-virtual {p0, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurScale(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 135
    :cond_76
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result p2

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_8d

    .line 136
    iget-boolean p2, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->visible:Z

    if-eqz p2, :cond_88

    .line 137
    iget-object p2, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8d

    .line 139
    :cond_88
    iget-object p2, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 142
    :cond_8d
    :goto_8d
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result p2

    and-int/lit16 p2, p2, 0x200

    if-eqz p2, :cond_9a

    .line 143
    iget-object p2, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->earlyWakeupInfo:Landroid/gui/EarlyWakeupInfo;

    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupStart(Landroid/gui/EarlyWakeupInfo;)Landroid/view/SurfaceControl$Transaction;

    .line 145
    :cond_9a
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result p2

    and-int/lit16 p2, p2, 0x400

    if-eqz p2, :cond_a7

    .line 146
    iget-object p2, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->earlyWakeupInfo:Landroid/gui/EarlyWakeupInfo;

    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupEnd(Landroid/gui/EarlyWakeupInfo;)Landroid/view/SurfaceControl$Transaction;

    .line 148
    :cond_a7
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result p2

    and-int/lit16 p2, p2, 0x800

    if-eqz p2, :cond_b6

    .line 149
    iget-object p2, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-boolean p1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->opaque:Z

    invoke-virtual {p0, p2, p1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 151
    :cond_b6
    return-void
.end method

.method public static blacklist create(Landroid/view/View;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SyncRtSurfaceTransactionApplier;",
            ">;)V"
        }
    .end annotation

    .line 159
    if-nez p0, :cond_7

    .line 161
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1e

    .line 162
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 164
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {v0, p0}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1e

    .line 167
    :cond_16
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier$1;

    invoke-direct {v0, p0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$1;-><init>(Landroid/view/View;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 180
    :goto_1e
    return-void
.end method

.method private synthetic blacklist lambda$scheduleApply$0(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 5

    .line 74
    iget-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetSc:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetSc:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 79
    :cond_f
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 80
    return-void
.end method


# virtual methods
.method varargs blacklist applyParams(Landroid/view/SurfaceControl$Transaction;[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 6

    .line 93
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_11

    .line 94
    aget-object v1, p2, v0

    .line 95
    iget-object v2, v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    .line 96
    iget-object v2, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTmpFloat9:[F

    invoke-static {p1, v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    .line 93
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 98
    :cond_11
    return-void
.end method

.method blacklist applyTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 5

    .line 101
    iget-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_a

    .line 102
    iget-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_d

    .line 104
    :cond_a
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 106
    :goto_d
    return-void
.end method

.method public varargs blacklist scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 4

    .line 66
    iget-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_5

    .line 67
    return-void

    .line 69
    :cond_5
    iget-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetSc:Landroid/view/SurfaceControl;

    .line 70
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 71
    invoke-virtual {p0, v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 73
    iget-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$$ExternalSyntheticLambda0;-><init>(Landroid/view/SyncRtSurfaceTransactionApplier;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 83
    iget-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 84
    return-void
.end method
