.class public final Landroid/util/proto/ProtoInputStream;
.super Landroid/util/proto/ProtoStream;
.source "ProtoInputStream.java"


# static fields
.field private static final blacklist DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final blacklist NO_MORE_FIELDS:I = -0x1

.field private static final blacklist STATE_FIELD_MISS:B = 0x4t

.field private static final blacklist STATE_READING_PACKED:B = 0x2t

.field private static final blacklist STATE_STARTED_FIELD_READ:B = 0x1t


# instance fields
.field private blacklist mBuffer:[B

.field private final blacklist mBufferSize:I

.field private blacklist mDepth:I

.field private blacklist mDiscardedBytes:I

.field private blacklist mEnd:I

.field private blacklist mExpectedObjectTokenStack:Landroid/util/LongArray;

.field private blacklist mFieldNumber:I

.field private blacklist mOffset:I

.field private blacklist mPackedEnd:I

.field private blacklist mState:B

.field private blacklist mStream:Ljava/io/InputStream;

.field private blacklist mWireType:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 170
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 171
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 5

    .line 154
    invoke-direct {p0}, Landroid/util/proto/ProtoStream;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    .line 110
    const/4 v1, -0x1

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 128
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 134
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 140
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 146
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 155
    iput-object p1, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    .line 156
    if-lez p2, :cond_1b

    .line 157
    iput p2, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    goto :goto_1f

    .line 159
    :cond_1b
    const/16 p1, 0x2000

    iput p1, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    .line 161
    :goto_1f
    iget p1, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    .line 162
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 5

    .line 178
    invoke-direct {p0}, Landroid/util/proto/ProtoStream;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    .line 110
    const/4 v2, -0x1

    iput v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 128
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 134
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 140
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 146
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 179
    array-length v0, p1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    .line 180
    array-length v0, p1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 181
    iput-object p1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    .line 182
    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    .line 183
    return-void
.end method

.method private blacklist assertFieldNumber(J)V
    .registers 6

    .line 932
    long-to-int v0, p1

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    if-ne v0, v1, :cond_6

    .line 939
    return-void

    .line 933
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") does not match current field number (0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    .line 934
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") at offset 0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 936
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 937
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist assertFreshData()V
    .registers 4

    .line 961
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 966
    return-void

    .line 962
    :cond_7
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to read already read field at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 964
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    .line 963
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 964
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist assertWireType(I)V
    .registers 5

    .line 948
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    if-ne p1, v0, :cond_5

    .line 955
    return-void

    .line 949
    :cond_5
    new-instance v0, Landroid/util/proto/WireTypeMismatchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 950
    invoke-static {v2}, Landroid/util/proto/ProtoInputStream;->getWireTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match expected wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 951
    invoke-static {p1}, Landroid/util/proto/ProtoInputStream;->getWireTypeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " at offset 0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 952
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 953
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/proto/WireTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkPacked(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 873
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c7

    .line 875
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v2

    long-to-int v0, v2

    .line 876
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 877
    iget-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 880
    const-wide v1, 0xff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    const-string v2, ") packed length "

    const-string v3, "Requested field id ("

    packed-switch v1, :pswitch_data_c8

    .line 917
    :pswitch_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 918
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") is not a packable field"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 920
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :pswitch_51
    const/4 p1, 0x0

    iput p1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 915
    goto :goto_c7

    .line 885
    :pswitch_55
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_5d

    .line 892
    const/4 p1, 0x5

    iput p1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 893
    goto :goto_c7

    .line 886
    :cond_5d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 887
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is not aligned for fixed32"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 890
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 897
    :pswitch_8e
    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_96

    .line 904
    const/4 p1, 0x1

    iput p1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 905
    goto :goto_c7

    .line 898
    :cond_96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 899
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is not aligned for fixed64"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 902
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 923
    :cond_c7
    :goto_c7
    return-void

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_55
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_8e
        :pswitch_55
        :pswitch_51
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_51
        :pswitch_51
        :pswitch_55
        :pswitch_8e
        :pswitch_51
        :pswitch_51
    .end packed-switch
.end method

.method private blacklist fillBuffer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-lt v0, v1, :cond_42

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    if-eqz v0, :cond_42

    .line 790
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 791
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 792
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    if-lt v0, v1, :cond_38

    .line 793
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    div-int/2addr v1, v2

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    mul-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 794
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 795
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 797
    :cond_38
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 799
    :cond_42
    return-void
.end method

.method private blacklist incOffset(I)V
    .registers 5

    .line 855
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 857
    iget p1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    if-ltz p1, :cond_49

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result p1

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 858
    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    .line 857
    invoke-static {v0, v1}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v0

    if-gt p1, v0, :cond_1c

    goto :goto_49

    .line 859
    :cond_1c
    new-instance p1, Landroid/util/proto/ProtoParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpectedly reached end of embedded object.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 860
    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 861
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 863
    :cond_49
    :goto_49
    return-void
.end method

.method private blacklist readFixed32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-gt v0, v2, :cond_3c

    .line 643
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 644
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v2, v1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v2, v2, -0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v2, v2, -0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0

    .line 652
    :cond_3c
    nop

    .line 653
    nop

    .line 654
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    .line 655
    :goto_41
    if-lez v2, :cond_96

    .line 656
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 658
    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v3, v4

    if-ge v3, v2, :cond_53

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v3, v4

    goto :goto_54

    :cond_53
    move v3, v2

    .line 659
    :goto_54
    if-ltz v3, :cond_6d

    .line 665
    invoke-direct {p0, v3}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 666
    sub-int/2addr v2, v3

    .line 667
    :goto_5a
    if-lez v3, :cond_6c

    .line 668
    iget-object v4, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v5, v3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    or-int/2addr v0, v4

    .line 669
    add-int/lit8 v3, v3, -0x1

    .line 670
    add-int/lit8 v1, v1, 0x8

    goto :goto_5a

    .line 672
    :cond_6c
    goto :goto_41

    .line 660
    :cond_6d
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete fixed32 at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 662
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 663
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_96
    return v0
.end method

.method private blacklist readFixed64()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    const-wide/16 v3, 0xff

    if-gt v0, v2, :cond_7a

    .line 685
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 686
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v2, v1

    aget-byte v0, v0, v2

    int-to-long v5, v0

    and-long/2addr v5, v3

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v2, v2, -0x7

    aget-byte v0, v0, v2

    int-to-long v7, v0

    and-long/2addr v7, v3

    shl-long v0, v7, v1

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x6

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x10

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x5

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x18

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x4

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x20

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x3

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x28

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x2

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x30

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x1

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long v2, v5, v3

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 698
    :cond_7a
    nop

    .line 699
    nop

    .line 700
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    .line 701
    :goto_7f
    if-lez v1, :cond_d4

    .line 702
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 704
    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v7, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v2, v7

    if-ge v2, v1, :cond_91

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v7, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v2, v7

    goto :goto_92

    :cond_91
    move v2, v1

    .line 705
    :goto_92
    if-ltz v2, :cond_ab

    .line 711
    invoke-direct {p0, v2}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 712
    sub-int/2addr v1, v2

    .line 713
    :goto_98
    if-lez v2, :cond_aa

    .line 714
    iget-object v7, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v8, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v8, v2

    aget-byte v7, v7, v8

    int-to-long v7, v7

    and-long/2addr v7, v3

    shl-long/2addr v7, v0

    or-long/2addr v5, v7

    .line 715
    add-int/lit8 v2, v2, -0x1

    .line 716
    add-int/lit8 v0, v0, 0x8

    goto :goto_98

    .line 718
    :cond_aa
    goto :goto_7f

    .line 706
    :cond_ab
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete fixed64 at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 708
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 709
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_d4
    return-wide v5
.end method

.method private blacklist readRawBytes(I)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    new-array v0, p1, [B

    .line 730
    const/4 v1, 0x0

    .line 731
    :goto_3
    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v2, p1

    sub-int/2addr v2, v1

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-le v2, v3, :cond_4e

    .line 732
    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v2, v3

    .line 733
    if-lez v2, :cond_1d

    .line 734
    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 735
    invoke-direct {p0, v2}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 736
    add-int/2addr v1, v2

    .line 738
    :cond_1d
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 739
    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-ge v2, v3, :cond_27

    .line 745
    goto :goto_3

    .line 740
    :cond_27
    new-instance p1, Landroid/util/proto/ProtoParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpectedly reached end of the InputStream at offset 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 742
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 743
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 746
    :cond_4e
    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr p1, v1

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 748
    return-object v0
.end method

.method private blacklist readRawString(I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 759
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-gt v0, v1, :cond_19

    .line 761
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 762
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 763
    return-object v0

    .line 764
    :cond_19
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    const/4 v1, 0x0

    if-gt p1, v0, :cond_51

    .line 768
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v0, v2

    .line 769
    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget-object v4, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    sub-int v4, p1, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 772
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 773
    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 775
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 776
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 777
    return-object v0

    .line 781
    :cond_51
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->readRawBytes(I)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v1, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private blacklist readTag()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 564
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-lt v0, v1, :cond_d

    .line 566
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    .line 567
    return-void

    .line 569
    :cond_d
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 570
    ushr-int/lit8 v1, v0, 0x3

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    .line 571
    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 572
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 573
    return-void
.end method

.method private blacklist readVarint()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    nop

    .line 602
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 604
    :goto_5
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 607
    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v4, v5

    .line 608
    if-ltz v4, :cond_60

    .line 614
    move v5, v2

    :goto_10
    if-ge v5, v4, :cond_5c

    .line 615
    iget-object v6, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v7, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v7, v5

    aget-byte v6, v6, v7

    .line 616
    int-to-long v7, v6

    const-wide/16 v9, 0x7f

    and-long/2addr v7, v9

    shl-long/2addr v7, v3

    or-long/2addr v0, v7

    .line 617
    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_29

    .line 618
    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 619
    return-wide v0

    .line 621
    :cond_29
    add-int/lit8 v3, v3, 0x7

    .line 622
    const/16 v6, 0x3f

    if-gt v3, v6, :cond_32

    .line 614
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 623
    :cond_32
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Varint is too large at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 625
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 626
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_5c
    invoke-direct {p0, v4}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 631
    goto :goto_5

    .line 609
    :cond_60
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete varint at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 611
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 612
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist decodeZigZag32(I)I
    .registers 3

    .line 582
    ushr-int/lit8 v0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public blacklist decodeZigZag64(J)J
    .registers 7

    .line 592
    const/4 v0, 0x1

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x1

    and-long/2addr p1, v2

    neg-long p1, p1

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method public blacklist dumpDebugData()Ljava/lang/String;
    .registers 4

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    const-string v1, "\nmFieldNumber : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    const-string v1, "\nmWireType : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v1, "\nmState : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string v1, "\nmDiscardedBytes : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const-string v1, "\nmOffset : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    const-string v1, "\nmExpectedObjectTokenStack : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    .line 980
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    const-string v1, "\nmDepth : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    const-string v1, "\nmBuffer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    const-string v1, "\nmBufferSize : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    const-string v1, "\nmEnd : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist end(J)V
    .registers 6

    .line 544
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_40

    .line 550
    iget-object p1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget p2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {p1, p2}, Landroid/util/LongArray;->get(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result p1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result p2

    if-le p1, p2, :cond_32

    .line 552
    iget-object p1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget p2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {p1, p2}, Landroid/util/LongArray;->get(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result p1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 554
    :cond_32
    iget p1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 555
    iget-byte p1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 p1, p1, -0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 556
    return-void

    .line 545
    :cond_40
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " does not match current message token "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 547
    invoke-virtual {p2, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 548
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getFieldNumber()I
    .registers 2

    .line 189
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0
.end method

.method public blacklist getOffset()I
    .registers 3

    .line 210
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getWireType()I
    .registers 3

    .line 198
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 201
    return v1

    .line 203
    :cond_7
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    return v0
.end method

.method public blacklist nextField()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    .line 224
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 225
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0

    .line 227
    :cond_10
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_20

    .line 229
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->skip()V

    .line 230
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 232
    :cond_20
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6e

    .line 233
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    if-ge v0, v2, :cond_37

    .line 236
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 237
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0

    .line 238
    :cond_37
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    if-ne v0, v1, :cond_47

    .line 240
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    goto :goto_6e

    .line 242
    :cond_47
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpectedly reached end of packed field at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_6e
    :goto_6e
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    if-ltz v0, :cond_88

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 250
    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v1

    .line 249
    invoke-static {v1, v2}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v1

    if-ne v0, v1, :cond_88

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    goto :goto_8b

    .line 254
    :cond_88
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readTag()V

    .line 256
    :goto_8b
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0
.end method

.method public blacklist nextField(J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    long-to-int p1, p1

    if-ne v0, p1, :cond_9

    .line 269
    const/4 p1, 0x1

    return p1

    .line 272
    :cond_9
    iget-byte p1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 273
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist readBoolean(J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 416
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 417
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 420
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_5a

    .line 427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 428
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") is not an boolean"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 429
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :pswitch_41
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 424
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_50

    const/4 p1, 0x1

    .line 425
    :cond_50
    nop

    .line 432
    iget-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 p2, p2, -0x2

    int-to-byte p2, p2

    iput-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 433
    return p1

    nop

    :pswitch_data_5a
    .packed-switch 0x8
        :pswitch_41
    .end packed-switch
.end method

.method public blacklist readBytes(J)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 470
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 473
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_54

    .line 481
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 482
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") cannot be read as raw bytes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 484
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :pswitch_3e
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 477
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide p1

    long-to-int p1, p1

    .line 478
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->readRawBytes(I)[B

    move-result-object p1

    .line 479
    nop

    .line 487
    iget-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 p2, p2, -0x2

    int-to-byte p2, p2

    iput-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 488
    return-object p1

    :pswitch_data_54
    .packed-switch 0xb
        :pswitch_3e
        :pswitch_3e
    .end packed-switch
.end method

.method public blacklist readDouble(J)D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 284
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 285
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 288
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_56

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 296
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") cannot be read as a double"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 298
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :pswitch_41
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 292
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    .line 293
    nop

    .line 301
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 302
    return-wide p1

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_41
    .end packed-switch
.end method

.method public blacklist readFloat(J)F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 313
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 314
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 317
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_56

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 325
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") is not a float"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 326
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :pswitch_41
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 321
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 322
    nop

    .line 329
    iget-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 p2, p2, -0x2

    int-to-byte p2, p2

    iput-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 330
    return p1

    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_41
    .end packed-switch
.end method

.method public blacklist readInt(J)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 341
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 342
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 345
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_6a

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") is not an int"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 365
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :sswitch_42
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 354
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/util/proto/ProtoInputStream;->decodeZigZag32(I)I

    move-result p1

    .line 355
    goto :goto_61

    .line 349
    :sswitch_4f
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 350
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed32()I

    move-result p1

    .line 351
    goto :goto_61

    .line 359
    :sswitch_58
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 360
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide p1

    long-to-int p1, p1

    .line 361
    nop

    .line 368
    :goto_61
    iget-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 p2, p2, -0x2

    int-to-byte p2, p2

    iput-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 369
    return p1

    nop

    :sswitch_data_6a
    .sparse-switch
        0x5 -> :sswitch_58
        0x7 -> :sswitch_4f
        0xd -> :sswitch_58
        0xe -> :sswitch_58
        0xf -> :sswitch_4f
        0x11 -> :sswitch_42
    .end sparse-switch
.end method

.method public blacklist readLong(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 379
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 380
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 383
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_68

    .line 400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 401
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") is not an long"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 402
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :sswitch_42
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 392
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->decodeZigZag64(J)J

    move-result-wide p1

    .line 393
    goto :goto_5f

    .line 387
    :sswitch_4e
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 388
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed64()J

    move-result-wide p1

    .line 389
    goto :goto_5f

    .line 396
    :sswitch_57
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 397
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide p1

    .line 398
    nop

    .line 405
    :goto_5f
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 406
    return-wide p1

    nop

    :sswitch_data_68
    .sparse-switch
        0x3 -> :sswitch_57
        0x4 -> :sswitch_57
        0x6 -> :sswitch_4e
        0x10 -> :sswitch_4e
        0x12 -> :sswitch_42
    .end sparse-switch
.end method

.method public blacklist readString(J)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 443
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 446
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_54

    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 454
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") is not an string"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 456
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :pswitch_3e
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 449
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide p1

    long-to-int p1, p1

    .line 450
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->readRawString(I)Ljava/lang/String;

    move-result-object p1

    .line 451
    nop

    .line 459
    iget-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 p2, p2, -0x2

    int-to-byte p2, p2

    iput-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 460
    return-object p1

    :pswitch_data_54
    .packed-switch 0x9
        :pswitch_3e
    .end packed-switch
.end method

.method public blacklist skip()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11

    .line 807
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    goto :goto_72

    .line 809
    :cond_11
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    packed-switch v0, :pswitch_data_7a

    .line 838
    :pswitch_16
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected wire type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 840
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 841
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :pswitch_49
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 836
    goto :goto_72

    .line 822
    :pswitch_4e
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 823
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 824
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 825
    goto :goto_72

    .line 819
    :pswitch_5a
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 820
    goto :goto_72

    .line 813
    :cond_60
    :pswitch_60
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 814
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    aget-byte v0, v0, v1

    .line 815
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 816
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_60

    .line 817
    nop

    .line 844
    :goto_72
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 845
    return-void

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5a
        :pswitch_4e
        :pswitch_16
        :pswitch_16
        :pswitch_49
    .end packed-switch
.end method

.method public blacklist start(J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 499
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 500
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 502
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 504
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    if-nez v1, :cond_1a

    .line 505
    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1}, Landroid/util/LongArray;-><init>()V

    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    .line 507
    :cond_1a
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    invoke-virtual {v3}, Landroid/util/LongArray;->size()I

    move-result v3

    const-wide v4, 0x20000000000L

    const/4 v6, 0x0

    if-ne v1, v3, :cond_49

    .line 509
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    and-long v7, p1, v4

    cmp-long v3, v7, v4

    if-nez v3, :cond_38

    move v3, v2

    goto :goto_39

    :cond_38
    move v3, v6

    :goto_39
    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    long-to-int p1, p1

    .line 511
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result p2

    add-int/2addr p2, v0

    .line 509
    invoke-static {v6, v3, v4, p1, p2}, Landroid/util/proto/ProtoInputStream;->makeToken(IZIII)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Landroid/util/LongArray;->add(J)V

    goto :goto_65

    .line 515
    :cond_49
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    and-long v7, p1, v4

    cmp-long v4, v7, v4

    if-nez v4, :cond_55

    move v4, v2

    goto :goto_56

    :cond_55
    move v4, v6

    :goto_56
    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    long-to-int p1, p1

    .line 517
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result p2

    add-int/2addr p2, v0

    .line 515
    invoke-static {v6, v4, v5, p1, p2}, Landroid/util/proto/ProtoInputStream;->makeToken(IZIII)J

    move-result-wide p1

    invoke-virtual {v1, v3, p1, p2}, Landroid/util/LongArray;->set(IJ)V

    .line 521
    :goto_65
    iget p1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    if-lez p1, :cond_cf

    iget-object p1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget p2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 522
    invoke-virtual {p1, p2}, Landroid/util/LongArray;->get(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result p1

    iget-object p2, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    sub-int/2addr v0, v2

    .line 523
    invoke-virtual {p2, v0}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result p2

    if-gt p1, p2, :cond_85

    goto :goto_cf

    .line 524
    :cond_85
    new-instance p1, Landroid/util/proto/ProtoParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Embedded Object ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 525
    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ") ends after of parent Objects\'s ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    sub-int/2addr v1, v2

    .line 527
    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ") end"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 529
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 531
    :cond_cf
    :goto_cf
    iget-byte p1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 p1, p1, -0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 532
    iget-object p1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget p2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {p1, p2}, Landroid/util/LongArray;->get(I)J

    move-result-wide p1

    return-wide p1
.end method
