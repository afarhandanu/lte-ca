.class public Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TN"
.end annotation


# static fields
.field private static final greylist-max-o CANCEL:I = 0x2

.field private static final greylist-max-o HIDE:I = 0x1

.field private static final greylist-max-o SHOW:I


# instance fields
.field private final blacklist mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field greylist-max-o mDuration:I

.field greylist-max-p mGravity:I

.field final greylist-max-o mHandler:Landroid/os/Handler;

.field greylist-max-o mHorizontalMargin:F

.field greylist-max-p mNextView:Landroid/view/View;

.field greylist-max-p mNextViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-p mParams:Landroid/view/WindowManager$LayoutParams;

.field private final blacklist mPresenter:Landroid/widget/ToastPresenter;

.field final blacklist mToken:Landroid/os/Binder;

.field greylist-max-o mVerticalMargin:F

.field greylist-max-p mView:Landroid/view/View;

.field greylist-max-o mWM:Landroid/view/WindowManager;

.field greylist-max-o mX:I

.field greylist-max-p mY:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;
    .registers 1

    iget-object p0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Binder;Ljava/util/List;Landroid/os/Looper;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Binder;",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 668
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 669
    nop

    .line 670
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 669
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 671
    new-instance v1, Landroid/widget/ToastPresenter;

    invoke-static {}, Landroid/widget/Toast;->-$$Nest$smgetService()Landroid/app/INotificationManager;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2, p2}, Landroid/widget/ToastPresenter;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;Landroid/app/INotificationManager;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    .line 673
    iget-object p1, p0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    invoke-virtual {p1}, Landroid/widget/ToastPresenter;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 674
    iput-object p2, p0, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    .line 675
    iput-object p3, p0, Landroid/widget/Toast$TN;->mToken:Landroid/os/Binder;

    .line 676
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/widget/Toast$TN;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 678
    new-instance p1, Landroid/widget/Toast$TN$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p5, p2}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    .line 708
    return-void
.end method

.method private blacklist getCallbacks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation

    .line 711
    iget-object v0, p0, Landroid/widget/Toast$TN;->mCallbacks:Ljava/lang/ref/WeakReference;

    monitor-enter v0

    .line 712
    :try_start_3
    iget-object v1, p0, Landroid/widget/Toast$TN;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 713
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/Toast$TN;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 715
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object v1

    .line 717
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .registers 3

    .line 741
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 742
    return-void
.end method

.method public blacklist getNextView()Landroid/view/View;
    .registers 2

    .line 787
    iget-object v0, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public greylist handleHide()V
    .registers 6

    .line 769
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 770
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    invoke-virtual {v1}, Landroid/widget/ToastPresenter;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v1, "Trying to hide toast view different than the last one displayed"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 772
    iget-object v0, p0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    new-instance v1, Landroid/widget/Toast$CallbackBinder;

    invoke-direct {p0}, Landroid/widget/Toast$TN;->getCallbacks()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast-IA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToastPresenter;->hide(Landroid/app/ITransientNotificationCallback;)V

    .line 773
    iput-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 775
    :cond_29
    return-void
.end method

.method public greylist-max-o handleShow(Landroid/os/IBinder;)V
    .registers 15

    .line 751
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_4b

    .line 754
    :cond_13
    iget-object v0, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v0, v1, :cond_4a

    .line 756
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 757
    iget-object v0, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 758
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_4a

    .line 759
    iget-object v1, p0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/Toast$TN;->mToken:Landroid/os/Binder;

    iget v5, p0, Landroid/widget/Toast$TN;->mDuration:I

    iget v6, p0, Landroid/widget/Toast$TN;->mGravity:I

    iget v7, p0, Landroid/widget/Toast$TN;->mX:I

    iget v8, p0, Landroid/widget/Toast$TN;->mY:I

    iget v9, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iget v10, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    new-instance v11, Landroid/widget/Toast$CallbackBinder;

    .line 761
    invoke-direct {p0}, Landroid/widget/Toast$TN;->getCallbacks()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v4, v12}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast-IA;)V

    .line 759
    move-object v4, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/ToastPresenter;->show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;)V

    .line 764
    :cond_4a
    return-void

    .line 752
    :cond_4b
    :goto_4b
    return-void
.end method

.method public greylist-max-o hide()V
    .registers 3

    .line 736
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 737
    return-void
.end method

.method public greylist-max-p show(Landroid/os/IBinder;)V
    .registers 4

    .line 727
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 728
    return-void
.end method
