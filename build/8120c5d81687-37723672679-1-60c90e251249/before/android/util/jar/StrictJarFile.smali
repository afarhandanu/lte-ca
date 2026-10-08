.class public final Landroid/util/jar/StrictJarFile;
.super Ljava/lang/Object;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/jar/StrictJarFile$EntryIterator;,
        Landroid/util/jar/StrictJarFile$JarFileInputStream;,
        Landroid/util/jar/StrictJarFile$FDStream;,
        Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;
    }
.end annotation


# instance fields
.field private blacklist closed:Z

.field private final blacklist fd:Ljava/io/FileDescriptor;

.field private final blacklist guard:Ldalvik/system/CloseGuard;

.field private final blacklist isSigned:Z

.field private final blacklist manifest:Landroid/util/jar/StrictJarManifest;

.field private final blacklist nativeHandle:J

.field private final blacklist verifier:Landroid/util/jar/StrictJarVerifier;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeNextEntry(J)Ljava/util/zip/ZipEntry;
    .registers 2

    invoke-static {p0, p1}, Landroid/util/jar/StrictJarFile;->nativeNextEntry(J)Ljava/util/zip/ZipEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeStartIteration(JLjava/lang/String;)J
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/util/jar/StrictJarFile;->nativeStartIteration(JLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public constructor blacklist <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/io/FileDescriptor;ZZ)V

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/FileDescriptor;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[fd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V

    .line 80
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    .line 67
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    .line 105
    invoke-virtual {p2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-static {p1, v0}, Landroid/util/jar/StrictJarFile;->nativeOpenJarFile(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    .line 106
    iput-object p2, p0, Landroid/util/jar/StrictJarFile;->fd:Ljava/io/FileDescriptor;

    .line 112
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_89

    .line 113
    :try_start_19
    invoke-direct {p0}, Landroid/util/jar/StrictJarFile;->getMetaEntries()Ljava/util/HashMap;

    move-result-object p3

    .line 114
    new-instance v2, Landroid/util/jar/StrictJarManifest;

    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v2, v3, v1}, Landroid/util/jar/StrictJarManifest;-><init>([BZ)V

    iput-object v2, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    .line 115
    new-instance v2, Landroid/util/jar/StrictJarVerifier;

    iget-object v3, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    invoke-direct {v2, p1, v3, p3, p4}, Landroid/util/jar/StrictJarVerifier;-><init>(Ljava/lang/String;Landroid/util/jar/StrictJarManifest;Ljava/util/HashMap;Z)V

    iput-object v2, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    .line 121
    iget-object p1, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    invoke-virtual {p1}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_75

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 123
    invoke-virtual {p0, p3}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p4

    if-eqz p4, :cond_56

    .line 126
    goto :goto_43

    .line 124
    :cond_56
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "File "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " in manifest does not exist"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_75
    iget-object p1, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {p1}, Landroid/util/jar/StrictJarVerifier;->readCertificates()Z

    move-result p1

    if-eqz p1, :cond_86

    iget-object p1, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {p1}, Landroid/util/jar/StrictJarVerifier;->isSignedJar()Z

    move-result p1

    if-eqz p1, :cond_86

    move v0, v1

    :cond_86
    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    .line 129
    goto :goto_90

    .line 130
    :cond_89
    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    .line 131
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    .line 132
    iput-object p1, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_90} :catch_99
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_90} :catch_99

    .line 139
    :goto_90
    nop

    .line 141
    iget-object p1, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    const-string p2, "close"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 142
    return-void

    .line 134
    :catch_99
    move-exception p1

    .line 135
    iget-wide p3, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {p3, p4}, Landroid/util/jar/StrictJarFile;->nativeClose(J)V

    .line 136
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 137
    iput-boolean v1, p0, Landroid/util/jar/StrictJarFile;->closed:Z

    .line 138
    throw p1
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 86
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {p1, v0}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V

    .line 88
    return-void
.end method

.method private blacklist getMetaEntries()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 299
    new-instance v1, Landroid/util/jar/StrictJarFile$EntryIterator;

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    const-string v4, "META-INF/"

    invoke-direct {v1, v2, v3, v4}, Landroid/util/jar/StrictJarFile$EntryIterator;-><init>(JLjava/lang/String;)V

    .line 300
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 301
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 302
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    goto :goto_e

    .line 305
    :cond_2a
    return-object v0
.end method

.method private blacklist getZipInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 11

    .line 247
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_1b

    .line 248
    new-instance v1, Landroid/util/jar/StrictJarFile$FDStream;

    iget-object v2, p0, Landroid/util/jar/StrictJarFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v3

    .line 249
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-direct/range {v1 .. v6}, Landroid/util/jar/StrictJarFile$FDStream;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 248
    return-object v1

    .line 251
    :cond_1b
    new-instance v2, Landroid/util/jar/StrictJarFile$FDStream;

    iget-object v3, p0, Landroid/util/jar/StrictJarFile;->fd:Ljava/io/FileDescriptor;

    .line 252
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v6

    add-long/2addr v6, v0

    invoke-direct/range {v2 .. v7}, Landroid/util/jar/StrictJarFile$FDStream;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 254
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide/32 v3, 0xffff

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x400

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 255
    new-instance v1, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;

    new-instance v3, Ljava/util/zip/Inflater;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v1, v2, v3, v0, p1}, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V

    return-object v1
.end method

.method private static native blacklist nativeClose(J)V
.end method

.method private static native blacklist nativeFindEntry(JLjava/lang/String;)Ljava/util/zip/ZipEntry;
.end method

.method private static native blacklist nativeNextEntry(J)Ljava/util/zip/ZipEntry;
.end method

.method private static native blacklist nativeOpenJarFile(Ljava/lang/String;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nativeStartIteration(JLjava/lang/String;)J
.end method


# virtual methods
.method public blacklist close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile;->closed:Z

    if-nez v0, :cond_1a

    .line 224
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_d

    .line 225
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 228
    :cond_d
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {v0, v1}, Landroid/util/jar/StrictJarFile;->nativeClose(J)V

    .line 229
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile;->closed:Z

    .line 232
    :cond_1a
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 238
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 240
    :cond_9
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 242
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 243
    nop

    .line 244
    return-void

    .line 242
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 243
    throw v0
.end method

.method public blacklist findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 4

    .line 153
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {v0, v1, p1}, Landroid/util/jar/StrictJarFile;->nativeFindEntry(JLjava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .registers 3

    .line 165
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v0, :cond_f

    .line 166
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/jar/StrictJarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    move-result-object p1

    return-object p1

    .line 169
    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getCertificates(Ljava/util/zip/ZipEntry;)[Ljava/security/cert/Certificate;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v0, :cond_30

    .line 185
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/jar/StrictJarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    move-result-object p1

    .line 188
    nop

    .line 189
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_13
    if-ge v2, v0, :cond_1c

    aget-object v4, p1, v2

    .line 190
    array-length v4, v4

    add-int/2addr v3, v4

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 194
    :cond_1c
    new-array v0, v3, [Ljava/security/cert/Certificate;

    .line 195
    nop

    .line 196
    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_22
    if-ge v3, v2, :cond_2f

    aget-object v5, p1, v3

    .line 197
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    array-length v5, v5

    add-int/2addr v4, v5

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 201
    :cond_2f
    return-object v0

    .line 204
    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 7

    .line 208
    invoke-direct {p0, p1}, Landroid/util/jar/StrictJarFile;->getZipInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 210
    iget-boolean v1, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v1, :cond_1f

    .line 211
    iget-object v1, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/jar/StrictJarVerifier;->initEntry(Ljava/lang/String;)Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    move-result-object v1

    .line 212
    if-nez v1, :cond_15

    .line 213
    return-object v0

    .line 216
    :cond_15
    new-instance v2, Landroid/util/jar/StrictJarFile$JarFileInputStream;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4, v1}, Landroid/util/jar/StrictJarFile$JarFileInputStream;-><init>(Ljava/io/InputStream;JLandroid/util/jar/StrictJarVerifier$VerifierEntry;)V

    return-object v2

    .line 219
    :cond_1f
    return-object v0
.end method

.method public blacklist getManifest()Landroid/util/jar/StrictJarManifest;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    return-object v0
.end method

.method public blacklist iterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    new-instance v0, Landroid/util/jar/StrictJarFile$EntryIterator;

    iget-wide v1, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Landroid/util/jar/StrictJarFile$EntryIterator;-><init>(JLjava/lang/String;)V

    return-object v0
.end method
