.class Landroid/view/ViewRootImpl$11;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->registerCallbacksForSync(ZLandroid/window/SurfaceSyncGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;

.field final synthetic blacklist val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

.field final synthetic blacklist val$syncBuffer:Z

.field final synthetic blacklist val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static synthetic blacklist $r8$lambda$B3xgjVvEams4YrkJ3Tq8ugo3lrU(Landroid/view/ViewRootImpl$11;Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$11;->lambda$onFrameDraw$2(Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FqK4Og5BBUTjhoLGGOqnFp1LfZI(Landroid/view/ViewRootImpl$11;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl$11;->lambda$onFrameDraw$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$R3FkiByxaHubFL68iUllcN1tkkY(Landroid/view/ViewRootImpl$11;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$11;->lambda$onFrameDraw$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lOIKKNnrcWn9ZndeJebfX4H5mOg(Landroid/view/ViewRootImpl$11;JLandroid/window/SurfaceSyncGroup;ZZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/ViewRootImpl$11;->lambda$onFrameDraw$3(JLandroid/window/SurfaceSyncGroup;ZZ)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13011
    iput-object p1, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$11;->val$t:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Landroid/view/ViewRootImpl$11;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    iput-boolean p4, p0, Landroid/view/ViewRootImpl$11;->val$syncBuffer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$0()V
    .registers 3

    .line 13045
    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to submit the sync transaction after 4s. Likely to ANR soon"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$1(Ljava/lang/Runnable;)V
    .registers 3

    .line 13050
    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$2(Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    .line 13045
    new-instance v0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImpl$11;)V

    .line 13048
    iget-object v1, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget v2, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    int-to-long v2, v2

    const-wide/16 v4, 0xfa0

    mul-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13049
    iget-object v1, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmSimpleExecutor(Landroid/view/ViewRootImpl;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewRootImpl$11;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 13051
    invoke-virtual {p1, p2}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 13052
    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 13053
    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$3(JLandroid/window/SurfaceSyncGroup;ZZ)V
    .registers 6

    .line 13075
    if-nez p5, :cond_1c

    .line 13076
    iget-object p4, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/BLASTBufferQueue;->clearSyncTransaction()V

    .line 13082
    iget-object p4, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object p4

    .line 13083
    invoke-virtual {p4, p1, p2}, Landroid/graphics/BLASTBufferQueue;->gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 13082
    invoke-virtual {p3, p1}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 13084
    invoke-virtual {p3}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 13085
    return-void

    .line 13091
    :cond_1c
    if-nez p4, :cond_21

    .line 13092
    invoke-virtual {p3}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 13094
    :cond_21
    return-void
.end method


# virtual methods
.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .registers 10

    .line 13023
    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->val$t:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_b

    .line 13024
    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$11;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 13031
    :cond_b
    and-int/lit8 p1, p1, 0x6

    if-eqz p1, :cond_25

    .line 13033
    iget-object p1, p0, Landroid/view/ViewRootImpl$11;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    .line 13034
    invoke-virtual {v0, p2, p3}, Landroid/graphics/BLASTBufferQueue;->gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    .line 13033
    invoke-virtual {p1, p2}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 13035
    iget-object p1, p0, Landroid/view/ViewRootImpl$11;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 13036
    const/4 p1, 0x0

    return-object p1

    .line 13043
    :cond_25
    iget-boolean p1, p0, Landroid/view/ViewRootImpl$11;->val$syncBuffer:Z

    if-eqz p1, :cond_4c

    .line 13044
    iget-object p1, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object p1

    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    new-instance v1, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda2;-><init>(Landroid/view/ViewRootImpl$11;Landroid/window/SurfaceSyncGroup;)V

    invoke-virtual {p1, v1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)Z

    move-result p1

    .line 13054
    if-nez p1, :cond_4c

    .line 13059
    iget-object p1, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to syncNextTransaction. Possibly something else is trying to sync?"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13061
    iget-object p1, p0, Landroid/view/ViewRootImpl$11;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 13065
    :cond_4c
    iget-object v4, p0, Landroid/view/ViewRootImpl$11;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    iget-boolean v5, p0, Landroid/view/ViewRootImpl$11;->val$syncBuffer:Z

    new-instance v0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda3;

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda3;-><init>(Landroid/view/ViewRootImpl$11;JLandroid/window/SurfaceSyncGroup;Z)V

    return-object v0
.end method

.method public blacklist onFrameDraw(J)V
    .registers 3

    .line 13014
    return-void
.end method
