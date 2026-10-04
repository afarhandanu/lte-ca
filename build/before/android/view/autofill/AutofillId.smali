.class public final Landroid/view/autofill/AutofillId;
.super Ljava/lang/Object;
.source "AutofillId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FLAG_HAS_SESSION:I = 0x4

.field private static final blacklist FLAG_IS_VIRTUAL_INT:I = 0x1

.field private static final blacklist FLAG_IS_VIRTUAL_LONG:I = 0x2

.field public static final blacklist NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

.field public static final blacklist NO_SESSION:I


# instance fields
.field private blacklist mFlags:I

.field private blacklist mSessionId:I

.field private final greylist-max-o mViewId:I

.field private final blacklist mVirtualIntId:I

.field private final blacklist mVirtualLongId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 87
    new-instance v0, Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/autofill/AutofillId;-><init>(I)V

    sput-object v0, Landroid/view/autofill/AutofillId;->NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

    .line 313
    new-instance v0, Landroid/view/autofill/AutofillId$1;

    invoke-direct {v0}, Landroid/view/autofill/AutofillId$1;-><init>()V

    sput-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 8

    .line 51
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    .line 52
    return-void
.end method

.method public constructor greylist-max-o <init>(II)V
    .registers 9

    .line 63
    int-to-long v3, p2

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    .line 64
    return-void
.end method

.method private constructor blacklist <init>(IIJI)V
    .registers 6

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    .line 79
    iput p2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    .line 80
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_d

    long-to-int p2, p3

    goto :goto_e

    :cond_d
    const/4 p2, -0x1

    :goto_e
    iput p2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    .line 81
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const-wide/16 p3, -0x1

    :goto_17
    iput-wide p3, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    .line 82
    iput p5, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(IIJILandroid/view/autofill/AutofillId-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/autofill/AutofillId;I)V
    .registers 9

    .line 57
    iget v2, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    int-to-long v3, p2

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/autofill/AutofillId;II)V
    .registers 10

    .line 68
    iget v2, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    int-to-long v3, p2

    const/4 v1, 0x5

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/autofill/AutofillId;JI)V
    .registers 11

    .line 74
    const/4 v1, 0x6

    iget v2, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    move-object v0, p0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    .line 75
    return-void
.end method

.method public static whitelist create(Landroid/view/View;I)Landroid/view/autofill/AutofillId;
    .registers 3

    .line 102
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;I)V

    return-object v0
.end method

.method public static blacklist withoutSession(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;
    .registers 8

    .line 110
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v2, v0, -0x5

    .line 112
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    move-wide v4, v0

    goto :goto_12

    .line 113
    :cond_e
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    int-to-long v0, v0

    move-wide v4, v0

    .line 114
    :goto_12
    new-instance v1, Landroid/view/autofill/AutofillId;

    iget v3, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 257
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 258
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 259
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 260
    :cond_13
    check-cast p1, Landroid/view/autofill/AutofillId;

    .line 261
    iget v2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    if-eq v2, v3, :cond_1c

    return v1

    .line 262
    :cond_1c
    iget v2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    if-eq v2, v3, :cond_23

    return v1

    .line 263
    :cond_23
    iget-wide v2, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    iget-wide v4, p1, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2c

    return v1

    .line 264
    :cond_2c
    iget v2, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    iget p1, p1, Landroid/view/autofill/AutofillId;->mSessionId:I

    if-eq v2, p1, :cond_33

    return v1

    .line 265
    :cond_33
    return v0
.end method

.method public blacklist equalsIgnoreSession(Landroid/view/autofill/AutofillId;)Z
    .registers 8

    .line 271
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 272
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 273
    :cond_8
    iget v2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    if-eq v2, v3, :cond_f

    return v1

    .line 274
    :cond_f
    iget v2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    if-eq v2, v3, :cond_16

    return v1

    .line 275
    :cond_16
    iget-wide v2, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    iget-wide v4, p1, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1f

    return v1

    .line 276
    :cond_1f
    return v0
.end method

.method public whitelist getAutofillVirtualId()I
    .registers 2

    .line 134
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    return v0
.end method

.method public whitelist getSessionId()I
    .registers 2

    .line 225
    iget v0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    return v0
.end method

.method public whitelist getViewId()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    return v0
.end method

.method public blacklist getVirtualChildIntId()I
    .registers 2

    .line 162
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    return v0
.end method

.method public blacklist getVirtualChildLongId()J
    .registers 3

    .line 174
    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    return-wide v0
.end method

.method public blacklist hasSession()Z
    .registers 2

    .line 215
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 247
    nop

    .line 248
    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 249
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    add-int/2addr v0, v2

    .line 250
    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    iget-wide v4, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 251
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    add-int/2addr v0, v1

    .line 252
    return v0
.end method

.method public whitelist isInAutofillSession()Z
    .registers 2

    .line 150
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result v0

    return v0
.end method

.method public blacklist isNonVirtual()Z
    .registers 2

    .line 210
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isVirtual()Z
    .registers 2

    .line 140
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isVirtualInt()Z
    .registers 3

    .line 187
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist isVirtualLong()Z
    .registers 2

    .line 200
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist resetSessionId()V
    .registers 2

    .line 236
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    .line 238
    return-void
.end method

.method public blacklist setSessionId(I)V
    .registers 3

    .line 230
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    .line 231
    iput p1, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    .line 232
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 283
    const-string v1, ":i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 284
    :cond_1d
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 285
    const-string v1, ":l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 288
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 289
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 301
    iget p2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget p2, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 304
    iget p2, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    :cond_15
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 307
    iget p2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 308
    :cond_21
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 309
    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 311
    :cond_2c
    :goto_2c
    return-void
.end method
