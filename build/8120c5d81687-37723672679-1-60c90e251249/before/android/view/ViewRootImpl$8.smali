.class Landroid/view/ViewRootImpl$8;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->profileRendering(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5381
    iput-object p1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist doFrame(J)V
    .registers 5

    .line 5384
    iget-object p1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDirty(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget p2, p2, Landroid/view/ViewRootImpl;->mWidth:I

    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 5385
    iget-object p1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 5386
    iget-object p1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmRenderProfilingEnabled(Landroid/view/ViewRootImpl;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 5387
    iget-object p1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object p2, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmRenderProfiler(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 5389
    :cond_2c
    return-void
.end method
