.class public Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipInflaterInputStream"
.end annotation


# instance fields
.field private blacklist bytesRead:J

.field private blacklist closed:Z

.field private final blacklist entry:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V
    .registers 5

    .line 396
    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 392
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    .line 397
    iput-object p4, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    .line 398
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 424
    return v1

    .line 426
    :cond_6
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->available()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_17

    :cond_d
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    :goto_17
    return v1
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->closed:Z

    .line 433
    return-void
.end method

.method public whitelist test-api read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_47

    .line 407
    nop

    .line 408
    const/4 p2, -0x1

    if-ne p1, p2, :cond_40

    .line 409
    iget-object p2, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide p2

    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_15

    goto :goto_46

    .line 410
    :cond_15
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Size mismatch on inflated file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " vs "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    .line 411
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 414
    :cond_40
    iget-wide p2, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    .line 416
    :goto_46
    return p1

    .line 404
    :catch_47
    move-exception p1

    .line 405
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error reading data for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " near offset "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
