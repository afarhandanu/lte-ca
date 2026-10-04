.class public Landroid/webkit/WebView$PrivateAccess;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivateAccess"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor whitelist <init>(Landroid/webkit/WebView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2466
    iput-object p1, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist awakenScrollBars(I)V
    .registers 3

    .line 2535
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/webkit/WebView;->awakenScrollBars(I)Z
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;I)Z

    .line 2536
    return-void
.end method

.method public whitelist awakenScrollBars(IZ)V
    .registers 4

    .line 2539
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/webkit/WebView;->awakenScrollBars(IZ)Z
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;IZ)Z

    .line 2540
    return-void
.end method

.method public whitelist getHorizontalScrollFactor()F
    .registers 2

    .line 2547
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/webkit/WebView;->getHorizontalScrollFactor()F
    invoke-static {v0}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)F

    move-result v0

    return v0
.end method

.method public whitelist getHorizontalScrollbarHeight()I
    .registers 2

    .line 2559
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I
    invoke-static {v0}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)I

    move-result v0

    return v0
.end method

.method public whitelist getVerticalScrollFactor()F
    .registers 2

    .line 2543
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/webkit/WebView;->getVerticalScrollFactor()F
    invoke-static {v0}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)F

    move-result v0

    return v0
.end method

.method public whitelist onScrollChanged(IIII)V
    .registers 6

    .line 2555
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2556
    return-void
.end method

.method public whitelist overScrollBy(IIIIIIIIZ)V
    .registers 11

    .line 2530
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    move-object p0, v0

    # invokes: Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {p0 .. p9}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;IIIIIIIIZ)Z

    .line 2532
    return-void
.end method

.method public whitelist setMeasuredDimension(II)V
    .registers 4

    .line 2551
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/webkit/WebView;->setMeasuredDimension(II)V
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;II)V

    .line 2552
    return-void
.end method

.method public whitelist setScrollXRaw(I)V
    .registers 3

    .line 2570
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # setter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;I)I

    .line 2571
    return-void
.end method

.method public whitelist setScrollYRaw(I)V
    .registers 3

    .line 2575
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # setter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$2202(Landroid/webkit/WebView;I)I

    .line 2576
    return-void
.end method

.method public whitelist super_computeScroll()V
    .registers 2

    .line 2477
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->computeScroll()V
    invoke-static {v0}, Landroid/webkit/WebView;->access$201(Landroid/webkit/WebView;)V

    .line 2478
    return-void
.end method

.method public whitelist super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 2497
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$701(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist super_getScrollBarStyle()I
    .registers 2

    .line 2469
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->getScrollBarStyle()I
    invoke-static {v0}, Landroid/webkit/WebView;->access$001(Landroid/webkit/WebView;)I

    move-result v0

    return v0
.end method

.method public whitelist super_onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 2521
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$1201(Landroid/webkit/WebView;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public whitelist super_onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 8

    .line 2564
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    move-object p0, v0

    # invokes: Landroid/widget/AbsoluteLayout;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    invoke-static/range {p0 .. p6}, Landroid/webkit/WebView;->access$2001(Landroid/webkit/WebView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 2565
    return-void
.end method

.method public whitelist super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 2501
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$801(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist super_onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 2481
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$301(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist super_performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 4

    .line 2485
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$401(Landroid/webkit/WebView;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public whitelist super_performLongClick()Z
    .registers 2

    .line 2489
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->performLongClick()Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$501(Landroid/webkit/WebView;)Z

    move-result v0

    return v0
.end method

.method public whitelist super_requestFocus(ILandroid/graphics/Rect;)Z
    .registers 4

    .line 2505
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->requestFocus(ILandroid/graphics/Rect;)Z
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$901(Landroid/webkit/WebView;ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public whitelist super_scrollTo(II)V
    .registers 4

    .line 2473
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->scrollTo(II)V
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$101(Landroid/webkit/WebView;II)V

    .line 2474
    return-void
.end method

.method public whitelist super_setFrame(IIII)Z
    .registers 6

    .line 2493
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->setFrame(IIII)Z
    invoke-static {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->access$601(Landroid/webkit/WebView;IIII)Z

    move-result p1

    return p1
.end method

.method public whitelist super_setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 2509
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$1001(Landroid/webkit/WebView;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2510
    return-void
.end method

.method public whitelist super_startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    .line 2513
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    # invokes: Landroid/widget/AbsoluteLayout;->startActivityForResult(Landroid/content/Intent;I)V
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$1101(Landroid/webkit/WebView;Landroid/content/Intent;I)V

    .line 2514
    return-void
.end method
