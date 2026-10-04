.class public Landroid/telephony/mbms/InternalGroupCallCallback;
.super Landroid/telephony/mbms/IGroupCallCallback$Stub;
.source "InternalGroupCallCallback.java"


# instance fields
.field private final blacklist mAppCallback:Landroid/telephony/mbms/GroupCallCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mIsStopped:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalGroupCallCallback;)Landroid/telephony/mbms/GroupCallCallback;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/InternalGroupCallCallback;->mAppCallback:Landroid/telephony/mbms/GroupCallCallback;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/telephony/mbms/GroupCallCallback;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Landroid/telephony/mbms/IGroupCallCallback$Stub;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallCallback;->mIsStopped:Z

    .line 31
    iput-object p1, p0, Landroid/telephony/mbms/InternalGroupCallCallback;->mAppCallback:Landroid/telephony/mbms/GroupCallCallback;

    .line 32
    iput-object p2, p0, Landroid/telephony/mbms/InternalGroupCallCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 33
    return-void
.end method


# virtual methods
.method public blacklist onBroadcastSignalStrengthUpdated(I)V
    .registers 6

    .line 75
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 76
    return-void

    .line 79
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 81
    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallCallback$3;

    invoke-direct {v3, p0, p1}, Landroid/telephony/mbms/InternalGroupCallCallback$3;-><init>(Landroid/telephony/mbms/InternalGroupCallCallback;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 88
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    nop

    .line 90
    return-void

    .line 88
    :catchall_18
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    throw p1
.end method

.method public blacklist onError(ILjava/lang/String;)V
    .registers 7

    .line 37
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 38
    return-void

    .line 41
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 43
    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallCallback$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalGroupCallCallback$1;-><init>(Landroid/telephony/mbms/InternalGroupCallCallback;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    nop

    .line 52
    return-void

    .line 50
    :catchall_18
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    throw p1
.end method

.method public blacklist onGroupCallStateChanged(II)V
    .registers 7

    .line 56
    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    .line 57
    return-void

    .line 60
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 62
    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallCallback$2;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalGroupCallCallback$2;-><init>(Landroid/telephony/mbms/InternalGroupCallCallback;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    nop

    .line 71
    return-void

    .line 69
    :catchall_18
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    throw p1
.end method

.method public blacklist stop()V
    .registers 2

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallCallback;->mIsStopped:Z

    .line 95
    return-void
.end method
