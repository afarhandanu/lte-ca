.class public Landroid/text/method/BaseMovementMethod;
.super Ljava/lang/Object;
.source "BaseMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o getBottomLine(Landroid/widget/TextView;)I
    .registers 4

    .line 437
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    return p1
.end method

.method private greylist-max-o getCharacterWidth(Landroid/widget/TextView;)I
    .registers 4

    .line 449
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private greylist-max-o getInnerHeight(Landroid/widget/TextView;)I
    .registers 4

    .line 445
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private greylist-max-o getInnerWidth(Landroid/widget/TextView;)I
    .registers 4

    .line 441
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private greylist-max-o getScrollBoundsLeft(Landroid/widget/TextView;)I
    .registers 7

    .line 453
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 454
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v1

    .line 455
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result p1

    .line 456
    if-le v1, p1, :cond_10

    .line 457
    const/4 p1, 0x0

    return p1

    .line 459
    :cond_10
    nop

    .line 460
    const v2, 0x7fffffff

    :goto_14
    if-gt v1, p1, :cond_26

    .line 461
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 462
    if-ge v3, v2, :cond_23

    .line 463
    move v2, v3

    .line 460
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 466
    :cond_26
    return v2
.end method

.method private greylist-max-o getScrollBoundsRight(Landroid/widget/TextView;)I
    .registers 7

    .line 470
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 471
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v1

    .line 472
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result p1

    .line 473
    if-le v1, p1, :cond_10

    .line 474
    const/4 p1, 0x0

    return p1

    .line 476
    :cond_10
    nop

    .line 477
    const/high16 v2, -0x80000000

    :goto_13
    if-gt v1, p1, :cond_25

    .line 478
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 479
    if-le v3, v2, :cond_22

    .line 480
    move v2, v3

    .line 477
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 483
    :cond_25
    return v2
.end method

.method private greylist-max-o getTopLine(Landroid/widget/TextView;)I
    .registers 3

    .line 433
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected whitelist bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 345
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist canSelectArbitrarily()Z
    .registers 2

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 297
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 407
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I
    .registers 3

    .line 140
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result p1

    and-int/lit16 p1, p1, -0x601

    .line 142
    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    and-int/lit16 p1, p1, -0xc2

    return p1
.end method

.method protected whitelist handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .registers 7

    .line 164
    const/16 p5, 0x1000

    const/4 v0, 0x2

    sparse-switch p3, :sswitch_data_e6

    goto/16 :goto_e4

    .line 241
    :sswitch_8
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 242
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->end(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 243
    :cond_13
    invoke-static {p4, p5}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_e4

    .line 245
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 232
    :sswitch_1e
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_29

    .line 233
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->home(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 234
    :cond_29
    invoke-static {p4, p5}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_e4

    .line 236
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 223
    :sswitch_34
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_3f

    .line 224
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 225
    :cond_3f
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_e4

    .line 227
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 214
    :sswitch_4a
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_55

    .line 215
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 216
    :cond_55
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_e4

    .line 218
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 178
    :sswitch_60
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_6b

    .line 179
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 180
    :cond_6b
    invoke-static {p4, p5}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_76

    .line 182
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 183
    :cond_76
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_e4

    .line 185
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 166
    :sswitch_81
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_8c

    .line 167
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 168
    :cond_8c
    invoke-static {p4, p5}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_97

    .line 170
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 171
    :cond_97
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_e4

    .line 173
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 202
    :sswitch_a2
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_ad

    .line 203
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 204
    :cond_ad
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_b8

    .line 206
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 207
    :cond_b8
    invoke-static {p4, p5}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_e4

    .line 209
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->nextParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 190
    :sswitch_c3
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_ce

    .line 191
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 192
    :cond_ce
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_d9

    .line 194
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 195
    :cond_d9
    invoke-static {p4, p5}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_e4

    .line 197
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->previousParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p1

    return p1

    .line 249
    :cond_e4
    :goto_e4
    const/4 p1, 0x0

    return p1

    :sswitch_data_e6
    .sparse-switch
        0x13 -> :sswitch_c3
        0x14 -> :sswitch_a2
        0x15 -> :sswitch_81
        0x16 -> :sswitch_60
        0x5c -> :sswitch_4a
        0x5d -> :sswitch_34
        0x7a -> :sswitch_1e
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method protected whitelist home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 393
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 3

    .line 39
    return-void
.end method

.method protected whitelist left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 261
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 374
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 369
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 357
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist nextParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 429
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 10

    .line 96
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    .line 97
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_72

    goto :goto_70

    .line 101
    :pswitch_11
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_23

    .line 102
    nop

    .line 103
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p3

    move v0, v3

    goto :goto_2e

    .line 105
    :cond_23
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    .line 106
    const/16 v2, 0xa

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p3

    .line 109
    :goto_2e
    nop

    .line 110
    cmpg-float v2, p3, v3

    if-gez v2, :cond_40

    .line 111
    neg-float p3, p3

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p3, v4

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/method/BaseMovementMethod;->scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p3

    or-int/2addr v1, p3

    goto :goto_4f

    .line 112
    :cond_40
    cmpl-float v2, p3, v3

    if-lez v2, :cond_4f

    .line 113
    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p3, v4

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/method/BaseMovementMethod;->scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p3

    or-int/2addr v1, p3

    .line 115
    :cond_4f
    :goto_4f
    cmpg-float p3, v0, v3

    if-gez p3, :cond_60

    .line 116
    neg-float p3, v0

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p3, v2

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/method/BaseMovementMethod;->scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p1

    or-int/2addr v1, p1

    goto :goto_6f

    .line 117
    :cond_60
    cmpl-float p3, v0, v3

    if-lez p3, :cond_6f

    .line 118
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p3, v2

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/method/BaseMovementMethod;->scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p1

    or-int/2addr v1, p1

    .line 120
    :cond_6f
    :goto_6f
    return v1

    .line 124
    :cond_70
    :goto_70
    return v1

    nop

    :pswitch_data_72
    .packed-switch 0x8
        :pswitch_11
    .end packed-switch
.end method

.method public whitelist onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 11

    .line 43
    invoke-virtual {p0, p2, p4}, Landroid/text/method/BaseMovementMethod;->getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    move-result v4

    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result p1

    .line 45
    if-eqz p1, :cond_15

    .line 46
    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 47
    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 49
    :cond_15
    return p1
.end method

.method public whitelist onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .registers 13

    .line 54
    invoke-virtual {p0, p2, p3}, Landroid/text/method/BaseMovementMethod;->getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    move-result v4

    .line 55
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 56
    const/4 v0, 0x0

    if-eqz v3, :cond_38

    .line 57
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    .line 58
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 59
    nop

    .line 60
    move v7, v0

    move v8, v7

    :goto_19
    if-ge v7, v6, :cond_2e

    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 62
    goto :goto_2f

    .line 64
    :cond_26
    nop

    .line 60
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    move-object p1, v1

    move-object p2, v2

    move-object p3, v5

    goto :goto_19

    :cond_2e
    move-object v2, p2

    .line 66
    :goto_2f
    if-eqz v8, :cond_37

    .line 67
    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 68
    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 70
    :cond_37
    return v8

    .line 72
    :cond_38
    return v0
.end method

.method public whitelist onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 77
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 4

    .line 82
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 86
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 91
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 321
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 309
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist previousParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 418
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 273
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 379
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o scrollBottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 6

    .line 656
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    .line 657
    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 658
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    if-gt v1, v2, :cond_22

    .line 659
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 660
    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 659
    invoke-static {p1, p2, v1, v0}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 661
    const/4 p1, 0x1

    return p1

    .line 663
    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 10

    .line 566
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    .line 567
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v0

    .line 568
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    add-int/2addr v1, v0

    .line 569
    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 570
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v1, v5

    if-ge v4, v1, :cond_1c

    .line 574
    move v2, v3

    .line 576
    :cond_1c
    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v5

    .line 577
    if-gt v2, v1, :cond_37

    .line 578
    add-int/2addr v2, p3

    sub-int/2addr v2, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 579
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    add-int/2addr p3, v5

    .line 580
    invoke-virtual {p2, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result p3

    sub-int/2addr p3, v0

    .line 579
    invoke-static {p1, p2, v1, p3}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 581
    return v5

    .line 583
    :cond_37
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 6

    .line 497
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsLeft(Landroid/widget/TextView;)I

    move-result p2

    .line 498
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    .line 499
    if-le v0, p2, :cond_1d

    .line 500
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getCharacterWidth(Landroid/widget/TextView;)I

    move-result v1

    mul-int/2addr v1, p3

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 501
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 502
    const/4 p1, 0x1

    return p1

    .line 504
    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o scrollLineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    .line 695
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsRight(Landroid/widget/TextView;)I

    move-result p2

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerWidth(Landroid/widget/TextView;)I

    move-result v0

    sub-int/2addr p2, v0

    .line 696
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    .line 697
    if-ge v0, p2, :cond_18

    .line 698
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->scrollTo(II)V

    .line 699
    const/4 p1, 0x1

    return p1

    .line 701
    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o scrollLineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4

    .line 676
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsLeft(Landroid/widget/TextView;)I

    move-result p2

    .line 677
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    .line 678
    if-le v0, p2, :cond_13

    .line 679
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->scrollTo(II)V

    .line 680
    const/4 p1, 0x1

    return p1

    .line 682
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o scrollPageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 7

    .line 616
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    .line 617
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v0

    .line 618
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    .line 619
    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 620
    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_28

    .line 621
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    add-int/2addr v1, v3

    .line 622
    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 621
    invoke-static {p1, p2, v2, v1}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 623
    return v3

    .line 625
    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o scrollPageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5

    .line 596
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    .line 597
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 598
    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 599
    if-ltz v0, :cond_20

    .line 600
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-static {p1, p2, v1, v0}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 601
    const/4 p1, 0x1

    return p1

    .line 603
    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 6

    .line 518
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsRight(Landroid/widget/TextView;)I

    move-result p2

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerWidth(Landroid/widget/TextView;)I

    move-result v0

    sub-int/2addr p2, v0

    .line 519
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    .line 520
    if-ge v0, p2, :cond_22

    .line 521
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getCharacterWidth(Landroid/widget/TextView;)I

    move-result v1

    mul-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 522
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 523
    const/4 p1, 0x1

    return p1

    .line 525
    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o scrollTop(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 5

    .line 638
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    .line 639
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_18

    .line 640
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 641
    const/4 p1, 0x1

    return p1

    .line 643
    :cond_18
    return v1
.end method

.method protected greylist-max-o scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 7

    .line 539
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    .line 540
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    .line 541
    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 542
    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    if-ne v2, v0, :cond_14

    .line 545
    add-int/lit8 v1, v1, -0x1

    .line 547
    :cond_14
    const/4 v0, 0x0

    if-ltz v1, :cond_2a

    .line 548
    sub-int/2addr v1, p3

    const/4 p3, 0x1

    add-int/2addr v1, p3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 549
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-static {p1, p2, v1, v0}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 550
    return p3

    .line 552
    :cond_2a
    return v0
.end method

.method protected whitelist top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 333
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 3

    .line 285
    const/4 p1, 0x0

    return p1
.end method
