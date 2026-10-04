.class final Landroid/view/ViewRootImpl$SyntheticInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticInputStage"
.end annotation


# instance fields
.field private final greylist-max-o mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

.field private final greylist-max-o mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

.field private final greylist-max-o mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

.field private final greylist-max-o mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8559
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 8560
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 8553
    new-instance p1, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p1, v0}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    .line 8554
    new-instance p1, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p1, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    .line 8555
    new-instance p1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p1, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .line 8557
    new-instance p1, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p1, v0}, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    .line 8561
    return-void
.end method


# virtual methods
.method protected greylist-max-o onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 4

    .line 8594
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_29

    .line 8596
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_29

    .line 8597
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 8598
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 8599
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1e

    .line 8600
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->cancel()V

    goto :goto_29

    .line 8601
    :cond_1e
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_28

    .line 8602
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$mcancel(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V

    goto :goto_29

    .line 8603
    :cond_28
    nop

    .line 8610
    :cond_29
    :goto_29
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 8611
    return-void
.end method

.method protected greylist-max-o onDetachedFromWindow()V
    .registers 2

    .line 8622
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$mcancel(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V

    .line 8623
    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 5

    .line 8565
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 8566
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    .line 8567
    iget-object p1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast p1, Landroid/view/MotionEvent;

    .line 8568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 8569
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_28

    .line 8572
    const v0, 0x20004

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 8573
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->process(Landroid/view/MotionEvent;)V

    .line 8575
    :cond_27
    return v1

    .line 8576
    :cond_28
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_32

    .line 8577
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->process(Landroid/view/MotionEvent;)V

    .line 8578
    return v1

    .line 8579
    :cond_32
    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4d

    .line 8581
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->process(Landroid/view/MotionEvent;)V

    .line 8582
    return v1

    .line 8584
    :cond_3d
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4d

    .line 8585
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    iget-object p1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;->process(Landroid/view/KeyEvent;)V

    .line 8586
    return v1

    .line 8584
    :cond_4d
    nop

    .line 8589
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o onWindowFocusChanged(Z)V
    .registers 2

    .line 8615
    if-nez p1, :cond_7

    .line 8616
    iget-object p1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$mcancel(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V

    .line 8618
    :cond_7
    return-void
.end method
