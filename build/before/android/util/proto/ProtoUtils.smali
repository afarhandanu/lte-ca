.class public Landroid/util/proto/ProtoUtils;
.super Ljava/lang/Object;
.source "ProtoUtils.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    .line 93
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getWireType()I

    move-result v2

    .line 96
    const-string v3, "Offset : 0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v3, "\nField Number : 0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v3, "\nWire Type : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    packed-switch v2, :pswitch_data_c8

    .line 131
    const-string/jumbo v1, "unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getWireType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c3

    .line 125
    :pswitch_4d
    const-wide v2, 0x10700000000L

    invoke-static {v1, v2, v3}, Landroid/util/proto/ProtoStream;->makeFieldId(IJ)J

    move-result-wide v1

    .line 127
    const-string v3, "fixed32\nField Value : 0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    goto :goto_c3

    .line 122
    :pswitch_67
    const-string p0, "end group"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    goto :goto_c3

    .line 119
    :pswitch_6d
    const-string/jumbo p0, "start group"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    goto :goto_c3

    .line 113
    :pswitch_74
    const-wide v2, 0x10c00000000L

    invoke-static {v1, v2, v3}, Landroid/util/proto/ProtoStream;->makeFieldId(IJ)J

    move-result-wide v1

    .line 115
    const-string v3, "length delimited\nField Bytes : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    goto :goto_c3

    .line 107
    :pswitch_8e
    const-wide v2, 0x10600000000L

    invoke-static {v1, v2, v3}, Landroid/util/proto/ProtoStream;->makeFieldId(IJ)J

    move-result-wide v1

    .line 109
    const-string v3, "fixed64\nField Value : 0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    goto :goto_c3

    .line 101
    :pswitch_a8
    const-wide v2, 0x10300000000L

    invoke-static {v1, v2, v3}, Landroid/util/proto/ProtoStream;->makeFieldId(IJ)J

    move-result-wide v1

    .line 103
    const-string/jumbo v3, "varint\nField Value : 0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    nop

    .line 133
    :goto_c3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_8e
        :pswitch_74
        :pswitch_6d
        :pswitch_67
        :pswitch_4d
    .end packed-switch
.end method

.method public static greylist-max-o toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V
    .registers 20

    .line 52
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-static/range {v0 .. v10}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJII)V

    .line 53
    return-void
.end method

.method public static blacklist toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJII)V
    .registers 13

    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 39
    const-wide v0, 0x10300000001L

    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 40
    const-wide p3, 0x10300000002L

    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 41
    const-wide p3, 0x10300000003L

    invoke-virtual {p0, p3, p4, p7, p8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 42
    const-wide p3, 0x10500000004L

    invoke-virtual {p0, p3, p4, p9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 43
    const-wide p3, 0x10500000005L

    invoke-virtual {p0, p3, p4, p10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 44
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 45
    return-void
.end method

.method public static greylist-max-o toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .registers 9

    .line 59
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 60
    const-wide v0, 0x10300000001L

    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 61
    const-wide p3, 0x10300000002L

    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 63
    return-void
.end method

.method public static blacklist writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V
    .registers 14

    .line 70
    array-length v0, p6

    array-length v1, p5

    if-ne v0, v1, :cond_29

    .line 73
    array-length v0, p5

    .line 74
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_28

    .line 76
    aget v2, p5, v1

    const-wide/16 v3, 0x0

    if-nez v2, :cond_18

    cmp-long v2, p3, v3

    if-nez v2, :cond_18

    .line 77
    aget p3, p6, v1

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 78
    return-void

    .line 80
    :cond_18
    aget v2, p5, v1

    int-to-long v5, v2

    and-long/2addr v5, p3

    cmp-long v2, v5, v3

    if-eqz v2, :cond_25

    .line 81
    aget v2, p6, v1

    invoke-virtual {p0, p1, p2, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 74
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 84
    :cond_28
    return-void

    .line 71
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The length of origEnums must match protoEnums"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
