.class Landroid/view/inputmethod/ImeTracker$1;
.super Ljava/lang/Object;
.source "ImeTracker.java"

# interfaces
.implements Landroid/view/inputmethod/ImeTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mLogProgress:Z

.field private blacklist mLogStackTrace:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$9OacCYun6bn4lZvaAXoxmItJmvY(Landroid/view/inputmethod/ImeTracker$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/ImeTracker$1;->reloadSystemProperties()V

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    invoke-direct {p0}, Landroid/view/inputmethod/ImeTracker$1;->reloadSystemProperties()V

    .line 617
    new-instance v0, Landroid/view/inputmethod/ImeTracker$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/ImeTracker$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/ImeTracker$1;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 619
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 620
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    const/4 v1, 0x0

    sget-object v2, Landroid/view/ViewProtoLogGroups;->IME_TRACKER:Lcom/android/internal/protolog/ProtoLogGroup;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLog;->registerLogGroupInProcess([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 622
    :cond_1f
    return-void
.end method

.method private static blacklist getOnStartPrefix(I)Ljava/lang/String;
    .registers 1

    .line 719
    packed-switch p0, :pswitch_data_14

    .line 723
    const-string/jumbo p0, "onRequestUnknown"

    goto :goto_12

    .line 722
    :pswitch_7
    const-string/jumbo p0, "onRequestUser"

    goto :goto_12

    .line 721
    :pswitch_b
    const-string/jumbo p0, "onRequestHide"

    goto :goto_12

    .line 720
    :pswitch_f
    const-string/jumbo p0, "onRequestShow"

    .line 719
    :goto_12
    return-object p0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist reloadSystemProperties()V
    .registers 3

    .line 729
    const-string/jumbo v0, "persist.debug.imetracker"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/ImeTracker$1;->mLogProgress:Z

    .line 731
    const-string/jumbo v0, "persist.debug.imerequest.logstacktrace"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/ImeTracker$1;->mLogStackTrace:Z

    .line 733
    return-void
.end method


# virtual methods
.method public blacklist onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 3

    .line 674
    if-nez p1, :cond_3

    return-void

    .line 675
    :cond_3
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 677
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s: onCancelled at %s"

    invoke-static {p2, p1}, Landroid/view/inputmethod/ImeTracker;->-$$Nest$smlog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    return-void
.end method

.method public blacklist onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    .line 698
    if-nez p1, :cond_3

    return-void

    .line 699
    :cond_3
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 701
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s: onDispatched"

    invoke-static {v0, p1}, Landroid/view/inputmethod/ImeTracker;->-$$Nest$smlog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    return-void
.end method

.method public blacklist onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 3

    .line 660
    if-nez p1, :cond_3

    return-void

    .line 661
    :cond_3
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 663
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s: onFailed at %s"

    invoke-static {p2, p1}, Landroid/view/inputmethod/ImeTracker;->-$$Nest$smlog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    return-void
.end method

.method public blacklist onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    .line 690
    if-nez p1, :cond_3

    return-void

    .line 691
    :cond_3
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 693
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s: onHidden"

    invoke-static {v0, p1}, Landroid/view/inputmethod/ImeTracker;->-$$Nest$smlog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    return-void
.end method

.method public blacklist onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 4

    .line 650
    if-nez p1, :cond_3

    return-void

    .line 651
    :cond_3
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 653
    iget-boolean v0, p0, Landroid/view/inputmethod/ImeTracker$1;->mLogProgress:Z

    if-eqz v0, :cond_1b

    .line 654
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s: onProgress at %s"

    invoke-static {p2, p1}, Landroid/view/inputmethod/ImeTracker;->-$$Nest$smlog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    :cond_1b
    return-void
.end method

.method public blacklist onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    .line 682
    if-nez p1, :cond_3

    return-void

    .line 683
    :cond_3
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 685
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s: onShown"

    invoke-static {v0, p1}, Landroid/view/inputmethod/ImeTracker;->-$$Nest$smlog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    return-void
.end method

.method public blacklist onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 17

    .line 634
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$smcreateToken(Ljava/lang/String;)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 636
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 637
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    invoke-static/range {v0 .. v9}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onStart(Landroid/view/inputmethod/ImeTracker$Token;IIIIZJJ)V

    .line 640
    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object p1

    .line 641
    invoke-static {p3}, Landroid/view/inputmethod/ImeTracker$1;->getOnStartPrefix(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Landroid/view/inputmethod/ImeTracker$Debug;->originToString(I)Ljava/lang/String;

    move-result-object p3

    .line 642
    invoke-static {p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    .line 643
    iget-boolean v1, p0, Landroid/view/inputmethod/ImeTracker$1;->mLogStackTrace:Z

    if-eqz v1, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Stack trace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4c

    :cond_4a
    const-string v1, ""

    :goto_4c
    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, v1

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p1

    .line 640
    const-string p2, "%s: %s at %s reason %s fromUser %s%s"

    invoke-static {p2, p1}, Landroid/view/inputmethod/ImeTracker;->-$$Nest$smlog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    return-object v0
.end method

.method public blacklist onTodo(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 3

    .line 668
    if-nez p1, :cond_3

    return-void

    .line 669
    :cond_3
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s: onTodo at %s"

    invoke-static {p2, p1}, Landroid/view/inputmethod/ImeTracker;->-$$Nest$smlog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    return-void
.end method

.method public blacklist onUserFinished(Landroid/view/inputmethod/ImeTracker$Token;Z)V
    .registers 3

    .line 706
    if-nez p1, :cond_3

    return-void

    .line 709
    :cond_3
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_d

    const-string/jumbo p2, "shown"

    goto :goto_f

    :cond_d
    const-string p2, "hidden"

    :goto_f
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s: onUserFinished %s"

    invoke-static {p2, p1}, Landroid/view/inputmethod/ImeTracker;->-$$Nest$smlog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    return-void
.end method
