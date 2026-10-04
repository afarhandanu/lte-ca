.class Landroid/util/apk/ReadFileDataSource;
.super Ljava/lang/Object;
.source "ReadFileDataSource.java"

# interfaces
.implements Landroid/util/apk/DataSource;


# static fields
.field private static final blacklist CHUNK_SIZE:I = 0x100000


# instance fields
.field private final blacklist mFd:Ljava/io/FileDescriptor;

.field private final blacklist mFilePosition:J

.field private final blacklist mSize:J


# direct methods
.method constructor blacklist <init>(Ljava/io/FileDescriptor;JJ)V
    .registers 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/util/apk/ReadFileDataSource;->mFd:Ljava/io/FileDescriptor;

    .line 47
    iput-wide p2, p0, Landroid/util/apk/ReadFileDataSource;->mFilePosition:J

    .line 48
    iput-wide p4, p0, Landroid/util/apk/ReadFileDataSource;->mSize:J

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 60
    const/high16 v0, 0x100000

    :try_start_2
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v3, v1, [B

    .line 61
    iget-wide v1, p0, Landroid/util/apk/ReadFileDataSource;->mFilePosition:J

    add-long/2addr v1, p2

    .line 62
    int-to-long p2, p4

    add-long/2addr p2, v1

    .line 63
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    int-to-long v4, p4

    move-wide v6, v1

    .line 64
    :goto_13
    cmp-long p4, v6, p2

    if-gez p4, :cond_34

    .line 65
    iget-object v2, p0, Landroid/util/apk/ReadFileDataSource;->mFd:Ljava/io/FileDescriptor;

    move-wide v0, v4

    const/4 v4, 0x0

    long-to-int v5, v0

    invoke-static/range {v2 .. v7}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p4

    .line 66
    const/4 v0, 0x0

    invoke-static {v3, v0, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/apk/DataDigester;->consume(Ljava/nio/ByteBuffer;)V

    .line 67
    int-to-long v0, p4

    add-long/2addr v6, v0

    .line 64
    sub-long v0, p2, v6

    const-wide/32 v4, 0x100000

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4
    :try_end_33
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_33} :catch_36

    goto :goto_13

    .line 71
    :cond_34
    nop

    .line 72
    return-void

    .line 69
    :catch_36
    move-exception v0

    move-object p1, v0

    .line 70
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist size()J
    .registers 3

    .line 53
    iget-wide v0, p0, Landroid/util/apk/ReadFileDataSource;->mSize:J

    return-wide v0
.end method
