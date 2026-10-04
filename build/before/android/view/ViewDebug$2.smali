.class Landroid/view/ViewDebug$2;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Landroid/view/ViewDebug$ViewOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->profileViewMeasure(Landroid/view/View;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 673
    iput-object p1, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist forceLayout(Landroid/view/View;)V
    .registers 5

    .line 680
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 681
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 682
    check-cast p1, Landroid/view/ViewGroup;

    .line 683
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 684
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1a

    .line 685
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/ViewDebug$2;->forceLayout(Landroid/view/View;)V

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 688
    :cond_1a
    return-void
.end method


# virtual methods
.method public blacklist pre()V
    .registers 2

    .line 676
    iget-object v0, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/view/ViewDebug$2;->forceLayout(Landroid/view/View;)V

    .line 677
    return-void
.end method

.method public blacklist run()V
    .registers 4

    .line 692
    iget-object v0, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mOldWidthMeasureSpec:I

    iget-object v2, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mOldHeightMeasureSpec:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 693
    return-void
.end method
