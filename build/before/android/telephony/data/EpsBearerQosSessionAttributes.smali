.class public final Landroid/telephony/data/EpsBearerQosSessionAttributes;
.super Ljava/lang/Object;
.source "EpsBearerQosSessionAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/net/QosSessionAttributes;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/EpsBearerQosSessionAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mGuaranteedDownlinkBitRate:J

.field private final blacklist mGuaranteedUplinkBitRate:J

.field private final blacklist mMaxDownlinkBitRate:J

.field private final blacklist mMaxUplinkBitRate:J

.field private final blacklist mQci:I

.field private final blacklist mRemoteAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const-class v0, Landroid/telephony/data/EpsBearerQosSessionAttributes;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->TAG:Ljava/lang/String;

    .line 235
    new-instance v0, Landroid/telephony/data/EpsBearerQosSessionAttributes$1;

    invoke-direct {v0}, Landroid/telephony/data/EpsBearerQosSessionAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJJJJLjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJ",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const-string/jumbo v0, "remoteAddress must be non-null"

    invoke-static {p10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    iput p1, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mQci:I

    .line 149
    iput-wide p2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxDownlinkBitRate:J

    .line 150
    iput-wide p4, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxUplinkBitRate:J

    .line 151
    iput-wide p6, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    .line 152
    iput-wide p8, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    .line 154
    invoke-static {p10}, Landroid/telephony/data/EpsBearerQosSessionAttributes;->copySocketAddresses(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 155
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    .line 156
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mQci:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxDownlinkBitRate:J

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxUplinkBitRate:J

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v0, :cond_5f

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 182
    :try_start_35
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 183
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 182
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/net/UnknownHostException; {:try_start_35 .. :try_end_41} :catch_42

    .line 187
    goto :goto_5c

    .line 184
    :catch_42
    move-exception v3

    .line 186
    sget-object v4, Landroid/telephony/data/EpsBearerQosSessionAttributes;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to unparcel remote address at index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 189
    :cond_5f
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    .line 190
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/EpsBearerQosSessionAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/EpsBearerQosSessionAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist copySocketAddresses(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 162
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_20
    goto :goto_9

    .line 166
    :cond_21
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 216
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 217
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_55

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_55

    .line 218
    :cond_12
    check-cast p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;

    .line 219
    iget v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mQci:I

    iget v3, p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mQci:I

    if-ne v2, v3, :cond_53

    iget-wide v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxUplinkBitRate:J

    iget-wide v4, p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxUplinkBitRate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_53

    iget-wide v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxDownlinkBitRate:J

    iget-wide v4, p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxDownlinkBitRate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_53

    iget-wide v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    iget-wide v4, p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_53

    iget-wide v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    iget-wide v4, p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_53

    iget-object v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    .line 224
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_53

    iget-object v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    iget-object p1, p1, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    .line 225
    invoke-interface {v2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_53

    goto :goto_54

    :cond_53
    move v0, v1

    .line 219
    :goto_54
    return v0

    .line 217
    :cond_55
    :goto_55
    return v1
.end method

.method public whitelist getGuaranteedDownlinkBitRateKbps()J
    .registers 3

    .line 88
    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    return-wide v0
.end method

.method public whitelist getGuaranteedUplinkBitRateKbps()J
    .registers 3

    .line 75
    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    return-wide v0
.end method

.method public whitelist getMaxDownlinkBitRateKbps()J
    .registers 3

    .line 114
    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxDownlinkBitRate:J

    return-wide v0
.end method

.method public whitelist getMaxUplinkBitRateKbps()J
    .registers 3

    .line 101
    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxUplinkBitRate:J

    return-wide v0
.end method

.method public whitelist getQosIdentifier()I
    .registers 2

    .line 62
    iget v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mQci:I

    return v0
.end method

.method public whitelist getRemoteAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 230
    iget v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mQci:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxUplinkBitRate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxDownlinkBitRate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    .line 231
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 230
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 199
    iget p2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mQci:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxDownlinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 201
    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mMaxUplinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 202
    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 203
    iget-wide v0, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    iget-object p2, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 206
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v0, 0x0

    :goto_23
    if-ge v0, p2, :cond_42

    .line 208
    iget-object v1, p0, Landroid/telephony/data/EpsBearerQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 209
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 210
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 212
    :cond_42
    return-void
.end method
