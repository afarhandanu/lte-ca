.class Landroid/widget/inline/InlineContentView$2;
.super Ljava/lang/Object;
.source "InlineContentView.java"

# interfaces
.implements Landroid/view/SurfaceControl$OnReparentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/inline/InlineContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/inline/InlineContentView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/inline/InlineContentView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Landroid/widget/inline/InlineContentView$2;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onReparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 142
    const/4 p1, 0x0

    if-eqz p2, :cond_8

    .line 143
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->getLocalOwnerView()Landroid/view/View;

    move-result-object p2

    goto :goto_9

    :cond_8
    move-object p2, p1

    .line 144
    :goto_9
    instance-of v0, p2, Landroid/view/SurfaceView;

    if-eqz v0, :cond_1a

    .line 145
    iget-object p1, p0, Landroid/widget/inline/InlineContentView$2;->this$0:Landroid/widget/inline/InlineContentView;

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Landroid/view/SurfaceView;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fputmParentSurfaceOwnerView(Landroid/widget/inline/InlineContentView;Ljava/lang/ref/WeakReference;)V

    goto :goto_1f

    .line 148
    :cond_1a
    iget-object p2, p0, Landroid/widget/inline/InlineContentView$2;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {p2, p1}, Landroid/widget/inline/InlineContentView;->-$$Nest$fputmParentSurfaceOwnerView(Landroid/widget/inline/InlineContentView;Ljava/lang/ref/WeakReference;)V

    .line 150
    :goto_1f
    return-void
.end method
