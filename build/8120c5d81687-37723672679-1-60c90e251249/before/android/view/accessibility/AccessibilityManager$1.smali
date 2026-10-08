.class Landroid/view/accessibility/AccessibilityManager$1;
.super Landroid/view/accessibility/IAccessibilityManagerClient$Stub;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$sKFmxL_04DhQEd--aGh39G_OBFk(Landroid/view/accessibility/AccessibilityManager$1;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager$1;->lambda$notifyServicesStateChanged$0(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 469
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$notifyServicesStateChanged$0(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .registers 3

    .line 497
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    .line 498
    invoke-interface {p1, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;->onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V

    .line 497
    return-void
.end method


# virtual methods
.method public blacklist notifyServicesStateChanged(J)V
    .registers 6

    .line 483
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p1, p2}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$mupdateUiTimeout(Landroid/view/accessibility/AccessibilityManager;J)V

    .line 486
    iget-object p1, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$fgetmLock(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 487
    :try_start_c
    iget-object p2, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$fgetmServicesStateChangeListeners(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 488
    monitor-exit p1

    return-void

    .line 490
    :cond_1a
    new-instance p2, Landroid/util/ArrayMap;

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$fgetmServicesStateChangeListeners(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 491
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_51

    .line 493
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 494
    const/4 p2, 0x0

    :goto_2b
    if-ge p2, p1, :cond_50

    .line 495
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$fgetmServicesStateChangeListeners(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 496
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 497
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$fgetmServicesStateChangeListeners(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/view/accessibility/AccessibilityManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Landroid/view/accessibility/AccessibilityManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/accessibility/AccessibilityManager$1;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 494
    add-int/lit8 p2, p2, 0x1

    goto :goto_2b

    .line 500
    :cond_50
    return-void

    .line 491
    :catchall_51
    move-exception p2

    :try_start_52
    monitor-exit p1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p2
.end method

.method public blacklist setFocusAppearance(II)V
    .registers 5

    .line 509
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$fgetmLock(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 510
    :try_start_7
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v1, p1, p2}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$mupdateFocusAppearanceLocked(Landroid/view/accessibility/AccessibilityManager;II)V

    .line 511
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public blacklist setRelevantEventTypes(I)V
    .registers 3

    .line 504
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    iput p1, v0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 505
    return-void
.end method

.method public blacklist setState(I)V
    .registers 5

    .line 478
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 479
    return-void
.end method
