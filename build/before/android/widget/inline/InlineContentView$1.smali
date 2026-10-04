.class Landroid/widget/inline/InlineContentView$1;
.super Ljava/lang/Object;
.source "InlineContentView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    .line 114
    iput-object p1, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 126
    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 117
    iget-object p1, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {p1}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmSurfaceView(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    .line 118
    iget-object v0, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmOnReparentListener(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceControl$OnReparentListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl;->addOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z

    .line 119
    iget-object v0, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmSurfaceControlCallback(Landroid/widget/inline/InlineContentView;)Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/inline/InlineContentView$SurfaceControlCallback;->onCreated(Landroid/view/SurfaceControl;)V

    .line 120
    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 130
    iget-object p1, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {p1}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmSurfaceView(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    .line 131
    iget-object v0, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmOnReparentListener(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceControl$OnReparentListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl;->removeOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z

    .line 132
    iget-object v0, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmSurfaceControlCallback(Landroid/widget/inline/InlineContentView;)Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/inline/InlineContentView$SurfaceControlCallback;->onDestroyed(Landroid/view/SurfaceControl;)V

    .line 133
    return-void
.end method
