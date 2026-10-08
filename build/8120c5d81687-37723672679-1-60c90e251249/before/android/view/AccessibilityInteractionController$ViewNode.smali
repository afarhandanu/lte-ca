.class Landroid/view/AccessibilityInteractionController$ViewNode;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"

# interfaces
.implements Landroid/view/AccessibilityInteractionController$DequeNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewNode"
.end annotation


# instance fields
.field private final blacklist mTempViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mView:Landroid/view/View;

.field final synthetic blacklist this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)V
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

    .line 1938
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1936
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mTempViewList:Ljava/util/ArrayList;

    .line 1939
    iput-object p2, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    .line 1940
    return-void
.end method

.method private blacklist addChild(Ljava/util/ArrayDeque;Landroid/view/View;)V
    .registers 7

    .line 1979
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v0, p2}, Landroid/view/AccessibilityInteractionController;->-$$Nest$misShown(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1980
    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1981
    if-nez v0, :cond_19

    .line 1982
    new-instance v0, Landroid/view/AccessibilityInteractionController$ViewNode;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, v1, p2}, Landroid/view/AccessibilityInteractionController$ViewNode;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_25

    .line 1984
    :cond_19
    new-instance p2, Landroid/view/AccessibilityInteractionController$VirtualNode;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->this$0:Landroid/view/AccessibilityInteractionController;

    const-wide/16 v2, -0x1

    invoke-direct {p2, v1, v2, v3, v0}, Landroid/view/AccessibilityInteractionController$VirtualNode;-><init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1988
    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public blacklist addChildren(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V
    .registers 6

    .line 1952
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    if-nez p1, :cond_5

    .line 1953
    return-void

    .line 1955
    :cond_5
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_c

    .line 1956
    return-void

    .line 1958
    :cond_c
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mTempViewList:Ljava/util/ArrayList;

    .line 1959
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1961
    :try_start_11
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 1962
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1964
    invoke-virtual {p2}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->isStack()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1965
    add-int/lit8 v0, v0, -0x1

    :goto_22
    if-ltz v0, :cond_3f

    .line 1966
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, p2, v1}, Landroid/view/AccessibilityInteractionController$ViewNode;->addChild(Ljava/util/ArrayDeque;Landroid/view/View;)V

    .line 1965
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 1969
    :cond_30
    const/4 v1, 0x0

    :goto_31
    if-ge v1, v0, :cond_3f

    .line 1970
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, p2, v2}, Landroid/view/AccessibilityInteractionController$ViewNode;->addChild(Ljava/util/ArrayDeque;Landroid/view/View;)V
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_44

    .line 1969
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1974
    :cond_3f
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1975
    nop

    .line 1976
    return-void

    .line 1974
    :catchall_44
    move-exception p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1975
    throw p2
.end method

.method public blacklist getA11yNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 1944
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 1945
    const/4 v0, 0x0

    return-object v0

    .line 1947
    :cond_6
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method
