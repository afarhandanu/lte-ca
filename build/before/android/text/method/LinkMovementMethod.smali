.class public Landroid/text/method/LinkMovementMethod;
.super Landroid/text/method/ScrollingMovementMethod;
.source "LinkMovementMethod.java"


# static fields
.field private static final greylist-max-o CLICK:I = 0x1

.field private static final greylist-max-o DOWN:I = 0x3

.field private static greylist-max-o FROM_BELOW:Ljava/lang/Object; = null

.field private static final greylist-max-o HIDE_FLOATING_TOOLBAR_DELAY_MS:I = 0xc8

.field private static final greylist-max-o UP:I = 0x2

.field private static greylist sInstance:Landroid/text/method/LinkMovementMethod;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 293
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    return-void
.end method

.method private greylist-max-o action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 12

    .line 103
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 104
    invoke-virtual {p2}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 106
    return v2

    .line 109
    :cond_c
    invoke-virtual {p2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    .line 110
    invoke-virtual {p2}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    .line 111
    invoke-virtual {p2}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    .line 112
    invoke-virtual {p2}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    sub-int/2addr v4, v1

    .line 114
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 115
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 117
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 118
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 120
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {p3, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 122
    invoke-static {p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 123
    invoke-static {p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    .line 125
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 126
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 128
    if-gez v6, :cond_56

    .line 129
    sget-object v5, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p3, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_56

    .line 130
    invoke-interface {p3}, Landroid/text/Spannable;->length()I

    move-result v6

    move v4, v6

    .line 134
    :cond_56
    const v5, 0x7fffffff

    if-le v6, v0, :cond_5d

    .line 135
    move v4, v5

    move v6, v4

    .line 136
    :cond_5d
    const/4 v0, -0x1

    if-ge v4, v1, :cond_62

    .line 137
    move v4, v0

    move v6, v4

    .line 139
    :cond_62
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_d2

    goto/16 :goto_d0

    .line 184
    :pswitch_68
    nop

    .line 185
    nop

    .line 187
    move p1, v2

    move p2, v5

    move v0, p2

    :goto_6d
    array-length v7, v3

    if-ge p1, v7, :cond_87

    .line 188
    aget-object v7, v3, p1

    invoke-interface {p3, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 190
    if-gt v7, v6, :cond_7a

    if-ne v6, v4, :cond_84

    .line 191
    :cond_7a
    if-ge v7, v0, :cond_84

    .line 192
    nop

    .line 193
    aget-object p2, v3, p1

    invoke-interface {p3, p2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    move v0, v7

    .line 187
    :cond_84
    add-int/lit8 p1, p1, 0x1

    goto :goto_6d

    .line 198
    :cond_87
    if-ge p2, v5, :cond_d0

    .line 199
    invoke-static {p3, v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 200
    return v1

    .line 162
    :pswitch_8d
    nop

    .line 163
    nop

    .line 165
    move p1, v0

    move p2, v2

    :goto_91
    array-length v5, v3

    if-ge p2, v5, :cond_ab

    .line 166
    aget-object v5, v3, p2

    invoke-interface {p3, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 168
    if-lt v5, v4, :cond_9e

    if-ne v6, v4, :cond_a8

    .line 169
    :cond_9e
    if-le v5, p1, :cond_a8

    .line 170
    aget-object p1, v3, p2

    invoke-interface {p3, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    .line 171
    move v0, p1

    move p1, v5

    .line 165
    :cond_a8
    add-int/lit8 p2, p2, 0x1

    goto :goto_91

    .line 176
    :cond_ab
    if-ltz v0, :cond_d0

    .line 177
    invoke-static {p3, p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 178
    return v1

    .line 141
    :pswitch_b1
    if-ne v6, v4, :cond_b4

    .line 142
    return v2

    .line 145
    :cond_b4
    const-class p1, Landroid/text/style/ClickableSpan;

    invoke-interface {p3, v6, v4, p1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 147
    array-length p3, p1

    if-eq p3, v1, :cond_c0

    .line 148
    return v2

    .line 151
    :cond_c0
    aget-object p1, p1, v2

    .line 152
    instance-of p3, p1, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    if-eqz p3, :cond_cc

    .line 153
    check-cast p1, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-virtual {p1, p2, v1}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    goto :goto_d0

    .line 155
    :cond_cc
    invoke-virtual {p1, p2}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 157
    nop

    .line 206
    :cond_d0
    :goto_d0
    return v2

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_8d
        :pswitch_68
    .end packed-switch
.end method

.method public static whitelist getInstance()Landroid/text/method/MovementMethod;
    .registers 1

    .line 285
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_b

    .line 286
    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    .line 288
    :cond_b
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public whitelist canSelectArbitrarily()Z
    .registers 2

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    .line 77
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 78
    const/4 p1, 0x1

    return p1

    .line 81
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method protected whitelist handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .registers 8

    .line 52
    sparse-switch p3, :sswitch_data_24

    goto :goto_1e

    .line 55
    :sswitch_4
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 56
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1e

    .line 57
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 58
    return v0

    .line 63
    :cond_1e
    :goto_1e
    invoke-super/range {p0 .. p5}, Landroid/text/method/ScrollingMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_24
    .sparse-switch
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method public whitelist initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 3

    .line 269
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 270
    sget-object p1, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method protected whitelist left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    .line 86
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 87
    const/4 p1, 0x1

    return p1

    .line 90
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method public whitelist onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 5

    .line 275
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 277
    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_10

    .line 278
    sget-object p1, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    const/16 p3, 0x22

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, v0, p3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_15

    .line 280
    :cond_10
    sget-object p1, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 282
    :goto_15
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 11

    .line 212
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 214
    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_98

    .line 215
    :cond_9
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 216
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 218
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 219
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 221
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    .line 222
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 224
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 226
    const/4 v5, 0x0

    if-ltz v3, :cond_5a

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v6

    if-le v3, v6, :cond_35

    goto :goto_5a

    .line 229
    :cond_35
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 230
    int-to-float v2, v2

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    cmpg-float v6, v2, v6

    if-ltz v6, :cond_59

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_4b

    goto :goto_59

    .line 233
    :cond_4b
    invoke-virtual {v4, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 234
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v2, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [Landroid/text/style/ClickableSpan;

    goto :goto_5b

    .line 231
    :cond_59
    :goto_59
    goto :goto_5b

    .line 227
    :cond_5a
    :goto_5a
    nop

    .line 238
    :goto_5b
    if-eqz v5, :cond_95

    array-length v2, v5

    if-eqz v2, :cond_95

    .line 239
    const/4 p3, 0x0

    aget-object v2, v5, p3

    .line 240
    if-ne v0, v1, :cond_73

    .line 241
    instance-of p2, v2, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    if-eqz p2, :cond_6f

    .line 242
    check-cast v2, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-virtual {v2, p1, p3}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    goto :goto_94

    .line 245
    :cond_6f
    invoke-virtual {v2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_94

    .line 247
    :cond_73
    if-nez v0, :cond_94

    .line 248
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1c

    if-lt p3, v0, :cond_88

    .line 252
    const/16 p3, 0xc8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->hideFloatingToolbar(I)V

    .line 254
    :cond_88
    nop

    .line 255
    invoke-interface {p2, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    .line 256
    invoke-interface {p2, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    .line 254
    invoke-static {p2, p1, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 258
    :cond_94
    :goto_94
    return v1

    .line 260
    :cond_95
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 264
    :cond_98
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ScrollingMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected whitelist right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    .line 95
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 96
    const/4 p1, 0x1

    return p1

    .line 99
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method

.method protected whitelist up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    .line 68
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 69
    const/4 p1, 0x1

    return p1

    .line 72
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1
.end method
