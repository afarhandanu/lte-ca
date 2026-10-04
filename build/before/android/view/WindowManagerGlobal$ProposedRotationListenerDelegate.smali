.class Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;
.super Landroid/view/IRotationWatcher$Stub;
.source "WindowManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProposedRotationListenerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;
    }
.end annotation


# instance fields
.field blacklist mLastRotation:I

.field private volatile blacklist mListenerArray:[Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

.field private final blacklist mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 826
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    .line 838
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/WindowManagerGlobal-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onRotationChanged$0(Ljava/util/function/IntConsumer;I)V
    .registers 2

    .line 873
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method


# virtual methods
.method blacklist add(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)Z
    .registers 7

    .line 844
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_1f

    .line 845
    iget-object v3, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    iget-object v3, v3, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_1c

    .line 847
    return v2

    .line 844
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 850
    :cond_1f
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    invoke-direct {v3, p1, p2}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object p1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    new-array p2, v2, [Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    iput-object p1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListenerArray:[Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    .line 852
    return v1
.end method

.method public blacklist onRotationChanged(I)V
    .registers 8

    .line 868
    iput p1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mLastRotation:I

    .line 869
    nop

    .line 870
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListenerArray:[Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v2, v1, :cond_24

    aget-object v4, v0, v2

    .line 871
    iget-object v5, v4, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/function/IntConsumer;

    .line 872
    if-eqz v5, :cond_21

    .line 873
    iget-object v3, v4, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v4, v5, p1}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 874
    const/4 v3, 0x1

    .line 870
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 877
    :cond_24
    if-nez v3, :cond_32

    .line 880
    :try_start_26
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_2e

    .line 883
    goto :goto_32

    .line 881
    :catch_2e
    move-exception p1

    .line 882
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 885
    :cond_32
    :goto_32
    return-void
.end method

.method blacklist remove(Ljava/util/function/IntConsumer;)Z
    .registers 5

    .line 856
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    const/4 v1, 0x0

    if-ltz v0, :cond_36

    .line 857
    iget-object v2, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    iget-object v2, v2, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_33

    .line 858
    iget-object p1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 859
    iget-object p1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    new-array v0, v1, [Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    iput-object p1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListenerArray:[Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;

    .line 860
    iget-object p1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    return p1

    .line 856
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 863
    :cond_36
    return v1
.end method
