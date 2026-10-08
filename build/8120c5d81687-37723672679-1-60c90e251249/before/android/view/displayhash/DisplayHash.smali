.class public final Landroid/view/displayhash/DisplayHash;
.super Ljava/lang/Object;
.source "DisplayHash.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/displayhash/DisplayHash;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBoundsInWindow:Landroid/graphics/Rect;

.field private final blacklist mHashAlgorithm:Ljava/lang/String;

.field private final blacklist mHmac:[B

.field private final blacklist mImageHash:[B

.field private final blacklist mTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 217
    new-instance v0, Landroid/view/displayhash/DisplayHash$1;

    invoke-direct {v0}, Landroid/view/displayhash/DisplayHash$1;-><init>()V

    sput-object v0, Landroid/view/displayhash/DisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JLandroid/graphics/Rect;Ljava/lang/String;[B[B)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-wide p1, p0, Landroid/view/displayhash/DisplayHash;->mTimeMillis:J

    .line 81
    iput-object p3, p0, Landroid/view/displayhash/DisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 82
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/view/displayhash/DisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 83
    iput-object p4, p0, Landroid/view/displayhash/DisplayHash;->mHashAlgorithm:Ljava/lang/String;

    .line 84
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/view/displayhash/DisplayHash;->mHashAlgorithm:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 85
    iput-object p5, p0, Landroid/view/displayhash/DisplayHash;->mImageHash:[B

    .line 86
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/view/displayhash/DisplayHash;->mImageHash:[B

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 87
    iput-object p6, p0, Landroid/view/displayhash/DisplayHash;->mHmac:[B

    .line 88
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/view/displayhash/DisplayHash;->mHmac:[B

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/displayhash/DisplayHash;->mTimeMillis:J

    .line 201
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 206
    iput-object v0, p0, Landroid/view/displayhash/DisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 207
    const-class v0, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/view/displayhash/DisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 208
    iput-object v1, p0, Landroid/view/displayhash/DisplayHash;->mHashAlgorithm:Ljava/lang/String;

    .line 209
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/displayhash/DisplayHash;->mHashAlgorithm:Ljava/lang/String;

    invoke-static {v0, v4, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 210
    iput-object v2, p0, Landroid/view/displayhash/DisplayHash;->mImageHash:[B

    .line 211
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/displayhash/DisplayHash;->mImageHash:[B

    invoke-static {v0, v4, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 212
    iput-object p1, p0, Landroid/view/displayhash/DisplayHash;->mHmac:[B

    .line 213
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/view/displayhash/DisplayHash;->mHmac:[B

    invoke-static {p1, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/displayhash/DisplayHash-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/displayhash/DisplayHash;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist byteArrayToString([B)Ljava/lang/String;
    .registers 7

    .line 161
    if-nez p1, :cond_6

    .line 162
    const-string/jumbo p1, "null"

    return-object p1

    .line 164
    :cond_6
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 165
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 166
    const-string p1, "[]"

    return-object p1

    .line 169
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    const/4 v2, 0x0

    .line 172
    :goto_1a
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    if-ne v2, v0, :cond_3c

    .line 175
    const/16 p1, 0x5d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 177
    :cond_3c
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBoundsInWindow()Landroid/graphics/Rect;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/view/displayhash/DisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getHashAlgorithm()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 122
    iget-object v0, p0, Landroid/view/displayhash/DisplayHash;->mHashAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHmac()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/view/displayhash/DisplayHash;->mHmac:[B

    return-object v0
.end method

.method public whitelist getImageHash()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 133
    iget-object v0, p0, Landroid/view/displayhash/DisplayHash;->mImageHash:[B

    return-object v0
.end method

.method public whitelist getTimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 99
    iget-wide v0, p0, Landroid/view/displayhash/DisplayHash;->mTimeMillis:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayHash { timeMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/displayhash/DisplayHash;->mTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boundsInWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/displayhash/DisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashAlgorithm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/displayhash/DisplayHash;->mHashAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageHash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/displayhash/DisplayHash;->mImageHash:[B

    .line 155
    invoke-direct {p0, v1}, Landroid/view/displayhash/DisplayHash;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hmac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/displayhash/DisplayHash;->mHmac:[B

    .line 156
    invoke-direct {p0, v1}, Landroid/view/displayhash/DisplayHash;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 185
    iget-wide v0, p0, Landroid/view/displayhash/DisplayHash;->mTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    iget-object v0, p0, Landroid/view/displayhash/DisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 187
    iget-object p2, p0, Landroid/view/displayhash/DisplayHash;->mHashAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Landroid/view/displayhash/DisplayHash;->mImageHash:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 189
    iget-object p2, p0, Landroid/view/displayhash/DisplayHash;->mHmac:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 190
    return-void
.end method
