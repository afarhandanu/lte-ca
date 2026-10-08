.class Landroid/widget/RemoteViews$RemoteCollectionCache;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteCollectionCache"
.end annotation


# instance fields
.field private final blacklist mIdToUriMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUriToCollectionMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews$RemoteCollectionItems;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$0K3JyZ6BtSC02I0QK9fYDD4Kp3U(Landroid/widget/RemoteViews$RemoteCollectionCache;Ljava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->lambda$connectAllUniqueIntents$0(Ljava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdToUriMapping(Landroid/widget/RemoteViews$RemoteCollectionCache;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1539
    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    .line 1537
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    .line 1539
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1549
    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    .line 1537
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    .line 1550
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1551
    new-instance v1, Landroid/widget/RemoteViews$HierarchyRootData;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmBitmapCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;

    move-result-object v2

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplicationInfoCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$ApplicationInfoCache;

    move-result-object v3

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmClassCookies(Landroid/widget/RemoteViews;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, v2, p0, v3, p1}, Landroid/widget/RemoteViews$HierarchyRootData;-><init>(Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$RemoteCollectionCache;Landroid/widget/RemoteViews$ApplicationInfoCache;Ljava/util/Map;)V

    .line 1555
    const/4 p1, 0x0

    :goto_29
    if-ge p1, v0, :cond_3e

    .line 1556
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    .line 1558
    new-instance v4, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-direct {v4, p2, v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1559
    invoke-virtual {p0, v2, v3, v4}, Landroid/widget/RemoteViews$RemoteCollectionCache;->addMapping(ILjava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 1555
    add-int/lit8 p1, p1, 0x1

    goto :goto_29

    .line 1561
    :cond_3e
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$RemoteCollectionCache;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1541
    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    .line 1537
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    .line 1542
    const/4 p1, 0x0

    :goto_14
    iget-object v0, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_3f

    .line 1543
    iget-object v0, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1544
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    iget-object v2, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1545
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    iget-object v2, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    .line 1547
    :cond_3f
    return-void
.end method

.method private blacklist collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1633
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mhasSizedRemoteViews(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1634
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmSizedRemoteViews(Landroid/widget/RemoteViews;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 1635
    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    .line 1636
    goto :goto_e

    :cond_1e
    goto/16 :goto_df

    .line 1637
    :cond_20
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mhasLandscapeAndPortraitLayouts(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1638
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmLandscape(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    .line 1639
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmPortrait(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    goto/16 :goto_df

    .line 1640
    :cond_36
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_df

    .line 1641
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 1642
    instance-of v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    if-eqz v1, :cond_ca

    check-cast v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    .line 1644
    iget v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_60

    iget-boolean v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    if-nez v1, :cond_60

    .line 1645
    goto :goto_44

    .line 1648
    :cond_60
    iget v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_80

    iget-boolean v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    if-eqz v1, :cond_80

    .line 1649
    iput-boolean v4, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    .line 1654
    iget v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1655
    goto :goto_44

    .line 1658
    :cond_75
    iget v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    iget-object v2, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1659
    invoke-static {v0, v3}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 1660
    goto :goto_44

    .line 1665
    :cond_80
    iget-object v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    if-eqz v1, :cond_b7

    .line 1666
    iget-object v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 1667
    iget-object v4, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->indexOfValueByValue(Ljava/lang/Object;)I

    move-result v4

    .line 1668
    if-ne v4, v2, :cond_ab

    .line 1669
    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1670
    iput v2, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    .line 1671
    iget-object v4, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1672
    nop

    .line 1678
    iget v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    iget-object v2, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1679
    invoke-static {v0, v3}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 1680
    goto :goto_dd

    .line 1673
    :cond_ab
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    .line 1674
    invoke-static {v0, v3}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 1675
    goto :goto_44

    .line 1681
    :cond_b7
    invoke-static {v0}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fgetmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$fgetmViews(Landroid/widget/RemoteViews$RemoteCollectionItems;)[Landroid/widget/RemoteViews;

    move-result-object v0

    array-length v1, v0

    :goto_c0
    if-ge v4, v1, :cond_dd

    aget-object v2, v0, v4

    .line 1682
    invoke-direct {p0, v2, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    .line 1681
    add-int/lit8 v4, v4, 0x1

    goto :goto_c0

    .line 1685
    :cond_ca
    instance-of v1, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    if-eqz v1, :cond_dd

    check-cast v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-static {v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_dd

    .line 1687
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    .line 1689
    :cond_dd
    :goto_dd
    goto/16 :goto_44

    .line 1691
    :cond_df
    :goto_df
    return-void
.end method

.method private blacklist connectAllUniqueIntents(IILandroid/util/SparseArray;ZLandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;Z",
            "Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1697
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 1698
    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1699
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1700
    invoke-static {v3, p1, p2, p4, p5}, Landroid/widget/RemoteViews$RemoteCollectionCache;->getItemsFutureFromIntent(Landroid/content/Intent;IIZLandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    new-instance v4, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$RemoteCollectionCache;Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    .line 1700
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1697
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1707
    :cond_31
    new-instance p1, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method private static blacklist getItemsFutureFromIntent(Landroid/content/Intent;IIZLandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "IIZ",
            "Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/widget/RemoteViews$RemoteCollectionItems;",
            ">;"
        }
    .end annotation

    .line 1713
    if-nez p0, :cond_17

    .line 1714
    const-string p0, "RemoteViews"

    const-string p1, "Null intent received when generating adapter future"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    new-instance p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {p0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    .line 1716
    invoke-virtual {p0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object p0

    .line 1715
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 1719
    :cond_17
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1721
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1722
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1723
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 1724
    if-eqz v0, :cond_43

    if-eqz v2, :cond_43

    .line 1726
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1728
    new-instance p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {p0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 1729
    return-object v1

    .line 1731
    :cond_43
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CompletableFuture;IIZ)V

    invoke-virtual {p4, p0, v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->connectAndConsume(Landroid/content/Intent;Ljava/util/function/Consumer;)V

    .line 1740
    return-object v1
.end method

.method private synthetic blacklist lambda$connectAllUniqueIntents$0(Ljava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V
    .registers 4

    .line 1702
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1703
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    return-void
.end method

.method static synthetic blacklist lambda$connectAllUniqueIntents$1(I)[Ljava/util/concurrent/CompletableFuture;
    .registers 1

    .line 1707
    new-array p0, p0, [Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method static synthetic blacklist lambda$getItemsFutureFromIntent$2(Ljava/util/concurrent/CompletableFuture;IIZLandroid/os/IBinder;)V
    .registers 5

    .line 1733
    :try_start_0
    invoke-static {p4}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object p4

    .line 1734
    invoke-interface {p4, p1, p2, p3}, Lcom/android/internal/widget/IRemoteViewsFactory;->getRemoteCollectionItems(IIZ)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object p1

    .line 1733
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1738
    goto :goto_10

    .line 1736
    :catch_c
    move-exception p1

    .line 1737
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 1739
    :goto_10
    return-void
.end method


# virtual methods
.method blacklist addMapping(ILjava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V
    .registers 5

    .line 1564
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1565
    iget-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    return-void
.end method

.method public blacklist collectAllIntentsNoComplete(Landroid/widget/RemoteViews;IZLandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "IZ",
            "Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1597
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1601
    invoke-direct {p0, p1, v3}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    .line 1604
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 1605
    if-nez p1, :cond_1b

    .line 1606
    const-string p1, "RemoteViews"

    const-string p2, "Possibly notifying updates for nonexistent view Id"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 1610
    :cond_1b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1614
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews;Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    .line 1617
    const v1, 0xc3500

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    sub-int/2addr v1, v4

    .line 1618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1620
    if-gez v1, :cond_34

    .line 1621
    move v1, v2

    goto :goto_37

    .line 1622
    :cond_34
    div-int v2, v1, p1

    move v1, v2

    .line 1624
    :goto_37
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$mgetBitmapMemoryUsedByActions(Landroid/widget/RemoteViews;)I

    move-result v0

    sub-int/2addr p2, v0

    div-int v2, p2, p1

    .line 1627
    move-object v0, p0

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$RemoteCollectionCache;->connectAllUniqueIntents(IILandroid/util/SparseArray;ZLandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method blacklist getItemsForId(I)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .registers 3

    .line 1581
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1582
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews$RemoteCollectionItems;

    return-object p1
.end method

.method public blacklist replaceAllIntentsWithEmptyList(Landroid/widget/RemoteViews;)V
    .registers 5

    .line 1586
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    .line 1587
    const/4 p1, 0x0

    :goto_9
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_33

    .line 1588
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    .line 1589
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1590
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .line 1592
    :cond_33
    return-void
.end method

.method blacklist setHierarchyDataForId(ILandroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 5

    .line 1570
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1571
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_29

    .line 1572
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error setting hierarchy data for id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteViews"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    return-void

    .line 1576
    :cond_29
    iget-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1577
    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1578
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1745
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1746
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 1747
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1748
    if-eqz p3, :cond_21

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1751
    goto :goto_3b

    .line 1753
    :cond_21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1754
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1755
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1756
    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$RemoteCollectionItems;

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/os/Parcel;IZ)V

    .line 1746
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1758
    :cond_3e
    return-void
.end method

.method public blacklist writeToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V
    .registers 12

    .line 1761
    const-wide v0, 0x10b0000000fL

    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1762
    const/4 v2, 0x0

    :goto_a
    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_57

    .line 1763
    const-wide v3, 0x20b00000001L

    invoke-virtual {p2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1764
    iget-object v5, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    .line 1765
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1764
    const-wide v6, 0x10300000001L

    invoke-virtual {p2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1766
    iget-object v5, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1767
    const-wide v6, 0x10900000002L

    invoke-virtual {p2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1768
    const-wide v6, 0x10b00000003L

    invoke-virtual {p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1770
    iget-object v8, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$RemoteCollectionItems;

    const/4 v8, 0x1

    invoke-static {v5, p1, p2, v8}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mwriteToProto(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;Z)V

    .line 1772
    invoke-virtual {p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1773
    invoke-virtual {p2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1762
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1775
    :cond_57
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1776
    return-void
.end method
