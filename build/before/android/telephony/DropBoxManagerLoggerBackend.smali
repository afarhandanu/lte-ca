.class public Landroid/telephony/DropBoxManagerLoggerBackend;
.super Ljava/lang/Object;
.source "DropBoxManagerLoggerBackend.java"

# interfaces
.implements Landroid/telephony/PersistentLoggerBackend;


# static fields
.field private static final blacklist BUFFER_SIZE_BYTES:I = 0x7d000

.field private static final blacklist DROPBOX_TAG:Ljava/lang/String; = "DropBoxManagerLoggerBackend"

.field private static final blacklist LOCAL_ZONE_ID:Ljava/time/ZoneId;

.field private static final blacklist LOG_TIMESTAMP_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field private static final blacklist MIN_BUFFER_BYTES_FOR_FLUSH:I = 0x1400

.field private static final blacklist TAG:Ljava/lang/String; = "DropBoxManagerLoggerBackend"

.field private static blacklist sInstance:Landroid/telephony/DropBoxManagerLoggerBackend;


# instance fields
.field private final blacklist mBufferLock:Ljava/lang/Object;

.field private blacklist mBufferStartTime:J

.field private final blacklist mDropBoxManager:Landroid/os/DropBoxManager;

.field private final blacklist mDropBoxManagerLoggingEnabled:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mIsLoggingEnabled:Z

.field private final blacklist mLogBuffer:Ljava/lang/StringBuilder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    nop

    .line 46
    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Landroid/telephony/DropBoxManagerLoggerBackend;->LOG_TIMESTAMP_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 47
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    sput-object v0, Landroid/telephony/DropBoxManagerLoggerBackend;->LOCAL_ZONE_ID:Ljava/time/ZoneId;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mLogBuffer:Ljava/lang/StringBuilder;

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferStartTime:J

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DropBoxManagerLoggerBackend"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mHandlerThread:Landroid/os/HandlerThread;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mIsLoggingEnabled:Z

    .line 80
    const-class v0, Landroid/os/DropBoxManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 81
    iget-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mHandler:Landroid/os/Handler;

    .line 83
    invoke-direct {p0, p1}, Landroid/telephony/DropBoxManagerLoggerBackend;->persistentLoggingEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    .line 84
    return-void
.end method

.method private declared-synchronized blacklist bufferLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Optional<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 184
    :try_start_1
    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mIsLoggingEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3b

    if-nez v0, :cond_7

    .line 185
    monitor-exit p0

    return-void

    .line 188
    :cond_7
    :try_start_7
    iget-wide v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferStartTime:J

    .line 192
    :cond_15
    iget-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_3b

    .line 193
    :try_start_18
    iget-object v1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mLogBuffer:Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/DropBoxManagerLoggerBackend;->formatLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n"

    .line 195
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object p1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const p2, 0x7d000

    if-lt p1, p2, :cond_35

    .line 198
    invoke-virtual {p0}, Landroid/telephony/DropBoxManagerLoggerBackend;->flushAsync()V

    .line 200
    :cond_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_38

    .line 201
    monitor-exit p0

    return-void

    .line 200
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw p1

    .line 183
    :catchall_3b
    move-exception p1

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method private blacklist formatLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Optional<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/telephony/DropBoxManagerLoggerBackend;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance p2, Landroid/telephony/DropBoxManagerLoggerBackend$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Landroid/telephony/DropBoxManagerLoggerBackend$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p4, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    return-object p1
.end method

.method private blacklist formatTimestamp(J)Ljava/lang/String;
    .registers 3

    .line 214
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Landroid/telephony/DropBoxManagerLoggerBackend;->LOCAL_ZONE_ID:Ljava/time/ZoneId;

    .line 215
    invoke-virtual {p1, p2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    sget-object p2, Landroid/telephony/DropBoxManagerLoggerBackend;->LOG_TIMESTAMP_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 216
    invoke-virtual {p1, p2}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    .line 214
    return-object p1
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;)Landroid/telephony/DropBoxManagerLoggerBackend;
    .registers 3

    const-class v0, Landroid/telephony/DropBoxManagerLoggerBackend;

    monitor-enter v0

    .line 73
    :try_start_3
    sget-object v1, Landroid/telephony/DropBoxManagerLoggerBackend;->sInstance:Landroid/telephony/DropBoxManagerLoggerBackend;

    if-nez v1, :cond_e

    .line 74
    new-instance v1, Landroid/telephony/DropBoxManagerLoggerBackend;

    invoke-direct {v1, p0}, Landroid/telephony/DropBoxManagerLoggerBackend;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/telephony/DropBoxManagerLoggerBackend;->sInstance:Landroid/telephony/DropBoxManagerLoggerBackend;

    .line 76
    :cond_e
    sget-object p0, Landroid/telephony/DropBoxManagerLoggerBackend;->sInstance:Landroid/telephony/DropBoxManagerLoggerBackend;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 72
    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method static synthetic blacklist lambda$formatLog$0(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist persistentLoggingEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110169

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_c

    return p1

    .line 90
    :catch_c
    move-exception p1

    .line 91
    const-string p1, "DropBoxManagerLoggerBackend"

    const-string v0, "Persistent logging config not found"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public blacklist debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 111
    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_5

    .line 112
    return-void

    .line 114
    :cond_5
    const-string v0, "D"

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/telephony/DropBoxManagerLoggerBackend;->bufferLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)V

    .line 115
    return-void
.end method

.method public blacklist error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 160
    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_5

    .line 161
    return-void

    .line 163
    :cond_5
    const-string v0, "E"

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/telephony/DropBoxManagerLoggerBackend;->bufferLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)V

    .line 164
    return-void
.end method

.method public blacklist error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 173
    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_5

    .line 174
    return-void

    .line 176
    :cond_5
    const-string v0, "E"

    invoke-static {p3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/telephony/DropBoxManagerLoggerBackend;->bufferLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)V

    .line 177
    return-void
.end method

.method public blacklist flush()V
    .registers 6

    .line 238
    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_5

    .line 239
    return-void

    .line 242
    :cond_5
    iget-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_8
    iget-object v1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x1400

    if-ge v1, v2, :cond_14

    .line 244
    monitor-exit v0

    return-void

    .line 247
    :cond_14
    const-string v1, "DropBoxManagerLoggerBackend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flushing logs from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferStartTime:J

    .line 248
    invoke-direct {p0, v3, v4}, Landroid/telephony/DropBoxManagerLoggerBackend;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroid/telephony/DropBoxManagerLoggerBackend;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_83

    .line 252
    :try_start_44
    iget-object v1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManager:Landroid/os/DropBoxManager;

    const-string v2, "DropBoxManagerLoggerBackend"

    iget-object v3, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_51} :catch_52
    .catchall {:try_start_44 .. :try_end_51} :catchall_83

    .line 256
    goto :goto_77

    .line 253
    :catch_52
    move-exception v1

    .line 254
    :try_start_53
    const-string v2, "DropBoxManagerLoggerBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to flush logs of length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mLogBuffer:Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to DropBoxManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    :goto_77
    iget-object v1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mLogBuffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 258
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_53 .. :try_end_7e} :catchall_83

    .line 259
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferStartTime:J

    .line 260
    return-void

    .line 258
    :catchall_83
    move-exception v1

    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v1
.end method

.method public blacklist flushAsync()V
    .registers 3

    .line 225
    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_5

    .line 226
    return-void

    .line 229
    :cond_5
    iget-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/telephony/DropBoxManagerLoggerBackend$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/telephony/DropBoxManagerLoggerBackend$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/DropBoxManagerLoggerBackend;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method public blacklist info(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 123
    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_5

    .line 124
    return-void

    .line 126
    :cond_5
    const-string v0, "I"

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/telephony/DropBoxManagerLoggerBackend;->bufferLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)V

    .line 127
    return-void
.end method

.method public blacklist setLoggingEnabled(Z)V
    .registers 4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toggle logging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DropBoxManagerLoggerBackend"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-boolean p1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mIsLoggingEnabled:Z

    .line 103
    return-void
.end method

.method public blacklist warn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 135
    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_5

    .line 136
    return-void

    .line 138
    :cond_5
    const-string v0, "W"

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/telephony/DropBoxManagerLoggerBackend;->bufferLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)V

    .line 139
    return-void
.end method

.method public blacklist warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 148
    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_5

    .line 149
    return-void

    .line 151
    :cond_5
    const-string v0, "W"

    invoke-static {p3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/telephony/DropBoxManagerLoggerBackend;->bufferLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)V

    .line 152
    return-void
.end method
