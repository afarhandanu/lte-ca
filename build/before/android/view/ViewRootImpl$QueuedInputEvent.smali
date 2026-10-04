.class final Landroid/view/ViewRootImpl$QueuedInputEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueuedInputEvent"
.end annotation


# static fields
.field public static final greylist-max-o FLAG_DEFERRED:I = 0x2

.field public static final greylist-max-o FLAG_DELIVER_POST_IME:I = 0x1

.field public static final greylist-max-o FLAG_FINISHED:I = 0x4

.field public static final greylist-max-o FLAG_FINISHED_HANDLED:I = 0x8

.field public static final blacklist FLAG_MODIFIED_FOR_COMPATIBILITY:I = 0x40

.field public static final blacklist FLAG_PRE_IME_ONLY:I = 0x80

.field public static final greylist-max-o FLAG_RESYNTHESIZED:I = 0x10

.field public static final greylist-max-o FLAG_UNHANDLED:I = 0x20


# instance fields
.field public greylist-max-o mEvent:Landroid/view/InputEvent;

.field public greylist-max-o mFlags:I

.field public greylist-max-o mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field public greylist-max-o mReceiver:Landroid/view/InputEventReceiver;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 10475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>()V

    return-void
.end method

.method private greylist-max-o flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z
    .registers 6

    .line 10536
    iget v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_12

    .line 10537
    if-eqz p3, :cond_d

    .line 10538
    const-string/jumbo p2, "|"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10540
    :cond_d
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10541
    const/4 p1, 0x1

    return p1

    .line 10543
    :cond_12
    return p3
.end method


# virtual methods
.method public blacklist forPreImeOnly()Z
    .registers 2

    .line 10492
    iget v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 10493
    const/4 v0, 0x1

    return v0

    .line 10495
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o shouldSendToSynthesizer()Z
    .registers 2

    .line 10507
    iget v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 10508
    const/4 v0, 0x1

    return v0

    .line 10511
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o shouldSkipIme()Z
    .registers 4

    .line 10499
    iget v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 10500
    return v1

    .line 10502
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 10503
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 10502
    :goto_18
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 10516
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QueuedInputEvent{flags="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10517
    nop

    .line 10518
    const-string v1, "DELIVER_POST_IME"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v1

    .line 10519
    const-string v2, "DEFERRED"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v1

    .line 10520
    const-string v2, "FINISHED"

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v1

    .line 10521
    const-string v2, "FINISHED_HANDLED"

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v1

    .line 10522
    const-string v2, "RESYNTHESIZED"

    const/16 v3, 0x10

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v1

    .line 10523
    const-string v2, "UNHANDLED"

    const/16 v3, 0x20

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v1

    .line 10524
    const-string v2, "FLAG_PRE_IME_ONLY"

    const/16 v3, 0x80

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v1

    .line 10525
    if-nez v1, :cond_45

    .line 10526
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10528
    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hasNextQueuedEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const-string/jumbo v3, "true"

    const-string v4, "false"

    if-eqz v2, :cond_5b

    move-object v2, v3

    goto :goto_5c

    :cond_5b
    move-object v2, v4

    :goto_5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hasInputEventReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v2, :cond_77

    goto :goto_78

    :cond_77
    move-object v3, v4

    :goto_78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
