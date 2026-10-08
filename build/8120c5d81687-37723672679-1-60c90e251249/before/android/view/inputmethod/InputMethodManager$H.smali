.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$I_rRPtZ_qTSdKK46C0wWRGEaNhU(Landroid/view/inputmethod/InputMethodManager$H;Landroid/view/ViewRootImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$H;->lambda$handleMessage$0(Landroid/view/ViewRootImpl;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .registers 4
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

    .line 1126
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 1127
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1128
    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$0(Landroid/view/ViewRootImpl;)V
    .registers 4

    .line 1418
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1419
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v1, p1, :cond_d

    .line 1421
    monitor-exit v0

    return-void

    .line 1423
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_24

    .line 1424
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p1

    .line 1425
    if-nez p1, :cond_15

    .line 1427
    return-void

    .line 1429
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    .line 1430
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    invoke-static {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$monViewFocusChangedInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Z)V

    .line 1431
    return-void

    .line 1423
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 1132
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_4c4

    goto/16 :goto_4c2

    .line 1182
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/inputmethod/InputBindResult;

    .line 1183
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1184
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    .line 1185
    :try_start_15
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmLastPendingStartSeqId(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v5

    if-ne v5, p1, :cond_23

    .line 1187
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmLastPendingStartSeqId(Landroid/view/inputmethod/InputMethodManager;I)V

    .line 1190
    :cond_23
    if-nez v0, :cond_27

    .line 1192
    monitor-exit v4

    return-void

    .line 1195
    :cond_27
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1196
    sget-object v5, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v6, "Starting input: Bind result=%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1201
    :cond_38
    iget-object v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    if-eqz v5, :cond_90

    .line 1202
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-static {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mupdateInputChannelLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;)V

    .line 1203
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    iput-object v6, v5, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 1204
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    new-instance v6, Landroid/view/inputmethod/InputMethodManager$BindState;

    invoke-direct {v6, v0}, Landroid/view/inputmethod/InputMethodManager$BindState;-><init>(Lcom/android/internal/inputmethod/InputBindResult;)V

    invoke-static {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmCurBindState(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$BindState;)V

    .line 1205
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1206
    iget-object v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-eqz v5, :cond_89

    .line 1207
    nop

    :goto_61
    iget-object v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_89

    .line 1208
    iget-object v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 1210
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 1209
    invoke-static {v5}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    move-result-object v5

    .line 1211
    if-eqz v5, :cond_86

    .line 1212
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;

    move-result-object v6

    iget-object v7, v0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 1213
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1212
    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1207
    :cond_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 1217
    :cond_89
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput-object v5, v2, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    goto :goto_a3

    .line 1218
    :cond_90
    iget-object v2, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v2, :cond_a3

    iget-object v2, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurChannel(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/InputChannel;

    move-result-object v5

    if-eq v2, v5, :cond_a3

    .line 1219
    iget-object v2, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 1221
    :cond_a3
    :goto_a3
    iget v2, v0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    packed-switch v2, :pswitch_data_4fa

    goto :goto_b3

    .line 1223
    :pswitch_a9
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1224
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmServedView(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 1227
    :goto_b3
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCompletions(Landroid/view/inputmethod/InputMethodManager;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    if-eqz v2, :cond_d4

    .line 1228
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$misImeSessionAvailableLocked(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 1229
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurBindState(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$BindState;

    move-result-object v2

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCompletions(Landroid/view/inputmethod/InputMethodManager;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 1233
    :cond_d4
    if-eqz v0, :cond_fd

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v0, :cond_fd

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_fd

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    move-result-object v0

    if-eqz v0, :cond_fd

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    move-result-object v0

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;->mSequenceNum:I

    if-ne v0, p1, :cond_fd

    .line 1239
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;->run()V

    .line 1241
    :cond_fd
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;)V

    .line 1242
    monitor-exit v4

    .line 1243
    return-void

    .line 1242
    :catchall_104
    move-exception v0

    move-object p1, v0

    monitor-exit v4
    :try_end_107
    .catchall {:try_start_15 .. :try_end_107} :catchall_104

    throw p1

    .line 1445
    :sswitch_108
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1446
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1447
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/ImeTracker$Token;

    .line 1448
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    .line 1449
    :try_start_11d
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/16 v2, 0x3a

    if-eqz v1, :cond_134

    .line 1450
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1452
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$smsetImeVisibilityOnInsetsController(Landroid/view/ViewRootImpl;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_13b

    .line 1454
    :cond_134
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1457
    :goto_13b
    monitor-exit v4

    .line 1458
    goto/16 :goto_4c2

    .line 1457
    :catchall_13e
    move-exception v0

    move-object p1, v0

    monitor-exit v4
    :try_end_141
    .catchall {:try_start_11d .. :try_end_141} :catchall_13e

    throw p1

    .line 1397
    :sswitch_142
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_148

    move v0, v3

    goto :goto_149

    :cond_148
    move v0, v2

    .line 1398
    :goto_149
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_14e

    move v2, v3

    .line 1403
    :cond_14e
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1404
    :try_start_153
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmActive(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1405
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1406
    if-eqz v0, :cond_17e

    .line 1410
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz p1, :cond_16d

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    .line 1411
    :cond_16d
    if-nez v1, :cond_171

    .line 1413
    monitor-exit v3

    return-void

    .line 1415
    :cond_171
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 1417
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/InputMethodManager$H;Landroid/view/ViewRootImpl;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1432
    goto :goto_1a0

    .line 1434
    :cond_17e
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1435
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$misImeSessionAvailableLocked(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result p1

    if-eqz p1, :cond_196

    .line 1436
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurBindState(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$BindState;

    move-result-object p1

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->finishInput()V

    .line 1438
    :cond_196
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    new-instance v0, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mforAccessibilitySessionsLocked(Landroid/view/inputmethod/InputMethodManager;Ljava/util/function/Consumer;)V

    .line 1441
    :goto_1a0
    monitor-exit v3

    .line 1442
    return-void

    .line 1441
    :catchall_1a2
    move-exception v0

    move-object p1, v0

    monitor-exit v3
    :try_end_1a5
    .catchall {:try_start_153 .. :try_end_1a5} :catchall_1a2

    throw p1

    .line 1330
    :sswitch_1a6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1331
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1336
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1337
    :try_start_1af
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v2

    if-eq v2, v0, :cond_1dc

    .line 1338
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v2

    if-eqz v2, :cond_1da

    .line 1339
    sget-object v2, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v3, "current BindSequence=%s sequence=%s id=%s"

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 1341
    invoke-static {v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v4, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1339
    invoke-static {v2, v3, p1}, Lcom/android/internal/protolog/ProtoLog;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1346
    :cond_1da
    monitor-exit v1

    return-void

    .line 1348
    :cond_1dc
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearAccessibilityBindingLocked(Landroid/view/inputmethod/InputMethodManager;I)V

    .line 1349
    monitor-exit v1

    .line 1350
    return-void

    .line 1349
    :catchall_1e3
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_1e6
    .catchall {:try_start_1af .. :try_end_1e6} :catchall_1e3

    throw p1

    .line 1278
    :sswitch_1e7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1279
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/inputmethod/InputBindResult;

    .line 1284
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    .line 1285
    :try_start_1f2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v1

    .line 1286
    if-ltz v1, :cond_260

    iget v2, p1, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    if-eq v1, v2, :cond_1ff

    goto :goto_260

    .line 1304
    :cond_1ff
    iget-object v1, p1, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-eqz v1, :cond_253

    .line 1305
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 1307
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 1306
    invoke-static {p1}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    move-result-object v5

    .line 1308
    if-eqz v5, :cond_253

    .line 1309
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1310
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-result-object p1

    if-eqz p1, :cond_24a

    .line 1311
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmInitialSelStart(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v6

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmInitialSelEnd(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v7

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorSelStart(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v8

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorSelEnd(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v9

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorCandStart(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v10

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorCandEnd(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    goto :goto_253

    .line 1320
    :cond_24a
    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual/range {v5 .. v11}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    .line 1324
    :cond_253
    :goto_253
    monitor-exit v4
    :try_end_254
    .catchall {:try_start_1f2 .. :try_end_254} :catchall_2b5

    .line 1325
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z

    .line 1327
    return-void

    .line 1287
    :cond_260
    :goto_260
    :try_start_260
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_27c

    .line 1288
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v2, "Ignoring onBind: cur seq=%s, given seq=%s"

    .line 1290
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 1288
    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2a0

    .line 1292
    :cond_27c
    const-string v0, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring onBind: cur seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", given seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :goto_2a0
    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2b3

    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurChannel(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/InputChannel;

    move-result-object v1

    if-eq v0, v1, :cond_2b3

    .line 1296
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 1298
    :cond_2b3
    monitor-exit v4

    return-void

    .line 1324
    :catchall_2b5
    move-exception v0

    move-object p1, v0

    monitor-exit v4
    :try_end_2b8
    .catchall {:try_start_260 .. :try_end_2b8} :catchall_2b5

    throw p1

    .line 1472
    :sswitch_2b9
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2be

    move v2, v3

    .line 1473
    :cond_2be
    nop

    .line 1474
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1475
    :try_start_2c4
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result p1

    if-eq p1, v2, :cond_2df

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-result-object p1

    if-eqz p1, :cond_2df

    .line 1476
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-result-object v1

    .line 1477
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1479
    :cond_2df
    monitor-exit v3
    :try_end_2e0
    .catchall {:try_start_2c4 .. :try_end_2e0} :catchall_2e6

    .line 1480
    if-eqz v1, :cond_2e5

    .line 1481
    invoke-virtual {v1, v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchReportFullscreenMode(Z)V

    .line 1483
    :cond_2e5
    return-void

    .line 1479
    :catchall_2e6
    move-exception v0

    move-object p1, v0

    :try_start_2e8
    monitor-exit v3
    :try_end_2e9
    .catchall {:try_start_2e8 .. :try_end_2e9} :catchall_2e6

    throw p1

    .line 1468
    :sswitch_2ea
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mfinishedInputEvent(Landroid/view/inputmethod/InputMethodManager;IZZ)V

    .line 1469
    return-void

    .line 1464
    :sswitch_2f2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mfinishedInputEvent(Landroid/view/inputmethod/InputMethodManager;IZZ)V

    .line 1465
    return-void

    .line 1460
    :sswitch_2fa
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-static {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    .line 1461
    return-void

    .line 1353
    :sswitch_304
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_30a

    move v0, v3

    goto :goto_30b

    :cond_30a
    move v0, v2

    .line 1354
    :goto_30b
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_310

    move v2, v3

    .line 1358
    :cond_310
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    .line 1359
    :try_start_315
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmActive(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1360
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1362
    if-nez v0, :cond_339

    .line 1366
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1369
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmFallbackInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->finishComposingTextFromImm()V

    .line 1371
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearCurRootViewIfNeeded(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result p1

    if-eqz p1, :cond_339

    .line 1372
    monitor-exit v4

    return-void

    .line 1377
    :cond_339
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object p1

    .line 1378
    if-eqz p1, :cond_387

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$smcanStartInput(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_348

    goto :goto_387

    .line 1381
    :cond_348
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-nez p1, :cond_350

    .line 1382
    monitor-exit v4

    return-void

    .line 1384
    :cond_350
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v2

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-static {p1, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mcheckFocusInternalLocked(Landroid/view/inputmethod/InputMethodManager;ZLandroid/view/ViewRootImpl;)Z

    move-result p1

    if-nez p1, :cond_364

    .line 1385
    monitor-exit v4

    return-void

    .line 1387
    :cond_364
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmCurrentEditorInfo(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/EditorInfo;)V

    .line 1388
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmCompletions(Landroid/view/inputmethod/InputMethodManager;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1389
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmServedConnecting(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1390
    monitor-exit v4
    :try_end_374
    .catchall {:try_start_315 .. :try_end_374} :catchall_389

    .line 1391
    if-eqz v0, :cond_37a

    const/16 p1, 0x8

    move v1, p1

    goto :goto_37d

    .line 1392
    :cond_37a
    const/16 p1, 0x9

    move v1, p1

    .line 1393
    :goto_37d
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z

    .line 1394
    return-void

    .line 1379
    :cond_387
    :goto_387
    :try_start_387
    monitor-exit v4

    return-void

    .line 1390
    :catchall_389
    move-exception v0

    move-object p1, v0

    monitor-exit v4
    :try_end_38c
    .catchall {:try_start_387 .. :try_end_38c} :catchall_389

    throw p1

    .line 1246
    :sswitch_38d
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1248
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1254
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1255
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3a2

    .line 1256
    :try_start_399
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeBackCallbackProxy(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeBackCallbackProxy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/ImeBackCallbackProxy;->clear()V

    .line 1258
    :cond_3a2
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I

    move-result p1

    if-eq p1, v0, :cond_3ac

    .line 1259
    monitor-exit v1

    return-void

    .line 1261
    :cond_3ac
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearAllAccessibilityBindingLocked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 1262
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearBindingLocked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 1265
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object p1

    .line 1266
    if-eqz p1, :cond_3c9

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_3c9

    .line 1267
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmServedConnecting(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1269
    :cond_3c9
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmActive(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result p1

    .line 1270
    monitor-exit v1
    :try_end_3d0
    .catchall {:try_start_399 .. :try_end_3d0} :catchall_3dd

    .line 1271
    if-eqz p1, :cond_3dc

    .line 1272
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z

    .line 1275
    :cond_3dc
    return-void

    .line 1270
    :catchall_3dd
    move-exception v0

    move-object p1, v0

    :try_start_3df
    monitor-exit v1
    :try_end_3e0
    .catchall {:try_start_3df .. :try_end_3e0} :catchall_3dd

    throw p1

    .line 1148
    :sswitch_3e1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/inputmethod/InputBindResult;

    .line 1152
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1153
    :try_start_3ea
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v0

    .line 1154
    if-ltz v0, :cond_425

    iget v3, p1, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    if-eq v0, v3, :cond_3f7

    goto :goto_425

    .line 1169
    :cond_3f7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRequestUpdateCursorAnchorInfoMonitorMode(Landroid/view/inputmethod/InputMethodManager;I)V

    .line 1172
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-static {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mupdateInputChannelLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;)V

    .line 1173
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p1, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    iput-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 1174
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Landroid/view/inputmethod/InputMethodManager$BindState;

    invoke-direct {v2, p1}, Landroid/view/inputmethod/InputMethodManager$BindState;-><init>(Lcom/android/internal/inputmethod/InputBindResult;)V

    invoke-static {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmCurBindState(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$BindState;)V

    .line 1175
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput-object p1, v0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 1176
    monitor-exit v1
    :try_end_41a
    .catchall {:try_start_3ea .. :try_end_41a} :catchall_47a

    .line 1177
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z

    .line 1178
    return-void

    .line 1155
    :cond_425
    :goto_425
    :try_start_425
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v2

    if-eqz v2, :cond_441

    .line 1156
    sget-object v2, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v3, "Ignoring onBind: cur seq=%s, given seq=%s"

    .line 1158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v4, p1, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 1156
    invoke-static {v2, v3, v0}, Lcom/android/internal/protolog/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_465

    .line 1160
    :cond_441
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring onBind: cur seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", given seq="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :goto_465
    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_478

    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurChannel(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/InputChannel;

    move-result-object v2

    if-eq v0, v2, :cond_478

    .line 1164
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 1166
    :cond_478
    monitor-exit v1

    return-void

    .line 1176
    :catchall_47a
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_47d
    .catchall {:try_start_425 .. :try_end_47d} :catchall_47a

    throw p1

    .line 1134
    :sswitch_47e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1136
    :try_start_482
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/io/FileDescriptor;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/io/PrintWriter;

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mdoDump(Landroid/view/inputmethod/InputMethodManager;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_493
    .catch Ljava/lang/RuntimeException; {:try_start_482 .. :try_end_493} :catch_494

    .line 1140
    goto :goto_4af

    .line 1138
    :catch_494
    move-exception v0

    .line 1139
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1141
    :goto_4af
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v1

    .line 1142
    :try_start_4b2
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1143
    monitor-exit v1
    :try_end_4ba
    .catchall {:try_start_4b2 .. :try_end_4ba} :catchall_4be

    .line 1144
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1145
    return-void

    .line 1143
    :catchall_4be
    move-exception v0

    move-object p1, v0

    :try_start_4c0
    monitor-exit v1
    :try_end_4c1
    .catchall {:try_start_4c0 .. :try_end_4c1} :catchall_4be

    throw p1

    .line 1486
    :goto_4c2
    return-void

    nop

    :sswitch_data_4c4
    .sparse-switch
        0x1 -> :sswitch_47e
        0x2 -> :sswitch_3e1
        0x3 -> :sswitch_38d
        0x4 -> :sswitch_304
        0x5 -> :sswitch_2fa
        0x6 -> :sswitch_2f2
        0x7 -> :sswitch_2ea
        0xa -> :sswitch_2b9
        0xb -> :sswitch_1e7
        0xc -> :sswitch_1a6
        0xd -> :sswitch_142
        0xe -> :sswitch_108
        0x28 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_4fa
    .packed-switch 0xc
        :pswitch_a9
    .end packed-switch
.end method
