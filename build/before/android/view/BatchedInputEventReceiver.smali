.class public Landroid/view/BatchedInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "BatchedInputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/BatchedInputEventReceiver$ChoreographerBatchedInputScheduler;,
        Landroid/view/BatchedInputEventReceiver$BatchedInputScheduler;,
        Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;,
        Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;
    }
.end annotation


# instance fields
.field private final greylist-max-o mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

.field private greylist-max-o mBatchedInputScheduled:Z

.field private blacklist mBatchingEnabled:Z

.field private final blacklist mConsumeBatchedInputEvents:Ljava/lang/Runnable;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mScheduler:Landroid/view/BatchedInputEventReceiver$BatchedInputScheduler;

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScheduler(Landroid/view/BatchedInputEventReceiver;)Landroid/view/BatchedInputEventReceiver$BatchedInputScheduler;
    .registers 1

    iget-object p0, p0, Landroid/view/BatchedInputEventReceiver;->mScheduler:Landroid/view/BatchedInputEventReceiver$BatchedInputScheduler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Landroid/view/BatchedInputEventReceiver;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/BatchedInputEventReceiver;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/BatchedInputEventReceiver$BatchedInputScheduler;)V
    .registers 6

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 75
    new-instance v0, Landroid/view/BatchedInputEventReceiver$1;

    invoke-direct {v0, p0}, Landroid/view/BatchedInputEventReceiver$1;-><init>(Landroid/view/BatchedInputEventReceiver;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    .line 190
    new-instance v0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;-><init>(Landroid/view/BatchedInputEventReceiver;Landroid/view/BatchedInputEventReceiver-IA;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    .line 91
    iput-object p3, p0, Landroid/view/BatchedInputEventReceiver;->mScheduler:Landroid/view/BatchedInputEventReceiver$BatchedInputScheduler;

    .line 92
    const/4 p3, 0x1

    iput-boolean p3, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    .line 93
    invoke-virtual {p1}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/view/BatchedInputEventReceiver;->mTag:Ljava/lang/String;

    .line 94
    const-string p1, "mBatchingEnabled"

    iget-boolean p3, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    invoke-direct {p0, p1, p3}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    .line 95
    const-string p1, "mBatchedInputScheduled"

    iget-boolean p3, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    invoke-direct {p0, p1, p3}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    .line 96
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method public constructor greylist <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .registers 5

    .line 85
    new-instance v0, Landroid/view/BatchedInputEventReceiver$ChoreographerBatchedInputScheduler;

    invoke-direct {v0, p3}, Landroid/view/BatchedInputEventReceiver$ChoreographerBatchedInputScheduler;-><init>(Landroid/view/Choreographer;)V

    invoke-direct {p0, p1, p2, v0}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/BatchedInputEventReceiver$BatchedInputScheduler;)V

    .line 86
    return-void
.end method

.method private greylist-max-o scheduleBatchedInput()V
    .registers 3

    .line 158
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-nez v0, :cond_15

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    .line 160
    const-string v0, "mBatchedInputScheduled"

    iget-boolean v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    .line 161
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mScheduler:Landroid/view/BatchedInputEventReceiver$BatchedInputScheduler;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    invoke-interface {v0, v1}, Landroid/view/BatchedInputEventReceiver$BatchedInputScheduler;->postCallback(Ljava/lang/Runnable;)V

    .line 163
    :cond_15
    return-void
.end method

.method private blacklist traceBoolVariable(Ljava/lang/String;Z)V
    .registers 5

    .line 176
    const-wide/16 v0, 0x4

    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 177
    return-void
.end method

.method private greylist-max-o unscheduleBatchedInput()V
    .registers 3

    .line 166
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-eqz v0, :cond_15

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    .line 168
    const-string v0, "mBatchedInputScheduled"

    iget-boolean v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    .line 169
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mScheduler:Landroid/view/BatchedInputEventReceiver$BatchedInputScheduler;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    invoke-interface {v0, v1}, Landroid/view/BatchedInputEventReceiver$BatchedInputScheduler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    :cond_15
    return-void
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .registers 3

    .line 110
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->unscheduleBatchedInput()V

    .line 111
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 112
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 113
    return-void
.end method

.method protected greylist-max-o doConsumeBatchedInput(J)V
    .registers 5

    .line 143
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-eqz v0, :cond_1d

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    .line 145
    const-string v0, "mBatchedInputScheduled"

    iget-boolean v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    .line 146
    invoke-virtual {p0, p1, p2}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1d

    .line 152
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    .line 155
    :cond_1d
    return-void
.end method

.method public blacklist onBatchedInputEventPending(I)V
    .registers 4

    .line 101
    iget-boolean p1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    if-eqz p1, :cond_8

    .line 102
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    goto :goto_d

    .line 104
    :cond_8
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 106
    :goto_d
    return-void
.end method

.method public blacklist setBatchingEnabled(Z)V
    .registers 4

    .line 120
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    if-ne v0, p1, :cond_5

    .line 121
    return-void

    .line 124
    :cond_5
    iput-boolean p1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    .line 125
    const-string v0, "mBatchingEnabled"

    iget-boolean v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    .line 126
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 127
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    if-eqz p1, :cond_24

    .line 133
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    .line 136
    :cond_24
    if-nez p1, :cond_30

    .line 137
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->unscheduleBatchedInput()V

    .line 138
    iget-object p1, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    :cond_30
    return-void
.end method
