.class final Landroid/view/ViewRootImpl$NativePreImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/InputQueue$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NativePreImeInputStage"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 7781
    iput-object p1, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 7782
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 7783
    return-void
.end method

.method private blacklist doOnBackKeyEvent(Landroid/view/KeyEvent;)I
    .registers 9

    .line 7826
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    .line 7827
    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    .line 7828
    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isBackGestureInProgress()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_12

    .line 7829
    return v3

    .line 7831
    :cond_12
    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_44

    .line 7832
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_5e

    goto :goto_43

    .line 7846
    :pswitch_1e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 7847
    invoke-virtual {v0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->onBackCancelled(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_43

    .line 7849
    :cond_28
    invoke-virtual {v0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->onBackInvoked(Landroid/window/OnBackInvokedCallback;)V

    .line 7850
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackStopKeycodeBackForwarding()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 7851
    return v2

    .line 7839
    :pswitch_32
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_43

    .line 7840
    new-instance v5, Landroid/window/BackEvent;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v6, v3}, Landroid/window/BackEvent;-><init>(FFFI)V

    instance-of v6, v1, Landroid/view/ImeBackAnimationController;

    invoke-virtual {v0, v1, v5, v6}, Landroid/window/WindowOnBackInvokedDispatcher;->onBackStarted(Landroid/window/OnBackInvokedCallback;Landroid/window/BackEvent;Z)V

    .line 7854
    :cond_43
    :goto_43
    goto :goto_4b

    .line 7857
    :cond_44
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackStopKeycodeBackForwarding()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 7858
    return v4

    .line 7861
    :cond_4b
    :goto_4b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackStopKeycodeBackForwarding()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 7862
    return v3

    .line 7865
    :cond_52
    if-eqz v1, :cond_5d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_5d

    .line 7867
    invoke-virtual {p1}, Landroid/view/KeyEvent;->cancel()V

    .line 7869
    :cond_5d
    return v4

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o onFinishedInputEvent(Ljava/lang/Object;Z)V
    .registers 3

    .line 7875
    check-cast p1, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7876
    if-eqz p2, :cond_9

    .line 7877
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 7878
    return-void

    .line 7880
    :cond_9
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7881
    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 6

    .line 7787
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->forPreImeOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 7789
    return v1

    .line 7791
    :cond_8
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_82

    .line 7792
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    .line 7796
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->isBack(Landroid/view/InputEvent;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_71

    .line 7797
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmWindowlessBackKeyCallback(Landroid/view/ViewRootImpl;)Ljava/util/function/Predicate;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 7798
    iget-object p1, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmWindowlessBackKeyCallback(Landroid/view/ViewRootImpl;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 7800
    nop

    .line 7799
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_3b

    .line 7800
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_3b

    .line 7801
    goto :goto_3c

    :cond_3b
    const/4 v3, 0x2

    .line 7799
    :goto_3c
    return v3

    .line 7804
    :cond_3d
    return v1

    .line 7806
    :cond_3e
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_71

    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmOnBackInvokedDispatcher(Landroid/view/ViewRootImpl;)Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    .line 7807
    invoke-virtual {v2}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v2

    if-nez v2, :cond_6c

    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmOnBackInvokedDispatcher(Landroid/view/ViewRootImpl;)Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    .line 7808
    invoke-virtual {v2}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ImeBackAnimationController;

    if-nez v2, :cond_6c

    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmOnBackInvokedDispatcher(Landroid/view/ViewRootImpl;)Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    .line 7810
    invoke-virtual {v2}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v2

    instance-of v2, v2, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;

    if-eqz v2, :cond_71

    .line 7813
    :cond_6c
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->doOnBackKeyEvent(Landroid/view/KeyEvent;)I

    move-result p1

    return p1

    .line 7817
    :cond_71
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_82

    .line 7818
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v1, p1, v3, p0}, Landroid/view/InputQueue;->sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V

    .line 7819
    const/4 p1, 0x3

    return p1

    .line 7822
    :cond_82
    return v1
.end method
