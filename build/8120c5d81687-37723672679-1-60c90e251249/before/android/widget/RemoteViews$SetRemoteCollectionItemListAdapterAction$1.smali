.class Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$params:Landroid/widget/RemoteViews$ActionApplyParams;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$ActionApplyParams;)V
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

    .line 1391
    iput-object p2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction$1;->val$params:Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    .line 1402
    return-void
.end method

.method public whitelist onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    .line 1394
    if-eqz p2, :cond_9

    .line 1395
    iget-object p2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction$1;->val$params:Landroid/widget/RemoteViews$ActionApplyParams;

    iget-object p2, p2, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-interface {p2, p1}, Landroid/widget/RemoteViews$InteractionHandler;->onScroll(Landroid/widget/AbsListView;)V

    .line 1397
    :cond_9
    return-void
.end method
