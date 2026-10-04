.class public Landroid/webkit/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final greylist-max-o BROWSER_DOUBLE_TAP_DURATION:I = 0x111d6

.field public static final greylist-max-o BROWSER_SNAP_CENTER:I = 0x11206

.field public static final greylist-max-o BROWSER_ZOOM_LEVEL_CHANGE:I = 0x111d5

.field public static final greylist-max-o EXP_DET_ATTEMPT_TO_CALL_OBJECT_GETCLASS:I = 0x11207


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o writeBrowserDoubleTapDuration(IJ)V
    .registers 3

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x111d6

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 31
    return-void
.end method

.method public static greylist-max-o writeBrowserSnapCenter()V
    .registers 2

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x11206

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 35
    return-void
.end method

.method public static greylist-max-o writeBrowserZoomLevelChange(IIJ)V
    .registers 4

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x111d5

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 27
    return-void
.end method

.method public static greylist-max-o writeExpDetAttemptToCallObjectGetclass(Ljava/lang/String;)V
    .registers 2

    .line 38
    const v0, 0x11207

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 39
    return-void
.end method
