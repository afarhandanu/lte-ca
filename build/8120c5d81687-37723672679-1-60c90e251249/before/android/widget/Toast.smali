.class public Landroid/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN;,
        Landroid/widget/Toast$CallbackBinder;,
        Landroid/widget/Toast$Callback;,
        Landroid/widget/Toast$Duration;
    }
.end annotation


# static fields
.field private static final blacklist CHANGE_TEXT_TOASTS_IN_THE_SYSTEM:J = 0x8cf3b87L

.field public static final whitelist LENGTH_LONG:I = 0x1

.field public static final whitelist LENGTH_SHORT:I = 0x0

.field static final greylist-max-o TAG:Ljava/lang/String; = "Toast"

.field static final greylist-max-o localLOGV:Z = false

.field private static greylist-max-p sService:Landroid/app/INotificationManager;


# instance fields
.field private final blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field greylist mDuration:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private greylist-max-o mNextView:Landroid/view/View;

.field final greylist-max-p mTN:Landroid/widget/Toast$TN;

.field private blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mToken:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetService()Landroid/app/INotificationManager;
    .registers 1

    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 164
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 10

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    .line 172
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    .line 173
    invoke-direct {p0, p2}, Landroid/widget/Toast;->getLooper(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object v6

    .line 174
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    .line 175
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    .line 176
    new-instance v1, Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget-object v5, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/Toast$TN;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Binder;Ljava/util/List;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 178
    iget-object p1, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10503c1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/Toast$TN;->mY:I

    .line 180
    iget-object p1, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0161

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p1, Landroid/widget/Toast$TN;->mGravity:I

    .line 182
    return-void
.end method

.method private blacklist getLooper(Landroid/os/Looper;)Landroid/os/Looper;
    .registers 3

    .line 185
    if-eqz p1, :cond_3

    .line 186
    return-object p1

    .line 188
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    const-string v0, "Can\'t toast on a thread that has not called Looper.prepare()"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    return-object p1
.end method

.method private static greylist-max-p getService()Landroid/app/INotificationManager;
    .registers 1

    .line 614
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_7

    .line 615
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    return-object v0

    .line 617
    :cond_7
    nop

    .line 618
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 617
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    .line 619
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    return-object v0
.end method

.method private blacklist isSystemRenderedTextToast()Z
    .registers 3

    .line 445
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static blacklist makeCustomToastWithIcon(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)Landroid/widget/Toast;
    .registers 6

    .line 536
    if-eqz p4, :cond_10

    .line 541
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 542
    invoke-static {p0, p2, p4}, Landroid/widget/ToastPresenter;->getTextToastViewWithIcon(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object p0

    iput-object p0, v0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 543
    iput p3, v0, Landroid/widget/Toast;->mDuration:I

    .line 544
    return-object v0

    .line 537
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Drawable icon should not be null for makeCustomToastWithIcon"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 7

    .line 512
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 514
    const-wide/32 v1, 0x8cf3b87

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 515
    iput-object p2, v0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    goto :goto_17

    .line 517
    :cond_11
    invoke-static {p0, p2}, Landroid/widget/ToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p0

    iput-object p0, v0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 520
    :goto_17
    iput p3, v0, Landroid/widget/Toast;->mDuration:I

    .line 521
    return-object v0
.end method

.method public static whitelist makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 4

    .line 501
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist addCallback(Landroid/widget/Toast$Callback;)V
    .registers 4

    .line 456
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 458
    :try_start_6
    iget-object v1, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    monitor-exit v0

    .line 460
    return-void

    .line 459
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public whitelist cancel()V
    .registers 4

    .line 248
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_1f

    .line 251
    :try_start_d
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    goto :goto_1e

    .line 252
    :catch_1d
    move-exception v0

    .line 254
    :goto_1e
    goto :goto_24

    .line 256
    :cond_1f
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->cancel()V

    .line 258
    :goto_24
    return-void
.end method

.method public whitelist getDuration()I
    .registers 2

    .line 317
    iget v0, p0, Landroid/widget/Toast;->mDuration:I

    return v0
.end method

.method public whitelist getGravity()I
    .registers 3

    .line 405
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 406
    const-string v0, "Toast"

    const-string v1, "getGravity() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mGravity:I

    return v0
.end method

.method public whitelist getHorizontalMargin()F
    .registers 3

    .line 351
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 352
    const-string v0, "Toast"

    const-string v1, "getHorizontalMargin() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    return v0
.end method

.method public blacklist getTn()Landroid/widget/Toast$TN;
    .registers 2

    .line 601
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    return-object v0
.end method

.method public whitelist getVerticalMargin()F
    .registers 3

    .line 367
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 368
    const-string v0, "Toast"

    const-string v1, "getVerticalMargin() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return v0
.end method

.method public whitelist getView()Landroid/view/View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public greylist getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .registers 3

    .line 477
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 478
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 480
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {v0}, Landroid/widget/Toast$TN;->-$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0

    .line 483
    :cond_14
    const/4 v0, 0x0

    return-object v0

    .line 487
    :cond_16
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {v0}, Landroid/widget/Toast$TN;->-$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getXOffset()I
    .registers 3

    .line 421
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 422
    const-string v0, "Toast"

    const-string v1, "getXOffset() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mX:I

    return v0
.end method

.method public whitelist getYOffset()I
    .registers 3

    .line 437
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 438
    const-string v0, "Toast"

    const-string v1, "getYOffset() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mY:I

    return v0
.end method

.method public whitelist removeCallback(Landroid/widget/Toast$Callback;)V
    .registers 4

    .line 466
    iget-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 467
    :try_start_3
    iget-object v1, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 468
    monitor-exit v0

    .line 469
    return-void

    .line 468
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public whitelist setDuration(I)V
    .registers 3

    .line 307
    iput p1, p0, Landroid/widget/Toast;->mDuration:I

    .line 308
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mDuration:I

    .line 309
    return-void
.end method

.method public whitelist setGravity(III)V
    .registers 6

    .line 385
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 386
    const-string v0, "Toast"

    const-string/jumbo v1, "setGravity() shouldn\'t be called on text toasts, the values won\'t be used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_e
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 389
    iget-object p1, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, p1, Landroid/widget/Toast$TN;->mX:I

    .line 390
    iget-object p1, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p3, p1, Landroid/widget/Toast$TN;->mY:I

    .line 391
    return-void
.end method

.method public whitelist setMargin(FF)V
    .registers 5

    .line 335
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 336
    const-string v0, "Toast"

    const-string/jumbo v1, "setMargin() shouldn\'t be called on text toasts, the values won\'t be used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_e
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    .line 339
    iget-object p1, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, p1, Landroid/widget/Toast$TN;->mVerticalMargin:F

    .line 340
    return-void
.end method

.method public whitelist setText(I)V
    .registers 3

    .line 567
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 568
    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)V
    .registers 5

    .line 575
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 576
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_10

    .line 581
    iput-object p1, p0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    goto :goto_2e

    .line 577
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Text provided for custom toast, remove previous setView() calls if you want a text toast instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 583
    :cond_18
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const-string v1, "This Toast was not created with Toast.makeText()"

    if-eqz v0, :cond_35

    .line 586
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 587
    if-eqz v0, :cond_2f

    .line 590
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    :goto_2e
    return-void

    .line 588
    :cond_2f
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 584
    :cond_35
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setView(Landroid/view/View;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iput-object p1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 274
    return-void
.end method

.method public whitelist show()V
    .registers 12

    .line 199
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 200
    iget-object v2, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v2, :cond_14

    iget-object v2, p0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v2, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v2, 0x1

    :goto_15
    const-string v3, "You must either set a text or a view"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    goto :goto_1f

    .line 202
    :cond_1b
    iget-object v2, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v2, :cond_8e

    .line 207
    :goto_1f
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    .line 208
    iget-object v2, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 209
    iget-object v6, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 210
    iget-object v2, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    iput-object v2, v6, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 211
    iget-object v2, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->isUiContext()Z

    move-result v8

    .line 212
    iget-object v2, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v9

    .line 214
    nop

    .line 216
    const/4 v2, 0x0

    :try_start_3d
    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_41} :catch_87
    .catchall {:try_start_3d .. :try_end_41} :catchall_81

    if-eqz v0, :cond_6e

    .line 217
    :try_start_43
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_52

    .line 219
    iget-object v5, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget v7, p0, Landroid/widget/Toast;->mDuration:I

    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IZI)Z

    move-result v0
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4f} :catch_6b
    .catchall {:try_start_43 .. :try_end_4f} :catchall_68

    move-object v1, v6

    move-object v6, v1

    goto :goto_78

    .line 223
    :cond_52
    move-object v1, v6

    :try_start_53
    new-instance v10, Landroid/widget/Toast$CallbackBinder;

    iget-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    iget-object v5, p0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    invoke-direct {v10, v0, v5, v2}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast-IA;)V

    .line 225
    iget-object v5, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget-object v6, p0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    iget v7, p0, Landroid/widget/Toast;->mDuration:I

    invoke-interface/range {v3 .. v10}, Landroid/app/INotificationManager;->enqueueTextToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IZILandroid/app/ITransientNotificationCallback;)Z

    move-result v0

    .line 227
    move-object v6, v1

    goto :goto_78

    .line 235
    :catchall_68
    move-exception v0

    move-object v1, v6

    goto :goto_82

    .line 232
    :catch_6b
    move-exception v0

    move-object v1, v6

    goto :goto_88

    .line 229
    :cond_6e
    move-object v1, v6

    iget-object v5, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget v7, p0, Landroid/widget/Toast;->mDuration:I
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_73} :catch_7e
    .catchall {:try_start_53 .. :try_end_73} :catchall_7b

    move-object v6, v1

    :try_start_74
    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IZI)Z

    move-result v0
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_78} :catch_87
    .catchall {:try_start_74 .. :try_end_78} :catchall_81

    .line 235
    :goto_78
    if-nez v0, :cond_8d

    .line 236
    goto :goto_89

    .line 235
    :catchall_7b
    move-exception v0

    move-object v6, v1

    goto :goto_82

    .line 232
    :catch_7e
    move-exception v0

    move-object v6, v1

    goto :goto_88

    .line 235
    :catchall_81
    move-exception v0

    .line 236
    :goto_82
    iput-object v2, v6, Landroid/widget/Toast$TN;->mNextViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 237
    iput-object v2, v6, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 239
    throw v0

    .line 232
    :catch_87
    move-exception v0

    .line 235
    :goto_88
    nop

    .line 236
    :goto_89
    iput-object v2, v6, Landroid/widget/Toast$TN;->mNextViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 237
    iput-object v2, v6, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 240
    :cond_8d
    return-void

    .line 203
    :cond_8e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setView must have been called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
