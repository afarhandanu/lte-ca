.class public Landroid/view/Choreographer$FrameTimeline;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameTimeline"
.end annotation


# instance fields
.field private blacklist mDeadlineNanos:J

.field private blacklist mExpectedPresentationTimeNanos:J

.field private blacklist mInCallback:Z

.field private blacklist mVsyncId:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mDeadlineNanos:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpectedPresentationTimeNanos(Landroid/view/Choreographer$FrameTimeline;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mExpectedPresentationTimeNanos:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVsyncId(Landroid/view/Choreographer$FrameTimeline;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mVsyncId:J

    return-wide v0
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1337
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mVsyncId:J

    .line 1338
    iput-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mExpectedPresentationTimeNanos:J

    .line 1339
    iput-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mDeadlineNanos:J

    .line 1340
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Choreographer$FrameTimeline;->mInCallback:Z

    .line 1344
    return-void
.end method

.method private blacklist checkInCallback()V
    .registers 3

    .line 1351
    iget-boolean v0, p0, Landroid/view/Choreographer$FrameTimeline;->mInCallback:Z

    if-eqz v0, :cond_5

    .line 1355
    return-void

    .line 1352
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FrameTimeline is not valid outside of the vsync callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getDeadlineNanos()J
    .registers 3

    .line 1385
    invoke-direct {p0}, Landroid/view/Choreographer$FrameTimeline;->checkInCallback()V

    .line 1386
    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mDeadlineNanos:J

    return-wide v0
.end method

.method public whitelist getExpectedPresentationTimeNanos()J
    .registers 3

    .line 1377
    invoke-direct {p0}, Landroid/view/Choreographer$FrameTimeline;->checkInCallback()V

    .line 1378
    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mExpectedPresentationTimeNanos:J

    return-wide v0
.end method

.method public whitelist getVsyncId()J
    .registers 3

    .line 1368
    invoke-direct {p0}, Landroid/view/Choreographer$FrameTimeline;->checkInCallback()V

    .line 1369
    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mVsyncId:J

    return-wide v0
.end method

.method blacklist setInCallback(Z)V
    .registers 2

    .line 1347
    iput-boolean p1, p0, Landroid/view/Choreographer$FrameTimeline;->mInCallback:Z

    .line 1348
    return-void
.end method

.method blacklist update(JJJ)V
    .registers 7

    .line 1358
    iput-wide p1, p0, Landroid/view/Choreographer$FrameTimeline;->mVsyncId:J

    .line 1359
    iput-wide p3, p0, Landroid/view/Choreographer$FrameTimeline;->mExpectedPresentationTimeNanos:J

    .line 1360
    iput-wide p5, p0, Landroid/view/Choreographer$FrameTimeline;->mDeadlineNanos:J

    .line 1361
    return-void
.end method
