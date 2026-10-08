.class Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteCollectionItemListAdapterAction"
.end annotation


# instance fields
.field blacklist mIntentId:I

.field blacklist mIsReplacedIntoAction:Z

.field private blacklist mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

.field final blacklist mServiceIntent:Landroid/content/Intent;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1278
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1267
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    .line 1268
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    .line 1279
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    .line 1280
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1281
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    .line 1282
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteCollectionItems;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1271
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1267
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    .line 1268
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    .line 1272
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    .line 1273
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1274
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1275
    iput-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    .line 1276
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 5
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

    .line 1284
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1267
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    .line 1268
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    .line 1285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    .line 1286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    .line 1287
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    .line 1288
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    .line 1289
    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2d

    .line 1290
    goto :goto_36

    .line 1291
    :cond_2d
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;)V

    :goto_36
    iput-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1292
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 1321
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1322
    if-nez p1, :cond_9

    return-void

    .line 1324
    :cond_9
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    .line 1325
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-nez v0, :cond_1c

    .line 1326
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    goto :goto_2b

    .line 1327
    :cond_1c
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    goto :goto_2b

    .line 1328
    :cond_1f
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmCollectionCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionCache;

    move-result-object v0

    iget v2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {v0, v2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->getItemsForId(I)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    .line 1330
    :goto_2b
    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->hasLegacyNullItems()Z

    move-result v2

    const-string v3, "RemoteViews"

    if-nez v2, :cond_e6

    .line 1340
    instance-of p2, p2, Landroid/appwidget/AppWidgetHostView;

    const-string v2, ")"

    if-nez p2, :cond_57

    .line 1341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setRemoteAdapter can only be used for AppWidgets (root id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    return-void

    .line 1346
    :cond_57
    instance-of p2, p1, Landroid/widget/AdapterView;

    if-nez p2, :cond_78

    .line 1347
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot call setRemoteAdapter on a view which is not an AdapterView (id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return-void

    .line 1352
    :cond_78
    check-cast p1, Landroid/widget/AdapterView;

    .line 1353
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    .line 1354
    iget-object v2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v2

    .line 1359
    iget v3, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    if-eq v3, v1, :cond_a3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_a3

    .line 1362
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction$$ExternalSyntheticLambda0;-><init>(Landroid/widget/AdapterView;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1364
    :cond_a3
    instance-of v1, p2, Landroid/widget/RemoteCollectionItemsAdapter;

    if-eqz v1, :cond_c3

    .line 1365
    invoke-interface {p2}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getViewTypeCount()I

    move-result v3

    if-lt v1, v3, :cond_c3

    .line 1367
    :try_start_b1
    check-cast p2, Landroid/widget/RemoteCollectionItemsAdapter;

    iget-object p1, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object p3, p3, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 1368
    invoke-virtual {p2, v0, p1, p3, v2}, Landroid/widget/RemoteCollectionItemsAdapter;->setData(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Z)V
    :try_end_ba
    .catchall {:try_start_b1 .. :try_end_ba} :catchall_bc

    .line 1377
    nop

    .line 1378
    return-void

    .line 1373
    :catchall_bc
    move-exception p1

    .line 1376
    new-instance p2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1382
    :cond_c3
    :try_start_c3
    new-instance p2, Landroid/widget/RemoteCollectionItemsAdapter;

    iget-object v1, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v3, p3, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-direct {p2, v0, v1, v3, v2}, Landroid/widget/RemoteCollectionItemsAdapter;-><init>(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Z)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V
    :try_end_cf
    .catchall {:try_start_c3 .. :try_end_cf} :catchall_df

    .line 1389
    nop

    .line 1390
    instance-of p2, p1, Landroid/widget/AbsListView;

    if-eqz p2, :cond_de

    check-cast p1, Landroid/widget/AbsListView;

    .line 1391
    new-instance p2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction$1;

    invoke-direct {p2, p0, p3}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction$1;-><init>(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1405
    :cond_de
    return-void

    .line 1385
    :catchall_df
    move-exception p1

    .line 1388
    new-instance p2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1331
    :cond_e6
    const-string p1, "Legacy null RemoteViews encountered in RemoteViewsFactory#getRemoteCollectionItems. Widget should not provide null RemoteViews in collections. Use setRemoteAdapter(viewId, items) instead to provide items."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    new-instance p1, Landroid/widget/RemoteViews$ActionException;

    const-string p2, "Null entries encountered in RemoteViewsFactory#getRemoteCollectionItems"

    invoke-direct {p1, p2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 1448
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 1409
    const/16 v0, 0x1f

    return v0
.end method

.method public blacklist getUniqueKey()Ljava/lang/String;
    .registers 3

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "33_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 4

    .line 1296
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-eqz v0, :cond_a

    .line 1297
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1298
    return-void

    .line 1301
    :cond_a
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 1303
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmCollectionCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionCache;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews$RemoteCollectionCache;->setHierarchyDataForId(ILandroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1305
    :cond_1a
    return-void
.end method

.method public blacklist visitIcons(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Icon;",
            ">;)V"
        }
    .end annotation

    .line 1434
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-nez v0, :cond_16

    .line 1435
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmCollectionCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionCache;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$RemoteCollectionCache;->getItemsForId(I)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    .line 1436
    if-eqz v0, :cond_15

    .line 1437
    invoke-static {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mvisitIcons(Landroid/widget/RemoteViews$RemoteCollectionItems;Ljava/util/function/Consumer;)V

    .line 1439
    :cond_15
    return-void

    .line 1442
    :cond_16
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mvisitIcons(Landroid/widget/RemoteViews$RemoteCollectionItems;Ljava/util/function/Consumer;)V

    .line 1443
    return-void
.end method

.method public blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1419
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-nez v0, :cond_16

    .line 1422
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmCollectionCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionCache;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$RemoteCollectionCache;->getItemsForId(I)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    .line 1423
    if-eqz v0, :cond_15

    .line 1424
    invoke-static {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mvisitUris(Landroid/widget/RemoteViews$RemoteCollectionItems;Ljava/util/function/Consumer;)V

    .line 1426
    :cond_15
    return-void

    .line 1429
    :cond_16
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mvisitUris(Landroid/widget/RemoteViews$RemoteCollectionItems;Ljava/util/function/Consumer;)V

    .line 1430
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1309
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    iget-boolean v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1312
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1313
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-eqz v0, :cond_1e

    .line 1314
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/os/Parcel;IZ)V

    .line 1316
    :cond_1e
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 9

    .line 1453
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-nez v0, :cond_5

    return-void

    .line 1454
    :cond_5
    const-wide v0, 0x10b0000000eL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1456
    iget v2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    .line 1457
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p3

    .line 1456
    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1458
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1460
    iget-object p3, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    const/4 v4, 0x1

    invoke-static {p3, p2, p1, v4}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mwriteToProto(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;Z)V

    .line 1461
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1462
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1463
    return-void
.end method
