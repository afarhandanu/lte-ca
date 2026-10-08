.class public Landroid/telephony/data/QosBearerFilter$PortRange;
.super Ljava/lang/Object;
.source "QosBearerFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QosBearerFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PortRange"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/QosBearerFilter$PortRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist end:I

.field blacklist start:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 172
    new-instance v0, Landroid/telephony/data/QosBearerFilter$PortRange$1;

    invoke-direct {v0}, Landroid/telephony/data/QosBearerFilter$PortRange$1;-><init>()V

    sput-object v0, Landroid/telephony/data/QosBearerFilter$PortRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    .line 144
    iput p2, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    .line 145
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    .line 140
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/QosBearerFilter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 194
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 196
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    instance-of v2, p1, Landroid/telephony/data/QosBearerFilter$PortRange;

    if-nez v2, :cond_c

    goto :goto_1d

    .line 200
    :cond_c
    check-cast p1, Landroid/telephony/data/QosBearerFilter$PortRange;

    .line 201
    iget v2, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    iget v3, p1, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    if-ne v2, v3, :cond_1b

    iget v2, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    iget p1, p1, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    if-ne v2, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    return v0

    .line 197
    :cond_1d
    :goto_1d
    return v1
.end method

.method public blacklist getEnd()I
    .registers 2

    .line 152
    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    return v0
.end method

.method public blacklist getStart()I
    .registers 2

    .line 148
    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 207
    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .registers 4

    .line 156
    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1d

    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    const v2, 0xffff

    if-gt v0, v2, :cond_1d

    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    if-lt v0, v1, :cond_1d

    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    if-gt v0, v2, :cond_1d

    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    iget v1, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    if-gt v0, v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PortRange { start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 163
    iget p2, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget p2, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    return-void
.end method
