.class public final Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final greylist-max-o mHandleType:I

.field private greylist-max-o mInWord:Z

.field private greylist-max-o mLanguageDirectionChanged:Z

.field private greylist-max-o mPrevX:F

.field private final greylist-max-o mTextViewEdgeSlop:F

.field private final greylist-max-o mTextViewLocation:[I

.field private greylist-max-o mTouchWordDelta:F

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 6210
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 6211
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor-IA;)V

    .line 6196
    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 6202
    iput-boolean p1, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 6207
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, v0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 6212
    iput p5, v0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    .line 6213
    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 6214
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    iput p1, v0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    .line 6215
    return-void
.end method

.method private greylist-max-o getHorizontal(Landroid/text/Layout;IZ)F
    .registers 8

    .line 6534
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result p2

    .line 6536
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 6538
    const/4 v2, 0x0

    if-eqz p3, :cond_14

    move p3, p2

    goto :goto_1a

    :cond_14
    add-int/lit8 p3, p2, -0x1

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 6539
    :goto_1a
    invoke-virtual {p1, p3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result p3

    .line 6540
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    .line 6541
    :goto_27
    if-eq p3, v1, :cond_2e

    .line 6542
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result p1

    return p1

    .line 6544
    :cond_2e
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    return p1
.end method

.method private greylist-max-o isStartHandle()Z
    .registers 2

    .line 6218
    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o positionAndAdjustForCrossingHandles(IZ)V
    .registers 10

    .line 6469
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 6470
    :goto_1b
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    if-ge p1, v0, :cond_2c

    .line 6471
    :cond_24
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-nez v1, :cond_a9

    if-gt p1, v0, :cond_a9

    .line 6472
    :cond_2c
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6473
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 6474
    const/4 v3, 0x1

    if-eqz v1, :cond_9e

    if-eq p1, v0, :cond_9e

    .line 6475
    invoke-virtual {p0, v1, p1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result p1

    .line 6476
    nop

    .line 6477
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v4

    .line 6476
    xor-int/2addr v4, v3

    invoke-direct {p0, v1, v0, v4}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v4

    .line 6478
    iget v5, p0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {p0, v1, v5}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v5

    .line 6479
    cmpg-float v6, v5, v4

    if-gez v6, :cond_5a

    cmpg-float v6, p1, v4

    if-ltz v6, :cond_62

    :cond_5a
    cmpl-float v5, v5, v4

    if-lez v5, :cond_9e

    cmpl-float p1, p1, v4

    if-lez p1, :cond_9e

    .line 6483
    :cond_62
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result p1

    .line 6484
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 6485
    goto :goto_73

    :cond_6d
    add-int/lit8 p1, p1, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6486
    :goto_73
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getRunRange(I)J

    move-result-wide v0

    .line 6488
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 6489
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result p1

    goto :goto_90

    .line 6491
    :cond_8c
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p1

    .line 6493
    :goto_90
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result p1

    .line 6495
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 6496
    return-void

    .line 6500
    :cond_9e
    iget-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {p1, v0, v1}, Landroid/widget/Editor;->-$$Nest$mgetNextCursorOffset(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 6502
    :cond_a9
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 6503
    return-void
.end method

.method private greylist-max-o positionNearEdgeOfScrollingView(FZ)Z
    .registers 6

    .line 6506
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 6508
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_38

    .line 6509
    iget-object p2, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget p2, p2, v2

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 6510
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 6511
    int-to-float p2, p2

    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr p2, v0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    .line 6512
    :goto_37
    goto :goto_51

    .line 6513
    :cond_38
    iget-object p2, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget p2, p2, v2

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p2, v0

    .line 6514
    int-to-float p2, p2

    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr p2, v0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_50

    goto :goto_51

    :cond_50
    move v1, v2

    .line 6516
    :goto_51
    return v1
.end method


# virtual methods
.method public greylist-max-o getCurrentCursorOffset()I
    .registers 2

    .line 6237
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    :goto_1b
    return v0
.end method

.method public greylist-max-o getHorizontal(Landroid/text/Layout;I)F
    .registers 4

    .line 6530
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result p1

    return p1
.end method

.method protected greylist-max-o getHorizontalGravity(Z)I
    .registers 3

    .line 6232
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x3

    goto :goto_9

    :cond_8
    const/4 p1, 0x5

    :goto_9
    return p1
.end method

.method protected greylist-max-o getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4

    .line 6223
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p2, v0, :cond_d

    .line 6224
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    return p1

    .line 6226
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x4

    return p1
.end method

.method protected greylist-max-o getMagnifierHandleTrigger()I
    .registers 2

    .line 6577
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6578
    const/4 v0, 0x1

    goto :goto_9

    .line 6579
    :cond_8
    const/4 v0, 0x2

    .line 6577
    :goto_9
    return v0
.end method

.method protected greylist-max-o getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .registers 10

    .line 6549
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p3

    .line 6550
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v1

    .line 6551
    invoke-virtual {p1, v1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v2

    if-nez v2, :cond_20

    .line 6552
    iget-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result p1

    return p1

    .line 6555
    :cond_20
    const/4 v2, 0x0

    invoke-virtual {p1, p2, p3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result p3

    .line 6556
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v3

    .line 6558
    sub-int v4, v1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 6559
    sub-int v5, p3, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 6561
    if-ge v4, v5, :cond_42

    .line 6562
    goto :goto_63

    .line 6563
    :cond_42
    if-le v4, v5, :cond_46

    .line 6564
    move v1, p3

    goto :goto_63

    .line 6566
    :cond_46
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 6567
    goto :goto_53

    :cond_4d
    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 6568
    :goto_53
    invoke-virtual {p1, v3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    .line 6569
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_5f

    move v2, v0

    .line 6570
    :cond_5f
    if-ne v3, v2, :cond_62

    goto :goto_63

    :cond_62
    move v1, p3

    .line 6572
    :goto_63
    iget-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result p1

    return p1
.end method

.method protected greylist-max-o isAtRtlRun(Landroid/text/Layout;I)Z
    .registers 5

    .line 6521
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 6522
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result p2

    .line 6523
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_18

    .line 6524
    :cond_12
    add-int/lit8 p2, p2, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6525
    :goto_18
    invoke-virtual {p1, p2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result p1

    return p1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 6440
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->isFromPrimePointer(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 6441
    return v1

    .line 6443
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 6445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    goto :goto_2d

    .line 6455
    :pswitch_1a
    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 6456
    goto :goto_2d

    .line 6460
    :pswitch_1e
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->dismissMagnifier()V

    goto :goto_2d

    .line 6449
    :pswitch_22
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6450
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 6451
    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 6452
    nop

    .line 6464
    :goto_2d
    return v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_1e
    .end packed-switch
.end method

.method protected greylist-max-o positionAtCursorOffset(IZZ)V
    .registers 4

    .line 6434
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 6435
    const/4 p2, -0x1

    if-eq p1, p2, :cond_14

    iget-object p2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p2}, Landroid/widget/Editor;->-$$Nest$mgetWordIteratorWithText(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-boolean p1, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 6436
    return-void
.end method

.method protected greylist-max-o updatePosition(FFZ)V
    .registers 20

    .line 6257
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 6258
    if-nez v4, :cond_22

    .line 6261
    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6263
    return-void

    .line 6266
    :cond_22
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_33

    .line 6267
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v5

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 6270
    :cond_33
    nop

    .line 6272
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_45

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    goto :goto_4f

    :cond_45
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 6273
    :goto_4f
    iget-object v7, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget v8, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v7, v4, v8, v2}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v2

    .line 6274
    invoke-virtual {v0, v4, v2, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v7

    .line 6276
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v8

    if-eqz v8, :cond_63

    if-ge v7, v5, :cond_6b

    .line 6277
    :cond_63
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v8

    if-nez v8, :cond_73

    if-gt v7, v5, :cond_73

    .line 6280
    :cond_6b
    invoke-virtual {v0, v4, v5}, Landroid/widget/Editor$SelectionHandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v2

    .line 6281
    invoke-virtual {v0, v4, v2, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v7

    .line 6284
    :cond_73
    nop

    .line 6285
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5, v7}, Landroid/widget/Editor;->-$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I

    move-result v5

    .line 6286
    iget-object v8, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8, v7}, Landroid/widget/Editor;->-$$Nest$mgetWordStart(Landroid/widget/Editor;I)I

    move-result v8

    .line 6288
    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_8a

    .line 6289
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 6292
    :cond_8a
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v9

    .line 6293
    invoke-virtual {v0, v4, v9}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v10

    .line 6294
    invoke-virtual {v0, v4, v7}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v11

    .line 6295
    iget-object v12, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    .line 6296
    const/4 v13, 0x1

    invoke-virtual {v12, v7, v13}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v12

    .line 6295
    invoke-virtual {v4, v12}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v12

    .line 6301
    const/4 v14, 0x0

    if-nez v12, :cond_27b

    if-eqz v10, :cond_ac

    if-eqz v11, :cond_27b

    :cond_ac
    if-nez v10, :cond_b2

    if-eqz v11, :cond_b2

    goto/16 :goto_27b

    .line 6310
    :cond_b2
    iget-boolean v10, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    const/4 v12, 0x0

    if-eqz v10, :cond_bf

    .line 6313
    invoke-direct {v0, v7, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6314
    iput v14, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6315
    iput-boolean v12, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 6316
    return-void

    .line 6320
    :cond_bf
    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    sub-float v10, v1, v10

    .line 6321
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v15

    if-eqz v15, :cond_d1

    .line 6322
    iget v15, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-ge v2, v15, :cond_cf

    move v15, v13

    goto :goto_d8

    :cond_cf
    move v15, v12

    goto :goto_d8

    .line 6324
    :cond_d1
    iget v15, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-le v2, v15, :cond_d7

    move v15, v13

    goto :goto_d8

    :cond_d7
    move v15, v12

    .line 6326
    :goto_d8
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-ne v11, v6, :cond_e7

    .line 6327
    cmpl-float v6, v10, v14

    if-lez v6, :cond_e4

    move v6, v13

    goto :goto_e5

    :cond_e4
    move v6, v12

    :goto_e5
    or-int/2addr v6, v15

    goto :goto_ef

    .line 6329
    :cond_e7
    cmpg-float v6, v10, v14

    if-gez v6, :cond_ed

    move v6, v13

    goto :goto_ee

    :cond_ed
    move v6, v12

    :goto_ee
    or-int/2addr v6, v15

    .line 6332
    :goto_ef
    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v10

    if-eqz v10, :cond_157

    .line 6333
    invoke-direct {v0, v1, v11}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v10

    if-eqz v10, :cond_157

    .line 6334
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_113

    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollX()I

    move-result v10

    if-nez v10, :cond_12a

    .line 6335
    :cond_113
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_157

    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    .line 6336
    if-eqz v11, :cond_123

    const/4 v15, -0x1

    goto :goto_124

    :cond_123
    move v15, v13

    :goto_124
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v10

    if-eqz v10, :cond_157

    :cond_12a
    if-eqz v6, :cond_13c

    .line 6337
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_134

    if-lt v7, v9, :cond_13e

    .line 6338
    :cond_134
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_13c

    if-gt v7, v9, :cond_13e

    :cond_13c
    if-nez v6, :cond_157

    .line 6343
    :cond_13e
    iput v14, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6344
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-ne v11, v1, :cond_14d

    .line 6345
    iget v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    goto :goto_153

    .line 6346
    :cond_14d
    iget v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 6347
    :goto_153
    invoke-direct {v0, v1, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6348
    return-void

    .line 6352
    :cond_157
    if-eqz v6, :cond_1ed

    .line 6354
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_161

    move v6, v8

    goto :goto_162

    :cond_161
    move v6, v5

    .line 6355
    :goto_162
    iget-boolean v9, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    if-eqz v9, :cond_175

    .line 6356
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v9

    if-eqz v9, :cond_171

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v2, v9, :cond_17d

    goto :goto_175

    :cond_171
    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v2, v9, :cond_17d

    .line 6357
    :cond_175
    :goto_175
    invoke-virtual {v0, v4, v6}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v9

    if-ne v11, v9, :cond_17d

    move v12, v13

    goto :goto_17e

    :cond_17d
    nop

    .line 6358
    :goto_17e
    if-eqz v12, :cond_1c4

    .line 6362
    invoke-virtual {v0, v4, v6}, Landroid/widget/Editor$SelectionHandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v9

    if-eq v9, v2, :cond_195

    .line 6363
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_191

    .line 6364
    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    goto :goto_195

    :cond_191
    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 6366
    :cond_195
    :goto_195
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v9

    if-eqz v9, :cond_1a2

    .line 6367
    sub-int v6, v5, v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v5, v6

    goto :goto_1a6

    .line 6368
    :cond_1a2
    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v8

    .line 6369
    :goto_1a6
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v9

    if-eqz v9, :cond_1b4

    if-le v7, v6, :cond_1b2

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v2, v9, :cond_1b4

    .line 6373
    :cond_1b2
    move v5, v8

    goto :goto_1c5

    .line 6374
    :cond_1b4
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v8

    if-nez v8, :cond_1c1

    if-ge v7, v6, :cond_1c0

    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v2, v6, :cond_1c1

    .line 6378
    :cond_1c0
    goto :goto_1c5

    .line 6380
    :cond_1c1
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    goto :goto_1c5

    .line 6358
    :cond_1c4
    move v5, v7

    .line 6383
    :goto_1c5
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_1cd

    if-lt v5, v7, :cond_1d5

    .line 6384
    :cond_1cd
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-nez v6, :cond_1e7

    if-le v5, v7, :cond_1e7

    .line 6385
    :cond_1d5
    invoke-virtual {v0, v4, v5}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .line 6386
    iget-object v6, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    .line 6387
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v6

    sub-float/2addr v6, v4

    iput v6, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6388
    goto :goto_1e9

    .line 6389
    :cond_1e7
    iput v14, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6391
    :goto_1e9
    nop

    .line 6392
    move v7, v5

    goto/16 :goto_271

    .line 6393
    :cond_1ed
    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    sub-float v6, v1, v6

    .line 6394
    invoke-virtual {v0, v4, v2, v6}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v6

    .line 6395
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v9

    if-eqz v9, :cond_208

    .line 6396
    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-gt v6, v9, :cond_206

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v2, v9, :cond_204

    goto :goto_206

    :cond_204
    move v9, v12

    goto :goto_214

    :cond_206
    :goto_206
    move v9, v13

    goto :goto_214

    .line 6397
    :cond_208
    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v6, v9, :cond_213

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v2, v9, :cond_211

    goto :goto_213

    :cond_211
    move v9, v12

    goto :goto_214

    :cond_213
    :goto_213
    move v9, v13

    .line 6398
    :goto_214
    if-eqz v9, :cond_249

    .line 6400
    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-eq v2, v9, :cond_247

    .line 6402
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_221

    move v5, v8

    .line 6403
    :cond_221
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_229

    if-lt v5, v7, :cond_231

    .line 6404
    :cond_229
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-nez v6, :cond_243

    if-le v5, v7, :cond_243

    .line 6405
    :cond_231
    invoke-virtual {v0, v4, v5}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .line 6406
    iget-object v6, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    .line 6407
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v6

    sub-float/2addr v6, v4

    iput v6, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6408
    goto :goto_245

    .line 6409
    :cond_243
    iput v14, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6414
    :goto_245
    move v7, v5

    goto :goto_248

    .line 6412
    :cond_247
    move v7, v6

    .line 6414
    :goto_248
    goto :goto_271

    .line 6415
    :cond_249
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_253

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v6, v5, :cond_25d

    .line 6416
    :cond_253
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_270

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-le v6, v5, :cond_270

    .line 6419
    :cond_25d
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    .line 6420
    invoke-virtual {v0, v4, v6}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    sub-float/2addr v5, v4

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6424
    :cond_270
    move v13, v12

    :goto_271
    if-eqz v13, :cond_278

    .line 6425
    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 6426
    invoke-direct {v0, v7, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6428
    :cond_278
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 6429
    return-void

    .line 6304
    :cond_27b
    :goto_27b
    iput-boolean v13, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 6305
    iput v14, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6306
    invoke-direct {v0, v7, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6307
    return-void
.end method

.method protected greylist-max-o updateSelection(I)V
    .registers 4

    .line 6242
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6243
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 6244
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 6243
    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_39

    .line 6246
    :cond_20
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 6247
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6246
    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6249
    :goto_39
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateDrawable(Z)V

    .line 6250
    iget-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 6251
    iget-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V

    .line 6253
    :cond_4a
    return-void
.end method
