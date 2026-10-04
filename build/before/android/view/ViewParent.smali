.class public interface abstract Landroid/view/ViewParent;
.super Ljava/lang/Object;
.source "ViewParent.java"


# virtual methods
.method public abstract whitelist bringChildToFront(Landroid/view/View;)V
.end method

.method public abstract whitelist canResolveLayoutDirection()Z
.end method

.method public abstract whitelist canResolveTextAlignment()Z
.end method

.method public abstract whitelist canResolveTextDirection()Z
.end method

.method public abstract whitelist childDrawableStateChanged(Landroid/view/View;)V
.end method

.method public abstract whitelist childHasTransientStateChanged(Landroid/view/View;Z)V
.end method

.method public abstract whitelist clearChildFocus(Landroid/view/View;)V
.end method

.method public abstract whitelist createContextMenu(Landroid/view/ContextMenu;)V
.end method

.method public whitelist findOnBackInvokedDispatcherForChild(Landroid/view/View;Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;
    .registers 3

    .line 779
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract whitelist focusSearch(Landroid/view/View;I)Landroid/view/View;
.end method

.method public abstract whitelist focusableViewAvailable(Landroid/view/View;)V
.end method

.method public blacklist getChildLocalHitRegion(Landroid/view/View;Landroid/graphics/Region;Landroid/graphics/Matrix;Z)Z
    .registers 5

    .line 748
    invoke-virtual {p2}, Landroid/graphics/Region;->setEmpty()V

    .line 749
    const/4 p1, 0x0

    return p1
.end method

.method public abstract whitelist getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
.end method

.method public abstract whitelist getLayoutDirection()I
.end method

.method public abstract whitelist getParent()Landroid/view/ViewParent;
.end method

.method public abstract whitelist getParentForAccessibility()Landroid/view/ViewParent;
.end method

.method public abstract whitelist getTextAlignment()I
.end method

.method public abstract whitelist getTextDirection()I
.end method

.method public abstract whitelist invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist isLayoutDirectionResolved()Z
.end method

.method public abstract whitelist isLayoutRequested()Z
.end method

.method public abstract whitelist isTextAlignmentResolved()Z
.end method

.method public abstract whitelist isTextDirectionResolved()Z
.end method

.method public abstract whitelist keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;
.end method

.method public abstract whitelist notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
.end method

.method public whitelist onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 79
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 81
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 83
    :cond_d
    return-void
.end method

.method public blacklist onDescendantUnbufferedRequested()V
    .registers 2

    .line 761
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 762
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->onDescendantUnbufferedRequested()V

    .line 764
    :cond_d
    return-void
.end method

.method public abstract whitelist onNestedFling(Landroid/view/View;FFZ)Z
.end method

.method public abstract whitelist onNestedPreFling(Landroid/view/View;FF)Z
.end method

.method public abstract whitelist onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
.end method

.method public abstract whitelist onNestedPreScroll(Landroid/view/View;II[I)V
.end method

.method public abstract whitelist onNestedScroll(Landroid/view/View;IIII)V
.end method

.method public abstract whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
.end method

.method public abstract whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
.end method

.method public abstract whitelist onStopNestedScroll(Landroid/view/View;)V
.end method

.method public abstract whitelist recomputeViewAttributes(Landroid/view/View;)V
.end method

.method public abstract whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
.end method

.method public abstract whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;ZI)Z
    .registers 5

    .line 376
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public abstract whitelist requestDisallowInterceptTouchEvent(Z)V
.end method

.method public abstract whitelist requestFitSystemWindows()V
.end method

.method public abstract whitelist requestLayout()V
.end method

.method public abstract whitelist requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.end method

.method public abstract whitelist requestTransparentRegion(Landroid/view/View;)V
.end method

.method public abstract whitelist showContextMenuForChild(Landroid/view/View;)Z
.end method

.method public abstract whitelist showContextMenuForChild(Landroid/view/View;FF)Z
.end method

.method public abstract whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end method

.method public abstract whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
.end method

.method public blacklist subtractObscuredTouchableRegion(Landroid/graphics/Region;Landroid/view/View;)V
    .registers 3

    .line 720
    return-void
.end method
