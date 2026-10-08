.class public final Landroid/window/TransitionRequestInfo$DisplayChange;
.super Ljava/lang/Object;
.source "TransitionRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayChange"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionRequestInfo$DisplayChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDisconnectReparentDisplay:I

.field private final blacklist mDisplayId:I

.field private blacklist mEndAbsBounds:Landroid/graphics/Rect;

.field private blacklist mEndRotation:I

.field private blacklist mPhysicalDisplayChanged:Z

.field private blacklist mStartAbsBounds:Landroid/graphics/Rect;

.field private blacklist mStartRotation:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 348
    new-instance v0, Landroid/window/TransitionRequestInfo$DisplayChange$1;

    invoke-direct {v0}, Landroid/window/TransitionRequestInfo$DisplayChange$1;-><init>()V

    sput-object v0, Landroid/window/TransitionRequestInfo$DisplayChange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 162
    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 165
    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 168
    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisconnectReparentDisplay:I

    .line 172
    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    .line 173
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 6

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 162
    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 165
    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 168
    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisconnectReparentDisplay:I

    .line 177
    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    .line 178
    iput p2, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 179
    iput p3, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 180
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 162
    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 164
    const/4 v1, -0x1

    iput v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 165
    iput v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 166
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 168
    iput v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisconnectReparentDisplay:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 328
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_1b

    const/4 v2, 0x1

    .line 329
    :cond_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 330
    and-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_25

    move-object v4, v0

    goto :goto_2d

    :cond_25
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 331
    :goto_2d
    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_32

    goto :goto_3a

    :cond_32
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 332
    :goto_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 336
    iput v3, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    .line 337
    iput-object v4, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 338
    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 339
    iput v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 340
    iput v5, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 341
    iput-boolean v2, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 342
    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisconnectReparentDisplay:I

    .line 345
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDisconnectReparentDisplay()I
    .registers 2

    .line 235
    iget v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisconnectReparentDisplay:I

    return v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 199
    iget v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    return v0
.end method

.method public blacklist getEndAbsBounds()Landroid/graphics/Rect;
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getEndRotation()I
    .registers 2

    .line 222
    iget v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    return v0
.end method

.method public blacklist getStartAbsBounds()Landroid/graphics/Rect;
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getStartRotation()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    return v0
.end method

.method public blacklist isPhysicalDisplayChanged()Z
    .registers 2

    .line 227
    iget-boolean v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    return v0
.end method

.method public blacklist setDisconnectReparentDisplay(I)Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 2

    .line 276
    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisconnectReparentDisplay:I

    .line 277
    return-object p0
.end method

.method public blacklist setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 2

    .line 249
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 250
    return-object p0
.end method

.method public blacklist setEndRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 2

    .line 261
    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 262
    return-object p0
.end method

.method public blacklist setPhysicalDisplayChanged(Z)Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 2

    .line 267
    iput-boolean p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 268
    return-object p0
.end method

.method public blacklist setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 2

    .line 243
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 244
    return-object p0
.end method

.method public blacklist setStartRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 2

    .line 255
    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 256
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayChange { displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startAbsBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endAbsBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", physicalDisplayChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disconnectReparentDisplay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisconnectReparentDisplay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 303
    nop

    .line 304
    iget-boolean v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x20

    int-to-byte v0, v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 305
    :goto_a
    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_11

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 306
    :cond_11
    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_18

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 307
    :cond_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 308
    iget v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 310
    :cond_29
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 311
    :cond_32
    iget p2, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget p2, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget p2, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisconnectReparentDisplay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    return-void
.end method
