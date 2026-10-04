.class public final Landroid/window/BackMotionEvent;
.super Ljava/lang/Object;
.source "BackMotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackMotionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFrameTimeMillis:J

.field private final blacklist mProgress:F

.field private final blacklist mSwipeEdge:I

.field private final blacklist mTouchX:F

.field private final blacklist mTouchY:F

.field private final blacklist mTriggerBack:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Landroid/window/BackMotionEvent$1;

    invoke-direct {v0}, Landroid/window/BackMotionEvent$1;-><init>()V

    sput-object v0, Landroid/window/BackMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFJFZI)V
    .registers 8

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    .line 62
    iput p2, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    .line 63
    iput-wide p3, p0, Landroid/window/BackMotionEvent;->mFrameTimeMillis:J

    .line 64
    iput p5, p0, Landroid/window/BackMotionEvent;->mProgress:F

    .line 65
    iput-boolean p6, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    .line 66
    iput p7, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    .line 67
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/BackMotionEvent;->mProgress:F

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/BackMotionEvent;->mFrameTimeMillis:J

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/BackMotionEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/BackMotionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFrameTimeMillis()J
    .registers 3

    .line 151
    iget-wide v0, p0, Landroid/window/BackMotionEvent;->mFrameTimeMillis:J

    return-wide v0
.end method

.method public blacklist getProgress()F
    .registers 2

    .line 127
    iget v0, p0, Landroid/window/BackMotionEvent;->mProgress:F

    return v0
.end method

.method public blacklist getSwipeEdge()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    return v0
.end method

.method public blacklist getTouchX()F
    .registers 2

    .line 110
    iget v0, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    return v0
.end method

.method public blacklist getTouchY()F
    .registers 2

    .line 117
    iget v0, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    return v0
.end method

.method public blacklist getTriggerBack()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackMotionEvent{mTouchX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTouchY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrameTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/window/BackMotionEvent;->mFrameTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackMotionEvent;->mProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTriggerBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSwipeEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 98
    iget p2, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 99
    iget p2, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 100
    iget p2, p0, Landroid/window/BackMotionEvent;->mProgress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 101
    iget-boolean p2, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 102
    iget p2, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-wide v0, p0, Landroid/window/BackMotionEvent;->mFrameTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    return-void
.end method
