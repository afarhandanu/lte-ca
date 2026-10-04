.class Landroid/widget/RemoteCollectionItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteCollectionItemsAdapter.java"


# instance fields
.field private blacklist mColorResources:Landroid/widget/RemoteViews$ColorResources;

.field private blacklist mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private blacklist mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

.field private blacklist mLayoutIdToViewType:Landroid/util/SparseIntArray;

.field private blacklist mOnLightBackground:Z

.field private final blacklist mViewTypeCount:I


# direct methods
.method public static synthetic blacklist $r8$lambda$RLeKIF6o3qgXPPbTinq7PniwEtI(Landroid/widget/RemoteCollectionItemsAdapter;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteCollectionItemsAdapter;->lambda$initLayoutIdToViewType$0(I)I

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Z)V
    .registers 6

    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getViewTypeCount()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    .line 58
    iput-object p1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 59
    iput-object p2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 60
    iput-object p3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 61
    iput-boolean p4, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mOnLightBackground:Z

    .line 63
    invoke-direct {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->initLayoutIdToViewType()V

    .line 64
    return-void
.end method

.method private blacklist initLayoutIdToViewType()V
    .registers 12

    .line 92
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    .line 93
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    .line 95
    iget-object v1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v3, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteCollectionItemsAdapter;)V

    .line 96
    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v1

    .line 98
    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 99
    array-length v3, v1

    iget v4, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    if-gt v3, v4, :cond_87

    .line 106
    array-length v3, v1

    new-array v3, v3, [Z

    .line 108
    iget v4, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    new-array v4, v4, [Z

    .line 110
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v0, :cond_50

    .line 111
    move v7, v2

    :goto_38
    array-length v8, v1

    if-ge v7, v8, :cond_50

    .line 112
    aget v8, v1, v7

    .line 115
    invoke-virtual {v0, v8, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 117
    if-gez v9, :cond_44

    goto :goto_4d

    .line 119
    :cond_44
    iget-object v10, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    aput-boolean v6, v3, v7

    .line 121
    aput-boolean v6, v4, v9

    .line 111
    :goto_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 125
    :cond_50
    nop

    .line 126
    nop

    :goto_52
    array-length v0, v1

    if-ge v2, v0, :cond_86

    .line 128
    aget-boolean v0, v3, v2

    if-eqz v0, :cond_5a

    goto :goto_83

    .line 130
    :cond_5a
    aget v0, v1, v2

    .line 134
    add-int/lit8 v5, v5, 0x1

    array-length v7, v1

    invoke-static {v5, v7}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v5

    new-instance v7, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v7, v4}, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda1;-><init>([Z)V

    .line 135
    invoke-interface {v5, v7}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v5

    .line 136
    invoke-interface {v5}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object v5

    new-instance v7, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda2;-><init>()V

    .line 137
    invoke-virtual {v5, v7}, Ljava/util/OptionalInt;->orElseThrow(Ljava/util/function/Supplier;)I

    move-result v5

    .line 141
    iget-object v7, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    aput-boolean v6, v3, v2

    .line 143
    aput-boolean v6, v4, v5

    .line 144
    nop

    .line 126
    :goto_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 146
    :cond_86
    return-void

    .line 100
    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collection items uses "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " distinct layouts, which is more than view type count of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic blacklist lambda$initLayoutIdToViewType$0(I)I
    .registers 3

    .line 96
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p1

    return p1
.end method

.method static synthetic blacklist lambda$initLayoutIdToViewType$1([ZI)Z
    .registers 2

    .line 135
    aget-boolean p0, p0, p1

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic blacklist lambda$initLayoutIdToViewType$2()Ljava/lang/IllegalStateException;
    .registers 2

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RemoteCollectionItems has more distinct layout ids than its view type count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getCount()I
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemCount()I

    move-result v0

    return v0
.end method

.method public blacklist getItem(I)Landroid/widget/RemoteViews;
    .registers 3

    .line 155
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/RemoteCollectionItemsAdapter;->getItem(I)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .registers 4

    .line 160
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .registers 4

    .line 165
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 181
    invoke-virtual {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 183
    :cond_8
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 184
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 186
    instance-of v0, p2, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;

    if-eqz v0, :cond_19

    check-cast p2, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;

    .line 188
    goto :goto_22

    .line 189
    :cond_19
    new-instance p2, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;-><init>(Landroid/content/Context;)V

    .line 190
    :goto_22
    iget-object p3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {p2, p3}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 191
    iget-object p3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual {p2, p3}, Landroid/appwidget/AppWidgetHostView;->setColorResourcesNoReapply(Landroid/widget/RemoteViews$ColorResources;)V

    .line 192
    iget-boolean p3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mOnLightBackground:Z

    invoke-virtual {p2, p3}, Landroid/appwidget/AppWidgetHostView;->setOnLightBackground(Z)V

    .line 193
    invoke-virtual {p2, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 194
    return-object p2
.end method

.method public whitelist getViewTypeCount()I
    .registers 2

    .line 170
    iget v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    return v0
.end method

.method public whitelist hasStableIds()Z
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method blacklist setData(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Z)V
    .registers 7

    .line 76
    iget v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    invoke-virtual {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getViewTypeCount()I

    move-result v1

    if-lt v0, v1, :cond_17

    .line 81
    iput-object p1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 82
    iput-object p2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 83
    iput-object p3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 84
    iput-boolean p4, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mOnLightBackground:Z

    .line 86
    invoke-direct {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->initLayoutIdToViewType()V

    .line 88
    invoke-virtual {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->notifyDataSetChanged()V

    .line 89
    return-void

    .line 77
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RemoteCollectionItemsAdapter cannot increase view type count after creation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
