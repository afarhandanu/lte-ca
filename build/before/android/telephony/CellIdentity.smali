.class public abstract Landroid/telephony/CellIdentity;
.super Ljava/lang/Object;
.source "CellIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentity;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o INVALID_CHANNEL_NUMBER:I = 0x7fffffff

.field public static final blacklist MCC_LENGTH:I = 0x3

.field public static final blacklist MNC_MAX_LENGTH:I = 0x3

.field public static final blacklist MNC_MIN_LENGTH:I = 0x2


# instance fields
.field protected greylist-max-o mAlphaLong:Ljava/lang/String;

.field protected greylist-max-o mAlphaShort:Ljava/lang/String;

.field protected blacklist mGlobalCellId:Ljava/lang/String;

.field protected final greylist-max-o mMccStr:Ljava/lang/String;

.field protected final greylist-max-o mMncStr:Ljava/lang/String;

.field protected final greylist-max-o mTag:Ljava/lang/String;

.field protected final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 306
    new-instance v0, Landroid/telephony/CellIdentity$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentity$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .registers 11

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 301
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/telephony/CellIdentity;->mTag:Ljava/lang/String;

    .line 81
    iput p2, p0, Landroid/telephony/CellIdentity;->mType:I

    .line 84
    const p1, 0x7fffffff

    const/4 p2, 0x0

    if-eqz p3, :cond_41

    invoke-static {p3}, Landroid/telephony/CellIdentity;->isMcc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_41

    .line 86
    :cond_14
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_3e

    .line 92
    :cond_25
    iput-object p2, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid MCC format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/telephony/CellIdentity;->log(Ljava/lang/String;)V

    goto :goto_43

    .line 88
    :cond_3e
    :goto_3e
    iput-object p2, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    goto :goto_43

    .line 85
    :cond_41
    :goto_41
    iput-object p3, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    .line 96
    :goto_43
    if-eqz p4, :cond_79

    invoke-static {p4}, Landroid/telephony/CellIdentity;->isMnc(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4c

    goto :goto_79

    .line 98
    :cond_4c
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_76

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    goto :goto_76

    .line 104
    :cond_5d
    iput-object p2, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid MNC format: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentity;->log(Ljava/lang/String;)V

    goto :goto_7b

    .line 100
    :cond_76
    :goto_76
    iput-object p2, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    goto :goto_7b

    .line 97
    :cond_79
    :goto_79
    iput-object p4, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    .line 108
    :goto_7b
    iget-object p1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    if-eqz p1, :cond_83

    iget-object p1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    if-eqz p1, :cond_8b

    :cond_83
    iget-object p1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    if-nez p1, :cond_97

    iget-object p1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    if-eqz p1, :cond_97

    .line 109
    :cond_8b
    nop

    .line 110
    const-string p1, "e257ae06-ac0a-44c0-ba63-823b9f07b3e4"

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    .line 109
    const-string p2, "CellIdentity Missing Half of PLMN ID"

    invoke-static {p1, p2}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 114
    :cond_97
    iput-object p5, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    .line 115
    iput-object p6, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    .line 116
    return-void
.end method

.method protected static final blacklist inRangeOrUnavailable(III)I
    .registers 3

    .line 336
    if-lt p0, p1, :cond_6

    if-le p0, p2, :cond_5

    goto :goto_6

    .line 337
    :cond_5
    return p0

    .line 336
    :cond_6
    :goto_6
    const p0, 0x7fffffff

    return p0
.end method

.method protected static final blacklist inRangeOrUnavailable(IIII)I
    .registers 4

    .line 349
    if-lt p0, p1, :cond_4

    if-le p0, p2, :cond_a

    :cond_4
    if-eq p0, p3, :cond_a

    const p0, 0x7fffffff

    return p0

    .line 350
    :cond_a
    return p0
.end method

.method protected static final blacklist inRangeOrUnavailable(JJJ)J
    .registers 6

    .line 342
    cmp-long p2, p0, p2

    if-ltz p2, :cond_a

    cmp-long p2, p0, p4

    if-lez p2, :cond_9

    goto :goto_a

    .line 343
    :cond_9
    return-wide p0

    .line 342
    :cond_a
    :goto_a
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method private static blacklist isMcc(Ljava/lang/String;)Z
    .registers 6

    .line 356
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    return v1

    .line 359
    :cond_9
    move v0, v1

    :goto_a
    if-ge v0, v2, :cond_21

    .line 360
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_20

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-le v3, v4, :cond_1d

    goto :goto_20

    .line 359
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 360
    :cond_20
    :goto_20
    return v1

    .line 363
    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist isMnc(Ljava/lang/String;)Z
    .registers 5

    .line 369
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_10

    goto :goto_2e

    .line 372
    :cond_10
    move v0, v2

    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 373
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x30

    if-lt v1, v3, :cond_2b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x39

    if-le v1, v3, :cond_28

    goto :goto_2b

    .line 372
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 373
    :cond_2b
    :goto_2b
    return v2

    .line 376
    :cond_2c
    const/4 p0, 0x1

    return p0

    .line 369
    :cond_2e
    :goto_2e
    return v2
.end method

.method public static blacklist isValidPlmn(Ljava/lang/String;)Z
    .registers 4

    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_27

    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_10

    goto :goto_27

    .line 293
    :cond_10
    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/CellIdentity;->isMcc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/CellIdentity;->isMnc(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 v2, 0x1

    :cond_26
    return v2

    .line 291
    :cond_27
    :goto_27
    return v2
.end method


# virtual methods
.method public abstract whitelist asCellLocation()Landroid/telephony/CellLocation;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 254
    instance-of v0, p1, Landroid/telephony/CellIdentity;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 255
    return v1

    .line 258
    :cond_6
    check-cast p1, Landroid/telephony/CellIdentity;

    .line 259
    iget v0, p0, Landroid/telephony/CellIdentity;->mType:I

    iget v2, p1, Landroid/telephony/CellIdentity;->mType:I

    if-ne v0, v2, :cond_38

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    iget-object v2, p1, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    .line 260
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    iget-object v2, p1, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    .line 261
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    iget-object v2, p1, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    .line 262
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    iget-object p1, p1, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    .line 263
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 v1, 0x1

    goto :goto_39

    :cond_38
    nop

    .line 259
    :goto_39
    return v1
.end method

.method public greylist-max-o getChannelNumber()I
    .registers 2

    .line 155
    const v0, 0x7fffffff

    return v0
.end method

.method public blacklist getGlobalCellId()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mGlobalCellId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMccString()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMncString()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorAlphaLong()Ljava/lang/CharSequence;
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorAlphaShort()Ljava/lang/CharSequence;
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPlmn()Ljava/lang/String;
    .registers 3

    .line 212
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_1f

    .line 213
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getType()I
    .registers 2

    .line 129
    iget v0, p0, Landroid/telephony/CellIdentity;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 268
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    iget v4, p0, Landroid/telephony/CellIdentity;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSameCell(Landroid/telephony/CellIdentity;)Z
    .registers 5

    .line 205
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 206
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    return v0

    .line 207
    :cond_f
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getGlobalCellId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getGlobalCellId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method protected greylist-max-o log(Ljava/lang/String;)V
    .registers 3

    .line 331
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void
.end method

.method public abstract whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public blacklist setOperatorAlphaLong(Ljava/lang/String;)V
    .registers 2

    .line 171
    iput-object p1, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public blacklist setOperatorAlphaShort(Ljava/lang/String;)V
    .registers 2

    .line 187
    iput-object p1, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    .line 188
    return-void
.end method

.method protected abstract blacklist updateGlobalCellId()V
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 278
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object p2, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object p2, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object p2, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object p2, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    return-void
.end method
