.class public Landroid/view/Choreographer$FrameData;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameData"
.end annotation


# instance fields
.field private blacklist mFrameTimeNanos:J

.field private blacklist mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

.field private blacklist mInCallback:Z

.field private blacklist mPreferredFrameTimelineIndex:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 1401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1399
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    .line 1402
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/view/Choreographer$FrameData;->allocateFrameTimelines(I)V

    .line 1403
    return-void
.end method

.method private blacklist allocateFrameTimelines(I)V
    .registers 4

    .line 1443
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1445
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v0, v0

    if-eq v0, p1, :cond_24

    .line 1446
    :cond_e
    new-array p1, p1, [Landroid/view/Choreographer$FrameTimeline;

    iput-object p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    .line 1447
    const/4 p1, 0x0

    :goto_13
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v0, v0

    if-ge p1, v0, :cond_24

    .line 1448
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    new-instance v1, Landroid/view/Choreographer$FrameTimeline;

    invoke-direct {v1}, Landroid/view/Choreographer$FrameTimeline;-><init>()V

    aput-object v1, v0, p1

    .line 1447
    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    .line 1451
    :cond_24
    return-void
.end method

.method private blacklist checkInCallback()V
    .registers 3

    .line 1434
    iget-boolean v0, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    if-eqz v0, :cond_5

    .line 1438
    return-void

    .line 1435
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FrameData is not valid outside of the vsync callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getFrameTimeNanos()J
    .registers 3

    .line 1407
    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    .line 1408
    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method public whitelist getFrameTimelines()[Landroid/view/Choreographer$FrameTimeline;
    .registers 2

    .line 1415
    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    .line 1416
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    return-object v0
.end method

.method public whitelist getPreferredFrameTimeline()Landroid/view/Choreographer$FrameTimeline;
    .registers 3

    .line 1422
    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    .line 1423
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v1, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method blacklist setInCallback(Z)V
    .registers 4

    .line 1427
    iput-boolean p1, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    .line 1428
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 1429
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/view/Choreographer$FrameTimeline;->setInCallback(Z)V

    .line 1428
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1431
    :cond_12
    return-void
.end method

.method blacklist update(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$FrameTimeline;
    .registers 12

    .line 1459
    iget v0, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    invoke-direct {p0, v0}, Landroid/view/Choreographer$FrameData;->allocateFrameTimelines(I)V

    .line 1460
    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    .line 1461
    iget p1, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    iput p1, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    .line 1462
    const/4 p1, 0x0

    :goto_c
    iget-object p2, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length p2, p2

    if-ge p1, p2, :cond_25

    .line 1463
    iget-object p2, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    aget-object p2, p2, p1

    .line 1465
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object v1, v0, p1

    iget-wide v2, p2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iget-wide v4, p2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    iget-wide v6, p2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    invoke-virtual/range {v1 .. v7}, Landroid/view/Choreographer$FrameTimeline;->update(JJJ)V

    .line 1462
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 1468
    :cond_25
    iget-object p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget p2, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object p1, p1, p2

    return-object p1
.end method

.method blacklist update(JLandroid/view/DisplayEventReceiver;J)Landroid/view/Choreographer$FrameTimeline;
    .registers 10

    .line 1478
    nop

    .line 1479
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v1, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v0

    add-long/2addr v0, p4

    const/4 p4, 0x0

    .line 1484
    :goto_d
    iget-object p5, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length p5, p5

    add-int/lit8 p5, p5, -0x1

    if-ge p4, p5, :cond_23

    iget-object p5, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object p5, p5, p4

    invoke-static {p5}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v2

    cmp-long p5, v2, v0

    if-gez p5, :cond_23

    .line 1486
    add-int/lit8 p4, p4, 0x1

    goto :goto_d

    .line 1489
    :cond_23
    iget-object p5, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object p5, p5, p4

    invoke-static {p5}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v2

    .line 1490
    invoke-static {}, Landroid/view/Choreographer;->-$$Nest$sfgetUSE_VSYNC()Z

    move-result p5

    if-eqz p5, :cond_48

    cmp-long p5, v2, v0

    if-gez p5, :cond_48

    .line 1491
    nop

    .line 1492
    invoke-virtual {p3}, Landroid/view/DisplayEventReceiver;->getLatestVsyncEventData()Landroid/view/DisplayEventReceiver$VsyncEventData;

    move-result-object p3

    .line 1493
    if-nez p3, :cond_44

    .line 1494
    const-string p1, "Choreographer"

    const-string p2, "Could not get latest VsyncEventData. Did SurfaceFlinger crash?"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 1496
    :cond_44
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$FrameTimeline;

    .line 1498
    :goto_47
    goto :goto_4b

    .line 1499
    :cond_48
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/Choreographer$FrameData;->update(JI)V

    .line 1501
    :goto_4b
    iget-object p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget p2, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object p1, p1, p2

    return-object p1
.end method

.method blacklist update(JI)V
    .registers 4

    .line 1505
    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    .line 1506
    iput p3, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    .line 1507
    return-void
.end method
