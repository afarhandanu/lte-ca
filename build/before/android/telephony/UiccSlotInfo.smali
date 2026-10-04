.class public Landroid/telephony/UiccSlotInfo;
.super Ljava/lang/Object;
.source "UiccSlotInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/UiccSlotInfo$CardStateInfo;
    }
.end annotation


# static fields
.field public static final whitelist CARD_STATE_INFO_ABSENT:I = 0x1

.field public static final whitelist CARD_STATE_INFO_ERROR:I = 0x3

.field public static final whitelist CARD_STATE_INFO_PRESENT:I = 0x2

.field public static final whitelist CARD_STATE_INFO_RESTRICTED:I = 0x4

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UiccSlotInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCardId:Ljava/lang/String;

.field private final greylist-max-o mCardStateInfo:I

.field private final greylist-max-o mIsActive:Z

.field private final greylist-max-o mIsEuicc:Z

.field private final greylist-max-o mIsExtendedApduSupported:Z

.field private final blacklist mIsRemovable:Z

.field private blacklist mLogicalSlotAccessRestricted:Z

.field private final greylist-max-o mLogicalSlotIdx:I

.field private final blacklist mPortList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSimType:I

.field private final blacklist mSupportedSimTypes:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Landroid/telephony/UiccSlotInfo$1;

    invoke-direct {v0}, Landroid/telephony/UiccSlotInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccSlotInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    .line 104
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    sget-object v1, Landroid/telephony/UiccPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotInfo;->mSimType:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/UiccSlotInfo;->mSupportedSimTypes:[I

    .line 108
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/UiccSlotInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/UiccSlotInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZLjava/lang/String;IZZLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "IZZ",
            "Ljava/util/List<",
            "Landroid/telephony/UiccPortInfo;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 156
    iput-boolean p1, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    .line 157
    iput-object p2, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 158
    iput p3, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    .line 159
    iput-boolean p4, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 160
    iput-boolean p5, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    .line 161
    iput-object p6, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    .line 162
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_26

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/UiccPortInfo;

    invoke-virtual {p1}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    move p1, v0

    :goto_27
    iput-boolean p1, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    .line 163
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_32

    .line 164
    move p1, p2

    goto :goto_3c

    .line 165
    :cond_32
    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/UiccPortInfo;

    invoke-virtual {p1}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result p1

    :goto_3c
    iput p1, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    .line 166
    iput p2, p0, Landroid/telephony/UiccSlotInfo;->mSimType:I

    .line 167
    filled-new-array {p2}, [I

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/UiccSlotInfo;->mSupportedSimTypes:[I

    .line 168
    return-void
.end method

.method public constructor blacklist <init>(ZLjava/lang/String;IZZLjava/util/List;I[I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "IZZ",
            "Ljava/util/List<",
            "Landroid/telephony/UiccPortInfo;",
            ">;I[I)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 179
    iput-boolean p1, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    .line 180
    iput-object p2, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 181
    iput p3, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    .line 182
    iput-boolean p4, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 183
    iput-boolean p5, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    .line 184
    iput-object p6, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    .line 185
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_26

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/UiccPortInfo;

    invoke-virtual {p1}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    move p1, v0

    :goto_27
    iput-boolean p1, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    .line 186
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 187
    const/4 p1, -0x1

    goto :goto_3b

    .line 188
    :cond_31
    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/UiccPortInfo;

    invoke-virtual {p1}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result p1

    :goto_3b
    iput p1, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    .line 189
    iput p7, p0, Landroid/telephony/UiccSlotInfo;->mSimType:I

    .line 190
    iput-object p8, p0, Landroid/telephony/UiccSlotInfo;->mSupportedSimTypes:[I

    .line 191
    return-void
.end method

.method public constructor whitelist <init>(ZZLjava/lang/String;IIZ)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 137
    iput-boolean p1, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    .line 138
    iput-boolean p2, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    .line 139
    iput-object p3, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 140
    iput p4, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    .line 141
    iput p5, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    .line 142
    iput-boolean p6, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 143
    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    .line 145
    const/4 p1, -0x1

    iput p1, p0, Landroid/telephony/UiccSlotInfo;->mSimType:I

    .line 146
    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/UiccSlotInfo;->mSupportedSimTypes:[I

    .line 147
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 307
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 308
    return v0

    .line 310
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5f

    .line 314
    :cond_12
    check-cast p1, Landroid/telephony/UiccSlotInfo;

    .line 315
    iget-boolean v2, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    iget-boolean v3, p1, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    if-ne v2, v3, :cond_5d

    iget-boolean v2, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    iget-boolean v3, p1, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    if-ne v2, v3, :cond_5d

    iget-object v2, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 317
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget v2, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    iget v3, p1, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    if-ne v2, v3, :cond_5d

    iget v2, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    iget v3, p1, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    if-ne v2, v3, :cond_5d

    iget-boolean v2, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    iget-boolean v3, p1, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    if-ne v2, v3, :cond_5d

    iget-boolean v2, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    iget-boolean v3, p1, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    if-ne v2, v3, :cond_5d

    iget-object v2, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    .line 322
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget v2, p0, Landroid/telephony/UiccSlotInfo;->mSimType:I

    iget v3, p1, Landroid/telephony/UiccSlotInfo;->mSimType:I

    if-ne v2, v3, :cond_5d

    iget-object v2, p0, Landroid/telephony/UiccSlotInfo;->mSupportedSimTypes:[I

    iget-object p1, p1, Landroid/telephony/UiccSlotInfo;->mSupportedSimTypes:[I

    .line 324
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v0, v1

    .line 315
    :goto_5e
    return v0

    .line 311
    :cond_5f
    :goto_5f
    return v1
.end method

.method public whitelist getCardId()Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCardStateInfo()I
    .registers 2

    .line 229
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    return v0
.end method

.method public whitelist getIsActive()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    if-nez v0, :cond_7

    .line 208
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    return v0

    .line 205
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getIsActive() is not supported by UiccSlotInfo. Please Use UiccPortInfo API instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIsEuicc()Z
    .registers 2

    .line 212
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    return v0
.end method

.method public whitelist getIsExtendedApduSupported()Z
    .registers 2

    .line 252
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    return v0
.end method

.method public whitelist getLogicalSlotIdx()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    if-nez v0, :cond_7

    .line 245
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    return v0

    .line 242
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getLogicalSlotIdx() is not supported by UiccSlotInfo. Please use UiccPortInfo API instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPorts()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccPortInfo;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSimType()I
    .registers 2

    .line 294
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mSimType:I

    return v0
.end method

.method public blacklist getSupportedSimTypes()[I
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mSupportedSimTypes:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 12

    .line 329
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 330
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mSimType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mSupportedSimTypes:[I

    .line 331
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 329
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isRemovable()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    return v0
.end method

.method public blacklist setLogicalSlotAccessRestricted(Z)V
    .registers 2

    .line 286
    iput-boolean p1, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 287
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiccSlotInfo (mIsEuicc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCardId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 341
    invoke-static {v2}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cardState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsExtendedApduSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsRemovable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPortList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLogicalSlotAccessRestricted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->supportSlotSwitching2psim1esimConfig()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 353
    const-string v1, ", mSimType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/UiccSlotInfo;->mSimType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 354
    const-string v2, ", mSupportedSimTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/UiccSlotInfo;->mSupportedSimTypes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_87
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 112
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 113
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 114
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 115
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 118
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 119
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 120
    iget-boolean p2, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    iget p2, p0, Landroid/telephony/UiccSlotInfo;->mSimType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object p2, p0, Landroid/telephony/UiccSlotInfo;->mSupportedSimTypes:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 123
    return-void
.end method
