.class Landroid/view/ThreadedRenderer$1;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$frameCallbacks:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Landroid/view/ThreadedRenderer;Ljava/util/ArrayList;)V
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

    .line 741
    iput-object p2, p0, Landroid/view/ThreadedRenderer$1;->val$frameCallbacks:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFrameDraw$0(Ljava/util/ArrayList;Z)V
    .registers 4

    .line 762
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 763
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/HardwareRenderer$FrameCommitCallback;

    invoke-interface {v1, p1}, Landroid/graphics/HardwareRenderer$FrameCommitCallback;->onFrameCommit(Z)V

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 765
    :cond_13
    return-void
.end method


# virtual methods
.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .registers 7

    .line 748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 749
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Landroid/view/ThreadedRenderer$1;->val$frameCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 750
    iget-object v2, p0, Landroid/view/ThreadedRenderer$1;->val$frameCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    .line 751
    invoke-interface {v2, p1, p2, p3}, Landroid/graphics/HardwareRenderer$FrameDrawingCallback;->onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;

    move-result-object v2

    .line 752
    if-eqz v2, :cond_1f

    .line 753
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 757
    :cond_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 758
    const/4 p1, 0x0

    return-object p1

    .line 761
    :cond_2a
    new-instance p1, Landroid/view/ThreadedRenderer$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Landroid/view/ThreadedRenderer$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public blacklist onFrameDraw(J)V
    .registers 3

    .line 744
    return-void
.end method
