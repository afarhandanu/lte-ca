.class public final Landroid/telephony/CellSignalStrengthCdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellSignalStrengthCdma"

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthCdma;


# instance fields
.field private greylist-max-o mCdmaDbm:I

.field private greylist-max-o mCdmaEcio:I

.field private greylist-max-o mEvdoDbm:I

.field private greylist-max-o mEvdoEcio:I

.field private greylist-max-o mEvdoSnr:I

.field private blacklist mLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 376
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->sInvalid:Landroid/telephony/CellSignalStrengthCdma;

    .line 450
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 45
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    .line 46
    return-void
.end method

.method public constructor greylist-max-o <init>(IIIII)V
    .registers 6

    .line 70
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 71
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    .line 72
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 428
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    .line 439
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    .line 440
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthCdma-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellSignalStrengthCdma;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 76
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;->copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V

    .line 77
    return-void
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2

    .line 467
    const-string v0, "CellSignalStrengthCdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 31
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->copy()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o copy()Landroid/telephony/CellSignalStrengthCdma;
    .registers 2

    .line 87
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v0
.end method

.method protected greylist-max-o copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V
    .registers 2

    .line 81
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    .line 82
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 387
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthCdma;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 388
    :cond_6
    check-cast p1, Landroid/telephony/CellSignalStrengthCdma;

    .line 390
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    if-ne v0, v2, :cond_2d

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    if-ne v0, v2, :cond_2d

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    if-ne v0, v2, :cond_2d

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    if-ne v0, v2, :cond_2d

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    if-ne v0, v2, :cond_2d

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    iget p1, p1, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    if-ne v0, p1, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    return v1
.end method

.method public whitelist getAsuLevel()I
    .registers 13

    .line 156
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 157
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    .line 161
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, -0x64

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/16 v7, -0x5a

    const/16 v8, 0x10

    const/16 v9, 0x63

    const v10, 0x7fffffff

    if-ne v0, v10, :cond_1c

    move v0, v9

    goto :goto_37

    .line 162
    :cond_1c
    const/16 v11, -0x4b

    if-lt v0, v11, :cond_22

    move v0, v8

    goto :goto_37

    .line 163
    :cond_22
    const/16 v11, -0x52

    if-lt v0, v11, :cond_28

    move v0, v6

    goto :goto_37

    .line 164
    :cond_28
    if-lt v0, v7, :cond_2c

    move v0, v5

    goto :goto_37

    .line 165
    :cond_2c
    const/16 v11, -0x5f

    if-lt v0, v11, :cond_32

    move v0, v3

    goto :goto_37

    .line 166
    :cond_32
    if-lt v0, v4, :cond_36

    move v0, v2

    goto :goto_37

    .line 167
    :cond_36
    move v0, v9

    .line 170
    :goto_37
    if-ne v1, v10, :cond_3b

    move v2, v9

    goto :goto_55

    .line 171
    :cond_3b
    if-lt v1, v7, :cond_3f

    move v2, v8

    goto :goto_55

    .line 172
    :cond_3f
    if-lt v1, v4, :cond_43

    move v2, v6

    goto :goto_55

    .line 173
    :cond_43
    const/16 v4, -0x73

    if-lt v1, v4, :cond_49

    move v2, v5

    goto :goto_55

    .line 174
    :cond_49
    const/16 v4, -0x82

    if-lt v1, v4, :cond_4f

    move v2, v3

    goto :goto_55

    .line 175
    :cond_4f
    const/16 v3, -0x96

    if-lt v1, v3, :cond_54

    goto :goto_55

    .line 176
    :cond_54
    move v2, v9

    .line 178
    :goto_55
    if-ge v0, v2, :cond_58

    goto :goto_59

    :cond_58
    move v0, v2

    .line 180
    :goto_59
    return v0
.end method

.method public whitelist getCdmaDbm()I
    .registers 2

    .line 315
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return v0
.end method

.method public whitelist getCdmaEcio()I
    .registers 2

    .line 327
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return v0
.end method

.method public whitelist getCdmaLevel()I
    .registers 10

    .line 187
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 188
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    .line 192
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const v7, 0x7fffffff

    if-ne v0, v7, :cond_14

    move v0, v6

    goto :goto_2d

    .line 193
    :cond_14
    const/16 v8, -0x4b

    if-lt v0, v8, :cond_1a

    move v0, v5

    goto :goto_2d

    .line 194
    :cond_1a
    const/16 v8, -0x55

    if-lt v0, v8, :cond_20

    move v0, v4

    goto :goto_2d

    .line 195
    :cond_20
    const/16 v8, -0x5f

    if-lt v0, v8, :cond_26

    move v0, v3

    goto :goto_2d

    .line 196
    :cond_26
    const/16 v8, -0x64

    if-lt v0, v8, :cond_2c

    move v0, v2

    goto :goto_2d

    .line 197
    :cond_2c
    move v0, v6

    .line 200
    :goto_2d
    if-ne v1, v7, :cond_31

    move v2, v6

    goto :goto_49

    .line 201
    :cond_31
    const/16 v7, -0x5a

    if-lt v1, v7, :cond_37

    move v2, v5

    goto :goto_49

    .line 202
    :cond_37
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_3d

    move v2, v4

    goto :goto_49

    .line 203
    :cond_3d
    const/16 v4, -0x82

    if-lt v1, v4, :cond_43

    move v2, v3

    goto :goto_49

    .line 204
    :cond_43
    const/16 v3, -0x96

    if-lt v1, v3, :cond_48

    goto :goto_49

    .line 205
    :cond_48
    move v2, v6

    .line 207
    :goto_49
    if-ge v0, v2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v2

    .line 209
    :goto_4d
    return v0
.end method

.method public whitelist getDbm()I
    .registers 3

    .line 304
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 305
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v1

    .line 308
    if-ge v0, v1, :cond_b

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    return v0
.end method

.method public blacklist getEvdoAsuLevel()I
    .registers 10

    .line 273
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    .line 274
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v1

    .line 278
    const/16 v2, -0x41

    const/16 v3, 0x63

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/4 v8, 0x1

    if-lt v0, v2, :cond_17

    move v0, v7

    goto :goto_30

    .line 279
    :cond_17
    const/16 v2, -0x4b

    if-lt v0, v2, :cond_1d

    move v0, v6

    goto :goto_30

    .line 280
    :cond_1d
    const/16 v2, -0x55

    if-lt v0, v2, :cond_23

    move v0, v5

    goto :goto_30

    .line 281
    :cond_23
    const/16 v2, -0x5f

    if-lt v0, v2, :cond_29

    move v0, v4

    goto :goto_30

    .line 282
    :cond_29
    const/16 v2, -0x69

    if-lt v0, v2, :cond_2f

    move v0, v8

    goto :goto_30

    .line 283
    :cond_2f
    move v0, v3

    .line 285
    :goto_30
    const/4 v2, 0x7

    if-lt v1, v2, :cond_35

    move v3, v7

    goto :goto_49

    .line 286
    :cond_35
    const/4 v2, 0x6

    if-lt v1, v2, :cond_3a

    move v3, v6

    goto :goto_49

    .line 287
    :cond_3a
    const/4 v2, 0x5

    if-lt v1, v2, :cond_3f

    move v3, v5

    goto :goto_49

    .line 288
    :cond_3f
    const/4 v2, 0x3

    if-lt v1, v2, :cond_44

    move v3, v4

    goto :goto_49

    .line 289
    :cond_44
    if-lt v1, v8, :cond_48

    move v3, v8

    goto :goto_49

    .line 290
    :cond_48
    nop

    .line 292
    :goto_49
    if-ge v0, v3, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v3

    .line 294
    :goto_4d
    return v0
.end method

.method public whitelist getEvdoDbm()I
    .registers 2

    .line 339
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return v0
.end method

.method public whitelist getEvdoEcio()I
    .registers 2

    .line 351
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return v0
.end method

.method public whitelist getEvdoLevel()I
    .registers 10

    .line 216
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    .line 217
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v1

    .line 221
    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const v7, 0x7fffffff

    if-ne v0, v7, :cond_14

    move v0, v6

    goto :goto_2d

    .line 222
    :cond_14
    const/16 v8, -0x41

    if-lt v0, v8, :cond_1a

    move v0, v3

    goto :goto_2d

    .line 223
    :cond_1a
    const/16 v8, -0x4b

    if-lt v0, v8, :cond_20

    move v0, v5

    goto :goto_2d

    .line 224
    :cond_20
    const/16 v8, -0x5a

    if-lt v0, v8, :cond_26

    move v0, v2

    goto :goto_2d

    .line 225
    :cond_26
    const/16 v8, -0x69

    if-lt v0, v8, :cond_2c

    move v0, v4

    goto :goto_2d

    .line 226
    :cond_2c
    move v0, v6

    .line 228
    :goto_2d
    if-ne v1, v7, :cond_31

    move v2, v6

    goto :goto_43

    .line 229
    :cond_31
    const/4 v7, 0x7

    if-lt v1, v7, :cond_36

    move v2, v3

    goto :goto_43

    .line 230
    :cond_36
    const/4 v3, 0x5

    if-lt v1, v3, :cond_3b

    move v2, v5

    goto :goto_43

    .line 231
    :cond_3b
    if-lt v1, v5, :cond_3e

    goto :goto_43

    .line 232
    :cond_3e
    if-lt v1, v4, :cond_42

    move v2, v4

    goto :goto_43

    .line 233
    :cond_42
    move v2, v6

    .line 235
    :goto_43
    if-ge v0, v2, :cond_46

    goto :goto_47

    :cond_46
    move v0, v2

    .line 237
    :goto_47
    return v0
.end method

.method public whitelist getEvdoSnr()I
    .registers 2

    .line 363
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return v0
.end method

.method public whitelist getLevel()I
    .registers 2

    .line 105
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 373
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o setCdmaDbm(I)V
    .registers 2

    .line 320
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 321
    return-void
.end method

.method public greylist-max-o setCdmaEcio(I)V
    .registers 2

    .line 332
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 333
    return-void
.end method

.method public greylist-max-o setDefaultValues()V
    .registers 2

    .line 93
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 94
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 95
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 96
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 97
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    .line 99
    return-void
.end method

.method public greylist-max-o setEvdoDbm(I)V
    .registers 2

    .line 344
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 345
    return-void
.end method

.method public greylist-max-o setEvdoEcio(I)V
    .registers 2

    .line 356
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 357
    return-void
.end method

.method public greylist-max-o setEvdoSnr(I)V
    .registers 2

    .line 368
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 369
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthCdma: cdmaDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cdmaEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " evdoDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " evdoEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " evdoSnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 3

    .line 111
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result p1

    .line 112
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result p2

    .line 113
    if-nez p2, :cond_11

    .line 115
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    goto :goto_20

    .line 116
    :cond_11
    if-nez p1, :cond_1a

    .line 118
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    goto :goto_20

    .line 121
    :cond_1a
    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move p1, p2

    :goto_1e
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    .line 123
    :goto_20
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 416
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    return-void
.end method
