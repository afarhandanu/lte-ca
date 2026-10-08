.class public Landroid/text/method/Touch;
.super Ljava/lang/Object;
.source "Touch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/Touch$DragState;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .registers 4

    .line 186
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p0

    const-class v0, Landroid/text/method/Touch$DragState;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p0, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/method/Touch$DragState;

    .line 187
    array-length p1, p0

    if-lez p1, :cond_15

    aget-object p0, p0, v1

    iget p0, p0, Landroid/text/method/Touch$DragState;->mScrollX:I

    goto :goto_16

    :cond_15
    const/4 p0, -0x1

    :goto_16
    return p0
.end method

.method public static whitelist getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .registers 4

    .line 195
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p0

    const-class v0, Landroid/text/method/Touch$DragState;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p0, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/method/Touch$DragState;

    .line 196
    array-length p1, p0

    if-lez p1, :cond_15

    aget-object p0, p0, v1

    iget p0, p0, Landroid/text/method/Touch$DragState;->mScrollY:I

    goto :goto_16

    :cond_15
    const/4 p0, -0x1

    :goto_16
    return p0
.end method

.method public static whitelist onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 9

    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_14a

    goto/16 :goto_149

    .line 120
    :pswitch_b
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v2, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 122
    array-length v3, v0

    if-lez v3, :cond_149

    .line 123
    aget-object v3, v0, v2

    iget-boolean v3, v3, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-nez v3, :cond_53

    .line 124
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget-object v5, v0, v2

    iget v5, v5, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v3, v3

    cmpl-float v4, v4, v3

    if-gez v4, :cond_4f

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aget-object v5, v0, v2

    iget v5, v5, Landroid/text/method/Touch$DragState;->mY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_53

    .line 128
    :cond_4f
    aget-object v3, v0, v2

    iput-boolean v1, v3, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    .line 132
    :cond_53
    aget-object v3, v0, v2

    iget-boolean v3, v3, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-eqz v3, :cond_149

    .line 133
    aget-object v3, v0, v2

    iput-boolean v1, v3, Landroid/text/method/Touch$DragState;->mUsed:Z

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/2addr v3, v1

    if-nez v3, :cond_75

    .line 135
    invoke-static {p1, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v1, :cond_75

    .line 137
    const/16 v3, 0x800

    invoke-static {p1, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result p1

    if-eqz p1, :cond_73

    goto :goto_75

    :cond_73
    move p1, v2

    goto :goto_76

    :cond_75
    :goto_75
    move p1, v1

    .line 142
    :goto_76
    if-eqz p1, :cond_8b

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    aget-object v3, v0, v2

    iget v3, v3, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr p1, v3

    .line 146
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aget-object v4, v0, v2

    iget v4, v4, Landroid/text/method/Touch$DragState;->mY:F

    sub-float/2addr v3, v4

    goto :goto_9d

    .line 148
    :cond_8b
    aget-object p1, v0, v2

    iget p1, p1, Landroid/text/method/Touch$DragState;->mX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr p1, v3

    .line 149
    aget-object v3, v0, v2

    iget v3, v3, Landroid/text/method/Touch$DragState;->mY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 151
    :goto_9d
    aget-object v4, v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/text/method/Touch$DragState;->mX:F

    .line 152
    aget-object v0, v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, v0, Landroid/text/method/Touch$DragState;->mY:F

    .line 154
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result p2

    float-to-int p1, p1

    add-int/2addr p2, p1

    .line 155
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result p1

    float-to-int v0, v3

    add-int/2addr p1, v0

    .line 157
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    .line 158
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    sub-int/2addr v4, v5

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 161
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 163
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    .line 164
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    .line 166
    invoke-static {p0, v3, p2, p1}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 169
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result p1

    if-ne v0, p1, :cond_ef

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result p1

    if-eq v2, p1, :cond_f2

    .line 170
    :cond_ef
    invoke-virtual {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 173
    :cond_f2
    return v1

    .line 107
    :pswitch_f3
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p0

    const-class p2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v2, p0, p2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/method/Touch$DragState;

    .line 109
    move p2, v2

    :goto_100
    array-length v0, p0

    if-ge p2, v0, :cond_10b

    .line 110
    aget-object v0, p0, p2

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 109
    add-int/lit8 p2, p2, 0x1

    goto :goto_100

    .line 113
    :cond_10b
    array-length p1, p0

    if-lez p1, :cond_115

    aget-object p0, p0, v2

    iget-boolean p0, p0, Landroid/text/method/Touch$DragState;->mUsed:Z

    if-eqz p0, :cond_115

    .line 114
    return v1

    .line 116
    :cond_115
    return v2

    .line 95
    :pswitch_116
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v2, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 97
    move v3, v2

    :goto_123
    array-length v4, v0

    if-ge v3, v4, :cond_12e

    .line 98
    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_123

    .line 101
    :cond_12e
    new-instance v0, Landroid/text/method/Touch$DragState;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 102
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result p0

    invoke-direct {v0, v3, p2, v4, p0}, Landroid/text/method/Touch$DragState;-><init>(FFII)V

    .line 101
    const/16 p0, 0x11

    invoke-interface {p1, v0, v2, v2, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 104
    return v1

    .line 178
    :cond_149
    :goto_149
    return v2

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_116
        :pswitch_f3
        :pswitch_b
    .end packed-switch
.end method

.method public static whitelist scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V
    .registers 13

    .line 39
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    .line 42
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v2

    .line 44
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    move v3, v4

    .line 47
    :goto_20
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 48
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 49
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int/2addr v6, p3

    sub-int/2addr v6, v5

    invoke-virtual {p1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    .line 51
    nop

    .line 52
    nop

    .line 54
    const v6, 0x7fffffff

    move v8, v6

    move v6, v4

    move v4, v8

    :goto_41
    if-gt v0, v5, :cond_5a

    .line 55
    int-to-float v4, v4

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    .line 56
    int-to-float v6, v6

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 58
    :cond_5a
    goto :goto_5d

    .line 59
    :cond_5b
    nop

    .line 60
    move v6, v1

    .line 63
    :goto_5d
    sub-int p1, v6, v4

    .line 65
    if-ge p1, v1, :cond_7e

    .line 66
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v2, p2, :cond_6a

    .line 67
    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v4, v1

    goto :goto_87

    .line 68
    :cond_6a
    if-eqz v3, :cond_70

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-eq v2, p2, :cond_7a

    :cond_70
    if-nez v3, :cond_76

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v2, p2, :cond_7a

    :cond_76
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v2, p2, :cond_7d

    .line 73
    :cond_7a
    sub-int/2addr v1, p1

    sub-int/2addr v4, v1

    goto :goto_87

    .line 75
    :cond_7d
    goto :goto_87

    .line 78
    :cond_7e
    sub-int/2addr v6, v1

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 79
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 82
    :goto_87
    invoke-virtual {p0, v4, p3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 83
    return-void
.end method
