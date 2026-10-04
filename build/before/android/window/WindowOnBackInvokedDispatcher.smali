.class public Landroid/window/WindowOnBackInvokedDispatcher;
.super Ljava/lang/Object;
.source "WindowOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/window/OnBackInvokedDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowOnBackInvokedDispatcher$Checker;,
        Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

.field private static final blacklist ENABLE_PREDICTIVE_BACK:Z

.field private static final blacklist PREDICTIVE_BACK_FALLBACK_WINDOW_ATTRIBUTE:Z

.field private static final blacklist TAG:Ljava/lang/String; = "WindowOnBackDispatcher"


# instance fields
.field private final blacklist mAllCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/window/OnBackInvokedCallback;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBackSwipeLinearThreshold:F

.field private blacklist mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

.field private blacklist mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNonLinearProgressFactor:F

.field public final blacklist mOnBackInvokedCallbacks:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/window/OnBackInvokedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public final blacklist mProgressAnimator:Landroid/window/BackProgressAnimator;

.field public blacklist mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

.field public blacklist mSystemNavigationObserverCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/window/OnBackInvokedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mTouchTracker:Landroid/window/BackTouchTracker;

.field private blacklist mViewRoot:Landroid/view/ViewRootImpl;

.field private blacklist mWindow:Landroid/view/IWindow;

.field private blacklist mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method public static synthetic blacklist $r8$lambda$bOxWKUMqKOfZPPZ_SwgF6n3M8DE(Landroid/window/WindowOnBackInvokedDispatcher;)Z
    .registers 1

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->callOnKeyPreIme()Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 92
    nop

    .line 93
    const-string/jumbo v0, "persist.wm.debug.predictive_back"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    sput-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ENABLE_PREDICTIVE_BACK:Z

    .line 94
    nop

    .line 95
    const-string/jumbo v0, "persist.wm.debug.predictive_back_always_enforce"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    sput-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

    .line 96
    nop

    .line 97
    const-string/jumbo v0, "persist.wm.debug.predictive_back_fallback_window_attribute"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    sput-boolean v1, Landroid/window/WindowOnBackInvokedDispatcher;->PREDICTIVE_BACK_FALLBACK_WINDOW_ATTRIBUTE:Z

    .line 96
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/window/BackTouchTracker;

    invoke-direct {v0}, Landroid/window/BackTouchTracker;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    .line 85
    new-instance v0, Landroid/window/BackProgressAnimator;

    invoke-direct {v0}, Landroid/window/BackProgressAnimator;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallbacks:Ljava/util/Set;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    .line 132
    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-direct {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    .line 133
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    .line 134
    return-void
.end method

.method private blacklist callOnKeyPreIme()Z
    .registers 3

    .line 422
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 423
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->injectBackKeyEvents(Z)Z

    move-result v0

    return v0

    .line 425
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist forEachObserverCallback(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/window/OnBackInvokedCallback;",
            ">;)V"
        }
    .end annotation

    .line 500
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->multipleSystemNavigationObserverCallbacks()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 501
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 503
    :cond_f
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_12
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallbacks:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 505
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_2f

    .line 506
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/OnBackInvokedCallback;

    .line 507
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 508
    goto :goto_1e

    .line 509
    :cond_2e
    goto :goto_3b

    .line 505
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1

    .line 510
    :cond_32
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_3b

    .line 511
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 514
    :cond_3b
    :goto_3b
    return-void
.end method

.method public static blacklist isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 775
    move-object v0, p0

    .line 776
    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_10

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_10

    .line 777
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 779
    :cond_10
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1c

    .line 780
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 781
    :goto_1d
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 783
    new-instance v2, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    .line 784
    invoke-static {v1, v0, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Ljava/util/function/Supplier;)Z

    move-result p0

    .line 783
    return p0
.end method

.method public static blacklist isOnBackInvokedCallbackEnabled(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Ljava/util/function/Supplier;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Context;",
            ">;)Z"
        }
    .end annotation

    .line 858
    sget-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ENABLE_PREDICTIVE_BACK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 859
    return v1

    .line 862
    :cond_6
    sget-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 863
    return v2

    .line 868
    :cond_c
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->hasOnBackInvokedCallbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 869
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result p0

    .line 876
    return p0

    .line 880
    :cond_19
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result p0

    .line 886
    if-eqz p0, :cond_20

    .line 887
    return v2

    .line 890
    :cond_20
    sget-boolean p1, Landroid/window/WindowOnBackInvokedDispatcher;->PREDICTIVE_BACK_FALLBACK_WINDOW_ATTRIBUTE:Z

    if-eqz p1, :cond_47

    .line 901
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 902
    nop

    .line 903
    if-eqz p0, :cond_46

    .line 904
    const p1, 0x10103f3

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 906
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p1

    if-lez p1, :cond_43

    .line 907
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    move v2, p1

    .line 909
    :cond_43
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 916
    :cond_46
    move p0, v2

    .line 918
    :cond_47
    return p0
.end method

.method static synthetic blacklist lambda$dump$3(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/window/OnBackInvokedCallback;Ljava/lang/Integer;)V
    .registers 5

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  Callback: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " Priority="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method static synthetic blacklist lambda$isOnBackInvokedCallbackEnabled$4(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    .line 785
    return-object p0
.end method

.method static synthetic blacklist lambda$onBackCancelled$1(Landroid/window/OnBackInvokedCallback;)V
    .registers 2

    .line 462
    instance-of v0, p0, Landroid/window/ObserverOnBackAnimationCallback;

    if-eqz v0, :cond_9

    .line 463
    check-cast p0, Landroid/window/ObserverOnBackAnimationCallback;

    invoke-interface {p0}, Landroid/window/ObserverOnBackAnimationCallback;->onBackCancelled()V

    .line 465
    :cond_9
    return-void
.end method

.method static synthetic blacklist lambda$onBackInvoked$2(ZLandroid/window/OnBackInvokedCallback;)V
    .registers 2

    .line 484
    if-nez p0, :cond_6

    instance-of p0, p1, Landroid/window/ObserverOnBackAnimationCallback;

    if-eqz p0, :cond_9

    .line 488
    :cond_6
    invoke-interface {p1}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    .line 490
    :cond_9
    return-void
.end method

.method static synthetic blacklist lambda$onBackStarted$0(Landroid/window/BackEvent;Landroid/window/OnBackInvokedCallback;)V
    .registers 3

    .line 442
    instance-of v0, p1, Landroid/window/ObserverOnBackAnimationCallback;

    if-eqz v0, :cond_9

    .line 443
    check-cast p1, Landroid/window/ObserverOnBackAnimationCallback;

    invoke-interface {p1, p0}, Landroid/window/ObserverOnBackAnimationCallback;->onBackStarted(Landroid/window/BackEvent;)V

    .line 445
    :cond_9
    return-void
.end method

.method private blacklist registerSystemNavigationObserverCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 4

    .line 193
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 200
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->removeCallbackInternal(Landroid/window/OnBackInvokedCallback;)V

    .line 202
    :cond_e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->multipleSystemNavigationObserverCallbacks()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 203
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 205
    :cond_1a
    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    .line 207
    :goto_1c
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method private blacklist removeCallbackInternal(Landroid/window/OnBackInvokedCallback;)V
    .registers 5

    .line 313
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    .line 314
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 315
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 316
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 318
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_22
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    if-ne v0, p1, :cond_4d

    .line 323
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 324
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackCallbackCancellationFix()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 327
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->removeOnBackCancelledFinishCallback()V

    .line 328
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->sendCancelledIfInProgress(Landroid/window/OnBackInvokedCallback;)V

    .line 329
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda5;-><init>(Landroid/window/BackProgressAnimator;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    :cond_4d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackCallbackCancellationFix()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->isBackAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    .line 334
    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->getActiveBackCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    if-ne v0, p1, :cond_7a

    .line 337
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->removeOnBackCancelledFinishCallback()V

    .line 338
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->sendCancelledIfInProgress(Landroid/window/OnBackInvokedCallback;)V

    .line 339
    iget-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda5;-><init>(Landroid/window/BackProgressAnimator;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    :cond_7a
    return-void
.end method

.method private blacklist sendCancelledIfInProgress(Landroid/window/OnBackInvokedCallback;)V
    .registers 3

    .line 371
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->isBackAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 372
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackCallbackCancellationFix()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    .line 373
    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->getActiveBackCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    if-ne v0, p1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 374
    :goto_1b
    if-eqz v0, :cond_26

    instance-of v0, p1, Landroid/window/OnBackAnimationCallback;

    if-eqz v0, :cond_26

    .line 375
    check-cast p1, Landroid/window/OnBackAnimationCallback;

    .line 376
    invoke-interface {p1}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    .line 381
    :cond_26
    return-void
.end method

.method private blacklist setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 12

    .line 517
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_82

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    if-nez v0, :cond_a

    goto/16 :goto_82

    .line 521
    :cond_a
    nop

    .line 522
    const-string v1, "WindowOnBackDispatcher"

    if-eqz p1, :cond_4a

    .line 523
    :try_start_f
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 524
    nop

    .line 525
    instance-of v2, p1, Landroid/window/SystemOverrideOnBackInvokedCallback;

    if-eqz v2, :cond_28

    .line 526
    move-object v2, p1

    check-cast v2, Landroid/window/SystemOverrideOnBackInvokedCallback;

    .line 527
    invoke-interface {v2}, Landroid/window/SystemOverrideOnBackInvokedCallback;->overrideBehavior()I

    move-result v2

    goto :goto_29

    .line 525
    :cond_28
    const/4 v2, 0x0

    .line 530
    :goto_29
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 532
    new-instance v3, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;

    iget-object v6, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    iget-object v7, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    iget-object v8, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v9, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda1;-><init>(Landroid/window/WindowOnBackInvokedDispatcher;)V

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;-><init>(Landroid/window/WindowOnBackInvokedDispatcher;Ljava/lang/ref/WeakReference;Landroid/window/BackTouchTracker;Landroid/window/BackProgressAnimator;Landroid/os/Handler;Ljava/util/function/BooleanSupplier;)V

    .line 535
    new-instance v5, Landroid/window/OnBackInvokedCallbackInfo;

    instance-of v6, p1, Landroid/window/OnBackAnimationCallback;

    invoke-direct {v5, v3, v0, v6, v2}, Landroid/window/OnBackInvokedCallbackInfo;-><init>(Landroid/window/IOnBackInvokedCallback;IZI)V

    goto :goto_4c

    .line 543
    :catch_47
    move-exception v0

    move-object p1, v0

    goto :goto_6b

    .line 522
    :cond_4a
    move-object v4, p0

    const/4 v5, 0x0

    .line 541
    :goto_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTopOnBackInvokedCallback (unwrapped): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object p1, v4, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v0, v4, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    invoke-interface {p1, v0, v5}, Landroid/view/IWindowSession;->setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_6a} :catch_47

    .line 545
    goto :goto_81

    .line 544
    :goto_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set OnBackInvokedCallback to WM. Error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :goto_81
    return-void

    .line 518
    :cond_82
    :goto_82
    return-void
.end method


# virtual methods
.method public blacklist attachToWindow(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/ViewRootImpl;Landroid/view/ImeBackAnimationController;)V
    .registers 6

    .line 161
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    .line 163
    iput-object p2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    .line 164
    iput-object p3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 165
    iput-object p4, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    .line 166
    iget-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 167
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 169
    :cond_1a
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public blacklist clear()V
    .registers 6

    .line 390
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 392
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    invoke-virtual {v1}, Landroid/window/ImeBackCallbackSender;->clear()V

    .line 393
    iput-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    .line 395
    :cond_f
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 396
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackCallbackCancellationFix()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 397
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v1}, Landroid/window/BackProgressAnimator;->getActiveBackCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->sendCancelledIfInProgress(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_38

    .line 399
    :cond_27
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    .line 400
    if-eqz v1, :cond_31

    .line 401
    invoke-direct {p0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->sendCancelledIfInProgress(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_38

    .line 404
    :cond_31
    const-string v1, "WindowOnBackDispatcher"

    const-string v3, "There is no topCallback, even if mAllCallbacks is not empty"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_38
    invoke-direct {p0, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 413
    :cond_3b
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v4, v3}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda5;-><init>(Landroid/window/BackProgressAnimator;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 415
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    .line 416
    iput-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    .line 417
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 418
    monitor-exit v0

    .line 419
    return-void

    .line 418
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public blacklist detachFromWindow()V
    .registers 3

    .line 174
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->clear()V

    .line 176
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    .line 177
    iput-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    .line 178
    iput-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 179
    iput-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    .line 180
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "WindowOnBackDispatcher:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    iget-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 609
    :try_start_2c
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Callbacks: []"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_89

    .line 612
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Top Callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Callbacks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    new-instance v2, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2, v0}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda6;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 620
    :goto_89
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    if-eqz v1, :cond_92

    .line 621
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    invoke-virtual {v1, v0, p2}, Landroid/window/ImeBackCallbackSender;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 623
    :cond_92
    monitor-exit p1

    .line 624
    return-void

    .line 623
    :catchall_94
    move-exception p2

    monitor-exit p1
    :try_end_96
    .catchall {:try_start_2c .. :try_end_96} :catchall_94

    throw p2
.end method

.method public blacklist getTopCallback()Landroid/window/OnBackInvokedCallback;
    .registers 6

    .line 549
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 551
    monitor-exit v0

    return-object v2

    .line 553
    :cond_e
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 554
    iget-object v4, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v4, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 555
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_40

    .line 556
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/OnBackInvokedCallback;

    monitor-exit v0

    return-object v1

    .line 558
    :cond_40
    goto :goto_18

    .line 559
    :cond_41
    monitor-exit v0

    .line 560
    return-object v2

    .line 559
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public blacklist hasImeBackCallbackSender()Z
    .registers 2

    .line 801
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isBackGestureInProgress()Z
    .registers 3

    .line 347
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v1}, Landroid/window/BackTouchTracker;->isActive()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 349
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist isInterceptedMotionEvent()Z
    .registers 3

    .line 356
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v1}, Landroid/window/BackTouchTracker;->isInterceptedMotionEvent()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 358
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist isOnBackInvokedCallbackEnabled()Z
    .registers 3

    .line 592
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->-$$Nest$mgetContext(Landroid/window/WindowOnBackInvokedDispatcher$Checker;)Landroid/content/Context;

    move-result-object v0

    .line 593
    if-nez v0, :cond_11

    .line 594
    const-string v0, "WindowOnBackDispatcher"

    const-string v1, "OnBackInvokedCallback is disabled, host context is removed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v0, 0x0

    return v0

    .line 597
    :cond_11
    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public blacklist onBackCancelled(Landroid/window/OnBackInvokedCallback;)V
    .registers 3

    .line 460
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackStopKeycodeBackForwarding()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 461
    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, v0}, Landroid/window/WindowOnBackInvokedDispatcher;->forEachObserverCallback(Ljava/util/function/Consumer;)V

    .line 467
    :cond_e
    instance-of v0, p1, Landroid/window/OnBackAnimationCallback;

    if-eqz v0, :cond_17

    .line 468
    check-cast p1, Landroid/window/OnBackAnimationCallback;

    invoke-interface {p1}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    .line 470
    :cond_17
    return-void
.end method

.method public blacklist onBackInvoked(Landroid/window/OnBackInvokedCallback;)V
    .registers 4

    .line 478
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 479
    instance-of v1, p1, Landroid/window/SystemOverrideOnBackInvokedCallback;

    .line 480
    if-nez v1, :cond_19

    if-eqz v0, :cond_17

    .line 481
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 483
    :goto_1a
    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-direct {p0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->forEachObserverCallback(Ljava/util/function/Consumer;)V

    .line 491
    invoke-interface {p1}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    .line 492
    return-void
.end method

.method public blacklist onBackStarted(Landroid/window/OnBackInvokedCallback;Landroid/window/BackEvent;Z)V
    .registers 5

    .line 440
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackStopKeycodeBackForwarding()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 441
    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda0;-><init>(Landroid/window/BackEvent;)V

    invoke-direct {p0, v0}, Landroid/window/WindowOnBackInvokedDispatcher;->forEachObserverCallback(Ljava/util/function/Consumer;)V

    .line 447
    :cond_e
    instance-of v0, p1, Landroid/window/OnBackAnimationCallback;

    if-eqz v0, :cond_19

    if-nez p3, :cond_19

    .line 448
    check-cast p1, Landroid/window/OnBackAnimationCallback;

    invoke-interface {p1, p2}, Landroid/window/OnBackAnimationCallback;->onBackStarted(Landroid/window/BackEvent;)V

    .line 450
    :cond_19
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 582
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    .line 583
    iget v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mBackSwipeLinearThreshold:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 584
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    iget v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mNonLinearProgressFactor:F

    invoke-virtual {v1, v0, p1, v2}, Landroid/window/BackTouchTracker;->setProgressThresholds(FFF)V

    .line 586
    return-void
.end method

.method public blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 138
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->isBackGestureInProgress()Z

    move-result v0

    if-eqz v0, :cond_3f

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    goto :goto_3f

    .line 141
    :cond_10
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/window/BackTouchTracker;->update(FF)V

    .line 142
    iget-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {p1}, Landroid/window/BackTouchTracker;->shouldUpdateStartLocation()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 145
    iget-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {p1}, Landroid/window/BackTouchTracker;->updateStartLocation()V

    .line 147
    :cond_2a
    iget-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {p1}, Landroid/window/BackProgressAnimator;->isBackAnimationInProgress()Z

    move-result p1

    if-nez p1, :cond_33

    .line 148
    return-void

    .line 150
    :cond_33
    iget-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {p1}, Landroid/window/BackTouchTracker;->createProgressEvent()Landroid/window/BackMotionEvent;

    move-result-object p1

    .line 151
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    .line 152
    return-void

    .line 139
    :cond_3f
    :goto_3f
    return-void
.end method

.method public whitelist registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    .registers 4

    .line 187
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->checkApplicationCallbackRegistration(ILandroid/window/OnBackInvokedCallback;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    invoke-virtual {p0, p2, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 190
    :cond_b
    return-void
.end method

.method public blacklist registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V
    .registers 7

    .line 216
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    if-eqz v1, :cond_e

    .line 218
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    invoke-virtual {v1, p2, p1}, Landroid/window/ImeBackCallbackSender;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 219
    monitor-exit v0

    return-void

    .line 221
    :cond_e
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1e

    instance-of v2, p1, Landroid/window/SystemOverrideOnBackInvokedCallback;

    if-eqz v2, :cond_1e

    .line 223
    const-string p1, "WindowOnBackDispatcher"

    const-string p2, "System override callbacks cannot be registered to NAVIGATION_OBSERVER"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    monitor-exit v0

    return-void

    .line 227
    :cond_1e
    if-ne p2, v1, :cond_25

    .line 228
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerSystemNavigationObserverCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 229
    monitor-exit v0

    return-void

    .line 231
    :cond_25
    instance-of v1, p1, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;

    if-eqz v1, :cond_33

    .line 232
    instance-of v1, p1, Landroid/window/ImeBackCallbackProxy$DefaultImeOnBackAnimationCallback;

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    if-eqz v1, :cond_33

    .line 235
    iget-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    .line 239
    :cond_33
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 240
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_4d
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 245
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 249
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 250
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    :cond_74
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->multipleSystemNavigationObserverCallbacks()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 253
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallbacks:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 254
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallbacks:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 261
    :cond_88
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    if-ne v2, p1, :cond_8f

    .line 262
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    .line 270
    :cond_8f
    :goto_8f
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v2

    .line 271
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    if-eqz v2, :cond_b1

    if-eq v2, p1, :cond_b4

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    .line 275
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, p2, :cond_b4

    .line 276
    :cond_b1
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 278
    :cond_b4
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_b6
    move-exception p1

    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_3 .. :try_end_b8} :catchall_b6

    throw p1
.end method

.method public blacklist registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 3

    .line 385
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 386
    return-void
.end method

.method public blacklist setImeBackCallbackSender(Landroid/window/ImeBackCallbackSender;)V
    .registers 3

    .line 795
    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    .line 796
    iget-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/window/ImeBackCallbackSender;->setHandler(Landroid/os/Handler;)V

    .line 797
    return-void
.end method

.method public blacklist setMotionEventIntercepted()V
    .registers 3

    .line 365
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v1}, Landroid/window/BackTouchTracker;->setMotionEventIntercepted()V

    .line 367
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 4

    .line 283
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    if-eqz v1, :cond_e

    .line 285
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    invoke-virtual {v1, p1}, Landroid/window/ImeBackCallbackSender;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 286
    monitor-exit v0

    return-void

    .line 288
    :cond_e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->multipleSystemNavigationObserverCallbacks()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 289
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 290
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 291
    monitor-exit v0

    return-void

    .line 294
    :cond_23
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    if-ne v1, p1, :cond_2c

    .line 295
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mSystemNavigationObserverCallback:Landroid/window/OnBackInvokedCallback;

    .line 296
    monitor-exit v0

    return-void

    .line 299
    :cond_2c
    instance-of v1, p1, Landroid/window/ImeBackCallbackProxy$DefaultImeOnBackAnimationCallback;

    if-eqz v1, :cond_32

    .line 300
    iget-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    .line 302
    :cond_32
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 306
    monitor-exit v0

    return-void

    .line 308
    :cond_3c
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->removeCallbackInternal(Landroid/window/OnBackInvokedCallback;)V

    .line 309
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :catchall_41
    move-exception p1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public blacklist updateContext(Landroid/content/Context;)V
    .registers 6

    .line 569
    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-direct {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    .line 571
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 572
    nop

    .line 573
    const v1, 0x1050280

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mBackSwipeLinearThreshold:F

    .line 574
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 575
    const v2, 0x1050079

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 576
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mNonLinearProgressFactor:F

    .line 577
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 578
    return-void
.end method
