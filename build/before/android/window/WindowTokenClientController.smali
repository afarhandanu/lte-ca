.class public Landroid/window/WindowTokenClientController;
.super Ljava/lang/Object;
.source "WindowTokenClientController.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sController:Landroid/window/WindowTokenClientController;


# instance fields
.field private final blacklist mAppThread:Landroid/app/IApplicationThread;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mWindowTokenClients:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/window/WindowTokenClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    const-class v0, Landroid/window/WindowTokenClientController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    .line 52
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    .line 54
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    .line 86
    return-void
.end method

.method public static blacklist createInstanceForTesting()Landroid/window/WindowTokenClientController;
    .registers 1

    .line 83
    new-instance v0, Landroid/window/WindowTokenClientController;

    invoke-direct {v0}, Landroid/window/WindowTokenClientController;-><init>()V

    return-object v0
.end method

.method public static blacklist getInstance()Landroid/window/WindowTokenClientController;
    .registers 2

    .line 63
    const-class v0, Landroid/window/WindowTokenClientController;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    if-nez v1, :cond_e

    .line 65
    new-instance v1, Landroid/window/WindowTokenClientController;

    invoke-direct {v1}, Landroid/window/WindowTokenClientController;-><init>()V

    sput-object v1, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    .line 67
    :cond_e
    sget-object v1, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    monitor-exit v0

    return-object v1

    .line 68
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist getWindowTokenClientIfAttached(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;
    .registers 7

    .line 276
    instance-of v0, p1, Landroid/window/WindowTokenClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    move-object v0, p1

    check-cast v0, Landroid/window/WindowTokenClient;

    .line 280
    iget-object v2, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 281
    :try_start_b
    iget-object v3, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 282
    sget-object v0, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find attached WindowTokenClient for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    monitor-exit v2

    return-object v1

    .line 285
    :cond_2d
    monitor-exit v2

    .line 286
    return-object v0

    .line 285
    :catchall_2f
    move-exception p1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_2f

    throw p1

    .line 277
    :cond_32
    sget-object v0, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWindowTokenClient failed for non-window token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-object v1
.end method

.method private blacklist onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V
    .registers 5

    .line 223
    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->recordWindowContextToken(Landroid/window/WindowTokenClient;)V

    .line 224
    if-eqz p3, :cond_11

    .line 228
    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getDisplayId()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/window/WindowTokenClient;->postOnConfigurationChanged(Landroid/content/res/Configuration;I)V

    goto :goto_1d

    .line 232
    :cond_11
    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getDisplayId()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    .line 235
    :goto_1d
    return-void
.end method

.method public static blacklist overrideForTesting(Landroid/window/WindowTokenClientController;)V
    .registers 2

    .line 74
    const-class v0, Landroid/window/WindowTokenClientController;

    monitor-enter v0

    .line 75
    :try_start_3
    sput-object p0, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method private blacklist recordWindowContextToken(Landroid/window/WindowTokenClient;)V
    .registers 4

    .line 238
    iget-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method


# virtual methods
.method public blacklist attachToDisplayArea(Landroid/window/WindowTokenClient;IILandroid/os/Bundle;)Z
    .registers 11

    .line 115
    :try_start_0
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowManager;->attachWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/window/WindowContextInfo;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_18

    .line 119
    nop

    .line 120
    const/4 p2, 0x0

    if-nez p1, :cond_13

    .line 121
    return p2

    .line 123
    :cond_13
    invoke-direct {p0, v2, p1, p2}, Landroid/window/WindowTokenClientController;->onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V

    .line 124
    const/4 p1, 0x1

    return p1

    .line 117
    :catch_18
    move-exception v0

    move-object p1, v0

    .line 118
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist attachToDisplayContent(Landroid/window/WindowTokenClient;I)Z
    .registers 6

    .line 135
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 136
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 143
    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->recordWindowContextToken(Landroid/window/WindowTokenClient;)V

    .line 144
    return v1

    .line 148
    :cond_b
    :try_start_b
    iget-object v2, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v2, p1, p2}, Landroid/view/IWindowManager;->attachWindowContextToDisplayContent(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Landroid/window/WindowContextInfo;

    move-result-object p2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_1a

    .line 154
    nop

    .line 155
    if-nez p2, :cond_15

    .line 156
    return v1

    .line 158
    :cond_15
    invoke-direct {p0, p1, p2, v1}, Landroid/window/WindowTokenClientController;->onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V

    .line 159
    const/4 p1, 0x1

    return p1

    .line 151
    :catch_1a
    move-exception p1

    .line 152
    sget-object p2, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    const-string v0, "Failed attachToDisplayContent"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    return v1

    .line 149
    :catch_23
    move-exception p1

    .line 150
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist attachToWindowToken(Landroid/window/WindowTokenClient;Landroid/os/IBinder;)Z
    .registers 5

    .line 173
    :try_start_0
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowManager;->attachWindowContextToWindowToken(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContextInfo;

    move-result-object p2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_14

    .line 177
    nop

    .line 178
    if-nez p2, :cond_f

    .line 179
    const/4 p1, 0x0

    return p1

    .line 182
    :cond_f
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/window/WindowTokenClientController;->onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V

    .line 183
    return v0

    .line 175
    :catch_14
    move-exception p1

    .line 176
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist detachIfNeeded(Landroid/window/WindowTokenClient;)V
    .registers 4

    .line 188
    iget-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 190
    monitor-exit v0

    return-void

    .line 192
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_20

    .line 193
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 194
    if-nez v0, :cond_15

    .line 197
    return-void

    .line 200
    :cond_15
    :try_start_15
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->detachWindowContext(Landroid/os/IBinder;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_1a

    .line 203
    nop

    .line 204
    return-void

    .line 201
    :catch_1a
    move-exception p1

    .line 202
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 192
    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public blacklist getWindowContext(Landroid/os/IBinder;)Landroid/content/Context;
    .registers 5

    .line 91
    instance-of v0, p1, Landroid/window/WindowTokenClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    check-cast p1, Landroid/window/WindowTokenClient;

    .line 94
    iget-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_a
    iget-object v2, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 96
    monitor-exit v0

    return-object v1

    .line 98
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1a

    .line 99
    invoke-virtual {p1}, Landroid/window/WindowTokenClient;->getContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    .line 98
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1

    .line 92
    :cond_1d
    return-object v1
.end method

.method public blacklist getWindowManagerService()Landroid/view/IWindowManager;
    .registers 2

    .line 293
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onWindowConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .registers 5

    .line 263
    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->getWindowTokenClientIfAttached(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;

    move-result-object p1

    .line 264
    if-eqz p1, :cond_19

    .line 266
    iget-object v0, p0, Landroid/window/WindowTokenClientController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 267
    invoke-virtual {p1, p2, p3}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    goto :goto_19

    .line 269
    :cond_16
    invoke-virtual {p1, p2, p3}, Landroid/window/WindowTokenClient;->postOnConfigurationChanged(Landroid/content/res/Configuration;I)V

    .line 272
    :cond_19
    :goto_19
    return-void
.end method

.method public blacklist onWindowContextInfoChanged(Landroid/os/IBinder;Landroid/window/WindowContextInfo;)V
    .registers 4

    .line 246
    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->getWindowTokenClientIfAttached(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;

    move-result-object p1

    .line 247
    if-eqz p1, :cond_11

    .line 248
    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getDisplayId()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    .line 250
    :cond_11
    return-void
.end method

.method public blacklist onWindowContextWindowRemoved(Landroid/os/IBinder;)V
    .registers 2

    .line 254
    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->getWindowTokenClientIfAttached(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;

    move-result-object p1

    .line 255
    if-eqz p1, :cond_9

    .line 256
    invoke-virtual {p1}, Landroid/window/WindowTokenClient;->onWindowTokenRemoved()V

    .line 258
    :cond_9
    return-void
.end method

.method public blacklist reparentToDisplayArea(Landroid/window/WindowTokenClient;I)V
    .registers 6

    .line 211
    :try_start_0
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowManager;->reparentWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 213
    sget-object v0, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Didn\'t succeed reparenting of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to displayId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_30

    .line 218
    :cond_2e
    nop

    .line 219
    return-void

    .line 216
    :catch_30
    move-exception p1

    .line 217
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
