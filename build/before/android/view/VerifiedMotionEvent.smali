.class public final Landroid/view/VerifiedMotionEvent;
.super Landroid/view/VerifiedInputEvent;
.source "VerifiedMotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VerifiedMotionEvent$MotionEventAction;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/VerifiedMotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "VerifiedMotionEvent"


# instance fields
.field private blacklist mActionMasked:I

.field private blacklist mButtonState:I

.field private blacklist mDownTimeNanos:J

.field private blacklist mFlags:I

.field private blacklist mMetaState:I

.field private blacklist mRawX:F

.field private blacklist mRawY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 362
    new-instance v0, Landroid/view/VerifiedMotionEvent$1;

    invoke-direct {v0}, Landroid/view/VerifiedMotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/VerifiedMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJIIFFIJIII)V
    .registers 21

    .line 185
    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/VerifiedInputEvent;-><init>(IIJII)V

    .line 186
    iput p6, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    .line 187
    iput p7, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    .line 188
    iput p8, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    .line 189
    const-class p1, Landroid/view/VerifiedMotionEvent$MotionEventAction;

    const/4 p2, 0x0

    iget p3, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 191
    move-wide/from16 p1, p9

    iput-wide p1, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    .line 192
    move/from16 p1, p11

    iput p1, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    .line 193
    move/from16 p1, p12

    iput p1, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    .line 194
    move/from16 p1, p13

    iput p1, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    .line 197
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 338
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/view/VerifiedInputEvent;-><init>(Landroid/os/Parcel;I)V

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 348
    iput v0, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    .line 349
    iput v1, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    .line 350
    iput v2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    .line 351
    const-class v0, Landroid/view/VerifiedMotionEvent$MotionEventAction;

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 353
    iput-wide v3, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    .line 354
    iput v5, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    .line 355
    iput v6, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    .line 356
    iput p1, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    .line 359
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 278
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 279
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4e

    .line 281
    :cond_12
    check-cast p1, Landroid/view/VerifiedMotionEvent;

    .line 283
    nop

    .line 284
    invoke-super {p0, p1}, Landroid/view/VerifiedInputEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    iget v3, p1, Landroid/view/VerifiedMotionEvent;->mRawX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4c

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    iget v3, p1, Landroid/view/VerifiedMotionEvent;->mRawY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4c

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    iget v3, p1, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    if-ne v2, v3, :cond_4c

    iget-wide v2, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    iget-wide v4, p1, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4c

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    iget v3, p1, Landroid/view/VerifiedMotionEvent;->mFlags:I

    if-ne v2, v3, :cond_4c

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    iget v3, p1, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    if-ne v2, v3, :cond_4c

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    iget p1, p1, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    if-ne v2, p1, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v1

    .line 283
    :goto_4d
    return v0

    .line 279
    :cond_4e
    :goto_4e
    return v1
.end method

.method public whitelist getActionMasked()I
    .registers 2

    .line 226
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    return v0
.end method

.method public whitelist getButtonState()I
    .registers 2

    .line 268
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    return v0
.end method

.method public whitelist getDownTimeNanos()J
    .registers 3

    .line 237
    iget-wide v0, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    return-wide v0
.end method

.method public whitelist getFlag(I)Ljava/lang/Boolean;
    .registers 3

    .line 121
    sparse-switch p1, :sswitch_data_12

    .line 129
    const/4 p1, 0x0

    return-object p1

    .line 127
    :sswitch_5
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

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
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x800 -> :sswitch_5
    .end sparse-switch
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 248
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    return v0
.end method

.method public whitelist getMetaState()I
    .registers 2

    .line 258
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    return v0
.end method

.method public whitelist getRawX()F
    .registers 2

    .line 206
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    return v0
.end method

.method public whitelist getRawY()F
    .registers 2

    .line 216
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 300
    nop

    .line 301
    invoke-super {p0}, Landroid/view/VerifiedInputEvent;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 302
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 303
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 304
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    add-int/2addr v0, v2

    .line 305
    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 306
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    add-int/2addr v0, v2

    .line 307
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    add-int/2addr v0, v2

    .line 308
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    add-int/2addr v0, v1

    .line 309
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 317
    invoke-super {p0, p1, p2}, Landroid/view/VerifiedInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 319
    iget p2, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 320
    iget p2, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 321
    iget p2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-wide v0, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 323
    iget p2, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget p2, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget p2, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    return-void
.end method
