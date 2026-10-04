.class public final Landroid/view/DisplayEventReceiver$VsyncEventData;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VsyncEventData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    }
.end annotation


# static fields
.field static final blacklist FRAME_TIMELINES_CAPACITY:I = 0x7


# instance fields
.field public blacklist frameInterval:J

.field public final blacklist frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

.field public blacklist frameTimelinesLength:I

.field public blacklist numberQueuedBuffers:I

.field public blacklist preferredFrameTimelineIndex:I


# direct methods
.method constructor blacklist <init>()V
    .registers 4

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    .line 219
    const/4 v1, 0x1

    iput v1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    .line 221
    iput v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->numberQueuedBuffers:I

    .line 224
    const/4 v1, 0x7

    new-array v1, v1, [Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    iput-object v1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    .line 225
    nop

    :goto_15
    iget-object v1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 226
    iget-object v1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    new-instance v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    invoke-direct {v2}, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;-><init>()V

    aput-object v2, v1, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 228
    :cond_26
    return-void
.end method

.method constructor blacklist <init>([Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;IIJI)V
    .registers 9

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    .line 219
    const/4 v1, 0x1

    iput v1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    .line 221
    iput v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->numberQueuedBuffers:I

    .line 235
    iput-object p1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    .line 236
    iput p2, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    .line 237
    iput p3, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    .line 238
    iput-wide p4, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    .line 239
    iput p6, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->numberQueuedBuffers:I

    .line 240
    return-void
.end method


# virtual methods
.method blacklist copyFrom(Landroid/view/DisplayEventReceiver$VsyncEventData;)V
    .registers 5

    .line 243
    iget v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    iput v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    .line 244
    iget v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    iput v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    .line 245
    iget-wide v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    .line 246
    const/4 v0, 0x0

    :goto_d
    iget-object v1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 247
    iget-object v1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->copyFrom(Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 249
    :cond_20
    iget p1, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->numberQueuedBuffers:I

    iput p1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->numberQueuedBuffers:I

    .line 250
    return-void
.end method

.method public blacklist preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    .registers 3

    .line 253
    iget-object v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    iget v1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method
