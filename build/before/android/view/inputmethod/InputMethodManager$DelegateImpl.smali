.class final Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Landroid/view/ImeFocusController$InputMethodManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelegateImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetCurrentRootViewLocked(Landroid/view/inputmethod/InputMethodManager$DelegateImpl;Landroid/view/ViewRootImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->setCurrentRootViewLocked(Landroid/view/ViewRootImpl;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 857
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method

.method private blacklist setCurrentRootViewLocked(Landroid/view/ViewRootImpl;)V
    .registers 5

    .line 1009
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1010
    :goto_9
    if-nez v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v1, p1, :cond_1a

    .line 1011
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-static {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$monImeFocusLost(Landroid/view/inputmethod/InputMethodManager;Landroid/view/ViewRootImpl;)V

    .line 1014
    :cond_1a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeBackCallbackProxy(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeBackCallbackProxy;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2, p1}, Landroid/window/ImeBackCallbackProxy;->switchRootView(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl;)V

    .line 1015
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 1016
    if-eqz v0, :cond_44

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz p1, :cond_44

    .line 1017
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeBackCallbackProxy(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeBackCallbackProxy;

    move-result-object p1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 1018
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/window/ImeBackCallbackProxy;->updateReceivingDispatcher(Landroid/window/WindowOnBackInvokedDispatcher;)V

    .line 1020
    :cond_44
    return-void
.end method


# virtual methods
.method public blacklist onPostWindowGainedFocus(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 25

    .line 871
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v1, p2

    .line 872
    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 874
    :try_start_b
    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$monViewFocusChangedInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Z)V

    .line 878
    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v4

    const/4 v7, 0x0

    if-ne v4, v3, :cond_1c

    move v4, v5

    goto :goto_1d

    :cond_1c
    move v4, v7

    .line 880
    :goto_1d
    if-eqz v4, :cond_29

    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 881
    invoke-static {v4, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mhasActiveInputConnectionInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 882
    move v4, v5

    goto :goto_2a

    .line 884
    :cond_29
    move v4, v7

    :goto_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_ee

    .line 886
    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 887
    iget v13, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 889
    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1, v3, v7}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetStartInputFlags(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)I

    move-result v1

    .line 890
    or-int/lit8 v11, v1, 0x8

    .line 892
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    const-string v2, "InputMethodManager.DelegateImpl#startInputAsyncOnWindowFocusGain"

    iget-object v6, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v6, v8}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 897
    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 898
    :try_start_48
    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-nez v2, :cond_50

    .line 899
    monitor-exit v1

    return-void

    .line 901
    :cond_50
    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 902
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 903
    sget-object v2, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v4, "Restarting due to mRestartOnNextWindowFocus as true"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2, v4, v6}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 908
    :cond_67
    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2, v7}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 909
    goto :goto_6e

    .line 901
    :cond_6d
    move v5, v4

    .line 911
    :goto_6e
    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-static {v2, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mcheckFocusInternalLocked(Landroid/view/inputmethod/InputMethodManager;ZLandroid/view/ViewRootImpl;)Z

    move-result v2

    .line 912
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_48 .. :try_end_79} :catchall_eb

    .line 914
    if-eqz v2, :cond_88

    .line 919
    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    move v4, v11

    move v5, v12

    move v6, v13

    invoke-static/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputOnWindowFocusGainInternal(Landroid/view/inputmethod/InputMethodManager;ILandroid/view/View;III)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 921
    return-void

    .line 914
    :cond_88
    move v4, v11

    move v5, v12

    .line 925
    :cond_8a
    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 928
    :try_start_8f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 929
    sget-object v1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v3, "Reporting focus gain, without startInput"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1, v3, v6}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 935
    :cond_9e
    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 936
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    .line 935
    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$smhasViewImeRequestedVisible(Landroid/view/View;)Z

    move-result v21

    .line 939
    const-string v1, "IMM.startInputOrWindowGainedFocus"

    const-wide/16 v6, 0x20

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 940
    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmClient(Landroid/view/inputmethod/InputMethodManager;)Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    move-result-object v9

    .line 942
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 945
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 946
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeBackCallbackProxy(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeBackCallbackProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/ImeBackCallbackProxy;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v20

    .line 940
    const/4 v8, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v1

    move v11, v4

    move v12, v5

    invoke-static/range {v8 .. v21}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;Z)I

    .line 948
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 949
    monitor-exit v2

    .line 950
    return-void

    .line 949
    :catchall_e8
    move-exception v0

    monitor-exit v2
    :try_end_ea
    .catchall {:try_start_8f .. :try_end_ea} :catchall_e8

    throw v0

    .line 912
    :catchall_eb
    move-exception v0

    :try_start_ec
    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v0

    .line 884
    :catchall_ee
    move-exception v0

    :try_start_ef
    monitor-exit v2
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_ee

    throw v0
.end method

.method public blacklist onPreWindowGainedFocus(Landroid/view/ViewRootImpl;)V
    .registers 4

    .line 862
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 863
    :try_start_5
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->setCurrentRootViewLocked(Landroid/view/ViewRootImpl;)V

    .line 864
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/view/inputmethod/InputMethodManager;->mCurRootViewWindowFocused:Z

    .line 865
    monitor-exit v0

    .line 866
    return-void

    .line 865
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public blacklist onScheduledCheckFocus(Landroid/view/ViewRootImpl;)V
    .registers 10

    .line 969
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 970
    :try_start_5
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mcheckFocusInternalLocked(Landroid/view/inputmethod/InputMethodManager;ZLandroid/view/ViewRootImpl;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 971
    monitor-exit v1

    return-void

    .line 973
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_1c

    .line 974
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputOnWindowFocusGainInternal(Landroid/view/inputmethod/InputMethodManager;ILandroid/view/View;III)Z

    .line 977
    return-void

    .line 973
    :catchall_1c
    move-exception v0

    move-object p1, v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1c

    throw p1
.end method

.method public blacklist onViewDetachedFromWindow(Landroid/view/View;Landroid/view/ViewRootImpl;)V
    .registers 6

    .line 981
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 982
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eq v1, v2, :cond_11

    .line 983
    monitor-exit v0

    return-void

    .line 985
    :cond_11
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmNextServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1f

    .line 986
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmNextServedView(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 988
    :cond_1f
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2a

    .line 989
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 991
    :cond_2a
    monitor-exit v0

    .line 992
    return-void

    .line 991
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public blacklist onViewFocusChanged(Landroid/view/View;Z)V
    .registers 4

    .line 964
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$monViewFocusChangedInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Z)V

    .line 965
    return-void
.end method

.method public blacklist onWindowDismissed(Landroid/view/ViewRootImpl;)V
    .registers 4

    .line 996
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 997
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v1, p1, :cond_d

    .line 998
    monitor-exit v0

    return-void

    .line 1000
    :cond_d
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 1001
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1003
    :cond_1a
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->setCurrentRootViewLocked(Landroid/view/ViewRootImpl;)V

    .line 1004
    monitor-exit v0

    .line 1005
    return-void

    .line 1004
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public blacklist onWindowLostFocus(Landroid/view/ViewRootImpl;)V
    .registers 4

    .line 954
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 955
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-ne v1, p1, :cond_15

    .line 956
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/view/inputmethod/InputMethodManager;->mCurRootViewWindowFocused:Z

    .line 957
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearCurRootViewIfNeeded(Landroid/view/inputmethod/InputMethodManager;)Z

    .line 959
    :cond_15
    monitor-exit v0

    .line 960
    return-void

    .line 959
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw p1
.end method
