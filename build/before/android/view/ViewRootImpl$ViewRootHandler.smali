.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 6932
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist handleMessageImpl(Landroid/os/Message;)V
    .registers 20

    .line 7033
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_40c

    :pswitch_d
    goto/16 :goto_40b

    .line 7284
    :pswitch_f
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTouchAndDrawn(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 7285
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 7286
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_34

    .line 7289
    :cond_2a
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsTouchBoosting(Landroid/view/ViewRootImpl;Z)V

    .line 7290
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v5}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    .line 7292
    :goto_34
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmTouchAndDrawn(Landroid/view/ViewRootImpl;Z)V

    .line 7293
    goto/16 :goto_40b

    .line 7305
    :pswitch_3b
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmSurfaceReplaced(Landroid/view/ViewRootImpl;Z)V

    goto/16 :goto_40b

    .line 7301
    :pswitch_42
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v3}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPreferredFrameRate(Landroid/view/ViewRootImpl;F)V

    .line 7302
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput v5, v0, Landroid/view/ViewRootImpl;->mFrameRateCompatibility:I

    .line 7303
    goto/16 :goto_40b

    .line 7295
    :pswitch_4d
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPointerIconEvent(Landroid/view/ViewRootImpl;)Landroid/view/MotionEvent;

    move-result-object v1

    if-nez v1, :cond_57

    .line 7296
    goto/16 :goto_40b

    .line 7298
    :cond_57
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPointerIconEvent(Landroid/view/ViewRootImpl;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mupdatePointerIcon(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z

    .line 7299
    goto/16 :goto_40b

    .line 7249
    :pswitch_64
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsTouchBoosting(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_8d

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsFrameRateBoosting(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_8d

    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsAnimationRunning(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-eqz v1, :cond_7d

    goto :goto_8d

    .line 7252
    :cond_7d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v7, 0xf4240

    div-long/2addr v1, v7

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastUpdateTimeMillis(Landroid/view/ViewRootImpl;)J

    move-result-wide v7

    sub-long/2addr v1, v7

    goto :goto_8f

    .line 7250
    :cond_8d
    :goto_8d
    const-wide/16 v1, 0x0

    .line 7254
    :goto_8f
    const-wide/16 v7, 0x2ee

    cmp-long v4, v1, v7

    if-ltz v4, :cond_da

    .line 7255
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryHighCount(Landroid/view/ViewRootImpl;I)V

    .line 7256
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryHighHintCount(Landroid/view/ViewRootImpl;I)V

    .line 7257
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryNormalCount(Landroid/view/ViewRootImpl;I)V

    .line 7258
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryLowCount(Landroid/view/ViewRootImpl;I)V

    .line 7259
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v3}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPreferredFrameRate(Landroid/view/ViewRootImpl;F)V

    .line 7260
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    .line 7261
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$mupdateFrameRateFromThreadedRendererViews(Landroid/view/ViewRootImpl;)V

    .line 7262
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPreferredFrameRate(Landroid/view/ViewRootImpl;)F

    move-result v2

    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRate(Landroid/view/ViewRootImpl;F)V

    .line 7263
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPreferredFrameRateCategory(Landroid/view/ViewRootImpl;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    .line 7264
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmInvalidationIdleMessagePosted(Landroid/view/ViewRootImpl;Z)V

    .line 7265
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsPressedGesture(Landroid/view/ViewRootImpl;Z)V

    goto/16 :goto_40b

    .line 7267
    :cond_da
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmInvalidationIdleMessagePosted(Landroid/view/ViewRootImpl;Z)V

    .line 7268
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x28

    sub-long/2addr v7, v1

    invoke-virtual {v0, v3, v7, v8}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 7271
    goto/16 :goto_40b

    .line 7277
    :pswitch_eb
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsFrameRateBoosting(Landroid/view/ViewRootImpl;Z)V

    .line 7278
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsTouchBoosting(Landroid/view/ViewRootImpl;Z)V

    .line 7279
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDrawnThisFrame(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_40b

    .line 7280
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    goto/16 :goto_40b

    .line 7233
    :pswitch_104
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_10b

    goto :goto_10c

    :cond_10b
    move v5, v6

    :goto_10c
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->decorViewInterceptionChanged(Z)V

    .line 7234
    goto/16 :goto_40b

    .line 7245
    :pswitch_111
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mresumeAfterSyncTimeout(Landroid/view/ViewRootImpl;)V

    .line 7246
    goto/16 :goto_40b

    .line 7239
    :pswitch_118
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportKeepClearAreasChanged()V

    .line 7240
    goto/16 :goto_40b

    .line 7236
    :pswitch_11f
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_126

    goto :goto_127

    :cond_126
    move v5, v6

    :goto_127
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->keepClearRectsChanged(Z)V

    .line 7237
    goto/16 :goto_40b

    .line 7121
    :pswitch_12c
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowTouchModeChanged(Landroid/view/ViewRootImpl;)V

    .line 7122
    goto/16 :goto_40b

    .line 7242
    :pswitch_133
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/IScrollCaptureResponseListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->handleScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    .line 7243
    goto/16 :goto_40b

    .line 7094
    :pswitch_13e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 7095
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 7096
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 7097
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    const/16 v5, 0x1f

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 7099
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/InsetsController;->hide(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 7100
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 7101
    goto/16 :goto_40b

    .line 7078
    :pswitch_165
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 7079
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 7080
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 7081
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 7083
    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v4, :cond_198

    .line 7084
    nop

    .line 7086
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 7085
    const-string v5, "Calling showInsets(%d) on window that no longer has views."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 7084
    const-string v5, "ViewRootImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7088
    :cond_198
    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4, v2}, Landroid/view/ViewRootImpl;->-$$Nest$mclearLowProfileModeIfNeeded(Landroid/view/ViewRootImpl;I)V

    .line 7089
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/InsetsController;->show(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 7090
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 7091
    goto/16 :goto_40b

    .line 7230
    :pswitch_1ab
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->systemGestureExclusionChanged()V

    .line 7231
    goto/16 :goto_40b

    .line 7069
    :pswitch_1b2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 7070
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/InsetsState;

    .line 7071
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/InsetsSourceControl$Array;

    .line 7073
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewRootImpl;->handleInsetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    .line 7074
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 7075
    goto/16 :goto_40b

    .line 7226
    :pswitch_1c8
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1cd

    goto :goto_1ce

    :cond_1cd
    move v5, v6

    .line 7227
    :goto_1ce
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->-$$Nest$mhandlePointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V

    .line 7228
    goto/16 :goto_40b

    .line 7221
    :pswitch_1d5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/IResultReceiver;

    .line 7222
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 7223
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewRootImpl;->handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 7224
    goto/16 :goto_40b

    .line 7218
    :pswitch_1e2
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    .line 7219
    goto/16 :goto_40b

    .line 7134
    :pswitch_1e9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/InputEvent;

    .line 7135
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7136
    goto/16 :goto_40b

    .line 7104
    :pswitch_1f6
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_40b

    .line 7105
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 7106
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 7107
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 7108
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 7109
    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v5

    iget-object v5, v5, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 7110
    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v5

    iget-object v5, v5, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    add-int/2addr v4, v2

    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 7111
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v2

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 7112
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v2

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 7113
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v2

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-static {v1, v2, v6}, Landroid/view/ViewRootImpl;->-$$Nest$msetFrame(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;Z)V

    .line 7114
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mmaybeHandleWindowMove(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V

    .line 7115
    goto/16 :goto_40b

    .line 7213
    :pswitch_252
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_40b

    .line 7214
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_40b

    .line 7210
    :pswitch_263
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v4, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7211
    goto/16 :goto_40b

    .line 7044
    :pswitch_26a
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 7045
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 7046
    goto/16 :goto_40b

    .line 7189
    :pswitch_275
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Configuration;

    .line 7190
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v2

    .line 7191
    invoke-virtual {v2}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 7190
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_293

    .line 7193
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 7197
    :cond_293
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v2

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    .line 7198
    invoke-virtual {v3}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 7197
    invoke-virtual {v2, v1, v3}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 7199
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v1

    if-eqz v1, :cond_2bd

    .line 7200
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v1

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 7203
    :cond_2bd
    iget-object v1, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v2, Landroid/util/MergedConfiguration;

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    .line 7205
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v3

    if-eqz v3, :cond_2de

    .line 7206
    new-instance v4, Landroid/window/ActivityWindowInfo;

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    goto :goto_2df

    .line 7207
    :cond_2de
    nop

    .line 7203
    :goto_2df
    const/4 v0, -0x1

    invoke-static {v1, v2, v6, v0, v4}, Landroid/view/ViewRootImpl;->-$$Nest$mperformConfigurationChange(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZILandroid/window/ActivityWindowInfo;)V

    .line 7208
    goto/16 :goto_40b

    .line 7186
    :pswitch_2e5
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl;)V

    .line 7187
    goto/16 :goto_40b

    .line 7169
    :pswitch_2ec
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/DragEvent;

    .line 7171
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v2, v1, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 7172
    iget v2, v1, Landroid/view/DragEvent;->mAction:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2fc

    goto :goto_2fd

    :cond_2fc
    move v5, v6

    .line 7174
    :goto_2fd
    const-wide/16 v2, 0x8

    if-eqz v5, :cond_31d

    .line 7175
    :try_start_301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c#"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v1, Landroid/view/DragEvent;->mAction:I

    .line 7176
    invoke-static {v6}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7175
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7178
    :cond_31d
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDragEvent(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    :try_end_322
    .catchall {:try_start_301 .. :try_end_322} :catchall_329

    .line 7180
    if-eqz v5, :cond_327

    .line 7181
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 7184
    :cond_327
    goto/16 :goto_40b

    .line 7180
    :catchall_329
    move-exception v0

    if-eqz v5, :cond_32f

    .line 7181
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 7183
    :cond_32f
    throw v0

    .line 7162
    :pswitch_330
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_40b

    .line 7163
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_40b

    .line 7159
    :pswitch_343
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ImeFocusController;->onScheduledCheckFocus()V

    .line 7160
    goto/16 :goto_40b

    .line 7155
    :pswitch_34e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    .line 7156
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1, v4, v6, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7157
    goto/16 :goto_40b

    .line 7141
    :pswitch_359
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    .line 7142
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_370

    .line 7146
    nop

    .line 7147
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x9

    .line 7146
    invoke-static {v1, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7149
    :cond_370
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1, v4, v5, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7150
    goto/16 :goto_40b

    .line 7051
    :pswitch_377
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    .line 7052
    goto/16 :goto_40b

    .line 7048
    :pswitch_37e
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_385

    goto :goto_386

    :cond_385
    move v5, v6

    :goto_386
    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v5, v1}, Landroid/view/ViewRootImpl;->handleAppVisibility(ZI)V

    .line 7049
    goto/16 :goto_40b

    .line 7127
    :pswitch_38d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 7128
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/InputEvent;

    .line 7129
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/InputEventReceiver;

    .line 7130
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v2, v3, v6, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7131
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 7132
    goto/16 :goto_40b

    .line 7118
    :pswitch_3a3
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowFocusChanged(Landroid/view/ViewRootImpl;)V

    .line 7119
    goto/16 :goto_40b

    .line 7055
    :pswitch_3aa
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 7056
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowRelayoutResult;

    .line 7057
    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_3b9

    move v9, v5

    goto :goto_3ba

    :cond_3b9
    move v9, v6

    .line 7058
    :goto_3ba
    iget v1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v1, :cond_3c0

    move v12, v5

    goto :goto_3c1

    :cond_3c0
    move v12, v6

    .line 7059
    :goto_3c1
    iget v13, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 7060
    iget v1, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz v1, :cond_3c9

    move v15, v5

    goto :goto_3ca

    :cond_3c9
    move v15, v6

    .line 7061
    :goto_3ca
    iget v1, v2, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz v1, :cond_3d1

    move/from16 v16, v5

    goto :goto_3d3

    :cond_3d1
    move/from16 v16, v6

    .line 7062
    :goto_3d3
    iget-object v7, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v3, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    iget-object v10, v3, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v11, v3, Landroid/view/WindowRelayoutResult;->insetsState:Landroid/view/InsetsState;

    iget v14, v3, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    iget-object v0, v3, Landroid/view/WindowRelayoutResult;->activityWindowInfo:Landroid/window/ActivityWindowInfo;

    move-object/from16 v17, v0

    invoke-static/range {v7 .. v17}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleResized(Landroid/view/ViewRootImpl;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZIIZZLandroid/window/ActivityWindowInfo;)V

    .line 7065
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 7066
    goto :goto_40b

    .line 7124
    :pswitch_3e8
    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 7125
    goto :goto_40b

    .line 7038
    :pswitch_3ee
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 7040
    iget-object v1, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v2, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .line 7041
    invoke-virtual {v0}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    .line 7042
    goto :goto_40b

    .line 7035
    :pswitch_403
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 7036
    nop

    .line 7308
    :cond_40b
    :goto_40b
    return-void

    :pswitch_data_40c
    .packed-switch 0x1
        :pswitch_403
        :pswitch_3ee
        :pswitch_3e8
        :pswitch_3aa
        :pswitch_3aa
        :pswitch_3a3
        :pswitch_38d
        :pswitch_37e
        :pswitch_377
        :pswitch_d
        :pswitch_359
        :pswitch_34e
        :pswitch_343
        :pswitch_330
        :pswitch_2ec
        :pswitch_2ec
        :pswitch_2e5
        :pswitch_275
        :pswitch_26a
        :pswitch_d
        :pswitch_263
        :pswitch_252
        :pswitch_1f6
        :pswitch_1e9
        :pswitch_1e2
        :pswitch_1d5
        :pswitch_d
        :pswitch_1c8
        :pswitch_1b2
        :pswitch_1ab
        :pswitch_165
        :pswitch_13e
        :pswitch_133
        :pswitch_12c
        :pswitch_11f
        :pswitch_118
        :pswitch_111
        :pswitch_104
        :pswitch_eb
        :pswitch_64
        :pswitch_4d
        :pswitch_42
        :pswitch_3b
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public whitelist getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .registers 3

    .line 6935
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    .line 7007
    :pswitch_5
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7005
    :pswitch_a
    const-string p1, "MSG_INITIAL_TOUCH_BOOST_TIMEOUT"

    return-object p1

    .line 7003
    :pswitch_d
    const-string p1, "MSG_SURFACE_REPLACED_TIMEOUT"

    return-object p1

    .line 7001
    :pswitch_10
    const-string p1, "MSG_FRAME_RATE_SETTING"

    return-object p1

    .line 6997
    :pswitch_13
    const-string p1, "MSG_REFRESH_POINTER_ICON"

    return-object p1

    .line 6995
    :pswitch_16
    const-string p1, "MSG_CHECK_INVALIDATION_IDLE"

    return-object p1

    .line 6999
    :pswitch_19
    const-string p1, "MSG_TOUCH_BOOST_TIMEOUT"

    return-object p1

    .line 6993
    :pswitch_1c
    const-string p1, "MSG_KEEP_CLEAR_RECTS_CHANGED"

    return-object p1

    .line 6991
    :pswitch_1f
    const-string p1, "MSG_WINDOW_TOUCH_MODE_CHANGED"

    return-object p1

    .line 6989
    :pswitch_22
    const-string p1, "MSG_HIDE_INSETS"

    return-object p1

    .line 6987
    :pswitch_25
    const-string p1, "MSG_SHOW_INSETS"

    return-object p1

    .line 6985
    :pswitch_28
    const-string p1, "MSG_SYSTEM_GESTURE_EXCLUSION_CHANGED"

    return-object p1

    .line 6983
    :pswitch_2b
    const-string p1, "MSG_INSETS_CONTROL_CHANGED"

    return-object p1

    .line 6981
    :pswitch_2e
    const-string p1, "MSG_POINTER_CAPTURE_CHANGED"

    return-object p1

    .line 6979
    :pswitch_31
    const-string p1, "MSG_DISPATCH_WINDOW_SHOWN"

    return-object p1

    .line 6977
    :pswitch_34
    const-string p1, "MSG_SYNTHESIZE_INPUT_EVENT"

    return-object p1

    .line 6975
    :pswitch_37
    const-string p1, "MSG_WINDOW_MOVED"

    return-object p1

    .line 6973
    :pswitch_3a
    const-string p1, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    return-object p1

    .line 6971
    :pswitch_3d
    const-string p1, "MSG_PROCESS_INPUT_EVENTS"

    return-object p1

    .line 6969
    :pswitch_40
    const-string p1, "MSG_UPDATE_CONFIGURATION"

    return-object p1

    .line 6967
    :pswitch_43
    const-string p1, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    return-object p1

    .line 6965
    :pswitch_46
    const-string p1, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    return-object p1

    .line 6963
    :pswitch_49
    const-string p1, "MSG_DISPATCH_DRAG_EVENT"

    return-object p1

    .line 6961
    :pswitch_4c
    const-string p1, "MSG_CLOSE_SYSTEM_DIALOGS"

    return-object p1

    .line 6959
    :pswitch_4f
    const-string p1, "MSG_CHECK_FOCUS"

    return-object p1

    .line 6957
    :pswitch_52
    const-string p1, "MSG_DISPATCH_KEY_FROM_AUTOFILL"

    return-object p1

    .line 6955
    :pswitch_55
    const-string p1, "MSG_DISPATCH_KEY_FROM_IME"

    return-object p1

    .line 6953
    :pswitch_58
    const-string p1, "MSG_DISPATCH_GET_NEW_SURFACE"

    return-object p1

    .line 6951
    :pswitch_5b
    const-string p1, "MSG_DISPATCH_APP_VISIBILITY"

    return-object p1

    .line 6949
    :pswitch_5e
    const-string p1, "MSG_DISPATCH_INPUT_EVENT"

    return-object p1

    .line 6947
    :pswitch_61
    const-string p1, "MSG_WINDOW_FOCUS_CHANGED"

    return-object p1

    .line 6945
    :pswitch_64
    const-string p1, "MSG_RESIZED_REPORT"

    return-object p1

    .line 6943
    :pswitch_67
    const-string p1, "MSG_RESIZED"

    return-object p1

    .line 6941
    :pswitch_6a
    const-string p1, "MSG_DIE"

    return-object p1

    .line 6939
    :pswitch_6d
    const-string p1, "MSG_INVALIDATE_RECT"

    return-object p1

    .line 6937
    :pswitch_70
    const-string p1, "MSG_INVALIDATE"

    return-object p1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_5
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_5
        :pswitch_3a
        :pswitch_5
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_5
        :pswitch_5
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_5
        :pswitch_1f
        :pswitch_1c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 7022
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 7023
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7026
    :cond_f
    :try_start_f
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->handleMessageImpl(Landroid/os/Message;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    .line 7028
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7029
    nop

    .line 7030
    return-void

    .line 7028
    :catchall_17
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7029
    throw p1
.end method

.method public whitelist sendMessageAtTime(Landroid/os/Message;J)Z
    .registers 6

    .line 7012
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_13

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_b

    goto :goto_13

    .line 7014
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Attempted to call MSG_REQUEST_KEYBOARD_SHORTCUTS with null receiver:"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7017
    :cond_13
    :goto_13
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
