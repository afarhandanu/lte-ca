.class public Landroid/tracing/perfetto/DataSourceParams;
.super Ljava/lang/Object;
.source "DataSourceParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/tracing/perfetto/DataSourceParams$Builder;,
        Landroid/tracing/perfetto/DataSourceParams$PerfettoDsBufferExhausted;
    }
.end annotation


# static fields
.field public static blacklist DEFAULTS:Landroid/tracing/perfetto/DataSourceParams; = null

.field public static final blacklist PERFETTO_DS_BUFFER_EXHAUSTED_POLICY_DROP:I = 0x0

.field public static final blacklist PERFETTO_DS_BUFFER_EXHAUSTED_POLICY_STALL_AND_ABORT:I = 0x1

.field public static final blacklist PERFETTO_DS_BUFFER_EXHAUSTED_POLICY_STALL_AND_DROP:I = 0x2


# instance fields
.field public final blacklist bufferExhaustedPolicy:I

.field public final blacklist noFlush:Z

.field public final blacklist postponeStop:Z

.field public final blacklist willNotifyOnStop:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Landroid/tracing/perfetto/DataSourceParams$Builder;

    invoke-direct {v0}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    move-result-object v0

    sput-object v0, Landroid/tracing/perfetto/DataSourceParams;->DEFAULTS:Landroid/tracing/perfetto/DataSourceParams;

    return-void
.end method

.method private constructor blacklist <init>(IZZZ)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Landroid/tracing/perfetto/DataSourceParams;->bufferExhaustedPolicy:I

    .line 60
    iput-boolean p2, p0, Landroid/tracing/perfetto/DataSourceParams;->willNotifyOnStop:Z

    .line 61
    iput-boolean p3, p0, Landroid/tracing/perfetto/DataSourceParams;->noFlush:Z

    .line 62
    iput-boolean p4, p0, Landroid/tracing/perfetto/DataSourceParams;->postponeStop:Z

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(IZZZLandroid/tracing/perfetto/DataSourceParams-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tracing/perfetto/DataSourceParams;-><init>(IZZZ)V

    return-void
.end method
