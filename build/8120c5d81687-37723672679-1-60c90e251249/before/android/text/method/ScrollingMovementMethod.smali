.class public Landroid/text/method/ScrollingMovementMethod;
.super Landroid/text/method/BaseMovementMethod;
.source "ScrollingMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# static fields
.field private static greylist-max-o sInstance:Landroid/text/method/ScrollingMovementMethod;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/text/method/BaseMovementMethod;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/MovementMethod;
    .registers 1

    .line 115
    sget-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    if-nez v0, :cond_b

    .line 116
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    .line 118
    :cond_b
    sget-object v0, Landroid/text/method/ScrollingMovementMethod;->sInstance:Landroid/text/method/ScrollingMovementMethod;

    return-object v0
.end method


# virtual methods
.method protected whitelist bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollBottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method protected whitelist down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/ScrollingMovementMethod;->scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p1

    return p1
.end method

.method protected whitelist end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method protected whitelist home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method protected whitelist left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/ScrollingMovementMethod;->scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p1

    return p1
.end method

.method protected whitelist lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 77
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollLineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method protected whitelist lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollLineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public whitelist onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 6

    .line 97
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    .line 99
    if-eqz p2, :cond_16

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_16

    .line 100
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->scrollTo(II)V

    .line 103
    :cond_16
    if-eqz p2, :cond_3e

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_3e

    .line 104
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result p3

    .line 105
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v0

    add-int/2addr p3, v0

    .line 106
    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 108
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 109
    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result p2

    .line 110
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    sub-int/2addr p2, v0

    .line 108
    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 112
    :cond_3e
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 92
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected whitelist pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollPageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method protected whitelist pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollPageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method protected whitelist right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/ScrollingMovementMethod;->scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p1

    return p1
.end method

.method protected whitelist top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->scrollTop(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method protected whitelist up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/ScrollingMovementMethod;->scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p1

    return p1
.end method
