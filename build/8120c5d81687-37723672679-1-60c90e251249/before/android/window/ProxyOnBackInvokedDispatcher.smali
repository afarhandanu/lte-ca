.class public Landroid/window/ProxyOnBackInvokedDispatcher;
.super Ljava/lang/Object;
.source "ProxyOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/window/OnBackInvokedDispatcher;


# instance fields
.field private blacklist mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field private final blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/window/OnBackInvokedCallback;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

.field private blacklist mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 58
    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-direct {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    .line 59
    return-void
.end method

.method private blacklist clearCallbacksOnDispatcher()V
    .registers 4

    .line 137
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-nez v0, :cond_5

    .line 138
    return-void

    .line 140
    :cond_5
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 141
    iget-object v2, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v2, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 142
    goto :goto_b

    .line 143
    :cond_21
    return-void
.end method

.method static synthetic blacklist lambda$unregisterOnBackInvokedCallback$0(Landroid/window/OnBackInvokedCallback;Landroid/util/Pair;)Z
    .registers 2

    .line 86
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/window/OnBackInvokedCallback;

    invoke-interface {p1, p0}, Landroid/window/OnBackInvokedCallback;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V
    .registers 6

    .line 95
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v1, :cond_22

    .line 98
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1d

    .line 99
    iget-object p2, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    invoke-interface {p2, p1}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_22

    .line 101
    :cond_1d
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    invoke-interface {v1, p2, p1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 104
    :cond_22
    :goto_22
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method private blacklist transferCallbacksToDispatcher()V
    .registers 5

    .line 114
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-nez v0, :cond_5

    .line 115
    return-void

    .line 121
    :cond_5
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    if-eqz v0, :cond_10

    .line 122
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->setImeBackCallbackSender(Landroid/window/ImeBackCallbackSender;)V

    .line 124
    :cond_10
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 125
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 126
    if-gez v2, :cond_3a

    const/4 v3, -0x2

    if-ne v2, v3, :cond_30

    goto :goto_3a

    .line 129
    :cond_30
    iget-object v2, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_43

    .line 127
    :cond_3a
    :goto_3a
    iget-object v3, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v3, v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 131
    :goto_43
    goto :goto_16

    .line 132
    :cond_44
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    .line 134
    return-void
.end method


# virtual methods
.method public whitelist registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    .registers 4

    .line 68
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->checkApplicationCallbackRegistration(ILandroid/window/OnBackInvokedCallback;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 69
    invoke-direct {p0, p2, p1}, Landroid/window/ProxyOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 71
    :cond_b
    return-void
.end method

.method public blacklist registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 3

    .line 75
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/window/ProxyOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 76
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 157
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    .line 160
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist setActualDispatcher(Landroid/window/OnBackInvokedDispatcher;)V
    .registers 4

    .line 178
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_3
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-ne p1, v1, :cond_9

    .line 180
    monitor-exit v0

    return-void

    .line 182
    :cond_9
    invoke-direct {p0}, Landroid/window/ProxyOnBackInvokedDispatcher;->clearCallbacksOnDispatcher()V

    .line 183
    iput-object p1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 184
    invoke-direct {p0}, Landroid/window/ProxyOnBackInvokedDispatcher;->transferCallbacksToDispatcher()V

    .line 185
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public blacklist setImeBackCallbackSender(Landroid/window/ImeBackCallbackSender;)V
    .registers 3

    .line 195
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_a

    .line 196
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    invoke-interface {v0, p1}, Landroid/window/OnBackInvokedDispatcher;->setImeBackCallbackSender(Landroid/window/ImeBackCallbackSender;)V

    goto :goto_c

    .line 198
    :cond_a
    iput-object p1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    .line 200
    :goto_c
    return-void
.end method

.method public whitelist unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 5

    .line 85
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    new-instance v2, Landroid/window/ProxyOnBackInvokedDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/window/ProxyOnBackInvokedDispatcher$$ExternalSyntheticLambda0;-><init>(Landroid/window/OnBackInvokedCallback;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 87
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v1, :cond_16

    .line 88
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    invoke-interface {v1, p1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 90
    :cond_16
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method
