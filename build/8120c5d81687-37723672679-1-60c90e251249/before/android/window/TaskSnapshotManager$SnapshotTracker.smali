.class Landroid/window/TaskSnapshotManager$SnapshotTracker;
.super Landroid/util/AndroidRuntimeException;
.source "TaskSnapshotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskSnapshotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SnapshotTracker"
.end annotation


# static fields
.field private static final blacklist ROOT_STACK_TRACE_COUNT:I = 0x4


# instance fields
.field final blacklist mCaptureTime:J

.field final blacklist mIsLowResolution:Z

.field blacklist mReferenceCount:I

.field final blacklist mSnapshot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/window/TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSnapshotId:J

.field final blacklist mTaskId:I


# direct methods
.method constructor blacklist <init>(ILandroid/window/TaskSnapshot;I)V
    .registers 6

    .line 452
    invoke-direct {p0}, Landroid/util/AndroidRuntimeException;-><init>()V

    .line 453
    iput p1, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mTaskId:I

    .line 454
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mSnapshotId:J

    .line 455
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getCaptureTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mCaptureTime:J

    .line 456
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->isLowResolution()Z

    move-result p1

    iput-boolean p1, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mIsLowResolution:Z

    .line 457
    invoke-virtual {p2, p0}, Landroid/window/TaskSnapshot;->setSnapshotTracker(Landroid/window/TaskSnapshotManager$SnapshotTracker;)V

    .line 458
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mSnapshot:Ljava/lang/ref/WeakReference;

    .line 459
    iput p3, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mReferenceCount:I

    .line 460
    return-void
.end method

.method static blacklist buildDumpString(Landroid/util/AndroidRuntimeException;)Ljava/lang/StringBuilder;
    .registers 5

    .line 487
    invoke-virtual {p0}, Landroid/util/AndroidRuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 488
    array-length v0, p0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_21

    .line 491
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 492
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_20

    .line 493
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_20
    goto :goto_10

    .line 496
    :cond_21
    return-object v1
.end method


# virtual methods
.method blacklist decreaseReference()I
    .registers 2

    .line 466
    iget v0, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mReferenceCount:I

    .line 467
    iget v0, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mReferenceCount:I

    return v0
.end method

.method blacklist dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 479
    invoke-static {p0}, Landroid/window/TaskSnapshotManager$SnapshotTracker;->buildDumpString(Landroid/util/AndroidRuntimeException;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SnapshotID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mSnapshotId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLowResolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mIsLowResolution:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Get from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 4

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnapshotTracker: @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {TaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SnapshotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mSnapshotId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCaptureTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mCaptureTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isLowResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mIsLowResolution:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReferenceCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mReferenceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist increaseReference()V
    .registers 2

    .line 462
    iget v0, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/window/TaskSnapshotManager$SnapshotTracker;->mReferenceCount:I

    .line 463
    return-void
.end method
