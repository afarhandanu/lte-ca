.class public final Landroid/telephony/satellite/EarfcnRange;
.super Ljava/lang/Object;
.source "EarfcnRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/EarfcnRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mEndEarfcn:I

.field private blacklist mStartEarfcn:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 99
    new-instance v0, Landroid/telephony/satellite/EarfcnRange$1;

    invoke-direct {v0}, Landroid/telephony/satellite/EarfcnRange$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/EarfcnRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    .line 84
    iput p2, p0, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    .line 85
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-direct {p0, p1}, Landroid/telephony/satellite/EarfcnRange;->readFromParcel(Landroid/os/Parcel;)V

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/EarfcnRange-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/EarfcnRange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 133
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 134
    :cond_4
    instance-of v1, p1, Landroid/telephony/satellite/EarfcnRange;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    check-cast p1, Landroid/telephony/satellite/EarfcnRange;

    .line 136
    iget v1, p1, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    iget v3, p0, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    if-ne v1, v3, :cond_18

    iget p1, p1, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    iget v1, p0, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    if-ne p1, v1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    return v0

    .line 134
    :cond_1a
    return v2
.end method

.method public whitelist getEndEarfcn()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    return v0
.end method

.method public whitelist getStartEarfcn()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 141
    iget v0, p0, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startEarfcn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endEarfcn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 64
    iget p2, p0, Landroid/telephony/satellite/EarfcnRange;->mStartEarfcn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget p2, p0, Landroid/telephony/satellite/EarfcnRange;->mEndEarfcn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void
.end method
