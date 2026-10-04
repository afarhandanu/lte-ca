.class public abstract Landroid/widget/ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ForwardingListener$DisallowIntercept;,
        Landroid/widget/ForwardingListener$TriggerLongPress;
    }
.end annotation


# instance fields
.field private greylist-max-o mActivePointerId:I

.field private greylist-max-o mDisallowIntercept:Ljava/lang/Runnable;

.field private greylist-max-o mForwarding:Z

.field private final greylist-max-o mLongPressTimeout:I

.field private final greylist-max-o mScaledTouchSlop:F

.field private final greylist-max-o mSrc:Landroid/view/View;

.field private final greylist-max-o mTapTimeout:I

.field private greylist-max-o mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSrc(Landroid/widget/ForwardingListener;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monLongPress(Landroid/widget/ForwardingListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/ForwardingListener;->onLongPress()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/View;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ForwardingListener;->mScaledTouchSlop:F

    .line 68
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 69
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 70
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getTapTimeoutMillis()I

    move-result v0

    goto :goto_30

    :cond_2c
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    :goto_30
    iput v0, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    .line 71
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getLongPressTimeoutMillis()I

    move-result p1

    goto :goto_4c

    .line 73
    :cond_37
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getTapTimeoutMillis()I

    move-result p1

    goto :goto_46

    :cond_42
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    :goto_46
    iput p1, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    .line 75
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    .line 79
    :goto_4c
    iget v0, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/ForwardingListener;->mLongPressTimeout:I

    .line 80
    return-void
.end method

.method private greylist-max-o clearCallbacks()V
    .registers 3

    .line 218
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 219
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 222
    :cond_b
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 223
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 225
    :cond_16
    return-void
.end method

.method private greylist-max-o onLongPress()V
    .registers 12

    .line 228
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    .line 230
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_37

    .line 237
    :cond_12
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v1

    if-nez v1, :cond_19

    .line 238
    return-void

    .line 242
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 246
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-wide v5, v3

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 248
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 250
    iput-boolean v2, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 251
    return-void

    .line 234
    :cond_37
    :goto_37
    return-void
.end method

.method private greylist-max-o onTouchForwarded(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 261
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 262
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v1

    .line 263
    const/4 v2, 0x0

    if-eqz v1, :cond_46

    invoke-interface {v1}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_46

    .line 267
    :cond_10
    invoke-interface {v1}, Lcom/android/internal/view/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Landroid/widget/DropDownListView;

    .line 268
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Landroid/widget/DropDownListView;->isShown()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_45

    .line 273
    :cond_1f
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 274
    invoke-virtual {v0, v3}, Landroid/view/View;->toGlobalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 275
    invoke-virtual {v1, v3}, Landroid/widget/DropDownListView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 278
    iget v0, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {v1, v3, v0}, Landroid/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    .line 279
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 283
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3e

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3e

    move p1, v1

    goto :goto_3f

    :cond_3e
    move p1, v2

    .line 286
    :goto_3f
    if-eqz v0, :cond_44

    if-eqz p1, :cond_44

    move v2, v1

    :cond_44
    return v2

    .line 269
    :cond_45
    :goto_45
    return v2

    .line 264
    :cond_46
    :goto_46
    return v2
.end method

.method private greylist-max-o onTouchObserved(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 172
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 174
    return v2

    .line 177
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 178
    packed-switch v1, :pswitch_data_6a

    goto :goto_69

    .line 193
    :pswitch_12
    iget v1, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 194
    if-ltz v1, :cond_69

    .line 195
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 196
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 199
    iget v1, p0, Landroid/widget/ForwardingListener;->mScaledTouchSlop:F

    invoke-virtual {v0, v3, p1, v1}, Landroid/view/View;->pointInView(FFF)Z

    move-result p1

    if-nez p1, :cond_36

    .line 200
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    .line 203
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 204
    return v0

    .line 206
    :cond_36
    goto :goto_69

    .line 210
    :pswitch_37
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    goto :goto_69

    .line 180
    :pswitch_3b
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    .line 182
    iget-object p1, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-nez p1, :cond_4d

    .line 183
    new-instance p1, Landroid/widget/ForwardingListener$DisallowIntercept;

    invoke-direct {p1, p0, v1}, Landroid/widget/ForwardingListener$DisallowIntercept;-><init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener-IA;)V

    iput-object p1, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 185
    :cond_4d
    iget-object p1, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v3, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, p1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    iget-object p1, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez p1, :cond_60

    .line 188
    new-instance p1, Landroid/widget/ForwardingListener$TriggerLongPress;

    invoke-direct {p1, p0, v1}, Landroid/widget/ForwardingListener$TriggerLongPress;-><init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener-IA;)V

    iput-object p1, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 190
    :cond_60
    iget-object p1, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/ForwardingListener;->mLongPressTimeout:I

    int-to-long v3, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    nop

    .line 214
    :cond_69
    :goto_69
    return v2

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_37
        :pswitch_12
        :pswitch_37
    .end packed-switch
.end method


# virtual methods
.method public abstract greylist-max-o getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
.end method

.method protected greylist-max-o onForwardingStarted()Z
    .registers 3

    .line 141
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_f

    .line 143
    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->show()V

    .line 145
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o onForwardingStopped()Z
    .registers 3

    .line 158
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 160
    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->dismiss()V

    .line 162
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13

    .line 96
    iget-boolean p1, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 98
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 99
    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_15

    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->onForwardingStopped()Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_15

    :cond_13
    move p2, v1

    goto :goto_3d

    :cond_15
    :goto_15
    move p2, v0

    goto :goto_3d

    .line 101
    :cond_17
    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->onForwardingStarted()Z

    move-result p2

    if-eqz p2, :cond_25

    move p2, v0

    goto :goto_26

    :cond_25
    move p2, v1

    .line 103
    :goto_26
    if-eqz p2, :cond_3d

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 106
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 108
    iget-object v3, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 109
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 113
    :cond_3d
    :goto_3d
    iput-boolean p2, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 114
    if-nez p2, :cond_45

    if-eqz p1, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    :cond_45
    :goto_45
    return v0
.end method

.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 119
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 123
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 124
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    .line 126
    iget-object p1, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz p1, :cond_11

    .line 127
    iget-object p1, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 129
    :cond_11
    return-void
.end method
