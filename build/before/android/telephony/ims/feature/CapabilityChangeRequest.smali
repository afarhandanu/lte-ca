.class public final Landroid/telephony/ims/feature/CapabilityChangeRequest;
.super Ljava/lang/Object;
.source "CapabilityChangeRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCapabilitiesToDisable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCapabilitiesToEnable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 186
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$1;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    .line 115
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    .line 116
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    .line 174
    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_27

    .line 175
    iget-object v3, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    new-instance v4, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    .line 175
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 178
    :cond_27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    .line 180
    nop

    :goto_33
    if-ge v1, v0, :cond_4a

    .line 181
    iget-object v2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    new-instance v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    .line 181
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 184
    :cond_4a
    return-void
.end method

.method private greylist-max-o addAllCapabilities(Ljava/util/Set;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;II)V"
        }
    .end annotation

    .line 160
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    .line 161
    const/4 v2, 0x1

    :goto_6
    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-gtz v3, :cond_1a

    .line 162
    and-int v3, v2, p2

    if-lez v3, :cond_17

    .line 163
    new-instance v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-direct {v3, v2, p3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_17
    mul-int/lit8 v2, v2, 0x2

    goto :goto_6

    .line 166
    :cond_1a
    return-void
.end method


# virtual methods
.method public whitelist addCapabilitiesToDisableForTech(II)V
    .registers 4

    .line 140
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-direct {p0, v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addAllCapabilities(Ljava/util/Set;II)V

    .line 141
    return-void
.end method

.method public whitelist addCapabilitiesToEnableForTech(II)V
    .registers 4

    .line 128
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-direct {p0, v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addAllCapabilities(Ljava/util/Set;II)V

    .line 129
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 231
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 232
    :cond_4
    instance-of v0, p1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 235
    :cond_a
    check-cast p1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 237
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    iget-object v2, p1, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 238
    :cond_17
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    iget-object p1, p1, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist getCapabilitiesToDisable()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getCapabilitiesToEnable()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 246
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    .line 247
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CapabilityChangeRequest{mCapabilitiesToEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCapabilitiesToDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 206
    iget-object p2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object p2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 208
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    goto :goto_f

    .line 211
    :cond_2a
    iget-object p2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object p2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_39
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 213
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    goto :goto_39

    .line 216
    :cond_54
    return-void
.end method
