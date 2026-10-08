.class public final Landroid/telephony/UiccPortInfo;
.super Ljava/lang/Object;
.source "UiccPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UiccPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ICCID_REDACTED:Ljava/lang/String; = "FFFFFFFFFFFFFFFFFFFF"


# instance fields
.field private final blacklist mIccId:Ljava/lang/String;

.field private final blacklist mIsActive:Z

.field private final blacklist mLogicalSlotIndex:I

.field private final blacklist mPortIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/telephony/UiccPortInfo$1;

    invoke-direct {v0}, Landroid/telephony/UiccPortInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/UiccPortInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/UiccPortInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIZ)V
    .registers 5

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    .line 91
    iput p2, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    .line 92
    iput p3, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    .line 93
    iput-boolean p4, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    .line 94
    return-void
.end method


# virtual methods
.method public blacklist createSensitiveInfoSanitizedCopy()Landroid/telephony/UiccPortInfo;
    .registers 6

    .line 147
    new-instance v0, Landroid/telephony/UiccPortInfo;

    .line 149
    invoke-virtual {p0}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result v1

    .line 150
    invoke-virtual {p0}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v2

    .line 151
    invoke-virtual {p0}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v3

    const-string v4, "FFFFFFFFFFFFFFFFFFFF"

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/telephony/UiccPortInfo;-><init>(Ljava/lang/String;IIZ)V

    .line 147
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 156
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 157
    return v0

    .line 159
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 163
    :cond_12
    check-cast p1, Landroid/telephony/UiccPortInfo;

    .line 164
    iget-object v2, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget v2, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    iget v3, p1, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    iget v3, p1, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    if-ne v2, v3, :cond_31

    iget-boolean v2, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    iget-boolean p1, p1, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    if-ne v2, p1, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    return v0

    .line 160
    :cond_33
    :goto_33
    return v1
.end method

.method public whitelist getIccId()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLogicalSlotIndex()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    return v0
.end method

.method public whitelist getPortIndex()I
    .registers 2

    .line 114
    iget v0, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 172
    iget-object v0, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    iget v1, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isActive()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccPortInfo (isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iccId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    .line 181
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", portIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogicalSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 68
    iget-object p2, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 69
    iget p2, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget p2, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-boolean p2, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 72
    return-void
.end method
