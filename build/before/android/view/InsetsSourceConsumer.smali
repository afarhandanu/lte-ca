.class public Landroid/view/InsetsSourceConsumer;
.super Ljava/lang/Object;
.source "InsetsSourceConsumer.java"


# static fields
.field protected static final blacklist ANIMATION_STATE_HIDE:I = 0x2

.field protected static final blacklist ANIMATION_STATE_NONE:I = 0x0

.field protected static final blacklist ANIMATION_STATE_SHOW:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "InsetsSourceConsumer"


# instance fields
.field protected blacklist mAnimationState:I

.field protected final blacklist mController:Landroid/view/InsetsController;

.field private blacklist mHasViewFocusWhenWindowFocusGain:Z

.field private blacklist mHasWindowFocus:Z

.field private final blacklist mId:I

.field private blacklist mPendingFrame:Landroid/graphics/Rect;

.field private blacklist mPendingVisibleFrame:Landroid/graphics/Rect;

.field private blacklist mSourceControl:Landroid/view/InsetsSourceControl;

.field protected final blacklist mState:Landroid/view/InsetsState;

.field private blacklist mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private final blacklist mType:I


# direct methods
.method public constructor blacklist <init>(IILandroid/view/InsetsState;Landroid/view/InsetsController;)V
    .registers 6

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    .line 75
    sget-object v0, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->DEFAULT:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    iput-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    .line 78
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSourceConsumer;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 98
    iput p1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    .line 99
    iput p2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    .line 100
    iput-object p3, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    .line 101
    iput-object p4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 102
    return-void
.end method

.method private blacklist applyRequestedVisibilityAndPositionToControl()V
    .registers 8

    .line 397
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v0, :cond_5

    .line 398
    return-void

    .line 400
    :cond_5
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 401
    if-nez v0, :cond_e

    .line 402
    return-void

    .line 405
    :cond_e
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v1

    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    move v1, v2

    goto :goto_1e

    :cond_1d
    move v1, v3

    .line 406
    :goto_1e
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v4

    .line 411
    iget-object v5, p0, Landroid/view/InsetsSourceConsumer;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 412
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    new-array v2, v2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    new-instance v5, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v5, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 414
    invoke-virtual {v5, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    .line 415
    if-eqz v1, :cond_41

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_42

    :cond_41
    const/4 v5, 0x0

    :goto_42
    invoke-virtual {v0, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    iget-object v5, p0, Landroid/view/InsetsSourceConsumer;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 416
    invoke-virtual {v0, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v0

    aput-object v0, v2, v3

    .line 412
    invoke-interface {v4, v2}, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 419
    invoke-virtual {p0, v1}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    .line 420
    return-void
.end method


# virtual methods
.method public blacklist applyLocalVisibilityOverride()Z
    .registers 7

    .line 297
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 298
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 300
    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 298
    const-string v2, "ImeInsetsSourceConsumer#applyLocalVisibilityOverride"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 302
    :cond_1c
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 303
    const/4 v1, 0x0

    if-eqz v0, :cond_65

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_65

    .line 306
    :cond_30
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v2

    iget v3, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_3e

    move v2, v3

    goto :goto_3f

    :cond_3e
    move v2, v1

    .line 310
    :goto_3f
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v4, :cond_44

    .line 318
    return v1

    .line 322
    :cond_44
    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    sget v5, Landroid/view/InsetsSource;->ID_IME:I

    if-ne v4, v5, :cond_5a

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    if-nez v4, :cond_5a

    .line 330
    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    .line 331
    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 334
    return v2

    .line 336
    :cond_5a
    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-ne v4, v2, :cond_61

    .line 337
    return v1

    .line 341
    :cond_61
    invoke-virtual {v0, v2}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 342
    return v3

    .line 304
    :cond_65
    :goto_65
    return v1
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 423
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 424
    const-wide v0, 0x10800000002L

    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 425
    const-wide v0, 0x10800000003L

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isShowRequested()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 426
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_28

    .line 427
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/InsetsSourceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 429
    :cond_28
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_36

    .line 430
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 432
    :cond_36
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_44

    .line 433
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 435
    :cond_44
    const-wide v0, 0x10500000007L

    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 436
    const-wide v0, 0x10500000008L

    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 437
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 438
    return-void
.end method

.method public blacklist getControl()Landroid/view/InsetsSourceControl;
    .registers 2

    .line 204
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    return-object v0
.end method

.method blacklist getId()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    return v0
.end method

.method blacklist getType()I
    .registers 2

    .line 222
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    return v0
.end method

.method blacklist hasViewFocusWhenWindowFocusGain()Z
    .registers 2

    .line 292
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    return v0
.end method

.method protected blacklist isRequestedVisibleAwaitingControl()Z
    .registers 3

    .line 213
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method protected blacklist isShowRequested()Z
    .registers 3

    .line 273
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public blacklist onAnimationStateChanged(Z)Z
    .registers 8

    .line 240
    nop

    .line 241
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_26

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_26

    .line 242
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v3, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 243
    if-eqz v2, :cond_1f

    .line 244
    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 245
    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 246
    move v2, v0

    goto :goto_20

    .line 243
    :cond_1f
    move v2, v1

    .line 248
    :goto_20
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 249
    iput-object v3, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    goto :goto_27

    .line 252
    :cond_26
    move v2, v1

    :goto_27
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isShowRequested()Z

    move-result v3

    .line 253
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 254
    invoke-virtual {v4}, Landroid/view/InsetsController;->getCancelledForNewAnimationTypes()I

    move-result v4

    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_38

    move v4, v0

    goto :goto_39

    :cond_38
    move v4, v1

    .line 256
    :goto_39
    if-eqz p1, :cond_40

    .line 257
    if-eqz v3, :cond_3e

    goto :goto_41

    :cond_3e
    const/4 v0, 0x2

    goto :goto_41

    .line 258
    :cond_40
    move v0, v1

    :goto_41
    iput v0, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    .line 266
    if-nez v4, :cond_4a

    .line 267
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result p1

    or-int/2addr v2, p1

    .line 269
    :cond_4a
    return v2
.end method

.method public blacklist onPerceptible(Z)V
    .registers 4

    .line 352
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 353
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_21

    .line 355
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->reportPerceptible(Landroid/os/IBinder;Z)V

    .line 359
    :cond_21
    return-void
.end method

.method public blacklist onWindowFocusGained(Z)V
    .registers 3

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    .line 281
    iput-boolean p1, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    .line 282
    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .registers 2

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    .line 289
    return-void
.end method

.method public blacklist removeSurface()V
    .registers 3

    .line 365
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 366
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_21

    .line 368
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->removeImeSurfaceFromWindow(Landroid/os/IBinder;)V

    .line 371
    :cond_21
    return-void
.end method

.method public blacklist setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z
    .registers 11

    .line 118
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 119
    iget-object p2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz p2, :cond_1d

    iget-object p2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eq p2, p1, :cond_1d

    .line 120
    iget-object p2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    new-instance p3, Landroid/view/InsetsController$$ExternalSyntheticLambda7;

    invoke-direct {p3}, Landroid/view/InsetsController$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 121
    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 123
    :cond_1d
    return v1

    .line 126
    :cond_1e
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 127
    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 128
    nop

    .line 133
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v3, 0x1

    if-nez v2, :cond_68

    .line 135
    iget-object p1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p1, p0}, Landroid/view/InsetsController;->notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V

    .line 138
    iget-object p1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget p2, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {p1, p2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p1

    .line 139
    iget-object p2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p2}, Landroid/view/InsetsController;->getLastDispatchedState()Landroid/view/InsetsState;

    move-result-object p2

    iget p3, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {p2, p3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p2

    .line 140
    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p3

    if-eqz p3, :cond_4b

    move p3, v3

    goto :goto_4c

    :cond_4b
    move p3, v1

    .line 141
    :goto_4c
    if-eqz p2, :cond_55

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_55

    move v1, v3

    .line 142
    :cond_55
    if-eqz p1, :cond_5a

    .line 143
    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 145
    :cond_5a
    if-eq p3, v1, :cond_61

    .line 146
    iget-object p1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p1}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 150
    :cond_61
    sget-object p1, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->DEFAULT:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    invoke-virtual {p0, p1}, Landroid/view/InsetsSourceConsumer;->setSurfaceParamsApplier(Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;)V

    .line 151
    goto/16 :goto_ef

    .line 152
    :cond_68
    if-eqz v0, :cond_8f

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 153
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {v2}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v2

    .line 154
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v4}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v4

    if-eq v2, v4, :cond_8f

    .line 157
    aget v2, p4, v1

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr v2, v4

    aput v2, p4, v1

    .line 159
    :cond_8f
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result p4

    .line 160
    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    goto :goto_9b

    :cond_9a
    const/4 v2, 0x0

    .line 161
    :goto_9b
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 162
    if-eqz v4, :cond_d0

    if-eqz v2, :cond_a9

    invoke-virtual {v4, v2}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v2

    if-nez v2, :cond_d0

    .line 163
    :cond_a9
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->isInitiallyVisible()Z

    move-result p1

    if-eq p4, p1, :cond_d0

    .line 168
    if-eqz p4, :cond_b9

    .line 169
    aget p1, p2, v1

    iget p3, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr p1, p3

    aput p1, p2, v1

    goto :goto_c0

    .line 171
    :cond_b9
    aget p1, p3, v1

    iget p2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr p1, p2

    aput p1, p3, v1

    .line 173
    :goto_c0
    if-eqz v0, :cond_ef

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->isFake()Z

    move-result p1

    if-eqz p1, :cond_ef

    .line 174
    aget p1, p5, v1

    iget p2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr p1, p2

    aput p1, p5, v1

    goto :goto_ef

    .line 179
    :cond_d0
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result p1

    if-eqz p1, :cond_db

    .line 180
    iget-object p1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p1}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 185
    :cond_db
    iget-object p1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    iget p2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {p1, p2}, Landroid/view/InsetsController;->hasSurfaceAnimation(I)Z

    move-result p1

    if-nez p1, :cond_e8

    .line 186
    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->applyRequestedVisibilityAndPositionToControl()V

    .line 190
    :cond_e8
    if-nez p4, :cond_ef

    if-nez v0, :cond_ef

    .line 191
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    .line 195
    :cond_ef
    :goto_ef
    if-eqz v0, :cond_f9

    .line 196
    new-instance p1, Landroid/view/InsetsController$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Landroid/view/InsetsController$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 198
    :cond_f9
    return v3
.end method

.method blacklist setSurfaceParamsApplier(Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;)V
    .registers 2

    .line 232
    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    .line 233
    return-void
.end method

.method public blacklist updateSource(Landroid/view/InsetsSource;I)V
    .registers 6

    .line 375
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 376
    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    const/4 v2, -0x1

    if-eq p2, v2, :cond_4f

    .line 377
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    goto :goto_4f

    .line 386
    :cond_1d
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 387
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_38

    .line 388
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_39

    .line 389
    :cond_38
    nop

    :goto_39
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    .line 390
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 391
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 392
    iget-object p2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {p2, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 394
    return-void

    .line 378
    :cond_4f
    :goto_4f
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 379
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    .line 380
    iget-object p2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {p2, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 381
    return-void
.end method
