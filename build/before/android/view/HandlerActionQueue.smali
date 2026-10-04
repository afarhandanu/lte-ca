.class public Landroid/view/HandlerActionQueue;
.super Ljava/lang/Object;
.source "HandlerActionQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HandlerActionQueue$HandlerAction;
    }
.end annotation


# instance fields
.field private greylist-max-o mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

.field private greylist-max-o mCount:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o executeActions(Landroid/os/Handler;)V
    .registers 10

    .line 81
    monitor-enter p0

    .line 82
    :try_start_1
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 83
    iget v1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    .line 84
    aget-object v4, v0, v3

    .line 85
    iget-object v5, v4, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    iget-wide v6, v4, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 88
    :cond_15
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 89
    iput v2, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 90
    monitor-exit p0

    .line 91
    return-void

    .line 90
    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public greylist-max-o getDelay(I)J
    .registers 4

    .line 105
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    if-ge p1, v0, :cond_b

    .line 108
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    aget-object p1, v0, p1

    iget-wide v0, p1, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    return-wide v0

    .line 106
    :cond_b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public greylist-max-o getRunnable(I)Ljava/lang/Runnable;
    .registers 3

    .line 98
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    if-ge p1, v0, :cond_b

    .line 101
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    aget-object p1, v0, p1

    iget-object p1, p1, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    return-object p1

    .line 99
    :cond_b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public greylist-max-o post(Ljava/lang/Runnable;)V
    .registers 4

    .line 33
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/HandlerActionQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 34
    return-void
.end method

.method public greylist-max-o postDelayed(Ljava/lang/Runnable;J)V
    .registers 5

    .line 37
    new-instance v0, Landroid/view/HandlerActionQueue$HandlerAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/HandlerActionQueue$HandlerAction;-><init>(Ljava/lang/Runnable;J)V

    .line 39
    monitor-enter p0

    .line 40
    :try_start_6
    iget-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    if-nez p1, :cond_f

    .line 41
    const/4 p1, 0x4

    new-array p1, p1, [Landroid/view/HandlerActionQueue$HandlerAction;

    iput-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 43
    :cond_f
    iget-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    iget p2, p0, Landroid/view/HandlerActionQueue;->mCount:I

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/HandlerActionQueue$HandlerAction;

    iput-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 44
    iget p1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 45
    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public greylist-max-o removeCallbacks(Ljava/lang/Runnable;)V
    .registers 7

    .line 49
    monitor-enter p0

    .line 50
    :try_start_1
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 51
    nop

    .line 53
    iget-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 54
    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v2, v0, :cond_1e

    .line 55
    aget-object v4, v1, v2

    invoke-virtual {v4, p1}, Landroid/view/HandlerActionQueue$HandlerAction;->matches(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 58
    goto :goto_1b

    .line 61
    :cond_13
    if-eq v3, v2, :cond_19

    .line 64
    aget-object v4, v1, v2

    aput-object v4, v1, v3

    .line 67
    :cond_19
    add-int/lit8 v3, v3, 0x1

    .line 54
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 71
    :cond_1e
    iput v3, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 74
    :goto_20
    if-ge v3, v0, :cond_28

    .line 75
    const/4 p1, 0x0

    aput-object p1, v1, v3

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 77
    :cond_28
    monitor-exit p0

    .line 78
    return-void

    .line 77
    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    return v0
.end method
