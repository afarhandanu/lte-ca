.class public abstract Landroid/view/VerifiedInputEvent;
.super Ljava/lang/Object;
.source "VerifiedInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VerifiedInputEvent$VerifiedInputEventType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/VerifiedInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "VerifiedInputEvent"

.field protected static final blacklist VERIFIED_KEY:I = 0x1

.field protected static final blacklist VERIFIED_MOTION:I = 0x2


# instance fields
.field private blacklist mDeviceId:I

.field private blacklist mDisplayId:I

.field private blacklist mEventTimeNanos:J

.field private blacklist mSource:I

.field private blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smpeekInt(Landroid/os/Parcel;)I
    .registers 1

    invoke-static {p0}, Landroid/view/VerifiedInputEvent;->peekInt(Landroid/os/Parcel;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Landroid/view/VerifiedInputEvent$1;

    invoke-direct {v0}, Landroid/view/VerifiedInputEvent$1;-><init>()V

    sput-object v0, Landroid/view/VerifiedInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(IIJII)V
    .registers 7

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/view/VerifiedInputEvent;->mType:I

    .line 65
    iput p2, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    .line 66
    iput-wide p3, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    .line 67
    iput p5, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    .line 68
    iput p6, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    .line 69
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;I)V
    .registers 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/VerifiedInputEvent;->mType:I

    .line 73
    iget v0, p0, Landroid/view/VerifiedInputEvent;->mType:I

    if-ne v0, p2, :cond_26

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    .line 80
    return-void

    .line 74
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected input event type token in parcel."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist peekInt(Landroid/os/Parcel;)I
    .registers 3

    .line 137
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 138
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 140
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 164
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 165
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_47

    .line 167
    :cond_12
    check-cast p1, Landroid/view/VerifiedInputEvent;

    .line 168
    iget v2, p0, Landroid/view/VerifiedInputEvent;->mType:I

    iget v3, p1, Landroid/view/VerifiedInputEvent;->mType:I

    if-ne v2, v3, :cond_45

    .line 169
    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/VerifiedInputEvent;->getDeviceId()I

    move-result v3

    if-ne v2, v3, :cond_45

    .line 170
    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getEventTimeNanos()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/VerifiedInputEvent;->getEventTimeNanos()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_45

    .line 171
    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getSource()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/VerifiedInputEvent;->getSource()I

    move-result v3

    if-ne v2, v3, :cond_45

    .line 172
    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getDisplayId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/VerifiedInputEvent;->getDisplayId()I

    move-result p1

    if-ne v2, p1, :cond_45

    goto :goto_46

    :cond_45
    move v0, v1

    .line 168
    :goto_46
    return v0

    .line 165
    :cond_47
    :goto_47
    return v1
.end method

.method public whitelist getDeviceId()I
    .registers 2

    .line 88
    iget v0, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    return v0
.end method

.method public whitelist getDisplayId()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    return v0
.end method

.method public whitelist getEventTimeNanos()J
    .registers 3

    .line 99
    iget-wide v0, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    return-wide v0
.end method

.method public whitelist getSource()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 177
    nop

    .line 178
    iget v0, p0, Landroid/view/VerifiedInputEvent;->mType:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 179
    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getDeviceId()I

    move-result v2

    add-int/2addr v0, v2

    .line 180
    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getEventTimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 181
    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getSource()I

    move-result v2

    add-int/2addr v0, v2

    .line 182
    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getDisplayId()I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 123
    iget p2, p0, Landroid/view/VerifiedInputEvent;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget p2, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-wide v0, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget p2, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget p2, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return-void
.end method
