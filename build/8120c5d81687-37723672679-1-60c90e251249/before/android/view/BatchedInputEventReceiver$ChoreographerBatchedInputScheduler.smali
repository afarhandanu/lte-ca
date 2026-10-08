.class Landroid/view/BatchedInputEventReceiver$ChoreographerBatchedInputScheduler;
.super Ljava/lang/Object;
.source "BatchedInputEventReceiver.java"

# interfaces
.implements Landroid/view/BatchedInputEventReceiver$BatchedInputScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/BatchedInputEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChoreographerBatchedInputScheduler"
.end annotation


# instance fields
.field private blacklist mChoreographer:Landroid/view/Choreographer;


# direct methods
.method constructor blacklist <init>(Landroid/view/Choreographer;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/view/BatchedInputEventReceiver$ChoreographerBatchedInputScheduler;->mChoreographer:Landroid/view/Choreographer;

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist getFrameTimeNanos()J
    .registers 3

    .line 66
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver$ChoreographerBatchedInputScheduler;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist postCallback(Ljava/lang/Runnable;)V
    .registers 5

    .line 56
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver$ChoreographerBatchedInputScheduler;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public blacklist removeCallbacks(Ljava/lang/Runnable;)V
    .registers 5

    .line 61
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver$ChoreographerBatchedInputScheduler;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 62
    return-void
.end method
