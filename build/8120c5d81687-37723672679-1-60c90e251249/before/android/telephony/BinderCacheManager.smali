.class public Landroid/telephony/BinderCacheManager;
.super Ljava/lang/Object;
.source "BinderCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;,
        Landroid/telephony/BinderCacheManager$BinderDeathTracker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mBinderInterfaceFactory:Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager$BinderInterfaceFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mCachedConnection:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/telephony/BinderCacheManager<",
            "TT;>.BinderDeathTracker;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ZM_OVFx7nJDWGK_Q33UT2nrOPlU(Landroid/telephony/BinderCacheManager;Landroid/telephony/BinderCacheManager$BinderDeathTracker;)Landroid/telephony/BinderCacheManager$BinderDeathTracker;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/BinderCacheManager;->lambda$getTracker$0(Landroid/telephony/BinderCacheManager$BinderDeathTracker;)Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/BinderCacheManager$BinderInterfaceFactory<",
            "TT;>;)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Landroid/telephony/BinderCacheManager;->mBinderInterfaceFactory:Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;

    .line 130
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Landroid/telephony/BinderCacheManager;->mCachedConnection:Ljava/util/concurrent/atomic/AtomicReference;

    .line 131
    return-void
.end method

.method private blacklist getTracker()Landroid/telephony/BinderCacheManager$BinderDeathTracker;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/telephony/BinderCacheManager<",
            "TT;>.BinderDeathTracker;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroid/telephony/BinderCacheManager;->mCachedConnection:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/telephony/BinderCacheManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/telephony/BinderCacheManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/BinderCacheManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    return-object v0
.end method

.method private synthetic blacklist lambda$getTracker$0(Landroid/telephony/BinderCacheManager$BinderDeathTracker;)Landroid/telephony/BinderCacheManager$BinderDeathTracker;
    .registers 4

    .line 185
    nop

    .line 188
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 189
    :cond_a
    iget-object p1, p0, Landroid/telephony/BinderCacheManager;->mBinderInterfaceFactory:Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;

    invoke-interface {p1}, Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    .line 190
    if-eqz p1, :cond_1b

    new-instance v1, Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    invoke-direct {v1, p0, p1}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;-><init>(Landroid/telephony/BinderCacheManager;Landroid/os/IInterface;)V

    move-object p1, v1

    goto :goto_1c

    :cond_1b
    move-object p1, v0

    .line 193
    :cond_1c
    :goto_1c
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_25

    move-object v0, p1

    :cond_25
    return-object v0
.end method


# virtual methods
.method public blacklist getBinder()Landroid/os/IInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Landroid/telephony/BinderCacheManager;->getTracker()Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->getConnection()Landroid/os/IInterface;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    if-eqz p1, :cond_18

    if-nez p2, :cond_6

    goto :goto_18

    .line 148
    :cond_6
    invoke-direct {p0}, Landroid/telephony/BinderCacheManager;->getTracker()Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    move-result-object v1

    .line 149
    if-nez v1, :cond_d

    return-object v0

    .line 151
    :cond_d
    invoke-virtual {v1, p1, p2}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->addListener(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    move-result p1

    .line 152
    if-eqz p1, :cond_17

    invoke-virtual {v1}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->getConnection()Landroid/os/IInterface;

    move-result-object v0

    :cond_17
    return-object v0

    .line 147
    :cond_18
    :goto_18
    return-object v0
.end method

.method public blacklist removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 173
    :cond_4
    invoke-direct {p0}, Landroid/telephony/BinderCacheManager;->getTracker()Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    move-result-object v1

    .line 174
    if-nez v1, :cond_b

    return-object v0

    .line 175
    :cond_b
    invoke-virtual {v1, p1}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->removeListener(Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v1}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->getConnection()Landroid/os/IInterface;

    move-result-object p1

    return-object p1
.end method
