.class public Landroid/view/InsetsSourceControl$Array;
.super Ljava/lang/Object;
.source "InsetsSourceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsSourceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Array"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsSourceControl$Array;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mControls:[Landroid/view/InsetsSourceControl;

.field private blacklist mSeq:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 397
    new-instance v0, Landroid/view/InsetsSourceControl$Array$1;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$Array$1;-><init>()V

    sput-object v0, Landroid/view/InsetsSourceControl$Array;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 308
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 318
    invoke-virtual {p0, p1}, Landroid/view/InsetsSourceControl$Array;->readFromParcel(Landroid/os/Parcel;)V

    .line 319
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsSourceControl$Array;Z)V
    .registers 4

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 314
    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsSourceControl$Array;->setTo(Landroid/view/InsetsSourceControl$Array;Z)V

    .line 315
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 409
    if-ne p0, p1, :cond_4

    .line 410
    const/4 p1, 0x1

    return p1

    .line 412
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 415
    :cond_11
    check-cast p1, Landroid/view/InsetsSourceControl$Array;

    .line 417
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    iget-object p1, p1, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 413
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist get()[Landroid/view/InsetsSourceControl;
    .registers 2

    .line 353
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    return-object v0
.end method

.method public blacklist getSeq()I
    .registers 2

    .line 322
    iget v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 422
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 386
    sget-object v0, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/InsetsSourceControl;

    iput-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 388
    return-void
.end method

.method public blacklist release()V
    .registers 6

    .line 358
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    if-nez v0, :cond_5

    .line 359
    return-void

    .line 361
    :cond_5
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 362
    if-eqz v3, :cond_17

    .line 363
    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 361
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 366
    :cond_1a
    return-void
.end method

.method public blacklist set([Landroid/view/InsetsSourceControl;Z)V
    .registers 6

    .line 337
    if-eqz p1, :cond_24

    if-nez p2, :cond_5

    goto :goto_24

    .line 342
    :cond_5
    array-length p2, p1

    new-array p2, p2, [Landroid/view/InsetsSourceControl;

    iput-object p2, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    .line 343
    iget-object p2, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    :goto_f
    if-ltz p2, :cond_23

    .line 344
    aget-object v0, p1, p2

    if-eqz v0, :cond_20

    .line 345
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    new-instance v1, Landroid/view/InsetsSourceControl;

    aget-object v2, p1, p2

    invoke-direct {v1, v2}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    aput-object v1, v0, p2

    .line 343
    :cond_20
    add-int/lit8 p2, p2, -0x1

    goto :goto_f

    .line 348
    :cond_23
    return-void

    .line 338
    :cond_24
    :goto_24
    iput-object p1, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    .line 339
    return-void
.end method

.method public blacklist setParcelableFlags(I)V
    .registers 6

    .line 370
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    if-nez v0, :cond_5

    .line 371
    return-void

    .line 373
    :cond_5
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    .line 374
    if-eqz v3, :cond_12

    .line 375
    invoke-virtual {v3, p1}, Landroid/view/InsetsSourceControl;->setParcelableFlags(I)V

    .line 373
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 378
    :cond_15
    return-void
.end method

.method public blacklist setSeq(I)V
    .registers 2

    .line 326
    iput p1, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 327
    return-void
.end method

.method public blacklist setTo(Landroid/view/InsetsSourceControl$Array;Z)V
    .registers 4

    .line 331
    iget-object v0, p1, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {p0, v0, p2}, Landroid/view/InsetsSourceControl$Array;->set([Landroid/view/InsetsSourceControl;Z)V

    .line 332
    iget p1, p1, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    iput p1, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 333
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 392
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 393
    iget p2, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    return-void
.end method
