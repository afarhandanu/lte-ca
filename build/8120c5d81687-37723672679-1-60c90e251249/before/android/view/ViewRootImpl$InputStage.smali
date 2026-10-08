.class abstract Landroid/view/ViewRootImpl$InputStage;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "InputStage"
.end annotation


# static fields
.field protected static final greylist-max-o FINISH_HANDLED:I = 0x1

.field protected static final greylist-max-o FINISH_NOT_HANDLED:I = 0x2

.field protected static final greylist-max-o FORWARD:I


# instance fields
.field private final greylist-max-o mNext:Landroid/view/ViewRootImpl$InputStage;

.field private blacklist mTracePrefix:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 7464
    iput-object p1, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7465
    iput-object p2, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    .line 7466
    return-void
.end method

.method private blacklist traceEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;J)V
    .registers 6

    .line 7615
    invoke-static {p2, p3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 7616
    return-void

    .line 7619
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mTracePrefix:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 7620
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mTracePrefix:Ljava/lang/String;

    .line 7622
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl$InputStage;->mTracePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7623
    invoke-virtual {p1}, Landroid/view/InputEvent;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7622
    invoke-static {p2, p3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7624
    return-void
.end method


# virtual methods
.method protected greylist-max-o apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V
    .registers 5

    .line 7510
    if-nez p2, :cond_6

    .line 7511
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_14

    .line 7512
    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_d

    .line 7513
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_14

    .line 7514
    :cond_d
    const/4 v0, 0x2

    if-ne p2, v0, :cond_15

    .line 7515
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 7519
    :goto_14
    return-void

    .line 7517
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final greylist-max-o deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 5

    .line 7472
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    .line 7473
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_25

    .line 7474
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7475
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_25

    .line 7477
    :cond_15
    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewRootImpl$InputStage;->traceEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;J)V

    .line 7480
    :try_start_1a
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v2
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_26

    .line 7482
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7483
    nop

    .line 7484
    invoke-virtual {p0, p1, v2}, Landroid/view/ViewRootImpl$InputStage;->apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V

    .line 7486
    :goto_25
    return-void

    .line 7482
    :catchall_26
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7483
    throw p1
.end method

.method greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 7601
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_9

    .line 7602
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7604
    :cond_9
    return-void
.end method

.method protected greylist-max-o finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V
    .registers 4

    .line 7492
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 7493
    if-eqz p2, :cond_e

    .line 7494
    iget p2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 7496
    :cond_e
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7497
    return-void
.end method

.method protected greylist-max-o forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 2

    .line 7503
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7504
    return-void
.end method

.method greylist-max-o isBack(Landroid/view/InputEvent;)Z
    .registers 4

    .line 7607
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 7608
    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 7610
    :cond_10
    return v1
.end method

.method protected greylist-max-o onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 3

    .line 7536
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_a

    .line 7537
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_f

    .line 7539
    :cond_a
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mfinishInputEvent(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7541
    :goto_f
    return-void
.end method

.method protected greylist-max-o onDetachedFromWindow()V
    .registers 2

    .line 7555
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_9

    .line 7556
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$InputStage;->onDetachedFromWindow()V

    .line 7558
    :cond_9
    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 2

    .line 7526
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o onWindowFocusChanged(Z)V
    .registers 3

    .line 7544
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_9

    .line 7545
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->onWindowFocusChanged(Z)V

    .line 7547
    :cond_9
    sget-object v0, Landroid/window/DesktopExperienceFlags;->DEFER_RESUME_FOCUS_IN_NON_FOCUSED_WINDOW:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 7548
    if-eqz p1, :cond_32

    iget-object p1, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->-$$Nest$misInTouchMode(Landroid/view/ViewRootImpl;)Z

    move-result p1

    if-nez p1, :cond_32

    iget-object p1, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz p1, :cond_32

    iget-object p1, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_32

    .line 7549
    iget-object p1, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 7552
    :cond_32
    return-void
.end method

.method protected greylist-max-o shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z
    .registers 8

    .line 7561
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_c0

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v0, :cond_f

    goto/16 :goto_c0

    .line 7569
    :cond_f
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    const/4 v2, 0x0

    if-nez v0, :cond_35

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$InputStage;->isBack(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7570
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 7571
    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$misAutofillUiShowing(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 7575
    const-string/jumbo v0, "no window focus"

    goto :goto_62

    .line 7576
    :cond_35
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v0, :cond_3f

    .line 7577
    const-string/jumbo v0, "window is stopped"

    goto :goto_62

    .line 7578
    :cond_3f
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    if-eqz v0, :cond_51

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7579
    invoke-virtual {v0, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_51

    .line 7580
    const-string/jumbo v0, "non-button event in ambient mode"

    goto :goto_62

    .line 7581
    :cond_51
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v0, :cond_bf

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$InputStage;->isBack(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_bf

    .line 7582
    const-string/jumbo v0, "paused for transition"

    .line 7588
    :goto_62
    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    move-result v3

    const-string v4, "):"

    if-eqz v3, :cond_98

    .line 7590
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->cancel()V

    .line 7591
    iget-object v1, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelling event ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7592
    return v2

    .line 7596
    :cond_98
    iget-object v2, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping event ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7597
    return v1

    .line 7585
    :cond_bf
    return v2

    .line 7562
    :cond_c0
    :goto_c0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping event due to root view being removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7563
    return v1
.end method
