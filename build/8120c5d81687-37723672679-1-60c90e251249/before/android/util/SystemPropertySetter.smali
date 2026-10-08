.class public Landroid/util/SystemPropertySetter;
.super Ljava/lang/Object;
.source "SystemPropertySetter.java"


# static fields
.field public static final blacklist PROPERTY_FAILURE_RETRY_DELAY_MILLIS:I = 0xc8

.field public static final blacklist PROPERTY_FAILURE_RETRY_LIMIT:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setWithRetry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 56
    const/16 v0, 0xc8

    const-wide/16 v1, 0x5

    invoke-static {p0, p1, v0, v1, v2}, Landroid/util/SystemPropertySetter;->setWithRetry(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 57
    return-void
.end method

.method public static blacklist setWithRetry(Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 8

    .line 75
    if-ltz p2, :cond_37

    .line 78
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1e

    .line 82
    nop

    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p2, :cond_1d

    .line 85
    :try_start_d
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_10} :catch_11

    .line 86
    return-void

    .line 87
    :catch_11
    move-exception v2

    .line 88
    if-nez v0, :cond_15

    .line 89
    move-object v0, v2

    .line 92
    :cond_15
    :try_start_15
    invoke-static {p3, p4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    .line 96
    goto :goto_1a

    .line 93
    :catch_19
    move-exception v2

    .line 83
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 101
    :cond_1d
    throw v0

    .line 79
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid retry delay: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid retry count: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
