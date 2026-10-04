.class final Landroid/util/jar/StrictJarFile$JarFileInputStream;
.super Ljava/io/FilterInputStream;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JarFileInputStream"
.end annotation


# instance fields
.field private blacklist count:J

.field private blacklist done:Z

.field private final blacklist entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;


# direct methods
.method constructor blacklist <init>(Ljava/io/InputStream;JLandroid/util/jar/StrictJarVerifier$VerifierEntry;)V
    .registers 5

    .line 315
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 312
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 316
    iput-object p4, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    .line 318
    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    .line 319
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    if-eqz v0, :cond_6

    .line 378
    const/4 v0, 0x0

    return v0

    .line 380
    :cond_6
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 324
    return v1

    .line 326
    :cond_6
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_32

    .line 327
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 328
    if-eq v0, v1, :cond_22

    .line 329
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1, v0}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->write(I)V

    .line 330
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    goto :goto_24

    .line 332
    :cond_22
    iput-wide v4, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    .line 334
    :goto_24
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_31

    .line 335
    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 336
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    .line 338
    :cond_31
    return v0

    .line 340
    :cond_32
    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 341
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v0}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    .line 342
    return v1
.end method

.method public whitelist test-api read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 349
    return v1

    .line 351
    :cond_6
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_3e

    .line 352
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p3

    .line 353
    if-eq p3, v1, :cond_2e

    .line 354
    nop

    .line 355
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    int-to-long v6, p3

    cmp-long v0, v0, v6

    if-gez v0, :cond_21

    .line 356
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    long-to-int v0, v0

    goto :goto_22

    .line 355
    :cond_21
    move v0, p3

    .line 358
    :goto_22
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->write([BII)V

    .line 359
    iget-wide p1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    int-to-long v0, v0

    sub-long/2addr p1, v0

    iput-wide p1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    .line 360
    goto :goto_30

    .line 361
    :cond_2e
    iput-wide v4, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    .line 363
    :goto_30
    iget-wide p1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_3d

    .line 364
    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 365
    iget-object p1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {p1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    .line 367
    :cond_3d
    return p3

    .line 369
    :cond_3e
    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 370
    iget-object p1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {p1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    .line 371
    return v1
.end method

.method public whitelist test-api skip(J)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide p1

    return-wide p1
.end method
