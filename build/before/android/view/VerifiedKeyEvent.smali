.class public final Landroid/view/VerifiedKeyEvent;
.super Landroid/view/VerifiedInputEvent;
.source "VerifiedKeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VerifiedKeyEvent$KeyEventAction;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/VerifiedKeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "VerifiedKeyEvent"


# instance fields
.field private blacklist mAction:I

.field private blacklist mDownTimeNanos:J

.field private blacklist mFlags:I

.field private blacklist mKeyCode:I

.field private blacklist mMetaState:I

.field private blacklist mRepeatCount:I

.field private blacklist mScanCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 378
    new-instance v0, Landroid/view/VerifiedKeyEvent$1;

    invoke-direct {v0}, Landroid/view/VerifiedKeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/VerifiedKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJIIIJIIIII)V
    .registers 21

    .line 197
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/VerifiedInputEvent;-><init>(IIJII)V

    .line 198
    iput p6, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    .line 199
    const-class p1, Landroid/view/VerifiedKeyEvent$KeyEventAction;

    const/4 p2, 0x0

    iget p3, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 201
    iput-wide p7, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    .line 202
    move/from16 p1, p9

    iput p1, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    .line 203
    move/from16 p1, p10

    iput p1, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    .line 204
    move/from16 p1, p11

    iput p1, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    .line 205
    move/from16 p1, p12

    iput p1, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    .line 206
    move/from16 p1, p13

    iput p1, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    .line 207
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11

    .line 354
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/VerifiedInputEvent;-><init>(Landroid/os/Parcel;I)V

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 364
    iput v0, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    .line 365
    const-class v0, Landroid/view/VerifiedKeyEvent$KeyEventAction;

    const/4 v7, 0x0

    iget v8, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    invoke-static {v0, v7, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 367
    iput-wide v1, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    .line 368
    iput v3, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    .line 369
    iput v4, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    .line 370
    iput v5, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    .line 371
    iput v6, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    .line 372
    iput p1, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    .line 375
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 397
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 294
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 295
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4a

    .line 297
    :cond_12
    check-cast p1, Landroid/view/VerifiedKeyEvent;

    .line 299
    nop

    .line 300
    invoke-super {p0, p1}, Landroid/view/VerifiedInputEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    iget v3, p1, Landroid/view/VerifiedKeyEvent;->mAction:I

    if-ne v2, v3, :cond_48

    iget-wide v2, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    iget-wide v4, p1, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_48

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    iget v3, p1, Landroid/view/VerifiedKeyEvent;->mFlags:I

    if-ne v2, v3, :cond_48

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    iget v3, p1, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    if-ne v2, v3, :cond_48

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    iget v3, p1, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    if-ne v2, v3, :cond_48

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    iget v3, p1, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    if-ne v2, v3, :cond_48

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    iget p1, p1, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    if-ne v2, p1, :cond_48

    goto :goto_49

    :cond_48
    move v0, v1

    .line 299
    :goto_49
    return v0

    .line 295
    :cond_4a
    :goto_4a
    return v1
.end method

.method public whitelist getAction()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    return v0
.end method

.method public whitelist getDownTimeNanos()J
    .registers 3

    .line 229
    iget-wide v0, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    return-wide v0
.end method

.method public whitelist getFlag(I)Ljava/lang/Boolean;
    .registers 3

    .line 126
    sparse-switch p1, :sswitch_data_12

    .line 133
    const/4 p1, 0x0

    return-object p1

    .line 131
    :sswitch_5
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :sswitch_data_12
    .sparse-switch
        0x20 -> :sswitch_5
        0x800 -> :sswitch_5
    .end sparse-switch
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 241
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    return v0
.end method

.method public whitelist getKeyCode()I
    .registers 2

    .line 251
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    return v0
.end method

.method public whitelist getMetaState()I
    .registers 2

    .line 273
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    return v0
.end method

.method public whitelist getRepeatCount()I
    .registers 2

    .line 284
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    return v0
.end method

.method public whitelist getScanCode()I
    .registers 2

    .line 262
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 316
    nop

    .line 317
    invoke-super {p0}, Landroid/view/VerifiedInputEvent;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 318
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    add-int/2addr v0, v2

    .line 319
    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 320
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    add-int/2addr v0, v2

    .line 321
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    add-int/2addr v0, v2

    .line 322
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    add-int/2addr v0, v2

    .line 323
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    add-int/2addr v0, v2

    .line 324
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    add-int/2addr v0, v1

    .line 325
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 333
    invoke-super {p0, p1, p2}, Landroid/view/VerifiedInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 335
    iget p2, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-wide v0, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 337
    iget p2, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget p2, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget p2, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget p2, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget p2, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    return-void
.end method
