.class public Landroid/tracing/perfetto/TracingContext;
.super Ljava/lang/Object;
.source "TracingContext.java"


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
.field private final blacklist mDataSource:Landroid/tracing/perfetto/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/tracing/perfetto/DataSource<",
            "TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
        }
    .end annotation
.end field

.field private final blacklist mInstanceIndex:I

.field private final blacklist mTracePackets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/proto/ProtoOutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/tracing/perfetto/DataSource;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/DataSource<",
            "TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/tracing/perfetto/TracingContext;->mTracePackets:Ljava/util/List;

    .line 44
    iput-object p1, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    .line 45
    iput p2, p0, Landroid/tracing/perfetto/TracingContext;->mInstanceIndex:I

    .line 46
    return-void
.end method

.method private static native blacklist nativeGetCustomTls(J)Ljava/lang/Object;
.end method

.method private static native blacklist nativeGetIncrementalState(J)Ljava/lang/Object;
.end method

.method private static native blacklist nativeSetCustomTls(JLjava/lang/Object;)V
.end method

.method private static native blacklist nativeSetIncrementalState(JLjava/lang/Object;)V
.end method


# virtual methods
.method protected blacklist getAndClearAllPendingTracePackets()[[B
    .registers 4

    .line 142
    iget-object v0, p0, Landroid/tracing/perfetto/TracingContext;->mTracePackets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[B

    .line 143
    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Landroid/tracing/perfetto/TracingContext;->mTracePackets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 144
    iget-object v2, p0, Landroid/tracing/perfetto/TracingContext;->mTracePackets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/proto/ProtoOutputStream;

    .line 145
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 148
    :cond_22
    iget-object v1, p0, Landroid/tracing/perfetto/TracingContext;->mTracePackets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 149
    return-object v0
.end method

.method public blacklist getCustomTlsState()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTlsStateType;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget-wide v0, v0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/TracingContext;->nativeGetCustomTls(J)Ljava/lang/Object;

    move-result-object v0

    .line 94
    if-nez v0, :cond_20

    .line 95
    new-instance v0, Landroid/tracing/perfetto/CreateTlsStateArgs;

    iget-object v1, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget v2, p0, Landroid/tracing/perfetto/TracingContext;->mInstanceIndex:I

    invoke-direct {v0, v1, v2}, Landroid/tracing/perfetto/CreateTlsStateArgs;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    .line 97
    iget-object v1, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    invoke-virtual {v1, v0}, Landroid/tracing/perfetto/DataSource;->createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    iget-object v1, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget-wide v1, v1, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v1, v2, v0}, Landroid/tracing/perfetto/TracingContext;->nativeSetCustomTls(JLjava/lang/Object;)V

    .line 101
    :cond_20
    return-object v0
.end method

.method public blacklist getDataSourceInstanceLocked()Landroid/tracing/perfetto/DataSourceInstance;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDataSourceInstanceType;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget v1, p0, Landroid/tracing/perfetto/TracingContext;->mInstanceIndex:I

    invoke-virtual {v0, v1}, Landroid/tracing/perfetto/DataSource;->getDataSourceInstanceLocked(I)Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIncrementalState()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIncrementalStateType;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget-wide v0, v0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    .line 112
    invoke-static {v0, v1}, Landroid/tracing/perfetto/TracingContext;->nativeGetIncrementalState(J)Ljava/lang/Object;

    move-result-object v0

    .line 113
    if-nez v0, :cond_20

    .line 114
    new-instance v0, Landroid/tracing/perfetto/CreateIncrementalStateArgs;

    iget-object v1, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget v2, p0, Landroid/tracing/perfetto/TracingContext;->mInstanceIndex:I

    invoke-direct {v0, v1, v2}, Landroid/tracing/perfetto/CreateIncrementalStateArgs;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    .line 116
    iget-object v1, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    invoke-virtual {v1, v0}, Landroid/tracing/perfetto/DataSource;->createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    iget-object v1, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget-wide v1, v1, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v1, v2, v0}, Landroid/tracing/perfetto/TracingContext;->nativeSetIncrementalState(JLjava/lang/Object;)V

    .line 120
    :cond_20
    return-object v0
.end method

.method public blacklist getInstanceIndex()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/tracing/perfetto/TracingContext;->mInstanceIndex:I

    return v0
.end method

.method public blacklist newTracePacket()Landroid/util/proto/ProtoOutputStream;
    .registers 2

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/tracing/perfetto/TracingContext;->newTracePacket(I)Landroid/util/proto/ProtoOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newTracePacket(I)Landroid/util/proto/ProtoOutputStream;
    .registers 3

    .line 71
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 72
    iget-object p1, p0, Landroid/tracing/perfetto/TracingContext;->mTracePackets:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-object v0
.end method

.method public blacklist stopDone()V
    .registers 3

    .line 128
    iget-object v0, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget v1, p0, Landroid/tracing/perfetto/TracingContext;->mInstanceIndex:I

    invoke-virtual {v0, v1}, Landroid/tracing/perfetto/DataSource;->stopDoneDataSourceInstance(I)V

    .line 129
    return-void
.end method
