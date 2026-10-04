.class public Landroid/view/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final blacklist IMF_IME_ANIM_CANCEL:I = 0x7d08

.field public static final blacklist IMF_IME_ANIM_FINISH:I = 0x7d07

.field public static final blacklist IMF_IME_ANIM_START:I = 0x7d06

.field public static final blacklist IMF_IME_REMOTE_ANIM_CANCEL:I = 0x7d0b

.field public static final blacklist IMF_IME_REMOTE_ANIM_END:I = 0x7d0a

.field public static final blacklist IMF_IME_REMOTE_ANIM_START:I = 0x7d09

.field public static final blacklist SURFACEVIEW_CALLBACK:I = 0xea66

.field public static final blacklist SURFACEVIEW_LAYOUT:I = 0xea65

.field public static final blacklist VIEWROOT_DRAW_EVENT:I = 0xea64

.field public static final blacklist VIEW_ENQUEUE_INPUT_EVENT:I = 0xf232


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeImfImeAnimCancel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 3

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x7d08

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 53
    return-void
.end method

.method public static blacklist writeImfImeAnimFinish(Ljava/lang/String;IFILjava/lang/String;)V
    .registers 5

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x7d07

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 49
    return-void
.end method

.method public static blacklist writeImfImeAnimStart(Ljava/lang/String;IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x7d06

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 45
    return-void
.end method

.method public static blacklist writeImfImeRemoteAnimCancel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 3

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x7d0b

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 65
    return-void
.end method

.method public static blacklist writeImfImeRemoteAnimEnd(Ljava/lang/String;IIFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array/range {p0 .. p7}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x7d0a

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 61
    return-void
.end method

.method public static blacklist writeImfImeRemoteAnimStart(Ljava/lang/String;IIFFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    filled-new-array/range {p0 .. p9}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x7d09

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 57
    return-void
.end method

.method public static blacklist writeSurfaceviewCallback(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 80
    const v0, 0xea66

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 81
    return-void
.end method

.method public static blacklist writeSurfaceviewLayout(Ljava/lang/String;IIIILjava/lang/String;III)V
    .registers 9

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    filled-new-array/range {p0 .. p8}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0xea65

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 77
    return-void
.end method

.method public static blacklist writeViewEnqueueInputEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 68
    const v0, 0xf232

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 69
    return-void
.end method

.method public static blacklist writeViewrootDrawEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 72
    const v0, 0xea64

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 73
    return-void
.end method
