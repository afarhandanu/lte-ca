.class public final Landroid/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Log$TerribleFailure;,
        Landroid/util/Log$TerribleFailureHandler;,
        Landroid/util/Log$ImmediateLogWriter;,
        Landroid/util/Log$PreloadHolder;,
        Landroid/util/Log$Level;
    }
.end annotation


# static fields
.field public static final whitelist ASSERT:I = 0x7

.field public static final whitelist DEBUG:I = 0x3

.field public static final whitelist ERROR:I = 0x6

.field public static final whitelist INFO:I = 0x4

.field public static final greylist-max-o LOG_ID_CRASH:I = 0x4

.field public static final greylist-max-o LOG_ID_EVENTS:I = 0x2

.field public static final greylist-max-o LOG_ID_MAIN:I = 0x0

.field public static final greylist-max-o LOG_ID_RADIO:I = 0x1

.field public static final greylist-max-o LOG_ID_SYSTEM:I = 0x3

.field public static final whitelist VERBOSE:I = 0x2

.field public static final whitelist WARN:I = 0x5

.field private static greylist-max-o sWtfHandler:Landroid/util/Log$TerribleFailureHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlogger_entry_max_payload_native()I
    .registers 1

    invoke-static {}, Landroid/util/Log;->logger_entry_max_payload_native()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 133
    new-instance v0, Landroid/util/Log$1;

    invoke-direct {v0}, Landroid/util/Log$1;-><init>()V

    sput-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method public static whitelist d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 173
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static whitelist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 185
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 275
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 287
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static whitelist getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    .line 379
    const-string v0, ""

    if-nez p0, :cond_5

    .line 380
    return-object v0

    .line 385
    :cond_5
    move-object v1, p0

    .line 386
    :goto_6
    if-eqz v1, :cond_12

    .line 387
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_d

    .line 388
    return-object v0

    .line 390
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_6

    .line 393
    :cond_12
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 394
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x100

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 395
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 396
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 397
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 196
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static whitelist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 207
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static native whitelist isLoggable(Ljava/lang/String;I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist logStackTrace(IILjava/lang/String;Ljava/lang/String;I)I
    .registers 7

    .line 526
    new-instance v0, Landroid/util/Log$ImmediateLogWriter;

    invoke-direct {v0, p0, p1, p2}, Landroid/util/Log$ImmediateLogWriter;-><init>(IILjava/lang/String;)V

    .line 527
    sget v1, Landroid/util/Log$PreloadHolder;->LOGGER_ENTRY_MAX_PAYLOAD:I

    add-int/lit8 v1, v1, -0x2

    .line 529
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x20

    .line 531
    const/16 p2, 0x64

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 533
    new-instance v1, Lcom/android/internal/util/LineBreakBufferedWriter;

    invoke-direct {v1, v0, p2}, Lcom/android/internal/util/LineBreakBufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 534
    :try_start_1f
    invoke-static {v1, p0, p1, p3, p4}, Landroid/util/Log;->logStackTrace(Ljava/io/PrintWriter;IILjava/lang/String;I)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2a

    .line 535
    invoke-virtual {v1}, Lcom/android/internal/util/LineBreakBufferedWriter;->close()V

    .line 536
    invoke-virtual {v0}, Landroid/util/Log$ImmediateLogWriter;->getWritten()I

    move-result p0

    return p0

    .line 533
    :catchall_2a
    move-exception p0

    :try_start_2b
    invoke-virtual {v1}, Lcom/android/internal/util/LineBreakBufferedWriter;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_33
    throw p0
.end method

.method public static blacklist logStackTrace(Ljava/io/PrintWriter;IILjava/lang/String;I)V
    .registers 8

    .line 543
    const-string/jumbo p1, "msg cannot be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 544
    const-string/jumbo p1, "skippedInitialLines must be non-negative"

    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 548
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 553
    nop

    .line 554
    nop

    .line 555
    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_1c
    array-length v1, p1

    if-ge p2, v1, :cond_42

    .line 556
    aget-object v1, p1, p2

    .line 557
    if-nez p3, :cond_31

    .line 558
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "logStackTrace"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 562
    const/4 p3, 0x1

    goto :goto_3f

    .line 566
    :cond_31
    if-ge v0, p4, :cond_36

    .line 567
    add-int/lit8 v0, v0, 0x1

    .line 568
    goto :goto_3f

    .line 571
    :cond_36
    const-string v2, "\t%s\n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 555
    :cond_3f
    :goto_3f
    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    .line 574
    :cond_42
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 575
    return-void
.end method

.method public static blacklist logToRadioBuffer(ILjava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 450
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static native greylist-max-o logger_entry_max_payload_native()I
.end method

.method public static whitelist println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 409
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static native greylist println_native(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static greylist-max-o printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 6

    .line 469
    new-instance v0, Landroid/util/Log$ImmediateLogWriter;

    invoke-direct {v0, p0, p1, p2}, Landroid/util/Log$ImmediateLogWriter;-><init>(IILjava/lang/String;)V

    .line 474
    sget p0, Landroid/util/Log$PreloadHolder;->LOGGER_ENTRY_MAX_PAYLOAD:I

    add-int/lit8 p0, p0, -0x2

    .line 476
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x20

    .line 479
    const/16 p1, 0x64

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 481
    new-instance p1, Lcom/android/internal/util/LineBreakBufferedWriter;

    invoke-direct {p1, v0, p0}, Lcom/android/internal/util/LineBreakBufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 483
    invoke-virtual {p1, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->println(Ljava/lang/String;)V

    .line 485
    if-eqz p4, :cond_40

    .line 488
    move-object p0, p4

    .line 489
    :goto_25
    if-eqz p0, :cond_3b

    .line 490
    instance-of p2, p0, Ljava/net/UnknownHostException;

    if-eqz p2, :cond_2c

    .line 491
    goto :goto_3b

    .line 493
    :cond_2c
    instance-of p2, p0, Landroid/os/DeadSystemException;

    if-eqz p2, :cond_36

    .line 494
    const-string p2, "DeadSystemException: The system died; earlier logs will point to the root cause"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/LineBreakBufferedWriter;->println(Ljava/lang/String;)V

    .line 496
    goto :goto_3b

    .line 498
    :cond_36
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_25

    .line 500
    :cond_3b
    :goto_3b
    if-nez p0, :cond_40

    .line 501
    invoke-virtual {p4, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 505
    :cond_40
    invoke-virtual {p1}, Lcom/android/internal/util/LineBreakBufferedWriter;->flush()V

    .line 507
    invoke-virtual {v0}, Landroid/util/Log$ImmediateLogWriter;->getWritten()I

    move-result p0

    return p0
.end method

.method public static greylist-max-o setWtfHandler(Landroid/util/Log$TerribleFailureHandler;)Landroid/util/Log$TerribleFailureHandler;
    .registers 2

    .line 362
    if-eqz p0, :cond_7

    .line 365
    sget-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 366
    sput-object p0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 367
    return-object v0

    .line 363
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "handler == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static whitelist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 162
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 218
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 230
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 264
    const/4 v0, 0x5

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v2, v0, p0, v1, p1}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static greylist wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I
    .registers 7

    .line 339
    new-instance v0, Landroid/util/Log$TerribleFailure;

    invoke-direct {v0, p2, p3}, Landroid/util/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    if-eqz p4, :cond_8

    move-object p3, v0

    :cond_8
    const/4 p4, 0x6

    invoke-static {p0, p4, p1, p2, p3}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    .line 344
    sget-object p2, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    invoke-interface {p2, p1, v0, p5}, Landroid/util/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    .line 345
    return p0
.end method

.method public static whitelist wtf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 301
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result p0

    return p0
.end method

.method public static whitelist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 9

    .line 333
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result p0

    return p0
.end method

.method public static whitelist wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 8

    .line 321
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result p0

    return p0
.end method

.method static greylist-max-o wtfQuiet(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 349
    new-instance p0, Landroid/util/Log$TerribleFailure;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/util/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    sget-object p2, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    invoke-interface {p2, p1, p0, p3}, Landroid/util/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    .line 351
    return-void
.end method

.method public static greylist-max-o wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 310
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result p0

    return p0
.end method
