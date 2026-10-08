.class public final Landroid/view/ContentRecordingSession$Builder;
.super Ljava/lang/Object;
.source "ContentRecordingSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ContentRecordingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mContentToRecord:I

.field private blacklist mDisplayToRecord:I

.field private blacklist mRecordingOwnerUid:I

.field private blacklist mTargetUid:I

.field private blacklist mTaskId:I

.field private blacklist mTokenToRecord:Landroid/os/IBinder;

.field private blacklist mVirtualDisplayId:I

.field private blacklist mWaitingForConsent:Z


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 621
    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mRecordingOwnerUid:I

    .line 622
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 763
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 767
    return-void

    .line 764
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/view/ContentRecordingSession;
    .registers 11

    .line 726
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 727
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 729
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_18

    .line 730
    iput v1, p0, Landroid/view/ContentRecordingSession$Builder;->mTaskId:I

    .line 732
    :cond_18
    iget-wide v4, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_23

    .line 733
    iput v1, p0, Landroid/view/ContentRecordingSession$Builder;->mVirtualDisplayId:I

    .line 735
    :cond_23
    iget-wide v4, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_2f

    .line 736
    iput v4, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    .line 738
    :cond_2f
    iget-wide v5, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v7, 0x10

    and-long/2addr v5, v7

    cmp-long v0, v5, v2

    if-nez v0, :cond_3a

    .line 739
    iput v1, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayToRecord:I

    .line 741
    :cond_3a
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v5, 0x20

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    .line 742
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    .line 744
    :cond_46
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v5, 0x40

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-nez v0, :cond_51

    .line 745
    iput-boolean v4, p0, Landroid/view/ContentRecordingSession$Builder;->mWaitingForConsent:Z

    .line 747
    :cond_51
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_5d

    .line 748
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ContentRecordingSession$Builder;->mTargetUid:I

    .line 750
    :cond_5d
    new-instance v1, Landroid/view/ContentRecordingSession;

    iget v2, p0, Landroid/view/ContentRecordingSession$Builder;->mTaskId:I

    iget v3, p0, Landroid/view/ContentRecordingSession$Builder;->mRecordingOwnerUid:I

    iget v4, p0, Landroid/view/ContentRecordingSession$Builder;->mVirtualDisplayId:I

    iget v5, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    iget v6, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayToRecord:I

    iget-object v7, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    iget-boolean v8, p0, Landroid/view/ContentRecordingSession$Builder;->mWaitingForConsent:Z

    iget v9, p0, Landroid/view/ContentRecordingSession$Builder;->mTargetUid:I

    invoke-direct/range {v1 .. v9}, Landroid/view/ContentRecordingSession;-><init>(IIIIILandroid/os/IBinder;ZI)V

    .line 759
    return-object v1
.end method

.method public blacklist setContentToRecord(I)Landroid/view/ContentRecordingSession$Builder;
    .registers 6

    .line 665
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 666
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 667
    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    .line 668
    return-object p0
.end method

.method public blacklist setDisplayToRecord(I)Landroid/view/ContentRecordingSession$Builder;
    .registers 6

    .line 679
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 680
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 681
    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayToRecord:I

    .line 682
    return-object p0
.end method

.method public blacklist setRecordingOwnerUid(I)Landroid/view/ContentRecordingSession$Builder;
    .registers 6

    .line 642
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 643
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 644
    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mRecordingOwnerUid:I

    .line 645
    return-object p0
.end method

.method public blacklist setTargetUid(I)Landroid/view/ContentRecordingSession$Builder;
    .registers 6

    .line 718
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 719
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 720
    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mTargetUid:I

    .line 721
    return-object p0
.end method

.method public blacklist setTaskId(I)Landroid/view/ContentRecordingSession$Builder;
    .registers 6

    .line 630
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 631
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 632
    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mTaskId:I

    .line 633
    return-object p0
.end method

.method public blacklist setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession$Builder;
    .registers 6

    .line 693
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 694
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 695
    iput-object p1, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    .line 696
    return-object p0
.end method

.method public blacklist setVirtualDisplayId(I)Landroid/view/ContentRecordingSession$Builder;
    .registers 6

    .line 654
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 655
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 656
    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mVirtualDisplayId:I

    .line 657
    return-object p0
.end method

.method public blacklist setWaitingForConsent(Z)Landroid/view/ContentRecordingSession$Builder;
    .registers 6

    .line 707
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 708
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 709
    iput-boolean p1, p0, Landroid/view/ContentRecordingSession$Builder;->mWaitingForConsent:Z

    .line 710
    return-object p0
.end method
