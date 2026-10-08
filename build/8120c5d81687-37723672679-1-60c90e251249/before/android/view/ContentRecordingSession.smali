.class public final Landroid/view/ContentRecordingSession;
.super Ljava/lang/Object;
.source "ContentRecordingSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ContentRecordingSession$Builder;,
        Landroid/view/ContentRecordingSession$TargetUid;,
        Landroid/view/ContentRecordingSession$RecordContent;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/ContentRecordingSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist RECORD_CONTENT_BELOW_OVERLAY:I = 0x2

.field public static final blacklist RECORD_CONTENT_DISPLAY:I = 0x0

.field public static final blacklist RECORD_CONTENT_TASK:I = 0x1

.field public static final blacklist TARGET_UID_FULL_SCREEN:I = -0x1

.field public static final blacklist TARGET_UID_UNKNOWN:I = -0x2

.field public static final blacklist TASK_ID_UNKNOWN:I = -0x1


# instance fields
.field private blacklist mContentToRecord:I

.field private blacklist mDisplayToRecord:I

.field private blacklist mRecordingOwnerUid:I

.field private blacklist mTargetUid:I

.field private blacklist mTaskId:I

.field private blacklist mTokenToRecord:Landroid/os/IBinder;

.field private blacklist mVirtualDisplayId:I

.field private blacklist mWaitingForConsent:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 581
    new-instance v0, Landroid/view/ContentRecordingSession$1;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession$1;-><init>()V

    sput-object v0, Landroid/view/ContentRecordingSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    .line 86
    iput v0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 100
    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 117
    iput-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 120
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    .line 126
    return-void
.end method

.method constructor blacklist <init>(IIIIILandroid/os/IBinder;ZI)V
    .registers 11

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    .line 86
    iput v0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 100
    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 117
    iput-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 120
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    .line 264
    iput p1, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    .line 265
    iput p2, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    .line 266
    iput p3, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 267
    iput p4, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 269
    iget p1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-eqz p1, :cond_6b

    iget p1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6b

    iget p1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2c

    goto :goto_6b

    .line 272
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "contentToRecord was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget p5, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "), RECORD_CONTENT_TASK("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "), RECORD_CONTENT_BELOW_OVERLAY("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :cond_6b
    :goto_6b
    iput p5, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 280
    iput-object p6, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 281
    iput-boolean p7, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 282
    iput p8, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    .line 285
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 12

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    .line 86
    iput v0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 100
    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 117
    iput-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 120
    const/4 v2, -0x2

    iput v2, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 548
    and-int/lit8 v3, v2, 0x40

    const/4 v4, 0x1

    if-eqz v3, :cond_20

    move v3, v4

    goto :goto_21

    :cond_20
    move v3, v1

    .line 549
    :goto_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 554
    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_3a

    goto :goto_3e

    :cond_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 555
    :goto_3e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 557
    iput v5, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    .line 558
    iput v6, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    .line 559
    iput v7, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 560
    iput v8, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 562
    iget v2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-eqz v2, :cond_97

    iget v2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-eq v2, v4, :cond_97

    iget v2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_58

    goto :goto_97

    .line 565
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentToRecord was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), RECORD_CONTENT_TASK("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), RECORD_CONTENT_BELOW_OVERLAY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 572
    :cond_97
    :goto_97
    iput v9, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 573
    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 574
    iput-boolean v3, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 575
    iput p1, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    .line 578
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 776
    return-void
.end method

.method public static blacklist createDisplaySession(I)Landroid/view/ContentRecordingSession;
    .registers 2

    .line 130
    new-instance v0, Landroid/view/ContentRecordingSession;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession;-><init>()V

    .line 131
    invoke-virtual {v0, p0}, Landroid/view/ContentRecordingSession;->setDisplayToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ContentRecordingSession;->setContentToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    .line 133
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ContentRecordingSession;->setTargetUid(I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    .line 130
    return-object p0
.end method

.method public static blacklist createOverlaySession(II)Landroid/view/ContentRecordingSession;
    .registers 3

    .line 155
    new-instance v0, Landroid/view/ContentRecordingSession;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession;-><init>()V

    .line 156
    invoke-virtual {v0, p0}, Landroid/view/ContentRecordingSession;->setDisplayToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    .line 157
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ContentRecordingSession;->setContentToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    .line 158
    invoke-virtual {p0, p1}, Landroid/view/ContentRecordingSession;->setRecordingOwnerUid(I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    .line 155
    return-object p0
.end method

.method public static blacklist createTaskSession(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;
    .registers 2

    .line 139
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/view/ContentRecordingSession;->createTaskSession(Landroid/os/IBinder;I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createTaskSession(Landroid/os/IBinder;I)Landroid/view/ContentRecordingSession;
    .registers 4

    .line 145
    new-instance v0, Landroid/view/ContentRecordingSession;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession;-><init>()V

    .line 146
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ContentRecordingSession;->setContentToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p0}, Landroid/view/ContentRecordingSession;->setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;

    move-result-object p0

    .line 148
    invoke-virtual {p0, p1}, Landroid/view/ContentRecordingSession;->setTaskId(I)Landroid/view/ContentRecordingSession;

    move-result-object p0

    .line 145
    return-object p0
.end method

.method public static blacklist isProjectionOnSameDisplay(Landroid/view/ContentRecordingSession;Landroid/view/ContentRecordingSession;)Z
    .registers 2

    .line 193
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    .line 194
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result p1

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    .line 193
    :goto_11
    return p0
.end method

.method public static blacklist isValid(Landroid/view/ContentRecordingSession;)Z
    .registers 8

    .line 168
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 169
    return v0

    .line 171
    :cond_4
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 172
    return v0

    .line 175
    :cond_c
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1b

    .line 176
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getTokenToRecord()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1b

    move v1, v3

    goto :goto_1c

    :cond_1b
    move v1, v0

    .line 177
    :goto_1c
    nop

    .line 178
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v4

    if-nez v4, :cond_2b

    .line 179
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getDisplayToRecord()I

    move-result v4

    if-le v4, v2, :cond_2b

    move v4, v3

    goto :goto_2c

    :cond_2b
    move v4, v0

    .line 180
    :goto_2c
    nop

    .line 181
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_42

    .line 182
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getDisplayToRecord()I

    move-result v5

    if-le v5, v2, :cond_42

    .line 183
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getRecordingOwnerUid()I

    move-result p0

    if-le p0, v2, :cond_42

    move p0, v3

    goto :goto_43

    :cond_42
    move p0, v0

    .line 184
    :goto_43
    if-nez v1, :cond_49

    if-nez v4, :cond_49

    if-eqz p0, :cond_4a

    :cond_49
    move v0, v3

    :cond_4a
    return v0
.end method

.method public static blacklist recordContentToString(I)Ljava/lang/String;
    .registers 1

    .line 224
    packed-switch p0, :pswitch_data_12

    .line 231
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 230
    :pswitch_8
    const-string p0, "RECORD_CONTENT_BELOW_OVERLAY"

    return-object p0

    .line 228
    :pswitch_b
    const-string p0, "RECORD_CONTENT_TASK"

    return-object p0

    .line 226
    :pswitch_e
    const-string p0, "RECORD_CONTENT_DISPLAY"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist targetUidToString(I)Ljava/lang/String;
    .registers 1

    .line 245
    packed-switch p0, :pswitch_data_e

    .line 250
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 247
    :pswitch_8
    const-string p0, "TARGET_UID_FULL_SCREEN"

    return-object p0

    .line 249
    :pswitch_b
    const-string p0, "TARGET_UID_UNKNOWN"

    return-object p0

    :pswitch_data_e
    .packed-switch -0x2
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 483
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 484
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4b

    .line 486
    :cond_12
    check-cast p1, Landroid/view/ContentRecordingSession;

    .line 488
    iget v2, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    iget v3, p1, Landroid/view/ContentRecordingSession;->mTaskId:I

    if-ne v2, v3, :cond_49

    iget v2, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    iget v3, p1, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    if-ne v2, v3, :cond_49

    iget v2, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    iget v3, p1, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    if-ne v2, v3, :cond_49

    iget v2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    iget v3, p1, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-ne v2, v3, :cond_49

    iget v2, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    iget v3, p1, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    if-ne v2, v3, :cond_49

    iget-object v2, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 494
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-boolean v2, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    iget-boolean v3, p1, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    if-ne v2, v3, :cond_49

    iget v2, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    iget p1, p1, Landroid/view/ContentRecordingSession;->mTargetUid:I

    if-ne v2, p1, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v1

    .line 488
    :goto_4a
    return v0

    .line 484
    :cond_4b
    :goto_4b
    return v1
.end method

.method public blacklist getContentToRecord()I
    .registers 2

    .line 319
    iget v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    return v0
.end method

.method public blacklist getDisplayToRecord()I
    .registers 2

    .line 330
    iget v0, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    return v0
.end method

.method public blacklist getRecordingOwnerUid()I
    .registers 2

    .line 302
    iget v0, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    return v0
.end method

.method public blacklist getTargetUid()I
    .registers 2

    .line 360
    iget v0, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    return v0
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 293
    iget v0, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    return v0
.end method

.method public blacklist getTokenToRecord()Landroid/os/IBinder;
    .registers 2

    .line 341
    iget-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getVirtualDisplayId()I
    .registers 2

    .line 311
    iget v0, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 505
    nop

    .line 506
    iget v0, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 507
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    add-int/2addr v0, v2

    .line 508
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    add-int/2addr v0, v2

    .line 509
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    add-int/2addr v0, v2

    .line 510
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    add-int/2addr v0, v2

    .line 511
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 512
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 513
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    add-int/2addr v0, v1

    .line 514
    return v0
.end method

.method public blacklist isWaitingForConsent()Z
    .registers 2

    .line 352
    iget-boolean v0, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    return v0
.end method

.method public blacklist setContentToRecord(I)Landroid/view/ContentRecordingSession;
    .registers 6

    .line 398
    iput p1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 400
    iget p1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-eqz p1, :cond_51

    iget p1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_51

    iget p1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    goto :goto_51

    .line 403
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentToRecord was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), RECORD_CONTENT_TASK("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), RECORD_CONTENT_BELOW_OVERLAY("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_51
    :goto_51
    return-object p0
.end method

.method public blacklist setDisplayToRecord(I)Landroid/view/ContentRecordingSession;
    .registers 2

    .line 421
    iput p1, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    .line 422
    return-object p0
.end method

.method public blacklist setRecordingOwnerUid(I)Landroid/view/ContentRecordingSession;
    .registers 2

    .line 379
    iput p1, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    .line 380
    return-object p0
.end method

.method public blacklist setTargetUid(I)Landroid/view/ContentRecordingSession;
    .registers 2

    .line 454
    iput p1, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    .line 455
    return-object p0
.end method

.method public blacklist setTaskId(I)Landroid/view/ContentRecordingSession;
    .registers 2

    .line 369
    iput p1, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    .line 370
    return-object p0
.end method

.method public blacklist setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;
    .registers 2

    .line 433
    iput-object p1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 434
    return-object p0
.end method

.method public blacklist setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;
    .registers 2

    .line 389
    iput p1, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    .line 390
    return-object p0
.end method

.method public blacklist setWaitingForConsent(Z)Landroid/view/ContentRecordingSession;
    .registers 2

    .line 445
    iput-boolean p1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    .line 446
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentRecordingSession { taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recordingOwnerUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", virtualDisplayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 468
    invoke-static {v1}, Landroid/view/ContentRecordingSession;->recordContentToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tokenToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waitingForConsent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 523
    nop

    .line 524
    iget-boolean p2, p0, Landroid/view/ContentRecordingSession;->mWaitingForConsent:Z

    if-eqz p2, :cond_8

    const/16 p2, 0x40

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 525
    :goto_9
    iget-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    if-eqz v0, :cond_f

    or-int/lit8 p2, p2, 0x20

    .line 526
    :cond_f
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget p2, p0, Landroid/view/ContentRecordingSession;->mTaskId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget p2, p0, Landroid/view/ContentRecordingSession;->mRecordingOwnerUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget p2, p0, Landroid/view/ContentRecordingSession;->mVirtualDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget p2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget p2, p0, Landroid/view/ContentRecordingSession;->mDisplayToRecord:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget-object p2, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    if-eqz p2, :cond_34

    iget-object p2, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 533
    :cond_34
    iget p2, p0, Landroid/view/ContentRecordingSession;->mTargetUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    return-void
.end method
