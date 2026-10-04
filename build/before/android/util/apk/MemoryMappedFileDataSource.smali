.class Landroid/util/apk/MemoryMappedFileDataSource;
.super Ljava/lang/Object;
.source "MemoryMappedFileDataSource.java"

# interfaces
.implements Landroid/util/apk/DataSource;


# static fields
.field private static final blacklist MEMORY_PAGE_SIZE_BYTES:J


# instance fields
.field private final blacklist mFd:Ljava/io/FileDescriptor;

.field private final blacklist mFilePosition:J

.field private final blacklist mSize:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 34
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    sput-wide v0, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    return-void
.end method

.method constructor blacklist <init>(Ljava/io/FileDescriptor;JJ)V
    .registers 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    .line 49
    iput-wide p2, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mFilePosition:J

    .line 50
    iput-wide p4, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mSize:J

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 74
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/util/apk/MemoryMappedFileDataSource;->mFilePosition:J

    add-long v1, v1, p2

    .line 75
    sget-wide v3, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    div-long v3, v1, v3

    sget-wide v5, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    mul-long v14, v3, v5

    .line 77
    sub-long/2addr v1, v14

    long-to-int v1, v1

    .line 78
    add-int v2, p4, v1

    int-to-long v9, v2

    .line 79
    nop

    .line 81
    const-wide/16 v2, 0x0

    :try_start_16
    sget v11, Landroid/system/OsConstants;->PROT_READ:I

    sget v4, Landroid/system/OsConstants;->MAP_SHARED:I

    sget v5, Landroid/system/OsConstants;->MAP_POPULATE:I

    or-int v12, v4, v5

    iget-object v13, v0, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    const-wide/16 v7, 0x0

    invoke-static/range {v7 .. v15}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v4
    :try_end_26
    .catch Landroid/system/ErrnoException; {:try_start_16 .. :try_end_26} :catch_4c
    .catchall {:try_start_16 .. :try_end_26} :catchall_48

    .line 88
    :try_start_26
    new-instance v11, Ljava/nio/DirectByteBuffer;

    int-to-long v6, v1

    add-long v13, v4, v6

    iget-object v15, v0, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v12, p4

    invoke-direct/range {v11 .. v17}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V

    .line 95
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/apk/DataDigester;->consume(Ljava/nio/ByteBuffer;)V
    :try_end_3b
    .catch Landroid/system/ErrnoException; {:try_start_26 .. :try_end_3b} :catch_46
    .catchall {:try_start_26 .. :try_end_3b} :catchall_6d

    .line 99
    cmp-long v0, v4, v2

    if-eqz v0, :cond_45

    .line 101
    :try_start_3f
    invoke-static {v4, v5, v9, v10}, Landroid/system/Os;->munmap(JJ)V
    :try_end_42
    .catch Landroid/system/ErrnoException; {:try_start_3f .. :try_end_42} :catch_43

    .line 102
    :goto_42
    goto :goto_45

    :catch_43
    move-exception v0

    goto :goto_42

    .line 105
    :cond_45
    :goto_45
    return-void

    .line 96
    :catch_46
    move-exception v0

    goto :goto_4e

    .line 99
    :catchall_48
    move-exception v0

    move-object v1, v0

    move-wide v4, v2

    goto :goto_6f

    .line 96
    :catch_4c
    move-exception v0

    move-wide v4, v2

    .line 97
    :goto_4e
    :try_start_4e
    new-instance v1, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to mmap "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6d
    .catchall {:try_start_4e .. :try_end_6d} :catchall_6d

    .line 99
    :catchall_6d
    move-exception v0

    move-object v1, v0

    :goto_6f
    cmp-long v0, v4, v2

    if-eqz v0, :cond_79

    .line 101
    :try_start_73
    invoke-static {v4, v5, v9, v10}, Landroid/system/Os;->munmap(JJ)V
    :try_end_76
    .catch Landroid/system/ErrnoException; {:try_start_73 .. :try_end_76} :catch_77

    .line 102
    :goto_76
    goto :goto_79

    :catch_77
    move-exception v0

    goto :goto_76

    .line 104
    :cond_79
    :goto_79
    throw v1
.end method

.method public blacklist size()J
    .registers 3

    .line 55
    iget-wide v0, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mSize:J

    return-wide v0
.end method
