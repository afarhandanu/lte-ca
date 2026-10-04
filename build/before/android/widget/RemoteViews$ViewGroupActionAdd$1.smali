.class Landroid/widget/RemoteViews$ViewGroupActionAdd$1;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$ViewGroupActionAdd;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$nextChild:I

.field final synthetic blacklist val$reapplyTask:Landroid/widget/RemoteViews$AsyncApplyTask;

.field final synthetic blacklist val$recycledViewIndex:I

.field final synthetic blacklist val$targetVg:Landroid/view/ViewGroup;

.field final synthetic blacklist val$tree:Landroid/widget/RemoteViews$ViewTree;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;IILandroid/view/ViewGroup;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 4278
    iput-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$reapplyTask:Landroid/widget/RemoteViews$AsyncApplyTask;

    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    iput p4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$recycledViewIndex:I

    iput p5, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$nextChild:I

    iput-object p6, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$targetVg:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 4282
    iget-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$reapplyTask:Landroid/widget/RemoteViews$AsyncApplyTask;

    iget-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews$AsyncApplyTask;->onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V

    .line 4283
    iget p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$recycledViewIndex:I

    iget p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$nextChild:I

    if-le p1, p2, :cond_19

    .line 4284
    iget-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$targetVg:Landroid/view/ViewGroup;

    iget p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$nextChild:I

    iget p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$recycledViewIndex:I

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$nextChild:I

    sub-int/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 4286
    :cond_19
    return-void
.end method
