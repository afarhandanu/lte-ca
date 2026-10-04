.class Landroid/widget/AbsSpinner$RecycleBin;
.super Ljava/lang/Object;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final greylist-max-o mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/widget/AbsSpinner;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsSpinner;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 460
    iput-object p1, p0, Landroid/widget/AbsSpinner$RecycleBin;->this$0:Landroid/widget/AbsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method greylist-max-o clear()V
    .registers 7

    .line 480
    iget-object v0, p0, Landroid/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    .line 481
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 482
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1a

    .line 483
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 484
    if-eqz v3, :cond_17

    .line 485
    iget-object v4, p0, Landroid/widget/AbsSpinner$RecycleBin;->this$0:Landroid/widget/AbsSpinner;

    const/4 v5, 0x1

    # invokes: Landroid/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v4, v3, v5}, Landroid/widget/AbsSpinner;->access$000(Landroid/widget/AbsSpinner;Landroid/view/View;Z)V

    .line 482
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 488
    :cond_1a
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 489
    return-void
.end method

.method greylist-max-o get(I)Landroid/view/View;
    .registers 4

    .line 469
    iget-object v0, p0, Landroid/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 470
    if-eqz v0, :cond_f

    .line 472
    iget-object v1, p0, Landroid/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 476
    :cond_f
    return-object v0
.end method

.method public greylist-max-o put(ILandroid/view/View;)V
    .registers 4

    .line 464
    iget-object v0, p0, Landroid/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    return-void
.end method
