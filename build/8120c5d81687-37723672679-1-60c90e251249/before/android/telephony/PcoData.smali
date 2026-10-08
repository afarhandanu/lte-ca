.class public Landroid/telephony/PcoData;
.super Ljava/lang/Object;
.source "PcoData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PcoData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o bearerProto:Ljava/lang/String;

.field public final greylist-max-o cid:I

.field public final greylist-max-o contents:[B

.field public final greylist-max-o pcoId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Landroid/telephony/PcoData$1;

    invoke-direct {v0}, Landroid/telephony/PcoData$1;-><init>()V

    sput-object v0, Landroid/telephony/PcoData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;I[B)V
    .registers 5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroid/telephony/PcoData;->cid:I

    .line 43
    iput-object p2, p0, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    .line 44
    iput p3, p0, Landroid/telephony/PcoData;->pcoId:I

    .line 45
    iput-object p4, p0, Landroid/telephony/PcoData;->contents:[B

    .line 46
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PcoData;->cid:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PcoData;->pcoId:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/PcoData;->contents:[B

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 96
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_37

    .line 97
    :cond_12
    check-cast p1, Landroid/telephony/PcoData;

    .line 98
    iget v2, p0, Landroid/telephony/PcoData;->cid:I

    iget v3, p1, Landroid/telephony/PcoData;->cid:I

    if-ne v2, v3, :cond_35

    iget v2, p0, Landroid/telephony/PcoData;->pcoId:I

    iget v3, p1, Landroid/telephony/PcoData;->pcoId:I

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    .line 100
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/telephony/PcoData;->contents:[B

    iget-object p1, p1, Landroid/telephony/PcoData;->contents:[B

    .line 101
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    .line 98
    :goto_36
    return v0

    .line 96
    :cond_37
    :goto_37
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 106
    iget v0, p0, Landroid/telephony/PcoData;->cid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    iget v2, p0, Landroid/telephony/PcoData;->pcoId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telephony/PcoData;->contents:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PcoData("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PcoData;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PcoData;->pcoId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/PcoData;->contents:[B

    .line 90
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 59
    iget p2, p0, Landroid/telephony/PcoData;->cid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object p2, p0, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget p2, p0, Landroid/telephony/PcoData;->pcoId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object p2, p0, Landroid/telephony/PcoData;->contents:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 63
    return-void
.end method
