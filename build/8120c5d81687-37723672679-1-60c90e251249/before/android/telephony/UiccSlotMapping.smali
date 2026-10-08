.class public final Landroid/telephony/UiccSlotMapping;
.super Ljava/lang/Object;
.source "UiccSlotMapping.java"

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
            "Landroid/telephony/UiccSlotMapping;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLogicalSlotIndex:I

.field private final blacklist mPhysicalSlotIndex:I

.field private final blacklist mPortIndex:I

.field private final blacklist mSimType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Landroid/telephony/UiccSlotMapping$1;

    invoke-direct {v0}, Landroid/telephony/UiccSlotMapping$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccSlotMapping;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 4

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    .line 112
    iput p2, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    .line 113
    iput p3, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    .line 114
    const/4 p1, -0x1

    iput p1, p0, Landroid/telephony/UiccSlotMapping;->mSimType:I

    .line 115
    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .registers 5

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    .line 127
    iput p2, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    .line 128
    iput p3, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    .line 129
    iput p4, p0, Landroid/telephony/UiccSlotMapping;->mSimType:I

    .line 130
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/UiccSlotMapping;->mSimType:I

    .line 88
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/UiccSlotMapping-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/UiccSlotMapping;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 176
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 177
    return v0

    .line 179
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2f

    .line 183
    :cond_12
    check-cast p1, Landroid/telephony/UiccSlotMapping;

    .line 184
    iget v2, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    iget v3, p1, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    iget v3, p1, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    iget v3, p1, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/telephony/UiccSlotMapping;->mSimType:I

    iget p1, p1, Landroid/telephony/UiccSlotMapping;->mSimType:I

    if-ne v2, p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    return v0

    .line 180
    :cond_2f
    :goto_2f
    return v1
.end method

.method public whitelist getLogicalSlotIndex()I
    .registers 2

    .line 161
    iget v0, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    return v0
.end method

.method public whitelist getPhysicalSlotIndex()I
    .registers 2

    .line 150
    iget v0, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    return v0
.end method

.method public whitelist getPortIndex()I
    .registers 2

    .line 140
    iget v0, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    return v0
.end method

.method public blacklist getSimType()I
    .registers 2

    .line 171
    iget v0, p0, Landroid/telephony/UiccSlotMapping;->mSimType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 192
    iget v0, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/UiccSlotMapping;->mSimType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiccSlotMapping (mPortIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPhysicalSlotIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLogicalSlotIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->supportSlotSwitching2psim1esimConfig()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 206
    const-string v1, ", mSimType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/UiccSlotMapping;->mSimType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    :cond_43
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 92
    iget p2, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget p2, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget p2, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget p2, p0, Landroid/telephony/UiccSlotMapping;->mSimType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void
.end method
