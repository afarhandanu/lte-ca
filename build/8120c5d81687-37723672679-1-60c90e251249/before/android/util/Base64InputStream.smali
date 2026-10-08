.class public Landroid/util/Base64InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64InputStream.java"


# static fields
.field private static final greylist-max-o BUFFER_SIZE:I = 0x800

.field private static greylist-max-o EMPTY:[B


# instance fields
.field private final greylist-max-o coder:Landroid/util/Base64$Coder;

.field private greylist-max-o eof:Z

.field private greylist-max-o inputBuffer:[B

.field private greylist-max-o outputEnd:I

.field private greylist-max-o outputStart:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/util/Base64InputStream;->EMPTY:[B

    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/InputStream;I)V
    .registers 4

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 49
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/InputStream;IZ)V
    .registers 6

    .line 63
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/util/Base64InputStream;->eof:Z

    .line 65
    const/16 v0, 0x800

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    .line 66
    const/4 v1, 0x0

    if-eqz p3, :cond_17

    .line 67
    new-instance p3, Landroid/util/Base64$Encoder;

    invoke-direct {p3, p2, v1}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    iput-object p3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    goto :goto_1e

    .line 69
    :cond_17
    new-instance p3, Landroid/util/Base64$Decoder;

    invoke-direct {p3, p2, v1}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    iput-object p3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    .line 71
    :goto_1e
    iget-object p2, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object p3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    invoke-virtual {p3, v0}, Landroid/util/Base64$Coder;->maxOutputSize(I)I

    move-result p3

    new-array p3, p3, [B

    iput-object p3, p2, Landroid/util/Base64$Coder;->output:[B

    .line 72
    iput p1, p0, Landroid/util/Base64InputStream;->outputStart:I

    .line 73
    iput p1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    .line 74
    return-void
.end method

.method private greylist-max-o refill()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-boolean v0, p0, Landroid/util/Base64InputStream;->eof:Z

    if-eqz v0, :cond_5

    return-void

    .line 140
    :cond_5
    iget-object v0, p0, Landroid/util/Base64InputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 142
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1d

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/Base64InputStream;->eof:Z

    .line 144
    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    sget-object v3, Landroid/util/Base64InputStream;->EMPTY:[B

    invoke-virtual {v1, v3, v2, v2, v0}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v0

    goto :goto_25

    .line 146
    :cond_1d
    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v3, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    invoke-virtual {v1, v3, v2, v0, v2}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v0

    .line 148
    :goto_25
    if-eqz v0, :cond_30

    .line 151
    iget-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget v0, v0, Landroid/util/Base64$Coder;->op:I

    iput v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    .line 152
    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    .line 153
    return-void

    .line 149
    :cond_30
    new-instance v0, Landroid/util/Base64DataException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Landroid/util/Base64DataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 3

    .line 94
    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/util/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    .line 91
    return-void
.end method

.method public whitelist test-api mark(I)V
    .registers 2

    .line 81
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_9

    .line 111
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    .line 113
    :cond_9
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_11

    .line 114
    const/4 v0, -0x1

    return v0

    .line 116
    :cond_11
    iget-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v0, v0, Landroid/util/Base64$Coder;->output:[B

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_9

    .line 122
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    .line 124
    :cond_9
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_11

    .line 125
    const/4 p1, -0x1

    return p1

    .line 127
    :cond_11
    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 128
    iget-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v0, v0, Landroid/util/Base64$Coder;->output:[B

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget p1, p0, Landroid/util/Base64InputStream;->outputStart:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/util/Base64InputStream;->outputStart:I

    .line 130
    return p3
.end method

.method public whitelist test-api reset()V
    .registers 2

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_9

    .line 99
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    .line 101
    :cond_9
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_12

    .line 102
    const-wide/16 p1, 0x0

    return-wide p1

    .line 104
    :cond_12
    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 105
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    .line 106
    return-wide p1
.end method
