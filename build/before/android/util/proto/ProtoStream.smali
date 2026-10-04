.class public Landroid/util/proto/ProtoStream;
.super Ljava/lang/Object;
.source "ProtoStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/proto/ProtoStream$FieldCount;,
        Landroid/util/proto/ProtoStream$FieldType;,
        Landroid/util/proto/ProtoStream$WireType;
    }
.end annotation


# static fields
.field public static final whitelist FIELD_COUNT_MASK:J = 0xf0000000000L

.field public static final whitelist FIELD_COUNT_PACKED:J = 0x50000000000L

.field public static final whitelist FIELD_COUNT_REPEATED:J = 0x20000000000L

.field public static final whitelist FIELD_COUNT_SHIFT:I = 0x28

.field public static final whitelist FIELD_COUNT_SINGLE:J = 0x10000000000L

.field public static final whitelist FIELD_COUNT_UNKNOWN:J = 0x0L

.field public static final blacklist FIELD_ID_MASK:I = -0x8

.field public static final whitelist FIELD_ID_SHIFT:I = 0x3

.field public static final whitelist FIELD_TYPE_BOOL:J = 0x800000000L

.field public static final whitelist FIELD_TYPE_BYTES:J = 0xc00000000L

.field public static final whitelist FIELD_TYPE_DOUBLE:J = 0x100000000L

.field public static final whitelist FIELD_TYPE_ENUM:J = 0xe00000000L

.field public static final whitelist FIELD_TYPE_FIXED32:J = 0x700000000L

.field public static final whitelist FIELD_TYPE_FIXED64:J = 0x600000000L

.field public static final whitelist FIELD_TYPE_FLOAT:J = 0x200000000L

.field public static final whitelist FIELD_TYPE_INT32:J = 0x500000000L

.field public static final whitelist FIELD_TYPE_INT64:J = 0x300000000L

.field public static final whitelist FIELD_TYPE_MASK:J = 0xff00000000L

.field public static final whitelist FIELD_TYPE_MESSAGE:J = 0xb00000000L

.field private static final blacklist FIELD_TYPE_NAMES:[Ljava/lang/String;

.field public static final whitelist FIELD_TYPE_SFIXED32:J = 0xf00000000L

.field public static final whitelist FIELD_TYPE_SFIXED64:J = 0x1000000000L

.field public static final whitelist FIELD_TYPE_SHIFT:I = 0x20

.field public static final whitelist FIELD_TYPE_SINT32:J = 0x1100000000L

.field public static final whitelist FIELD_TYPE_SINT64:J = 0x1200000000L

.field public static final whitelist FIELD_TYPE_STRING:J = 0x900000000L

.field public static final whitelist FIELD_TYPE_UINT32:J = 0xd00000000L

.field public static final whitelist FIELD_TYPE_UINT64:J = 0x400000000L

.field public static final blacklist FIELD_TYPE_UNKNOWN:J = 0x0L

.field public static final whitelist WIRE_TYPE_END_GROUP:I = 0x4

.field public static final whitelist WIRE_TYPE_FIXED32:I = 0x5

.field public static final whitelist WIRE_TYPE_FIXED64:I = 0x1

.field public static final whitelist WIRE_TYPE_LENGTH_DELIMITED:I = 0x2

.field public static final whitelist WIRE_TYPE_MASK:I = 0x7

.field public static final whitelist WIRE_TYPE_START_GROUP:I = 0x3

.field public static final whitelist WIRE_TYPE_VARINT:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 19

    .line 341
    const-string v17, "SInt32"

    const-string v18, "SInt64"

    const-string v1, "Double"

    const-string v2, "Float"

    const-string v3, "Int64"

    const-string v4, "UInt64"

    const-string v5, "Int32"

    const-string v6, "Fixed64"

    const-string v7, "Fixed32"

    const-string v8, "Bool"

    const-string v9, "String"

    const-string v10, "Group"

    const-string v11, "Message"

    const-string v12, "Bytes"

    const-string v13, "UInt32"

    const-string v14, "Enum"

    const-string v15, "SFixed32"

    const-string v16, "SFixed64"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/proto/ProtoStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertObjectIdToOrdinal(I)I
    .registers 2

    .line 614
    const v0, 0x7ffff

    sub-int/2addr v0, p0

    return v0
.end method

.method public static blacklist getDepthFromToken(J)I
    .registers 4

    .line 580
    const/16 v0, 0x33

    shr-long/2addr p0, v0

    const-wide/16 v0, 0x1ff

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static whitelist getFieldCountString(J)Ljava/lang/String;
    .registers 4

    .line 465
    const-wide v0, 0x10000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    .line 466
    const-string p0, ""

    return-object p0

    .line 467
    :cond_c
    const-wide v0, 0x20000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_18

    .line 468
    const-string p0, "Repeated"

    return-object p0

    .line 469
    :cond_18
    const-wide v0, 0x50000000000L

    cmp-long p0, p0, v0

    if-nez p0, :cond_24

    .line 470
    const-string p0, "Packed"

    return-object p0

    .line 472
    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static whitelist getFieldIdString(J)Ljava/lang/String;
    .registers 7

    .line 502
    const-wide v0, 0xf0000000000L

    and-long/2addr v0, p0

    .line 503
    invoke-static {v0, v1}, Landroid/util/proto/ProtoStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v2

    .line 504
    if-nez v2, :cond_1f

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fieldCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_38

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 511
    :cond_38
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p0

    .line 512
    invoke-static {v0, v1}, Landroid/util/proto/ProtoStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v3

    .line 513
    if-nez v3, :cond_57

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fieldType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    long-to-int v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fieldId=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 518
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 517
    return-object p0
.end method

.method public static whitelist getFieldTypeString(J)Ljava/lang/String;
    .registers 4

    .line 453
    const-wide v0, 0xff00000000L

    and-long/2addr p0, v0

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    add-int/lit8 p0, p0, -0x1

    .line 454
    if-ltz p0, :cond_18

    sget-object p1, Landroid/util/proto/ProtoStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    array-length p1, p1

    if-ge p0, p1, :cond_18

    .line 455
    sget-object p1, Landroid/util/proto/ProtoStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    aget-object p0, p1, p0

    return-object p0

    .line 457
    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getObjectIdFromToken(J)I
    .registers 4

    .line 593
    const/16 v0, 0x20

    shr-long/2addr p0, v0

    const-wide/32 v0, 0x7ffff

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist getOffsetFromToken(J)I
    .registers 2

    .line 602
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist getRepeatedFromToken(J)Z
    .registers 4

    .line 571
    const/16 v0, 0x3c

    shr-long/2addr p0, v0

    const-wide/16 v0, 0x1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static blacklist getTagSizeFromToken(J)I
    .registers 4

    .line 562
    const/16 v0, 0x3d

    shr-long/2addr p0, v0

    const-wide/16 v0, 0x7

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static whitelist getWireTypeString(I)Ljava/lang/String;
    .registers 1

    .line 480
    packed-switch p0, :pswitch_data_18

    .line 494
    const/4 p0, 0x0

    return-object p0

    .line 492
    :pswitch_5
    const-string p0, "Fixed32"

    return-object p0

    .line 490
    :pswitch_8
    const-string p0, "End Group"

    return-object p0

    .line 488
    :pswitch_b
    const-string p0, "Start Group"

    return-object p0

    .line 486
    :pswitch_e
    const-string p0, "Length Delimited"

    return-object p0

    .line 484
    :pswitch_11
    const-string p0, "Fixed64"

    return-object p0

    .line 482
    :pswitch_14
    const-string p0, "Varint"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist makeFieldId(IJ)J
    .registers 7

    .line 527
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long p0, p1, v0

    return-wide p0
.end method

.method public static whitelist makeToken(IZIII)J
    .registers 9

    .line 549
    const-wide/16 v0, 0x7

    int-to-long v2, p0

    and-long/2addr v0, v2

    const/16 p0, 0x3d

    shl-long/2addr v0, p0

    .line 550
    if-eqz p1, :cond_c

    const-wide/high16 p0, 0x1000000000000000L

    goto :goto_e

    :cond_c
    const-wide/16 p0, 0x0

    :goto_e
    or-long/2addr p0, v0

    const-wide/16 v0, 0x1ff

    int-to-long v2, p2

    and-long/2addr v0, v2

    const/16 p2, 0x33

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    const-wide/32 v0, 0x7ffff

    int-to-long p2, p3

    and-long/2addr p2, v0

    const/16 v0, 0x20

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    const-wide p2, 0xffffffffL

    int-to-long v0, p4

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    .line 549
    return-wide p0
.end method

.method public static whitelist token2String(J)Ljava/lang/String;
    .registers 4

    .line 621
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    .line 622
    const-string p0, "Token(0)"

    return-object p0

    .line 624
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token(val=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 625
    invoke-static {p0, p1}, Landroid/util/proto/ProtoStream;->getDepthFromToken(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " object="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 626
    invoke-static {p0, p1}, Landroid/util/proto/ProtoStream;->getObjectIdFromToken(J)I

    move-result v1

    invoke-static {v1}, Landroid/util/proto/ProtoStream;->convertObjectIdToOrdinal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tagSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 627
    invoke-static {p0, p1}, Landroid/util/proto/ProtoStream;->getTagSizeFromToken(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 628
    invoke-static {p0, p1}, Landroid/util/proto/ProtoStream;->getOffsetFromToken(J)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 624
    return-object p0
.end method
