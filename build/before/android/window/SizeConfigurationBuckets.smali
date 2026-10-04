.class public final Landroid/window/SizeConfigurationBuckets;
.super Ljava/lang/Object;
.source "SizeConfigurationBuckets.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/SizeConfigurationBuckets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHorizontal:[I

.field private final blacklist mScreenLayoutLongSet:Z

.field private final blacklist mScreenLayoutSize:[I

.field private final blacklist mSmallest:[I

.field private final blacklist mVertical:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 382
    new-instance v0, Landroid/window/SizeConfigurationBuckets$1;

    invoke-direct {v0}, Landroid/window/SizeConfigurationBuckets$1;-><init>()V

    sput-object v0, Landroid/window/SizeConfigurationBuckets;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 366
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 367
    :goto_e
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_15

    move-object v2, v3

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 368
    :goto_19
    and-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_1f

    move-object v4, v3

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 369
    :goto_23
    and-int/lit8 v5, v0, 0x4

    if-nez v5, :cond_29

    move-object v5, v3

    goto :goto_2d

    :cond_29
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 370
    :goto_2d
    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_32

    goto :goto_36

    :cond_32
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 372
    :goto_36
    iput-object v2, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    .line 373
    iput-object v4, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    .line 374
    iput-object v5, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    .line 375
    iput-object v3, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    .line 376
    iput-boolean v1, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    .line 379
    return-void
.end method

.method public constructor blacklist <init>([I[I[I[IZ)V
    .registers 6

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    .line 285
    iput-object p2, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    .line 286
    iput-object p3, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    .line 287
    iput-object p4, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    .line 288
    iput-boolean p5, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    .line 291
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/res/Configuration;)V
    .registers 12

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 72
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 73
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 74
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 76
    nop

    .line 77
    array-length v4, p1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1d
    if-ltz v4, :cond_51

    .line 78
    aget-object v8, p1, v4

    .line 79
    iget v9, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v9, :cond_2a

    .line 80
    iget v9, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    :cond_2a
    iget v9, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v9, :cond_33

    .line 83
    iget v9, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    :cond_33
    iget v9, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v9, :cond_3c

    .line 86
    iget v9, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v2, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    :cond_3c
    iget v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v9, v9, 0xf

    if-eqz v9, :cond_45

    .line 90
    invoke-virtual {v3, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    :cond_45
    if-nez v7, :cond_4e

    iget v8, v8, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0x30

    if-eqz v8, :cond_4e

    .line 94
    move v7, v5

    .line 77
    :cond_4e
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .line 97
    :cond_51
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object p1

    iput-object p1, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    .line 98
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object p1

    iput-object p1, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    .line 99
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object p1

    iput-object p1, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    .line 100
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object p1

    iput-object p1, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    .line 101
    iput-boolean v7, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    .line 102
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    return-void
.end method

.method public static blacklist areNonSizeLayoutFieldsUnchanged(II)Z
    .registers 3

    .line 206
    const v0, 0x100003c0

    and-int/2addr p0, v0

    and-int/2addr p1, v0

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private blacklist crossesHorizontalSizeThreshold(II)Z
    .registers 4

    .line 143
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    invoke-static {v0, p1, p2}, Landroid/window/SizeConfigurationBuckets;->crossesSizeThreshold([III)Z

    move-result p1

    return p1
.end method

.method private blacklist crossesScreenLayoutLongThreshold(II)Z
    .registers 4

    .line 188
    and-int/lit8 p1, p1, 0x30

    .line 190
    and-int/lit8 p2, p2, 0x30

    .line 192
    iget-boolean v0, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    if-eqz v0, :cond_c

    if-eq p1, p2, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public static blacklist crossesSizeThreshold([III)Z
    .registers 7

    .line 226
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 227
    return v0

    .line 229
    :cond_4
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_7
    if-ltz v1, :cond_17

    .line 230
    aget v3, p0, v1

    .line 231
    if-ge p1, v3, :cond_f

    if-ge p2, v3, :cond_13

    :cond_f
    if-lt p1, v3, :cond_14

    if-ge p2, v3, :cond_14

    .line 233
    :cond_13
    return v2

    .line 229
    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 236
    :cond_17
    return v0
.end method

.method private blacklist crossesSmallestSizeThreshold(II)Z
    .registers 4

    .line 151
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    invoke-static {v0, p1, p2}, Landroid/window/SizeConfigurationBuckets;->crossesSizeThreshold([III)Z

    move-result p1

    return p1
.end method

.method private blacklist crossesVerticalSizeThreshold(II)Z
    .registers 4

    .line 147
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    invoke-static {v0, p1, p2}, Landroid/window/SizeConfigurationBuckets;->crossesSizeThreshold([III)Z

    move-result p1

    return p1
.end method

.method public static blacklist filterDiff(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;)I
    .registers 7

    .line 110
    if-nez p3, :cond_3

    .line 111
    return p0

    .line 114
    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 115
    invoke-static {v0, v1}, Landroid/window/SizeConfigurationBuckets;->areNonSizeLayoutFieldsUnchanged(II)Z

    move-result v0

    .line 116
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_2b

    .line 117
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {p3, v1, v2}, Landroid/window/SizeConfigurationBuckets;->crossesHorizontalSizeThreshold(II)Z

    move-result v1

    if-nez v1, :cond_26

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 119
    invoke-direct {p3, v1, v2}, Landroid/window/SizeConfigurationBuckets;->crossesVerticalSizeThreshold(II)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_26

    :cond_24
    const/4 v1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v1, 0x1

    .line 121
    :goto_27
    if-nez v1, :cond_2b

    .line 122
    and-int/lit16 p0, p0, -0x401

    .line 125
    :cond_2b
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_3b

    .line 126
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 127
    iget v2, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 128
    invoke-direct {p3, v1, v2}, Landroid/window/SizeConfigurationBuckets;->crossesSmallestSizeThreshold(II)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 129
    and-int/lit16 p0, p0, -0x801

    .line 132
    :cond_3b
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_53

    if-eqz v0, :cond_53

    .line 133
    invoke-virtual {p3, p1, p2}, Landroid/window/SizeConfigurationBuckets;->crossesScreenLayoutSizeThreshold(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_53

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    iget p2, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 134
    invoke-direct {p3, p1, p2}, Landroid/window/SizeConfigurationBuckets;->crossesScreenLayoutLongThreshold(II)Z

    move-result p1

    if-nez p1, :cond_53

    .line 136
    and-int/lit16 p0, p0, -0x101

    .line 139
    :cond_53
    return p0
.end method


# virtual methods
.method public blacklist crossesScreenLayoutSizeThreshold(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 10

    .line 162
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    .line 164
    return v2

    .line 169
    :cond_c
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {p2, v0}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 171
    return v1

    .line 175
    :cond_18
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    if-eqz v0, :cond_32

    .line 176
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    array-length v3, v0

    move v4, v2

    :goto_20
    if-ge v4, v3, :cond_32

    aget v5, v0, v4

    .line 177
    invoke-virtual {p1, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v6

    .line 178
    invoke-virtual {p2, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v5

    if-eq v6, v5, :cond_2f

    .line 179
    return v1

    .line 176
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 183
    :cond_32
    return v2
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHorizontal()[I
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    return-object v0
.end method

.method public blacklist getScreenLayoutSize()[I
    .registers 2

    .line 322
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    return-object v0
.end method

.method public blacklist getSmallest()[I
    .registers 2

    .line 314
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    return-object v0
.end method

.method public blacklist getVertical()[I
    .registers 2

    .line 306
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    return-object v0
.end method

.method public blacklist isScreenLayoutLongSet()Z
    .registers 2

    .line 332
    iget-boolean v0, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    .line 242
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 341
    nop

    .line 342
    iget-boolean p2, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    if-eqz p2, :cond_9

    const/16 p2, 0x10

    int-to-byte p2, p2

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    .line 343
    :goto_a
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    if-eqz v0, :cond_11

    or-int/lit8 p2, p2, 0x1

    int-to-byte p2, p2

    .line 344
    :cond_11
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    if-eqz v0, :cond_18

    or-int/lit8 p2, p2, 0x2

    int-to-byte p2, p2

    .line 345
    :cond_18
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    if-eqz v0, :cond_1f

    or-int/lit8 p2, p2, 0x4

    int-to-byte p2, p2

    .line 346
    :cond_1f
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    if-eqz v0, :cond_26

    or-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 347
    :cond_26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 348
    iget-object p2, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    if-eqz p2, :cond_32

    iget-object p2, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 349
    :cond_32
    iget-object p2, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    if-eqz p2, :cond_3b

    iget-object p2, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 350
    :cond_3b
    iget-object p2, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    if-eqz p2, :cond_44

    iget-object p2, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 351
    :cond_44
    iget-object p2, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    if-eqz p2, :cond_4d

    iget-object p2, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 352
    :cond_4d
    return-void
.end method
