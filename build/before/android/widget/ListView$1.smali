.class Landroid/widget/ListView$1;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListView;->initializeScrollStateTracking(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ListView;

.field final synthetic blacklist val$widgetId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ListView;Ljava/lang/String;)V
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

    .line 286
    iput-object p1, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    iput-object p2, p0, Landroid/widget/ListView$1;->val$widgetId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    .line 314
    return-void
.end method

.method public whitelist onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 7

    .line 289
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-static {v0}, Landroid/widget/ListView;->-$$Nest$fgetmJankTracker(Landroid/widget/ListView;)Landroid/app/jank/JankTracker;

    move-result-object v0

    if-nez v0, :cond_11

    .line 290
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getJankTracker()Landroid/app/jank/JankTracker;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/widget/ListView;->-$$Nest$fputmJankTracker(Landroid/widget/ListView;Landroid/app/jank/JankTracker;)V

    .line 294
    :cond_11
    iget-object p1, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-static {p1}, Landroid/widget/ListView;->-$$Nest$fgetmJankTracker(Landroid/widget/ListView;)Landroid/app/jank/JankTracker;

    move-result-object p1

    if-eqz p1, :cond_61

    iget-object p1, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-static {p1}, Landroid/widget/ListView;->-$$Nest$fgetmPreviousScrollState(Landroid/widget/ListView;)I

    move-result p1

    if-eq p2, p1, :cond_61

    .line 295
    iget-object p1, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-static {p1}, Landroid/widget/ListView;->-$$Nest$fgetmPreviousScrollState(Landroid/widget/ListView;)I

    move-result p1

    const/4 v0, -0x1

    const-string/jumbo v1, "scroll"

    if-ne p1, v0, :cond_3f

    .line 296
    iget-object p1, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-static {p1}, Landroid/widget/ListView;->-$$Nest$fgetmJankTracker(Landroid/widget/ListView;)Landroid/app/jank/JankTracker;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/ListView$1;->val$widgetId:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    .line 298
    invoke-static {v2, p2}, Landroid/widget/ListView;->-$$Nest$mgetWidgetStateFromScrollState(Landroid/widget/ListView;I)Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {p1, v1, v0, v2}, Landroid/app/jank/JankTracker;->addUiState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 300
    :cond_3f
    iget-object p1, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-static {p1}, Landroid/widget/ListView;->-$$Nest$fgetmJankTracker(Landroid/widget/ListView;)Landroid/app/jank/JankTracker;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/ListView$1;->val$widgetId:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    iget-object v3, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-static {v3}, Landroid/widget/ListView;->-$$Nest$fgetmPreviousScrollState(Landroid/widget/ListView;)I

    move-result v3

    .line 301
    invoke-static {v2, v3}, Landroid/widget/ListView;->-$$Nest$mgetWidgetStateFromScrollState(Landroid/widget/ListView;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    .line 302
    invoke-static {v3, p2}, Landroid/widget/ListView;->-$$Nest$mgetWidgetStateFromScrollState(Landroid/widget/ListView;I)Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/app/jank/JankTracker;->updateUiState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_5c
    iget-object p1, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-static {p1, p2}, Landroid/widget/ListView;->-$$Nest$fputmPreviousScrollState(Landroid/widget/ListView;I)V

    .line 306
    :cond_61
    return-void
.end method
