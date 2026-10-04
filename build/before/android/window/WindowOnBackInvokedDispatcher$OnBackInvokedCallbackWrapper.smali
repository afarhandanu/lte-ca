.class Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;
.super Landroid/window/IOnBackInvokedCallback$Stub;
.source "WindowOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnBackInvokedCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/window/OnBackInvokedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mOnKeyPreIme:Ljava/util/function/BooleanSupplier;

.field private final blacklist mProgressAnimator:Landroid/window/BackProgressAnimator;

.field private final blacklist mTouchTracker:Landroid/window/BackTouchTracker;

.field final synthetic blacklist this$0:Landroid/window/WindowOnBackInvokedDispatcher;


# direct methods
.method public static synthetic blacklist $r8$lambda$4ToXODqn8sufRph7IG5pjjhTGhE(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackMotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackStarted$0(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BJWy4xCTrPYOsI_g__URDULXPQU(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/OnBackAnimationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackCancelled$2(Landroid/window/OnBackAnimationCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JSuRKE4c8OySpubol1Svl3F06wU(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackInvoked$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dfpwpJ0JlmOSOR9NCp4XQflxmkg(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackCancelled$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xk5ZmE8Y18cgIJ8lWS9VRoUYAZ8(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackMotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackProgressed$1(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/window/WindowOnBackInvokedDispatcher;Ljava/lang/ref/WeakReference;Landroid/window/BackTouchTracker;Landroid/window/BackProgressAnimator;Landroid/os/Handler;Ljava/util/function/BooleanSupplier;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/window/OnBackInvokedCallback;",
            ">;",
            "Landroid/window/BackTouchTracker;",
            "Landroid/window/BackProgressAnimator;",
            "Landroid/os/Handler;",
            "Ljava/util/function/BooleanSupplier;",
            ")V"
        }
    .end annotation

    .line 644
    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->this$0:Landroid/window/WindowOnBackInvokedDispatcher;

    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Stub;-><init>()V

    .line 645
    iput-object p2, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 646
    iput-object p3, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    .line 647
    iput-object p4, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    .line 648
    iput-object p5, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    .line 649
    iput-object p6, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mOnKeyPreIme:Ljava/util/function/BooleanSupplier;

    .line 650
    return-void
.end method

.method private blacklist consumedByOnKeyPreIme()Z
    .registers 4

    .line 732
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    .line 733
    instance-of v1, v0, Landroid/view/ImeBackAnimationController;

    if-nez v1, :cond_10

    instance-of v0, v0, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;

    if-eqz v0, :cond_37

    .line 738
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mOnKeyPreIme:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    .line 739
    if-eqz v0, :cond_2e

    .line 741
    nop

    .line 742
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    .line 743
    if-eqz v0, :cond_2c

    .line 744
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda5;-><init>(Landroid/window/OnBackAnimationCallback;)V

    invoke-virtual {v1, v2}, Landroid/window/BackProgressAnimator;->onBackCancelled(Ljava/lang/Runnable;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_2f

    .line 746
    :cond_2c
    const/4 v0, 0x1

    return v0

    .line 750
    :cond_2e
    goto :goto_37

    .line 748
    :catch_2f
    move-exception v0

    .line 749
    const-string v1, "WindowOnBackDispatcher"

    const-string v2, "Failed to call onKeyPreIme"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    :cond_37
    :goto_37
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;
    .registers 3

    .line 762
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    .line 763
    instance-of v1, v0, Landroid/window/OnBackAnimationCallback;

    if-eqz v1, :cond_f

    check-cast v0, Landroid/window/OnBackAnimationCallback;

    goto :goto_10

    .line 764
    :cond_f
    const/4 v0, 0x0

    .line 763
    :goto_10
    return-object v0
.end method

.method private synthetic blacklist lambda$onBackCancelled$2(Landroid/window/OnBackAnimationCallback;)V
    .registers 3

    .line 705
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->this$0:Landroid/window/WindowOnBackInvokedDispatcher;

    invoke-virtual {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->onBackCancelled(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onBackCancelled$3()V
    .registers 4

    .line 701
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    .line 702
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v1}, Landroid/window/BackTouchTracker;->reset()V

    .line 703
    if-nez v0, :cond_c

    return-void

    .line 704
    :cond_c
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    new-instance v2, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda6;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/OnBackAnimationCallback;)V

    invoke-virtual {v1, v2}, Landroid/window/BackProgressAnimator;->onBackCancelled(Ljava/lang/Runnable;)V

    .line 707
    return-void
.end method

.method private synthetic blacklist lambda$onBackInvoked$4()V
    .registers 5

    .line 713
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->reset()V

    .line 714
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->consumedByOnKeyPreIme()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 715
    :cond_c
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->isBackAnimationInProgress()Z

    move-result v0

    .line 716
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/OnBackInvokedCallback;

    .line 717
    const-string v2, "WindowOnBackDispatcher"

    if-nez v1, :cond_29

    .line 718
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->reset()V

    .line 719
    const-string v0, "Trying to call onBackInvoked() on a null callback reference."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void

    .line 722
    :cond_29
    instance-of v3, v1, Landroid/window/OnBackAnimationCallback;

    if-eqz v3, :cond_35

    if-nez v0, :cond_35

    .line 723
    const-string v0, "ProgressAnimator was not in progress, skip onBackInvoked()."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void

    .line 726
    :cond_35
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->reset()V

    .line 727
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->this$0:Landroid/window/WindowOnBackInvokedDispatcher;

    invoke-virtual {v0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->onBackInvoked(Landroid/window/OnBackInvokedCallback;)V

    .line 728
    return-void
.end method

.method private synthetic blacklist lambda$onBackProgressed$1(Landroid/window/BackMotionEvent;)V
    .registers 3

    .line 692
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 693
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    .line 695
    :cond_b
    return-void
.end method

.method private synthetic blacklist lambda$onBackStarted$0(Landroid/window/BackMotionEvent;)V
    .registers 7

    .line 655
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    .line 660
    if-eqz v0, :cond_13

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v1}, Landroid/window/BackProgressAnimator;->isBackAnimationInProgress()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 661
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v1}, Landroid/window/BackProgressAnimator;->reset()V

    .line 663
    :cond_13
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    sget-object v2, Landroid/window/BackTouchTracker$TouchTrackerState;->ACTIVE:Landroid/window/BackTouchTracker$TouchTrackerState;

    invoke-virtual {v1, v2}, Landroid/window/BackTouchTracker;->setState(Landroid/window/BackTouchTracker$TouchTrackerState;)V

    .line 664
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/window/BackTouchTracker;->setShouldUpdateStartLocation(Z)V

    .line 665
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    .line 666
    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result v3

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v4

    .line 665
    invoke-virtual {v1, v2, v3, v4}, Landroid/window/BackTouchTracker;->setGestureStartLocation(FFI)V

    .line 668
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->this$0:Landroid/window/WindowOnBackInvokedDispatcher;

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/OnBackInvokedCallback;

    .line 669
    invoke-static {p1}, Landroid/window/BackEvent;->fromBackMotionEvent(Landroid/window/BackMotionEvent;)Landroid/window/BackEvent;

    move-result-object v3

    .line 668
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/window/WindowOnBackInvokedDispatcher;->onBackStarted(Landroid/window/OnBackInvokedCallback;Landroid/window/BackEvent;Z)V

    .line 670
    if-eqz v0, :cond_66

    .line 671
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackCallbackCancellationFix()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 672
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/window/OnBackAnimationCallback;)V

    invoke-virtual {v1, p1, v2, v0}, Landroid/window/BackProgressAnimator;->onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;Landroid/window/OnBackAnimationCallback;)V

    goto :goto_66

    .line 675
    :cond_59
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/window/OnBackAnimationCallback;)V

    invoke-virtual {v1, p1, v2}, Landroid/window/BackProgressAnimator;->onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V

    .line 678
    :cond_66
    :goto_66
    return-void
.end method


# virtual methods
.method public blacklist onBackCancelled()V
    .registers 3

    .line 700
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 708
    return-void
.end method

.method public blacklist onBackInvoked()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 712
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 729
    return-void
.end method

.method public blacklist onBackProgressed(Landroid/window/BackMotionEvent;)V
    .registers 4

    .line 691
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackMotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 696
    return-void
.end method

.method public blacklist onBackStarted(Landroid/window/BackMotionEvent;)V
    .registers 4

    .line 654
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackMotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 679
    return-void
.end method

.method public blacklist setHandoffHandler(Landroid/window/IBackAnimationHandoffHandler;)V
    .registers 2

    .line 684
    return-void
.end method

.method public blacklist setTriggerBack(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 757
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0, p1}, Landroid/window/BackTouchTracker;->setTriggerBack(Z)V

    .line 758
    return-void
.end method
