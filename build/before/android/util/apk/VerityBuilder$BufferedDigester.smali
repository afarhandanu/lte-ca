.class Landroid/util/apk/VerityBuilder$BufferedDigester;
.super Ljava/lang/Object;
.source "VerityBuilder.java"

# interfaces
.implements Landroid/util/apk/DataDigester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/VerityBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferedDigester"
.end annotation


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x1000


# instance fields
.field private blacklist mBytesDigestedSinceReset:I

.field private final blacklist mDigestBuffer:[B

.field private final blacklist mMd:Ljava/security/MessageDigest;

.field private final blacklist mOutput:Ljava/nio/ByteBuffer;

.field private final blacklist mSalt:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$mfillUpLastOutputChunk(Landroid/util/apk/VerityBuilder$BufferedDigester;)V
    .registers 1

    invoke-direct {p0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->fillUpLastOutputChunk()V

    return-void
.end method

.method private constructor blacklist <init>([BLjava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mDigestBuffer:[B

    .line 196
    iput-object p1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mSalt:[B

    .line 197
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    .line 198
    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    .line 199
    iget-object p1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mSalt:[B

    if-eqz p1, :cond_24

    .line 200
    iget-object p1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    iget-object p2, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mSalt:[B

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 202
    :cond_24
    const/4 p1, 0x0

    iput p1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    .line 203
    return-void
.end method

.method synthetic constructor blacklist <init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;)V

    return-void
.end method

.method private blacklist fillUpLastOutputChunk()V
    .registers 3

    .line 243
    iget-object v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    rem-int/lit16 v0, v0, 0x1000

    .line 244
    if-nez v0, :cond_b

    .line 245
    return-void

    .line 247
    :cond_b
    iget-object v1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    rsub-int v0, v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 248
    return-void
.end method


# virtual methods
.method public blacklist assertEmptyBuffer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 237
    iget v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    if-nez v0, :cond_5

    .line 240
    return-void

    .line 238
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer is not empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist consume(Ljava/nio/ByteBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 214
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 215
    :goto_7
    if-lez v0, :cond_4b

    .line 216
    iget v1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    const/16 v2, 0x1000

    rsub-int v1, v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 218
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 219
    iget-object v3, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 220
    nop

    .line 221
    sub-int/2addr v0, v1

    .line 222
    iget v3, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    .line 224
    iget v1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    if-ne v1, v2, :cond_4a

    .line 225
    iget-object v1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    iget-object v2, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mDigestBuffer:[B

    iget-object v3, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mDigestBuffer:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->digest([BII)I

    .line 226
    iget-object v1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mDigestBuffer:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 228
    iget-object v1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mSalt:[B

    if-eqz v1, :cond_48

    .line 229
    iget-object v1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    iget-object v2, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mSalt:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 231
    :cond_48
    iput v4, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    .line 233
    :cond_4a
    goto :goto_7

    .line 234
    :cond_4b
    return-void
.end method
