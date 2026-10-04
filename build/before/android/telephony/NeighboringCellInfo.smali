.class public Landroid/telephony/NeighboringCellInfo;
.super Ljava/lang/Object;
.source "NeighboringCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "NeighboringCellInfo"

.field public static final whitelist UNKNOWN_CID:I = -0x1

.field public static final whitelist UNKNOWN_RSSI:I = 0x63


# instance fields
.field private greylist-max-p mCid:I

.field private greylist-max-p mLac:I

.field private greylist-max-p mNetworkType:I

.field private greylist-max-p mPsc:I

.field private greylist-max-p mRssi:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 336
    new-instance v0, Landroid/telephony/NeighboringCellInfo$1;

    invoke-direct {v0}, Landroid/telephony/NeighboringCellInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/NeighboringCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 97
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 98
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 100
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 114
    iput p2, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 115
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;I)V
    .registers 10

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 163
    const/4 p1, 0x0

    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 165
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 166
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 170
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 171
    const/16 v2, 0x8

    if-le v1, v2, :cond_18

    return-void

    .line 172
    :cond_18
    if-ge v1, v2, :cond_35

    .line 173
    move v3, p1

    :goto_1b
    rsub-int/lit8 v4, v1, 0x8

    if-ge v3, v4, :cond_35

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 179
    :cond_35
    const/16 v1, 0x10

    packed-switch p3, :pswitch_data_70

    :pswitch_3a
    goto :goto_6e

    .line 193
    :pswitch_3b
    :try_start_3b
    iput p3, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 194
    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    goto :goto_6e

    .line 182
    :pswitch_44
    iput p3, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 184
    const-string p3, "FFFFFFFF"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6e

    .line 185
    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 186
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I
    :try_end_63
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_63} :catch_64

    goto :goto_6e

    .line 197
    :catch_64
    move-exception p2

    .line 199
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 200
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 201
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 202
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    goto :goto_6f

    .line 203
    :cond_6e
    :goto_6e
    nop

    .line 204
    :goto_6f
    return-void

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_44
        :pswitch_44
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 215
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellInfoGsm;)V
    .registers 5

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 121
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 122
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1b

    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 124
    :cond_1b
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 125
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2c

    iput v2, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 127
    :cond_2c
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p1

    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 128
    iget p1, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    if-ne p1, v1, :cond_3c

    iput v2, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 130
    :cond_3c
    iput v2, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 131
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellInfoWcdma;)V
    .registers 5

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 137
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 138
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1b

    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 140
    :cond_1b
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 141
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2c

    iput v2, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 143
    :cond_2c
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 144
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    if-ne v0, v1, :cond_3c

    iput v2, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 146
    :cond_3c
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result p1

    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 147
    iget p1, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    if-ne p1, v1, :cond_4c

    iput v2, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 148
    :cond_4c
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCid()I
    .registers 2

    .line 241
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    return v0
.end method

.method public whitelist getLac()I
    .registers 2

    .line 233
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    return v0
.end method

.method public whitelist getNetworkType()I
    .registers 2

    .line 274
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    return v0
.end method

.method public whitelist getPsc()I
    .registers 2

    .line 249
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    return v0
.end method

.method public whitelist getRssi()I
    .registers 2

    .line 225
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    return v0
.end method

.method public whitelist setCid(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 289
    return-void
.end method

.method public whitelist setRssi(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 304
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    const-string v2, "-"

    const/16 v3, 0x63

    const-string v4, "@"

    const-string v5, "NeighboringCellInfo"

    const/4 v6, -0x1

    if-eq v1, v6, :cond_38

    .line 312
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    if-ne v4, v3, :cond_2e

    goto :goto_34

    :cond_2e
    iget v2, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6e

    .line 314
    :cond_38
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    if-eq v1, v6, :cond_6e

    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    if-eq v1, v6, :cond_6e

    .line 315
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 316
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    if-ne v4, v3, :cond_65

    goto :goto_6b

    :cond_65
    iget v2, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    :cond_6e
    :goto_6e
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 329
    iget p2, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget p2, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget p2, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget p2, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget p2, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    return-void
.end method
