.class Landroid/widget/RemoteViews$ViewGroupActionRemove$1;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$ViewGroupActionRemove;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/RemoteViews$ViewGroupActionRemove;

.field final synthetic blacklist val$targetVg:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V
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

    .line 4512
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->this$0:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    iput-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 4

    .line 4515
    iget-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->this$0:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-static {p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->-$$Nest$fgetmViewIdToKeep(Landroid/widget/RemoteViews$ViewGroupActionRemove;)I

    move-result p1

    const/4 p2, -0x2

    if-ne p1, p2, :cond_28

    .line 4516
    iget-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_11
    if-ltz p1, :cond_27

    .line 4517
    iget-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Landroid/widget/RemoteViews;->-$$Nest$smhasStableId(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_24

    .line 4518
    iget-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 4516
    :cond_24
    add-int/lit8 p1, p1, -0x1

    goto :goto_11

    .line 4521
    :cond_27
    return-void

    .line 4524
    :cond_28
    iget-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->this$0:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    iget-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->-$$Nest$mremoveAllViewsExceptIdToKeep(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V

    .line 4525
    return-void
.end method
