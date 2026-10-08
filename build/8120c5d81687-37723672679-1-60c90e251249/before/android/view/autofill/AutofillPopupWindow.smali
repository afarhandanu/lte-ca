.class public Landroid/view/autofill/AutofillPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AutofillPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AutofillPopupWindow"


# instance fields
.field private greylist-max-o mFullScreen:Z

.field private final greylist-max-o mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private greylist-max-o mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final greylist-max-o mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 3

    .line 80
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 52
    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/view/autofill/AutofillPopupWindow$1;-><init>(Landroid/view/autofill/AutofillPopupWindow;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 81
    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-direct {v0, p0, p1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;-><init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/view/autofill/IAutofillWindowPresenter;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    .line 83
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillPopupWindow;->setTouchModal(Z)V

    .line 84
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillPopupWindow;->setOutsideTouchable(Z)V

    .line 85
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setInputMethodMode(I)V

    .line 86
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillPopupWindow;->setFocusable(Z)V

    .line 87
    return-void
.end method

.method static synthetic blacklist lambda$update$0([ILandroid/view/View;IIII)V
    .registers 7

    .line 213
    const/4 p1, 0x0

    aget v0, p0, p1

    sub-int/2addr p2, p4

    sub-int/2addr v0, p2

    aput v0, p0, p1

    .line 214
    const/4 p1, 0x1

    aget p2, p0, p1

    sub-int/2addr p3, p5

    sub-int/2addr p2, p3

    aput p2, p0, p1

    .line 215
    return-void
.end method


# virtual methods
.method protected greylist-max-o attachToAnchor(Landroid/view/View;III)V
    .registers 5

    .line 290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 291
    iget-object p2, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 292
    return-void
.end method

.method protected greylist-max-o detachFromAnchor()V
    .registers 3

    .line 296
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_b

    .line 298
    iget-object v1, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 300
    :cond_b
    invoke-super {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 301
    return-void
.end method

.method public whitelist dismiss()V
    .registers 3

    .line 305
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2f

    .line 309
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setShowing(Z)V

    .line 310
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setTransitioningToDismiss(Z)V

    .line 312
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->hide(Landroid/graphics/Rect;)V

    .line 313
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->detachFromAnchor()V

    .line 314
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 315
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 317
    :cond_2e
    return-void

    .line 306
    :cond_2f
    :goto_2f
    return-void
.end method

.method protected greylist-max-o findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 10

    .line 251
    iget-boolean v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v0, :cond_10

    .line 253
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 254
    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 255
    iput p5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 256
    iput p6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 257
    iput p7, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 258
    const/4 p1, 0x0

    return p1

    .line 260
    :cond_10
    invoke-super/range {p0 .. p8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p1

    return p1
.end method

.method public whitelist getAnimationStyle()I
    .registers 3

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getContentView()Landroid/view/View;
    .registers 3

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public whitelist getElevation()F
    .registers 3

    .line 336
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .registers 3

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .registers 3

    .line 346
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o hasContentView()Z
    .registers 2

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o hasDecorView()Z
    .registers 2

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 351
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 3

    .line 356
    if-nez p1, :cond_3

    .line 359
    return-void

    .line 357
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setElevation(F)V
    .registers 3

    .line 363
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .registers 3

    .line 368
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .registers 3

    .line 373
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 3

    .line 378
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist showAsDropDown(Landroid/view/View;III)V
    .registers 15

    .line 266
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_3f

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showAsDropDown(): anchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isShowing(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    const-string v1, "AutofillPopupWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_3f
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 271
    return-void

    .line 274
    :cond_46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setShowing(Z)V

    .line 275
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setDropDown(Z)V

    .line 276
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillPopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 277
    nop

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 277
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput-object v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 279
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 280
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getAllowScrollingAnchorParent()Z

    move-result v9

    .line 279
    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/view/autofill/AutofillPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p1

    .line 281
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillPopupWindow;->updateAboveAnchor(Z)V

    .line 282
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, v3, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 283
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 284
    iget-object p1, v1, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isLayoutInsetDecor()Z

    move-result p3

    .line 285
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result p4

    .line 284
    invoke-virtual {p1, v3, p2, p3, p4}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    .line 286
    return-void
.end method

.method public greylist-max-o update(Landroid/view/View;IIIILandroid/graphics/Rect;)V
    .registers 18

    .line 109
    move/from16 v5, p5

    move-object/from16 v0, p6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p4, v3, :cond_b

    move v6, v1

    goto :goto_c

    :cond_b
    move v6, v2

    :goto_c
    iput-boolean v6, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    .line 117
    iget-boolean v6, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v6, :cond_15

    const/16 v6, 0x7d8

    goto :goto_17

    .line 118
    :cond_15
    const/16 v6, 0x3ed

    .line 117
    :goto_17
    invoke-virtual {p0, v6}, Landroid/view/autofill/AutofillPopupWindow;->setWindowLayoutType(I)V

    .line 124
    iget-boolean v6, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v6, :cond_48

    .line 125
    nop

    .line 126
    nop

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/view/WindowManager;

    .line 131
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 132
    nop

    .line 133
    invoke-interface {p2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p2

    .line 132
    invoke-static {p2}, Landroid/window/WindowMetricsHelper;->getBoundsExcludingNavigationBarAndCutout(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p2

    .line 134
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 135
    if-eq v5, v3, :cond_41

    .line 136
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr p2, v5

    goto :goto_42

    .line 135
    :cond_41
    move p2, v2

    .line 138
    :goto_42
    nop

    .line 139
    move-object v1, p1

    move p1, p2

    move v4, v0

    move p2, v2

    goto :goto_86

    :cond_48
    if-eqz v0, :cond_83

    .line 140
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    filled-new-array {v6, v7}, [I

    move-result-object v6

    .line 141
    new-instance v7, Landroid/view/autofill/AutofillPopupWindow$2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, p0, v8, v6, p1}, Landroid/view/autofill/AutofillPopupWindow$2;-><init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/content/Context;[ILandroid/view/View;)V

    .line 206
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setScrollX(I)V

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setScrollY(I)V

    .line 212
    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0, v6}, Landroid/view/autofill/AutofillPopupWindow$$ExternalSyntheticLambda0;-><init>([I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 216
    invoke-virtual {v7, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 217
    move p1, p3

    move v4, p4

    move-object v1, v7

    goto :goto_86

    .line 218
    :cond_83
    move-object v1, p1

    move p1, p3

    move v4, p4

    .line 221
    :goto_86
    iget-boolean v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-nez v0, :cond_8e

    .line 223
    invoke-virtual {p0, v3}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    goto :goto_9a

    .line 224
    :cond_8e
    if-ne v5, v3, :cond_94

    .line 226
    invoke-virtual {p0, v2}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    goto :goto_9a

    .line 229
    :cond_94
    const v0, 0x1030320

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    .line 231
    :goto_9a
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 232
    invoke-virtual {p0, v4}, Landroid/view/autofill/AutofillPopupWindow;->setWidth(I)V

    .line 233
    invoke-virtual {p0, v5}, Landroid/view/autofill/AutofillPopupWindow;->setHeight(I)V

    .line 234
    invoke-virtual {p0, v1, p2, p1}, Landroid/view/autofill/AutofillPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_b0

    .line 236
    :cond_aa
    move-object v0, p0

    move v3, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIII)V

    .line 238
    :goto_b0
    return-void
.end method

.method protected greylist-max-o update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 6

    .line 242
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    goto :goto_8

    .line 243
    :cond_7
    const/4 p1, 0x3

    .line 244
    :goto_8
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isLayoutInsetDecor()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    .line 246
    return-void
.end method
