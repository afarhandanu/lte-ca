.class public Landroid/util/ListenerGroup;
.super Ljava/lang/Object;
.source "ListenerGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLastValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/Consumer<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$5HP1haR8r7OmehRJazad3I5_gNA(Landroid/util/ListenerGroup;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/ListenerGroup;->lambda$addListener$3(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Q7YDphO751DhfunCtaHTAmOKPWM(Landroid/util/ListenerGroup;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/ListenerGroup;->lambda$removeListener$4(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$t84B4x6vpxT6QcilDnzzqJM7oQc(Landroid/util/ListenerGroup;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/ListenerGroup;->lambda$accept$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wcefqN5xUcFeYrz8QLrXPqw1fhc(Landroid/util/ListenerGroup;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/ListenerGroup;->lambda$addListener$2(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Landroid/os/Handler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/util/ListenerGroup;->mListeners:Landroid/util/ArrayMap;

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/util/ListenerGroup;->mLastValue:Ljava/lang/Object;

    .line 54
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Landroid/util/ListenerGroup;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method static synthetic blacklist lambda$accept$0(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 2

    .line 69
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$accept$1(Ljava/lang/Object;)V
    .registers 6

    .line 65
    iput-object p1, p0, Landroid/util/ListenerGroup;->mLastValue:Ljava/lang/Object;

    .line 66
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Landroid/util/ListenerGroup;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 67
    iget-object v1, p0, Landroid/util/ListenerGroup;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 68
    iget-object v2, p0, Landroid/util/ListenerGroup;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 69
    new-instance v3, Landroid/util/ListenerGroup$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p1}, Landroid/util/ListenerGroup$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 71
    :cond_26
    return-void
.end method

.method private synthetic blacklist lambda$addListener$2(Ljava/util/function/Consumer;)V
    .registers 3

    .line 87
    iget-object v0, p0, Landroid/util/ListenerGroup;->mLastValue:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$addListener$3(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 83
    iget-object v0, p0, Landroid/util/ListenerGroup;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    return-void

    .line 86
    :cond_9
    iget-object v0, p0, Landroid/util/ListenerGroup;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/util/ListenerGroup$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/util/ListenerGroup$$ExternalSyntheticLambda0;-><init>(Landroid/util/ListenerGroup;Ljava/util/function/Consumer;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method private synthetic blacklist lambda$removeListener$4(Ljava/util/function/Consumer;)V
    .registers 3

    .line 97
    iget-object v0, p0, Landroid/util/ListenerGroup;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method


# virtual methods
.method public blacklist accept(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Landroid/util/ListenerGroup;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/ListenerGroup$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/util/ListenerGroup$$ExternalSyntheticLambda4;-><init>(Landroid/util/ListenerGroup;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method public blacklist addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 80
    const-string v0, "Executor must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string v0, "Consumer must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Landroid/util/ListenerGroup;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/ListenerGroup$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Landroid/util/ListenerGroup$$ExternalSyntheticLambda2;-><init>(Landroid/util/ListenerGroup;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method

.method public blacklist removeListener(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Landroid/util/ListenerGroup;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/ListenerGroup$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/util/ListenerGroup$$ExternalSyntheticLambda3;-><init>(Landroid/util/ListenerGroup;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method
