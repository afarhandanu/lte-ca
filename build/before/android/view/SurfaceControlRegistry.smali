.class public Landroid/view/SurfaceControlRegistry;
.super Ljava/lang/Object;
.source "SurfaceControlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControlRegistry$DefaultReporter;,
        Landroid/view/SurfaceControlRegistry$Reporter;,
        Landroid/view/SurfaceControlRegistry$NoOpRegistry;
    }
.end annotation


# static fields
.field static final blacklist APPLY:Ljava/lang/String; = "apply"

.field private static final blacklist DUMP_LIMIT:I = 0x100

.field private static final blacklist MAX_LAYERS_REPORTING_THRESHOLD:I = 0x400

.field private static final blacklist NO_OP_REGISTRY:Landroid/view/SurfaceControlRegistry;

.field private static final blacklist RESET_REPORTING_THRESHOLD:I = 0x100

.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceControlRegistry"

.field static blacklist sCallStackDebuggingEnabled:Z

.field static blacklist sCallStackDebuggingInitialized:Z

.field private static blacklist sCallStackDebuggingMatchCall:Ljava/lang/String;

.field private static blacklist sCallStackDebuggingMatchName:Ljava/lang/String;

.field private static final blacklist sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

.field private static final blacklist sLock:Ljava/lang/Object;

.field static blacklist sLogAllTxCallsOnApply:Z

.field private static volatile blacklist sProcessRegistry:Landroid/view/SurfaceControlRegistry;


# instance fields
.field private blacklist mHasReportedExceedingMaxThreshold:Z

.field private blacklist mMaxLayersReportingThreshold:I

.field private blacklist mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

.field private blacklist mResetReportingThreshold:I

.field private final blacklist mSurfaceControls:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/SurfaceControl;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 112
    new-instance v0, Landroid/view/SurfaceControlRegistry$NoOpRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SurfaceControlRegistry$NoOpRegistry;-><init>(Landroid/view/SurfaceControlRegistry-IA;)V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->NO_OP_REGISTRY:Landroid/view/SurfaceControlRegistry;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Landroid/view/SurfaceControlRegistry$DefaultReporter;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControlRegistry$DefaultReporter;-><init>(Landroid/view/SurfaceControlRegistry-IA;)V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/16 v0, 0x400

    iput v0, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    .line 151
    const/16 v0, 0x100

    iput v0, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    .line 158
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    iput-object v1, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    .line 161
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    .line 162
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControlRegistry-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/SurfaceControlRegistry;-><init>()V

    return-void
.end method

.method public static blacklist createProcessInstance(Landroid/content/Context;)V
    .registers 2

    .line 205
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1b

    .line 208
    sget-object p0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 209
    :try_start_b
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-nez v0, :cond_16

    .line 210
    new-instance v0, Landroid/view/SurfaceControlRegistry;

    invoke-direct {v0}, Landroid/view/SurfaceControlRegistry;-><init>()V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    .line 212
    :cond_16
    monitor-exit p0

    .line 213
    return-void

    .line 212
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v0

    .line 206
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Expected caller to hold READ_FRAME_BUFFER"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist destroyProcessInstance()V
    .registers 2

    .line 220
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-nez v1, :cond_9

    .line 222
    monitor-exit v0

    return-void

    .line 224
    :cond_9
    const/4 v1, 0x0

    sput-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    .line 225
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static blacklist dump(IZLjava/io/PrintWriter;)V
    .registers 5

    .line 421
    if-eqz p1, :cond_5

    .line 423
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->runGcAndFinalizers()V

    .line 425
    :cond_5
    sget-object p1, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter p1

    .line 426
    :try_start_8
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-eqz v0, :cond_92

    .line 427
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    iget-object v1, v1, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1, p0, p2}, Landroid/view/SurfaceControlRegistry$DefaultReporter;->onMaxLayersExceeded(Ljava/util/WeakHashMap;ILjava/io/PrintWriter;)V

    .line 428
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sCallStackDebuggingInitialized="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sCallStackDebuggingEnabled="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sCallStackDebuggingMatchName="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sCallStackDebuggingMatchCall="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sLogAllTxCallsOnApply="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    :cond_92
    monitor-exit p1

    .line 435
    return-void

    .line 434
    :catchall_94
    move-exception p0

    monitor-exit p1
    :try_end_96
    .catchall {:try_start_8 .. :try_end_96} :catchall_94

    throw p0
.end method

.method public static blacklist getProcessInstance()Landroid/view/SurfaceControlRegistry;
    .registers 2

    .line 234
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-eqz v1, :cond_a

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    goto :goto_c

    :cond_a
    sget-object v1, Landroid/view/SurfaceControlRegistry;->NO_OP_REGISTRY:Landroid/view/SurfaceControlRegistry;

    :goto_c
    monitor-exit v0

    return-object v1

    .line 236
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method static final blacklist initializeCallStackDebugging()V
    .registers 2

    .line 292
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    if-nez v0, :cond_46

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_9

    goto :goto_46

    .line 297
    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    .line 298
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->updateCallStackDebuggingParams()V

    .line 299
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_45

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling transaction call stack debugging: matchCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " matchName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " logCallsWithApply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControlRegistry"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_45
    return-void

    .line 294
    :cond_46
    :goto_46
    return-void
.end method

.method static final blacklist isCallStackDebuggingEnabled()Z
    .registers 1

    .line 400
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    return v0
.end method

.method private static blacklist runGcAndFinalizers()V
    .registers 5

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 409
    invoke-static {}, Lcom/android/internal/util/GcUtils;->runGcAndFinalizersSync()V

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ran gc and finalizers ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControlRegistry"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method private static blacklist updateCallStackDebuggingParams()V
    .registers 2

    .line 362
    nop

    .line 363
    const-string/jumbo v0, "persist.wm.debug.sc.tx.log_match_call"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    .line 365
    nop

    .line 366
    const-string/jumbo v0, "persist.wm.debug.sc.tx.log_match_name"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    .line 368
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    const-string v1, "apply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    .line 370
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    .line 371
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v0, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v0, 0x1

    :goto_3b
    sput-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    .line 372
    return-void
.end method


# virtual methods
.method blacklist add(Landroid/view/SurfaceControl;)V
    .registers 7

    .line 243
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-boolean p1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    if-nez p1, :cond_31

    iget-object p1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    .line 246
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    move-result p1

    iget v1, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    if-lt p1, v1, :cond_31

    .line 249
    new-instance p1, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 250
    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    iget-object v3, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    const/16 v4, 0x100

    invoke-interface {v1, v3, v4, p1}, Landroid/view/SurfaceControlRegistry$Reporter;->onMaxLayersExceeded(Ljava/util/WeakHashMap;ILjava/io/PrintWriter;)V

    .line 251
    iput-boolean v2, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    .line 253
    :cond_31
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method

.method final blacklist checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 9

    .line 320
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_b

    .line 321
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->updateCallStackDebuggingParams()V

    .line 324
    :cond_b
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_10

    .line 325
    return-void

    .line 328
    :cond_10
    const-string v0, ""

    if-eqz p2, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_34

    :cond_33
    move-object v1, v0

    .line 329
    :goto_34
    if-eqz p3, :cond_51

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    :cond_51
    const-string v2, " ("

    if-eqz p4, :cond_79

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_98

    .line 332
    :cond_79
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ")"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 333
    :goto_98
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    const/4 v1, 0x0

    const-string v2, "SurfaceControlRegistry"

    if-eqz v0, :cond_f9

    if-eqz p2, :cond_f9

    .line 334
    const-string v0, "apply"

    if-ne p1, v0, :cond_db

    .line 336
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    iget-object p1, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    if-eqz p1, :cond_10e

    .line 338
    const/4 p1, 0x0

    :goto_b2
    iget-object p3, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_10e

    .line 339
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "        "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    add-int/lit8 p1, p1, 0x1

    goto :goto_b2

    .line 342
    :cond_db
    if-eqz p3, :cond_e1

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_e1
    invoke-virtual {p0, v1, p1}, Landroid/view/SurfaceControlRegistry;->matchesForCallStackDebugging(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10e

    .line 344
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    iget-object p1, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    if-eqz p1, :cond_10e

    .line 346
    iget-object p1, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10e

    .line 351
    :cond_f9
    if-eqz p3, :cond_ff

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_ff
    invoke-virtual {p0, v1, p1}, Landroid/view/SurfaceControlRegistry;->matchesForCallStackDebugging(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_106

    .line 352
    return-void

    .line 354
    :cond_106
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    :cond_10e
    :goto_10e
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 276
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 279
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final blacklist matchesForCallStackDebugging(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 380
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 381
    const/4 v1, 0x0

    if-nez v0, :cond_16

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_16

    .line 383
    return v1

    .line 385
    :cond_16
    sget-object p2, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    .line 386
    const/4 v0, 0x1

    if-eqz p2, :cond_20

    .line 387
    return v0

    .line 389
    :cond_20
    if-nez p1, :cond_23

    .line 390
    return v1

    .line 392
    :cond_23
    sget-object p2, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3b

    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3c

    :cond_3b
    move v1, v0

    .line 392
    :cond_3c
    return v1
.end method

.method blacklist remove(Landroid/view/SurfaceControl;)V
    .registers 4

    .line 260
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-boolean p1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    .line 263
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    move-result p1

    iget v1, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    if-gt p1, v1, :cond_19

    .line 264
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    .line 266
    :cond_19
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public blacklist setCallStackDebuggingParams(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    .line 193
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    .line 194
    sget-object p1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    const-string p2, "apply"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    sput-boolean p1, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    .line 195
    return-void
.end method

.method public blacklist setReportingThresholds(IILandroid/view/SurfaceControlRegistry$Reporter;)V
    .registers 7

    .line 173
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    if-lez p1, :cond_1c

    if-ge p2, p1, :cond_1c

    .line 180
    if-eqz p3, :cond_14

    .line 183
    :try_start_9
    iput p1, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    .line 184
    iput p2, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    .line 185
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    .line 186
    iput-object p3, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 181
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expected non-null reporter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_1c
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected maxLayersReportingThreshold ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") to be > 0 and resetReportingThreshold ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") to be < maxLayersReportingThreshold"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 187
    :catchall_45
    move-exception p1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_45

    throw p1
.end method
