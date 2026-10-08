.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private greylist-max-o mActiveViews:[Landroid/view/View;

.field private greylist-max-o mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFirstActivePosition:I

.field private greylist mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private greylist-max-o mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mViewTypeCount:I

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 7198
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7213
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method private greylist-max-o clearScrap(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 7708
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7709
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_17

    .line 7710
    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3, v1}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7709
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 7712
    :cond_17
    return-void
.end method

.method private greylist-max-o clearScrapForRebind(Landroid/view/View;)V
    .registers 3

    .line 7715
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7716
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7717
    invoke-virtual {p1}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 7718
    return-void
.end method

.method private greylist-max-o getSkippedScrap()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 7485
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 7486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 7488
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method private greylist-max-o pruneScrapViews()V
    .registers 8

    .line 7593
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    .line 7594
    iget v1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7595
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7596
    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v1, :cond_1c

    .line 7597
    aget-object v5, v2, v4

    .line 7598
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 7599
    :goto_11
    if-le v6, v0, :cond_19

    .line 7600
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_11

    .line 7596
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 7604
    :cond_1c
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7605
    if-eqz v0, :cond_3e

    .line 7606
    move v1, v3

    :goto_21
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 7607
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7608
    invoke-virtual {v2}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 7609
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7610
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 7611
    add-int/lit8 v1, v1, -0x1

    .line 7606
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 7616
    :cond_3e
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7617
    if-eqz v0, :cond_60

    .line 7618
    move v1, v3

    :goto_43
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_60

    .line 7619
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7620
    invoke-virtual {v2}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-nez v4, :cond_5d

    .line 7621
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7622
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 7623
    add-int/lit8 v1, v1, -0x1

    .line 7618
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 7627
    :cond_60
    return-void
.end method

.method private greylist-max-o removeDetachedView(Landroid/view/View;Z)V
    .registers 4

    .line 7721
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7722
    invoke-virtual {p1}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 7723
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v0, p1, p2}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7724
    return-void
.end method

.method private greylist-max-o retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 7679
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7680
    if-lez v0, :cond_4f

    .line 7683
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_45

    .line 7684
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7685
    nop

    .line 7686
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 7688
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_33

    .line 7689
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 7690
    iget-wide v5, v2, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    cmp-long v2, v3, v5

    if-nez v2, :cond_41

    .line 7691
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 7693
    :cond_33
    iget v2, v2, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v2, p2, :cond_41

    .line 7694
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 7695
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    .line 7696
    return-object p1

    .line 7693
    :cond_41
    nop

    .line 7683
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 7699
    :cond_45
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 7700
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    .line 7701
    return-object p1

    .line 7703
    :cond_4f
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method greylist-max-o addScrapView(Landroid/view/View;I)V
    .registers 7

    .line 7417
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 7418
    if-nez v0, :cond_9

    .line 7421
    return-void

    .line 7424
    :cond_9
    iput p2, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 7428
    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 7429
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 7433
    const/4 p2, -0x2

    if-eq v1, p2, :cond_1d

    .line 7434
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->getSkippedScrap()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7436
    :cond_1d
    return-void

    .line 7439
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7445
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 7449
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    .line 7450
    if-eqz v2, :cond_6e

    .line 7451
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v1, :cond_4c

    .line 7454
    iget-object p2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez p2, :cond_44

    .line 7455
    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7457
    :cond_44
    iget-object p2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v0, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    invoke-virtual {p2, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_8b

    .line 7458
    :cond_4c
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v0, :cond_63

    .line 7461
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v0, :cond_5d

    .line 7462
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7464
    :cond_5d
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8b

    .line 7467
    :cond_63
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    .line 7468
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->getSkippedScrap()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 7471
    :cond_6e
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    .line 7472
    iget p2, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne p2, v3, :cond_7b

    .line 7473
    iget-object p2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 7475
    :cond_7b
    iget-object p2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7478
    :goto_82
    iget-object p2, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz p2, :cond_8b

    .line 7479
    iget-object p2, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {p2, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7482
    :cond_8b
    :goto_8b
    return-void
.end method

.method greylist clear()V
    .registers 4

    .line 7283
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 7284
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7285
    invoke-direct {p0, v0}, Landroid/widget/AbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 7286
    goto :goto_1a

    .line 7287
    :cond_b
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7288
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1a

    .line 7289
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    .line 7290
    invoke-direct {p0, v2}, Landroid/widget/AbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 7288
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 7294
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 7295
    return-void
.end method

.method greylist-max-o clearTransientStateViews()V
    .registers 6

    .line 7372
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7373
    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 7374
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 7375
    move v3, v1

    :goto_a
    if-ge v3, v2, :cond_18

    .line 7376
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v1}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7375
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 7378
    :cond_18
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 7381
    :cond_1b
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7382
    if-eqz v0, :cond_35

    .line 7383
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 7384
    move v3, v1

    :goto_24
    if-ge v3, v2, :cond_32

    .line 7385
    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v1}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7384
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 7387
    :cond_32
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 7389
    :cond_35
    return-void
.end method

.method greylist-max-o fillActiveViews(II)V
    .registers 10

    .line 7305
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_9

    .line 7306
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7308
    :cond_9
    iput p2, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    .line 7311
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7312
    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, p1, :cond_2d

    .line 7313
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7314
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 7316
    if-eqz v4, :cond_2a

    iget v5, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_2a

    .line 7319
    aput-object v3, v0, v2

    .line 7321
    add-int v3, p2, v2

    iput v3, v4, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 7312
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 7325
    :cond_2d
    iget-object p2, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-static {p2}, Landroid/widget/AbsListView;->-$$Nest$fgetmReportChildrenToContentCaptureOnNextUpdate(Landroid/widget/AbsListView;)Z

    move-result p2

    if-eqz p2, :cond_41

    if-lez p1, :cond_41

    .line 7326
    iget-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-static {p1}, Landroid/widget/AbsListView;->-$$Nest$mreportActiveViewsToContentCapture(Landroid/widget/AbsListView;)V

    .line 7327
    iget-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-static {p1, v1}, Landroid/widget/AbsListView;->-$$Nest$fputmReportChildrenToContentCaptureOnNextUpdate(Landroid/widget/AbsListView;Z)V

    .line 7329
    :cond_41
    return-void
.end method

.method greylist-max-o fullyDetachScrapViews()V
    .registers 9

    .line 7573
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7574
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7575
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_27

    .line 7576
    aget-object v4, v1, v3

    .line 7577
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_10
    if-ltz v5, :cond_24

    .line 7578
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 7579
    invoke-virtual {v6}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 7580
    invoke-direct {p0, v6, v2}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7577
    :cond_21
    add-int/lit8 v5, v5, -0x1

    goto :goto_10

    .line 7575
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 7584
    :cond_27
    return-void
.end method

.method greylist-max-o getActiveView(I)Landroid/view/View;
    .registers 5

    .line 7339
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int/2addr p1, v0

    .line 7340
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7341
    const/4 v1, 0x0

    if-ltz p1, :cond_10

    array-length v2, v0

    if-ge p1, v2, :cond_10

    .line 7342
    aget-object v2, v0, p1

    .line 7343
    aput-object v1, v0, p1

    .line 7344
    return-object v2

    .line 7346
    :cond_10
    return-object v1
.end method

.method greylist-max-o getScrapView(I)Landroid/view/View;
    .registers 6

    .line 7395
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 7396
    const/4 v1, 0x0

    if-gez v0, :cond_c

    .line 7397
    return-object v1

    .line 7399
    :cond_c
    iget v2, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 7400
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Landroid/widget/AbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 7401
    :cond_18
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_26

    .line 7402
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-direct {p0, v0, p1}, Landroid/widget/AbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 7404
    :cond_26
    return-object v1
.end method

.method greylist-max-o getTransientStateView(I)Landroid/view/View;
    .registers 5

    .line 7350
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_26

    .line 7351
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 7352
    iget-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 7353
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 7354
    return-object p1

    .line 7356
    :cond_26
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_40

    .line 7357
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    .line 7358
    if-ltz p1, :cond_40

    .line 7359
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 7360
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 7361
    return-object v0

    .line 7364
    :cond_40
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o markChildrenDirty()V
    .registers 8

    .line 7244
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    .line 7245
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7246
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7247
    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_1b

    .line 7248
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->forceLayout()V

    .line 7247
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 7250
    :cond_1b
    goto :goto_3b

    .line 7251
    :cond_1c
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7252
    move v1, v2

    :goto_1f
    if-ge v1, v0, :cond_3b

    .line 7253
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    .line 7254
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7255
    move v5, v2

    :goto_2a
    if-ge v5, v4, :cond_38

    .line 7256
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7255
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 7252
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 7260
    :cond_3b
    :goto_3b
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_56

    .line 7261
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 7262
    move v1, v2

    :goto_46
    if-ge v1, v0, :cond_56

    .line 7263
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 7262
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 7266
    :cond_56
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_71

    .line 7267
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 7268
    nop

    :goto_61
    if-ge v2, v0, :cond_71

    .line 7269
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->forceLayout()V

    .line 7268
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 7272
    :cond_71
    return-void
.end method

.method greylist-max-o reclaimScrapViews(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 7633
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 7634
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a

    .line 7636
    :cond_b
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7637
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7638
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_1a

    .line 7639
    aget-object v3, v1, v2

    .line 7640
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7638
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 7643
    :cond_1a
    :goto_1a
    return-void
.end method

.method greylist-max-o removeSkippedScrap()V
    .registers 5

    .line 7495
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 7496
    return-void

    .line 7498
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7499
    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1d

    .line 7500
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3, v1}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7499
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 7502
    :cond_1d
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7503
    return-void
.end method

.method greylist-max-o scrapActiveViews()V
    .registers 12

    .line 7509
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7510
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    .line 7511
    :goto_b
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-le v4, v2, :cond_11

    move v4, v2

    goto :goto_12

    :cond_11
    move v4, v3

    .line 7513
    :goto_12
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7514
    array-length v6, v0

    .line 7515
    sub-int/2addr v6, v2

    :goto_16
    if-ltz v6, :cond_a2

    .line 7516
    aget-object v2, v0, v6

    .line 7517
    if-eqz v2, :cond_9e

    .line 7518
    nop

    .line 7519
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/AbsListView$LayoutParams;

    .line 7520
    iget v8, v7, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 7522
    const/4 v9, 0x0

    aput-object v9, v0, v6

    .line 7524
    invoke-virtual {v2}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    const/4 v10, -0x2

    if-eqz v9, :cond_7a

    .line 7526
    invoke-virtual {v2}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7528
    iget-object v7, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v7, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_5a

    iget-object v7, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v7, v7, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v7, :cond_5a

    .line 7529
    iget-object v7, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v7, :cond_49

    .line 7530
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v7, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7532
    :cond_49
    iget-object v7, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v7, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v8, v6

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 7533
    iget-object v9, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v7, v8, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 7534
    goto :goto_9e

    :cond_5a
    iget-object v7, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v7, v7, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v7, :cond_74

    .line 7535
    iget-object v7, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v7, :cond_6b

    .line 7536
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7538
    :cond_6b
    iget-object v7, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v8, v6

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9e

    .line 7539
    :cond_74
    if-eq v8, v10, :cond_9e

    .line 7541
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_9e

    .line 7543
    :cond_7a
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-nez v9, :cond_86

    .line 7545
    if-eq v8, v10, :cond_9e

    .line 7546
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_9e

    .line 7550
    :cond_86
    if-eqz v4, :cond_8c

    .line 7551
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v5, v8

    .line 7554
    :cond_8c
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v8, v6

    iput v8, v7, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 7555
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7556
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7558
    if-eqz v1, :cond_9e

    .line 7559
    iget-object v7, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v7, v2}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7515
    :cond_9e
    :goto_9e
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_16

    .line 7564
    :cond_a2
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->pruneScrapViews()V

    .line 7565
    return-void
.end method

.method greylist-max-o setCacheColorHint(I)V
    .registers 9

    .line 7651
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    .line 7652
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7653
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7654
    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_1b

    .line 7655
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7654
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 7657
    :cond_1b
    goto :goto_3b

    .line 7658
    :cond_1c
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7659
    move v1, v2

    :goto_1f
    if-ge v1, v0, :cond_3b

    .line 7660
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    .line 7661
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7662
    move v5, v2

    :goto_2a
    if-ge v5, v4, :cond_38

    .line 7663
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7662
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 7659
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 7668
    :cond_3b
    :goto_3b
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7669
    array-length v1, v0

    .line 7670
    nop

    :goto_3f
    if-ge v2, v1, :cond_4b

    .line 7671
    aget-object v3, v0, v2

    .line 7672
    if-eqz v3, :cond_48

    .line 7673
    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7670
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 7676
    :cond_4b
    return-void
.end method

.method public greylist-max-o setViewTypeCount(I)V
    .registers 6

    .line 7230
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1c

    .line 7234
    new-array v0, p1, [Ljava/util/ArrayList;

    .line 7235
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, p1, :cond_13

    .line 7236
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v0, v2

    .line 7235
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 7238
    :cond_13
    iput p1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7239
    aget-object p1, v0, v1

    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7240
    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7241
    return-void

    .line 7231
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t have a viewTypeCount < 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o shouldRecycleViewType(I)Z
    .registers 2

    .line 7275
    if-ltz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method
