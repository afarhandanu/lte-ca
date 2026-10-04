.class Landroid/view/InsetsAnimationThreadControlRunner$2;
.super Ljava/lang/Object;
.source "InsetsAnimationThreadControlRunner.java"

# interfaces
.implements Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsAnimationThreadControlRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mTmpFloat9:[F


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsAnimationThreadControlRunner;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Landroid/view/InsetsAnimationThreadControlRunner$2;->mTmpFloat9:[F

    return-void
.end method


# virtual methods
.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 6

    .line 104
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 105
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_14

    .line 106
    aget-object v2, p1, v1

    iget-object v3, p0, Landroid/view/InsetsAnimationThreadControlRunner$2;->mTmpFloat9:[F

    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    .line 105
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 108
    :cond_14
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 109
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 110
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 111
    return-void
.end method
