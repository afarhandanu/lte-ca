.class public Landroid/window/TaskSnapshotManager;
.super Ljava/lang/Object;
.source "TaskSnapshotManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;,
        Landroid/window/TaskSnapshotManager$SnapshotTracker;,
        Landroid/window/TaskSnapshotManager$Resolution;
    }
.end annotation


# static fields
.field private static final blacklist ISnapshotManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/window/ITaskSnapshotManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist RESOLUTION_ANY:I = 0x3

.field public static final blacklist RESOLUTION_HIGH:I = 0x1

.field public static final blacklist RESOLUTION_LOW:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "TaskSnapshotManager"

.field static final blacklist sCleaner:Ljava/lang/ref/Cleaner;

.field private static final blacklist sInstance:Landroid/window/TaskSnapshotManager;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mGlobalSnapshotTracker:Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;

.field private blacklist mInternalListener:Landroid/window/TaskSnapshotListenerTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/window/TaskSnapshotManager;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/window/TaskSnapshotManager;->sLock:Ljava/lang/Object;

    .line 81
    invoke-static {}, Landroid/system/SystemCleaner;->cleaner()Ljava/lang/ref/Cleaner;

    move-result-object v0

    sput-object v0, Landroid/window/TaskSnapshotManager;->sCleaner:Ljava/lang/ref/Cleaner;

    .line 84
    new-instance v0, Landroid/window/TaskSnapshotManager;

    invoke-direct {v0}, Landroid/window/TaskSnapshotManager;-><init>()V

    sput-object v0, Landroid/window/TaskSnapshotManager;->sInstance:Landroid/window/TaskSnapshotManager;

    .line 247
    new-instance v0, Landroid/window/TaskSnapshotManager$1;

    invoke-direct {v0}, Landroid/window/TaskSnapshotManager$1;-><init>()V

    sput-object v0, Landroid/window/TaskSnapshotManager;->ISnapshotManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;-><init>(Landroid/window/TaskSnapshotManager-IA;)V

    iput-object v0, p0, Landroid/window/TaskSnapshotManager;->mGlobalSnapshotTracker:Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;

    .line 85
    return-void
.end method

.method public static blacklist convertRetrieveFlag(Z)I
    .registers 1

    .line 243
    if-eqz p0, :cond_4

    const/4 p0, 0x2

    goto :goto_5

    .line 244
    :cond_4
    const/4 p0, 0x1

    .line 243
    :goto_5
    return p0
.end method

.method public static blacklist getInstance()Landroid/window/TaskSnapshotManager;
    .registers 1

    .line 88
    sget-object v0, Landroid/window/TaskSnapshotManager;->sInstance:Landroid/window/TaskSnapshotManager;

    return-object v0
.end method

.method public static blacklist isResolutionMatch(Landroid/window/TaskSnapshot;I)Z
    .registers 4

    .line 227
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_5

    .line 228
    return v1

    .line 230
    :cond_5
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->isLowResolution()Z

    move-result p0

    .line 231
    const/4 v0, 0x0

    if-eqz p0, :cond_12

    .line 232
    const/4 p0, 0x2

    if-ne p1, p0, :cond_10

    goto :goto_11

    :cond_10
    move v1, v0

    :goto_11
    return v1

    .line 233
    :cond_12
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->respectRequestedTaskSnapshotResolution()Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 234
    if-ne p1, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v0

    :goto_1c
    return v1

    .line 236
    :cond_1d
    return v1
.end method

.method public static blacklist validateResolution(I)V
    .registers 4

    .line 286
    packed-switch p0, :pswitch_data_1e

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalidate resolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :pswitch_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method blacklist createTrackerWithCount(ILandroid/window/TaskSnapshot;I)V
    .registers 6

    .line 268
    sget-object v0, Landroid/window/TaskSnapshotManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    iget-object v1, p0, Landroid/window/TaskSnapshotManager;->mGlobalSnapshotTracker:Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;

    invoke-virtual {v1, p1, p2, p3}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->createTracker(ILandroid/window/TaskSnapshot;I)V

    .line 270
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 277
    sget-object v0, Landroid/window/TaskSnapshotManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object v1, p0, Landroid/window/TaskSnapshotManager;->mGlobalSnapshotTracker:Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;

    invoke-virtual {v1, p1}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->dump(Ljava/io/PrintWriter;)V

    .line 279
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public blacklist getTaskSnapshot(II)Landroid/window/TaskSnapshot;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-static {p2}, Landroid/window/TaskSnapshotManager;->validateResolution(I)V

    .line 107
    sget-object v0, Landroid/window/TaskSnapshotManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_6
    iget-object v1, p0, Landroid/window/TaskSnapshotManager;->mGlobalSnapshotTracker:Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;

    invoke-virtual {v1, p1, p2}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->peekLatestSnapshot(II)Landroid/window/TaskSnapshotManager$SnapshotTracker;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_17

    iget-object v2, v1, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mSnapshot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskSnapshot;

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 113
    :goto_18
    if-eqz v2, :cond_1d

    iget-wide v3, v1, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mCaptureTime:J

    goto :goto_1f

    :cond_1d
    const-wide/16 v3, -0x1

    .line 114
    :goto_1f
    if-eqz v1, :cond_24

    .line 115
    invoke-virtual {v1}, Landroid/window/TaskSnapshotManager$SnapshotTracker;->increaseReference()V

    .line 117
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_61

    .line 119
    :try_start_25
    sget-object v0, Landroid/window/TaskSnapshotManager;->ISnapshotManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ITaskSnapshotManager;

    invoke-interface {v0, p1, v3, v4, p2}, Landroid/window/ITaskSnapshotManager;->getTaskSnapshot(IJI)Landroid/window/TaskSnapshot;

    move-result-object p2
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_31} :catch_47

    .line 124
    nop

    .line 125
    if-nez p2, :cond_35

    .line 126
    return-object v2

    .line 128
    :cond_35
    sget-object v0, Landroid/window/TaskSnapshotManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    if-eqz v1, :cond_3d

    .line 130
    :try_start_3a
    invoke-virtual {v1}, Landroid/window/TaskSnapshotManager$SnapshotTracker;->decreaseReference()I

    .line 132
    :cond_3d
    iget-object v1, p0, Landroid/window/TaskSnapshotManager;->mGlobalSnapshotTracker:Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;

    invoke-virtual {v1, p1, p2}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->createTracker(ILandroid/window/TaskSnapshot;)V

    .line 133
    monitor-exit v0

    .line 134
    return-object p2

    .line 133
    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_44

    throw p1

    .line 121
    :catch_47
    move-exception p1

    .line 122
    const-string p2, "TaskSnapshotManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTaskSnapshot fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    throw p1

    .line 117
    :catchall_61
    move-exception p1

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p1
.end method

.method public blacklist registerTaskSnapshotListener(Landroid/window/TaskSnapshotListener;)V
    .registers 7

    .line 188
    sget-object v0, Landroid/window/TaskSnapshotManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    iget-object v1, p0, Landroid/window/TaskSnapshotManager;->mInternalListener:Landroid/window/TaskSnapshotListenerTracker;

    if-nez v1, :cond_36

    .line 190
    new-instance v1, Landroid/window/TaskSnapshotListenerTracker;

    invoke-direct {v1, p0}, Landroid/window/TaskSnapshotListenerTracker;-><init>(Landroid/window/TaskSnapshotManager;)V

    iput-object v1, p0, Landroid/window/TaskSnapshotManager;->mInternalListener:Landroid/window/TaskSnapshotListenerTracker;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_3d

    .line 192
    :try_start_e
    sget-object v1, Landroid/window/TaskSnapshotManager;->ISnapshotManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ITaskSnapshotManager;

    iget-object v2, p0, Landroid/window/TaskSnapshotManager;->mInternalListener:Landroid/window/TaskSnapshotListenerTracker;

    invoke-interface {v1, v2}, Landroid/window/ITaskSnapshotManager;->registerTaskSnapshotListener(Landroid/window/ITaskSnapshotListener;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1b} :catch_1c
    .catchall {:try_start_e .. :try_end_1b} :catchall_3d

    .line 195
    goto :goto_36

    .line 193
    :catch_1c
    move-exception v1

    .line 194
    :try_start_1d
    const-string v2, "TaskSnapshotManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerTaskSnapshotListener fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_36
    :goto_36
    iget-object v1, p0, Landroid/window/TaskSnapshotManager;->mInternalListener:Landroid/window/TaskSnapshotListenerTracker;

    invoke-virtual {v1, p1}, Landroid/window/TaskSnapshotListenerTracker;->registerLocalListener(Landroid/window/TaskSnapshotListener;)V

    .line 198
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_1d .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method blacklist removeTracker(Landroid/window/TaskSnapshotManager$SnapshotTracker;)V
    .registers 5

    .line 262
    sget-object v0, Landroid/window/TaskSnapshotManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    iget-object v1, p0, Landroid/window/TaskSnapshotManager;->mGlobalSnapshotTracker:Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->removeTracker(Landroid/window/TaskSnapshotManager$SnapshotTracker;Z)V

    .line 264
    monitor-exit v0

    .line 265
    return-void

    .line 264
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public blacklist takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/window/TaskSnapshotManager;->takeTaskSnapshot(IZZ)Landroid/window/TaskSnapshot;

    move-result-object p1

    return-object p1
.end method

.method public blacklist takeTaskSnapshot(IZZ)Landroid/window/TaskSnapshot;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    :try_start_0
    sget-object v0, Landroid/window/TaskSnapshotManager;->ISnapshotManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ITaskSnapshotManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/window/ITaskSnapshotManager;->takeTaskSnapshot(IZZ)Landroid/window/TaskSnapshot;

    move-result-object p2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_1d

    .line 175
    nop

    .line 176
    if-eqz p2, :cond_1c

    .line 177
    sget-object p3, Landroid/window/TaskSnapshotManager;->sLock:Ljava/lang/Object;

    monitor-enter p3

    .line 178
    :try_start_12
    iget-object v0, p0, Landroid/window/TaskSnapshotManager;->mGlobalSnapshotTracker:Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskSnapshotManager$GlobalSnapshotTracker;->createTracker(ILandroid/window/TaskSnapshot;)V

    .line 179
    monitor-exit p3

    goto :goto_1c

    :catchall_19
    move-exception p1

    monitor-exit p3
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw p1

    .line 181
    :cond_1c
    :goto_1c
    return-object p2

    .line 172
    :catch_1d
    move-exception p1

    .line 173
    const-string p2, "TaskSnapshotManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "takeTaskSnapshot fail: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    throw p1
.end method

.method public blacklist unregisterTaskSnapshotListener(Landroid/window/TaskSnapshotListener;)V
    .registers 6

    .line 205
    sget-object v0, Landroid/window/TaskSnapshotManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Landroid/window/TaskSnapshotManager;->mInternalListener:Landroid/window/TaskSnapshotListenerTracker;

    if-nez v1, :cond_9

    .line 207
    monitor-exit v0

    return-void

    .line 209
    :cond_9
    iget-object v1, p0, Landroid/window/TaskSnapshotManager;->mInternalListener:Landroid/window/TaskSnapshotListenerTracker;

    invoke-virtual {v1, p1}, Landroid/window/TaskSnapshotListenerTracker;->unregisterLocalListener(Landroid/window/TaskSnapshotListener;)V

    .line 210
    iget-object p1, p0, Landroid/window/TaskSnapshotManager;->mInternalListener:Landroid/window/TaskSnapshotListenerTracker;

    invoke-virtual {p1}, Landroid/window/TaskSnapshotListenerTracker;->isEmpty()Z

    move-result p1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_43

    if-eqz p1, :cond_41

    .line 212
    :try_start_16
    sget-object p1, Landroid/window/TaskSnapshotManager;->ISnapshotManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {p1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/ITaskSnapshotManager;

    iget-object v1, p0, Landroid/window/TaskSnapshotManager;->mInternalListener:Landroid/window/TaskSnapshotListenerTracker;

    invoke-interface {p1, v1}, Landroid/window/ITaskSnapshotManager;->unregisterTaskSnapshotListener(Landroid/window/ITaskSnapshotListener;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_24
    .catchall {:try_start_16 .. :try_end_23} :catchall_43

    .line 216
    goto :goto_3e

    .line 214
    :catch_24
    move-exception p1

    .line 215
    :try_start_25
    const-string v1, "TaskSnapshotManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterTaskSnapshotListener fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_3e
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/window/TaskSnapshotManager;->mInternalListener:Landroid/window/TaskSnapshotListenerTracker;

    .line 219
    :cond_41
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_43
    move-exception p1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_43

    throw p1
.end method
