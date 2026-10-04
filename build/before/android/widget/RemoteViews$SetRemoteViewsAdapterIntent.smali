.class Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteViewsAdapterIntent"
.end annotation


# instance fields
.field blacklist mIntent:Landroid/content/Intent;

.field blacklist mIsAsync:Z

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .registers 4
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

    .line 1849
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1847
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIsAsync:Z

    .line 1850
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    .line 1851
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    .line 1852
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
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

    .line 1854
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1847
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIsAsync:Z

    .line 1855
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    .line 1856
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    .line 1857
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 8

    .line 1866
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1867
    if-nez p1, :cond_9

    return-void

    .line 1870
    :cond_9
    instance-of v0, p2, Landroid/appwidget/AppWidgetHostView;

    const-string v1, ")"

    const-string v2, "RemoteViews"

    if-nez v0, :cond_2f

    .line 1871
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setRemoteAdapter can only be used for AppWidgets (root id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    return-void

    .line 1877
    :cond_2f
    instance-of v0, p1, Landroid/widget/AbsListView;

    if-nez v0, :cond_54

    instance-of v3, p1, Landroid/widget/AdapterViewAnimator;

    if-nez v3, :cond_54

    .line 1878
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot setRemoteAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    return-void

    .line 1885
    :cond_54
    check-cast p2, Landroid/appwidget/AppWidgetHostView;

    .line 1886
    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "remoteAdapterAppWidgetId"

    invoke-virtual {p2}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p2

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    .line 1888
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v1

    .line 1887
    const-string/jumbo v2, "remoteAdapterOnLightBackground"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1890
    if-eqz v0, :cond_89

    .line 1891
    check-cast p1, Landroid/widget/AbsListView;

    .line 1892
    iget-object p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    iget-boolean v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIsAsync:Z

    invoke-virtual {p1, p2, v0}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 1893
    iget-object p2, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 1894
    new-instance p2, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent$1;

    invoke-direct {p2, p0, p3}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent$1;-><init>(Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_9c

    .line 1907
    :cond_89
    instance-of p2, p1, Landroid/widget/AdapterViewAnimator;

    if-eqz p2, :cond_9c

    .line 1908
    check-cast p1, Landroid/widget/AdapterViewAnimator;

    .line 1909
    iget-object p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    iget-boolean v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIsAsync:Z

    invoke-virtual {p1, p2, v0}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 1910
    iget-object p2, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    goto :goto_9d

    .line 1907
    :cond_9c
    :goto_9c
    nop

    .line 1912
    :goto_9d
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 1924
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .registers 5

    .line 1917
    new-instance p1, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    iget-object p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    iget p3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 1918
    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIsAsync:Z

    .line 1919
    return-object p1
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1860
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1861
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1862
    return-void
.end method
