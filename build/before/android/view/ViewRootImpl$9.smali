.class Landroid/view/ViewRootImpl$9;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->registerCallbackForPendingTransactions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;

.field final synthetic blacklist val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static synthetic blacklist $r8$lambda$oslup7xsfmiKu7EQNfqm1RHXE3w(Landroid/view/ViewRootImpl$9;JZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$9;->lambda$onFrameDraw$0(JZ)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5523
    iput-object p1, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$9;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$0(JZ)V
    .registers 5

    .line 5534
    if-nez p3, :cond_12

    .line 5535
    iget-object p3, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    const-string v0, "Transaction not synced due to no frame drawn"

    invoke-static {p3, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mlogAndTrace(Landroid/view/ViewRootImpl;Ljava/lang/String;)V

    .line 5536
    iget-object p3, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/graphics/BLASTBufferQueue;->applyPendingTransactions(J)V

    .line 5538
    :cond_12
    return-void
.end method


# virtual methods
.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .registers 6

    .line 5526
    iget-object v0, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$9;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 5527
    and-int/lit8 p1, p1, 0x6

    if-eqz p1, :cond_16

    .line 5529
    iget-object p1, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->applyPendingTransactions(J)V

    .line 5530
    const/4 p1, 0x0

    return-object p1

    .line 5533
    :cond_16
    new-instance p1, Landroid/view/ViewRootImpl$9$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, p3}, Landroid/view/ViewRootImpl$9$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImpl$9;J)V

    return-object p1
.end method

.method public blacklist onFrameDraw(J)V
    .registers 3

    .line 5544
    return-void
.end method
