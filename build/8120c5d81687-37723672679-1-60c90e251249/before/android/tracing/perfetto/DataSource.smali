.class public abstract Landroid/tracing/perfetto/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataSourceInstanceType:",
        "Landroid/tracing/perfetto/DataSourceInstance;",
        "TlsStateType:",
        "Ljava/lang/Object;",
        "IncrementalStateType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final blacklist mNativeObj:J

.field public final blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/tracing/perfetto/DataSource;->name:Ljava/lang/String;

    .line 59
    invoke-static {p0, p1}, Landroid/tracing/perfetto/DataSource;->nativeCreate(Landroid/tracing/perfetto/DataSource;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    .line 60
    return-void
.end method

.method private blacklist createInstance([BI)Landroid/tracing/perfetto/DataSourceInstance;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)TDataSourceInstanceType;"
        }
    .end annotation

    .line 171
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>([B)V

    .line 172
    invoke-virtual {p0, v0, p2}, Landroid/tracing/perfetto/DataSource;->createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object p1

    return-object p1
.end method

.method private static native blacklist nativeCreate(Landroid/tracing/perfetto/DataSource;Ljava/lang/String;)J
.end method

.method private static native blacklist nativeFlushAll(J)V
.end method

.method private static native blacklist nativeGetFinalizer()J
.end method

.method private static native blacklist nativeGetPerfettoDsInstanceIndex(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetPerfettoInstanceLocked(JI)Landroid/tracing/perfetto/DataSourceInstance;
.end method

.method private static native blacklist nativePerfettoDsTraceIterateBegin(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativePerfettoDsTraceIterateBreak(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativePerfettoDsTraceIterateNext(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeRegisterDataSource(JIZZZ)V
.end method

.method private static native blacklist nativeReleasePerfettoInstanceLocked(JI)V
.end method

.method private static native blacklist nativeStopDonePerfettoInstanceLocked(JI)V
.end method

.method private static native blacklist nativeWritePackets(J[[B)V
.end method


# virtual methods
.method public blacklist createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/CreateIncrementalStateArgs<",
            "TDataSourceInstanceType;>;)TIncrementalStateType;"
        }
    .end annotation

    .line 123
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract blacklist createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "I)TDataSourceInstanceType;"
        }
    .end annotation
.end method

.method public blacklist createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/CreateTlsStateArgs<",
            "TDataSourceInstanceType;>;)TTlsStateType;"
        }
    .end annotation

    .line 113
    const/4 p1, 0x0

    return-object p1
.end method

.method public final blacklist flush()V
    .registers 3

    .line 104
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/DataSource;->nativeFlushAll(J)V

    .line 105
    return-void
.end method

.method public blacklist getDataSourceInstanceLocked(I)Landroid/tracing/perfetto/DataSourceInstance;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TDataSourceInstanceType;"
        }
    .end annotation

    .line 152
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1, p1}, Landroid/tracing/perfetto/DataSource;->nativeGetPerfettoInstanceLocked(JI)Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object p1

    return-object p1
.end method

.method public blacklist register(Landroid/tracing/perfetto/DataSourceParams;)V
    .registers 8

    .line 139
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    iget v2, p1, Landroid/tracing/perfetto/DataSourceParams;->bufferExhaustedPolicy:I

    iget-boolean v3, p1, Landroid/tracing/perfetto/DataSourceParams;->willNotifyOnStop:Z

    iget-boolean v4, p1, Landroid/tracing/perfetto/DataSourceParams;->noFlush:Z

    iget-boolean v5, p1, Landroid/tracing/perfetto/DataSourceParams;->postponeStop:Z

    invoke-static/range {v0 .. v5}, Landroid/tracing/perfetto/DataSource;->nativeRegisterDataSource(JIZZZ)V

    .line 141
    return-void
.end method

.method protected blacklist releaseDataSourceInstance(I)V
    .registers 4

    .line 160
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1, p1}, Landroid/tracing/perfetto/DataSource;->nativeReleasePerfettoInstanceLocked(JI)V

    .line 161
    return-void
.end method

.method protected blacklist stopDoneDataSourceInstance(I)V
    .registers 4

    .line 180
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1, p1}, Landroid/tracing/perfetto/DataSource;->nativeStopDonePerfettoInstanceLocked(JI)V

    .line 181
    return-void
.end method

.method public final blacklist trace(Landroid/tracing/perfetto/TraceFunction;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TraceFunction<",
            "TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;)V"
        }
    .end annotation

    .line 79
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/DataSource;->nativePerfettoDsTraceIterateBegin(J)Z

    move-result v0

    .line 81
    if-nez v0, :cond_9

    .line 82
    return-void

    .line 87
    :cond_9
    :try_start_9
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/DataSource;->nativeGetPerfettoDsInstanceIndex(J)I

    move-result v0

    .line 89
    new-instance v1, Landroid/tracing/perfetto/TracingContext;

    invoke-direct {v1, p0, v0}, Landroid/tracing/perfetto/TracingContext;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    .line 91
    invoke-interface {p1, v1}, Landroid/tracing/perfetto/TraceFunction;->trace(Landroid/tracing/perfetto/TracingContext;)V

    .line 93
    iget-wide v2, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-virtual {v1}, Landroid/tracing/perfetto/TracingContext;->getAndClearAllPendingTracePackets()[[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/tracing/perfetto/DataSource;->nativeWritePackets(J[[B)V

    .line 94
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/DataSource;->nativePerfettoDsTraceIterateNext(J)Z

    move-result v0
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_2f

    if-nez v0, :cond_9

    .line 96
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/DataSource;->nativePerfettoDsTraceIterateBreak(J)V

    .line 97
    nop

    .line 98
    return-void

    .line 96
    :catchall_2f
    move-exception p1

    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/DataSource;->nativePerfettoDsTraceIterateBreak(J)V

    .line 97
    throw p1
.end method
