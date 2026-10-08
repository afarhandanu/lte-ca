.class public final Landroid/view/inputmethod/SparseRectFArray;
.super Ljava/lang/Object;
.source "SparseRectFArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/SparseRectFArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCoordinates:[F

.field private final greylist-max-o mFlagsArray:[I

.field private final greylist-max-o mKeys:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 296
    new-instance v0, Landroid/view/inputmethod/SparseRectFArray$1;

    invoke-direct {v0}, Landroid/view/inputmethod/SparseRectFArray$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/SparseRectFArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    .line 63
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)V
    .registers 6

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    if-nez v0, :cond_11

    .line 248
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    .line 249
    iput-object p1, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    .line 250
    iput-object p1, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    goto :goto_55

    .line 252
    :cond_11
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    .line 253
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    .line 254
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    .line 255
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmKeys(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCoordinates(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[F

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmFlagsArray(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->-$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result p1

    invoke-static {v0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    :goto_55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;Landroid/view/inputmethod/SparseRectFArray-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/SparseRectFArray;-><init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 97
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 98
    return v0

    .line 100
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 101
    return v1

    .line 103
    :cond_8
    instance-of v2, p1, Landroid/view/inputmethod/SparseRectFArray;

    if-nez v2, :cond_d

    .line 104
    return v0

    .line 106
    :cond_d
    check-cast p1, Landroid/view/inputmethod/SparseRectFArray;

    .line 108
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    iget-object v3, p1, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    iget-object v3, p1, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    iget-object p1, p1, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    .line 109
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2f

    move v0, v1

    goto :goto_30

    :cond_2f
    nop

    .line 108
    :goto_30
    return v0
.end method

.method public greylist-max-o get(I)Landroid/graphics/RectF;
    .registers 7

    .line 262
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 263
    return-object v1

    .line 265
    :cond_6
    if-gez p1, :cond_9

    .line 266
    return-object v1

    .line 268
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    .line 269
    if-gez p1, :cond_12

    .line 270
    return-object v1

    .line 272
    :cond_12
    mul-int/lit8 p1, p1, 0x4

    .line 273
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    aget v1, v1, p1

    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v3, p1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v4, p1, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 p1, p1, 0x3

    aget p1, v4, p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public greylist-max-o getFlags(II)I
    .registers 4

    .line 280
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    if-nez v0, :cond_5

    .line 281
    return p2

    .line 283
    :cond_5
    if-gez p1, :cond_8

    .line 284
    return p2

    .line 286
    :cond_8
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    .line 287
    if-gez p1, :cond_11

    .line 288
    return p2

    .line 290
    :cond_11
    iget-object p2, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    aget p1, p2, p1

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 81
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    array-length v0, v0

    if-nez v0, :cond_b

    goto :goto_26

    .line 84
    :cond_b
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    array-length v0, v0

    .line 86
    move v2, v1

    :goto_f
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1e

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    .line 88
    int-to-float v0, v0

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    aget v3, v3, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 90
    :cond_1e
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    .line 92
    return v0

    .line 82
    :cond_26
    :goto_26
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 114
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    if-eqz v0, :cond_7d

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    if-eqz v0, :cond_7d

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    if-nez v0, :cond_d

    goto :goto_7d

    .line 117
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const-string v1, "SparseRectFArray{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const/4 v1, 0x0

    :goto_18
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    array-length v2, v2

    if-ge v1, v2, :cond_72

    .line 120
    if-eqz v1, :cond_24

    .line 121
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_24
    mul-int/lit8 v2, v1, 0x4

    .line 124
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v3, ":["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v4, v2, 0x0

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v4, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 129
    const-string v4, "],["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v4, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v2, v2, 0x3

    aget v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, "]:flagsArray="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 136
    :cond_72
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_7d
    :goto_7d
    const-string v0, "SparseRectFArray{}"

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 73
    iget-object p2, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 74
    iget-object p2, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 75
    iget-object p2, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 76
    return-void
.end method
