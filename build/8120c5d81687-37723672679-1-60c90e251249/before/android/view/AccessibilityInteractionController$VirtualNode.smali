.class Landroid/view/AccessibilityInteractionController$VirtualNode;
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
    name = "VirtualNode"
.end annotation


# instance fields
.field blacklist mInfoId:J

.field blacklist mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field final synthetic blacklist this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V
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

    .line 1995
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1996
    iput-wide p2, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mInfoId:J

    .line 1997
    iput-object p4, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 1998
    return-void
.end method


# virtual methods
.method public blacklist addChildren(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V
    .registers 10

    .line 2010
    if-nez p1, :cond_3

    .line 2011
    return-void

    .line 2013
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 2014
    invoke-virtual {p2}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->isStack()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2015
    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_3a

    .line 2016
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v1

    .line 2017
    new-instance v3, Landroid/view/AccessibilityInteractionController$VirtualNode;

    iget-object v4, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->this$0:Landroid/view/AccessibilityInteractionController;

    iget-object v5, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    invoke-direct {v3, v4, v1, v2, v5}, Landroid/view/AccessibilityInteractionController$VirtualNode;-><init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V

    invoke-virtual {p2, v3}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->push(Ljava/lang/Object;)V

    .line 2015
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 2020
    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_3a

    .line 2021
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v2

    .line 2022
    new-instance v4, Landroid/view/AccessibilityInteractionController$VirtualNode;

    iget-object v5, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->this$0:Landroid/view/AccessibilityInteractionController;

    iget-object v6, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    invoke-direct {v4, v5, v2, v3, v6}, Landroid/view/AccessibilityInteractionController$VirtualNode;-><init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V

    invoke-virtual {p2, v4}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->push(Ljava/lang/Object;)V

    .line 2020
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 2025
    :cond_3a
    return-void
.end method

.method public blacklist getA11yNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4

    .line 2001
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    if-nez v0, :cond_6

    .line 2002
    const/4 v0, 0x0

    return-object v0

    .line 2004
    :cond_6
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    iget-wide v1, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mInfoId:J

    .line 2005
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v1

    .line 2004
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method
