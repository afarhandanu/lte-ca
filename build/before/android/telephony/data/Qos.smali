.class public abstract Landroid/telephony/data/Qos;
.super Ljava/lang/Object;
.source "Qos.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/Qos$QosBandwidth;,
        Landroid/telephony/data/Qos$QosType;
    }
.end annotation


# static fields
.field static final blacklist QOS_TYPE_EPS:I = 0x1

.field static final blacklist QOS_TYPE_NR:I = 0x2


# instance fields
.field final blacklist downlink:Landroid/telephony/data/Qos$QosBandwidth;

.field final blacklist type:I

.field final blacklist uplink:Landroid/telephony/data/Qos$QosBandwidth;


# direct methods
.method constructor blacklist <init>(ILandroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Landroid/telephony/data/Qos;->type:I

    .line 53
    iput-object p2, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    .line 54
    iput-object p3, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    .line 55
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/Qos;->type:I

    .line 139
    const-class v0, Landroid/telephony/data/Qos$QosBandwidth;

    .line 140
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/Qos$QosBandwidth;

    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/Qos$QosBandwidth;

    iput-object v0, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    .line 141
    const-class v0, Landroid/telephony/data/Qos$QosBandwidth;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/Qos$QosBandwidth;

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/Qos$QosBandwidth;

    iput-object p1, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 169
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 171
    :cond_4
    check-cast p1, Landroid/telephony/data/Qos;

    .line 172
    iget v1, p0, Landroid/telephony/data/Qos;->type:I

    iget v2, p1, Landroid/telephony/data/Qos;->type:I

    if-ne v1, v2, :cond_21

    iget-object v1, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    iget-object v2, p1, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    .line 173
    invoke-virtual {v1, v2}, Landroid/telephony/data/Qos$QosBandwidth;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    iget-object p1, p1, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    .line 174
    invoke-virtual {v1, p1}, Landroid/telephony/data/Qos$QosBandwidth;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 172
    :goto_22
    return v0
.end method

.method public blacklist getDownlinkBandwidth()Landroid/telephony/data/Qos$QosBandwidth;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/telephony/data/Qos;->type:I

    return v0
.end method

.method public blacklist getUplinkBandwidth()Landroid/telephony/data/Qos$QosBandwidth;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 164
    iget-object v0, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    iget-object v1, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist writeToParcel(ILandroid/os/Parcel;I)V
    .registers 4

    .line 152
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object p1, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {p2, p1, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 154
    iget-object p1, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {p2, p1, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 155
    return-void
.end method
