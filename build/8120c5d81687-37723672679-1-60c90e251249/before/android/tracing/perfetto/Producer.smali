.class public Landroid/tracing/perfetto/Producer;
.super Ljava/lang/Object;
.source "Producer.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist init(Landroid/tracing/perfetto/InitArguments;)V
    .registers 2

    .line 30
    iget v0, p0, Landroid/tracing/perfetto/InitArguments;->backends:I

    iget p0, p0, Landroid/tracing/perfetto/InitArguments;->shmemSizeHintKb:I

    invoke-static {v0, p0}, Landroid/tracing/perfetto/Producer;->nativePerfettoProducerInit(II)V

    .line 31
    return-void
.end method

.method private static native blacklist nativePerfettoProducerInit(II)V
.end method
