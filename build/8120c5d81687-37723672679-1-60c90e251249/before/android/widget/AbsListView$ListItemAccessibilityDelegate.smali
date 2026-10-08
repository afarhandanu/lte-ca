.class Landroid/widget/AbsListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
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

    .line 2560
    iput-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 2563
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2565
    iget-object v0, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 2566
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p1, v0, p2}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2567
    return-void
.end method

.method public whitelist performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 9

    .line 2571
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_8

    .line 2572
    return v0

    .line 2575
    :cond_8
    iget-object p3, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p3, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result p3

    .line 2576
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p3, v1, :cond_8d

    iget-object v3, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_1a

    goto/16 :goto_8d

    .line 2581
    :cond_1a
    iget-object v3, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt p3, v3, :cond_25

    .line 2588
    return v2

    .line 2592
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2593
    instance-of v4, v3, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v4, :cond_32

    .line 2594
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    iget-boolean v3, v3, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    goto :goto_33

    .line 2596
    :cond_32
    move v3, v2

    .line 2599
    :goto_33
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_8c

    if-nez v3, :cond_3e

    goto :goto_8c

    .line 2604
    :cond_3e
    sparse-switch p2, :sswitch_data_8e

    .line 2631
    return v2

    .line 2624
    :sswitch_42
    iget-object p2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p2}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result p2

    if-eqz p2, :cond_57

    .line 2625
    iget-object p2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 2626
    iget-object p2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result p1

    return p1

    .line 2628
    :cond_57
    return v2

    .line 2618
    :sswitch_58
    iget-object p2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-static {p2, p1}, Landroid/widget/AbsListView;->-$$Nest$misItemClickable(Landroid/widget/AbsListView;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_6d

    .line 2619
    iget-object p2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 2620
    iget-object p2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result p1

    return p1

    .line 2622
    :cond_6d
    return v2

    .line 2606
    :sswitch_6e
    iget-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result p1

    if-ne p1, p3, :cond_7c

    .line 2607
    iget-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 2608
    return v0

    .line 2610
    :cond_7c
    return v2

    .line 2612
    :sswitch_7d
    iget-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result p1

    if-eq p1, p3, :cond_8b

    .line 2613
    iget-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 2614
    return v0

    .line 2616
    :cond_8b
    return v2

    .line 2601
    :cond_8c
    :goto_8c
    return v2

    .line 2578
    :cond_8d
    :goto_8d
    return v2

    :sswitch_data_8e
    .sparse-switch
        0x4 -> :sswitch_7d
        0x8 -> :sswitch_6e
        0x10 -> :sswitch_58
        0x20 -> :sswitch_42
    .end sparse-switch
.end method
