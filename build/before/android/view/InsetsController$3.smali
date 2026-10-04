.class Landroid/view/InsetsController$3;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/InsetsState$OnTraverseCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mFromState:Landroid/view/InsetsState;

.field private blacklist mToState:Landroid/view/InsetsState;

.field private blacklist mTypes:I

.field final synthetic blacklist this$0:Landroid/view/InsetsController;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 768
    iput-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFinish(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .registers 13

    .line 810
    iget p1, p0, Landroid/view/InsetsController$3;->mTypes:I

    if-nez p1, :cond_5

    .line 811
    return-void

    .line 813
    :cond_5
    iget-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    iget p2, p0, Landroid/view/InsetsController$3;->mTypes:I

    invoke-static {p1, p2}, Landroid/view/InsetsController;->-$$Nest$mcancelExistingControllers(Landroid/view/InsetsController;I)V

    .line 814
    new-instance v0, Landroid/view/InsetsResizeAnimationRunner;

    iget-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {p1}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {p1}, Landroid/view/InsetsController;->-$$Nest$fgetmBounds(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    iget-object v4, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    sget-object v5, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iget v8, p0, Landroid/view/InsetsController$3;->mTypes:I

    iget-object v9, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    const-wide/16 v6, 0x12c

    invoke-direct/range {v0 .. v9}, Landroid/view/InsetsResizeAnimationRunner;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/animation/Interpolator;JILandroid/view/InsetsAnimationControlCallbacks;)V

    .line 817
    iget-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {p1}, Landroid/view/InsetsController;->-$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 818
    iget-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {p1}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object p1

    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result p2

    .line 819
    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4b

    .line 820
    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    .line 818
    :goto_4c
    invoke-interface {p1, p2, v1}, Landroid/view/InsetsController$Host;->updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 822
    :cond_4f
    iget-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {p1}, Landroid/view/InsetsController;->-$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance p2, Landroid/view/InsetsController$RunningAnimation;

    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    iget-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {p1}, Landroid/view/InsetsController;->-$$Nest$fgetmAnimatingTypes(Landroid/view/InsetsController;)I

    move-result p2

    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    or-int/2addr p2, v0

    invoke-static {p1, p2}, Landroid/view/InsetsController;->-$$Nest$fputmAnimatingTypes(Landroid/view/InsetsController;I)V

    .line 824
    return-void
.end method

.method public blacklist onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V
    .registers 7

    .line 787
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 788
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 789
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 790
    invoke-virtual {p2, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 791
    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 792
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_89

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v0

    .line 793
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v0

    .line 794
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_89

    .line 797
    :cond_55
    iget v0, p0, Landroid/view/InsetsController$3;->mTypes:I

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/InsetsController$3;->mTypes:I

    .line 798
    iget-object v0, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    if-nez v0, :cond_69

    .line 799
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    .line 801
    :cond_69
    iget-object v0, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    if-nez v0, :cond_74

    .line 802
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    .line 804
    :cond_74
    iget-object v0, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    new-instance v1, Landroid/view/InsetsSource;

    invoke-direct {v1, p1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 805
    iget-object p1, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    new-instance v0, Landroid/view/InsetsSource;

    invoke-direct {v0, p2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 806
    return-void

    .line 795
    :cond_89
    :goto_89
    return-void
.end method

.method public blacklist onStart(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .registers 3

    .line 779
    const/4 p1, 0x0

    iput p1, p0, Landroid/view/InsetsController$3;->mTypes:I

    .line 780
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    .line 781
    iput-object p1, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    .line 782
    return-void
.end method
