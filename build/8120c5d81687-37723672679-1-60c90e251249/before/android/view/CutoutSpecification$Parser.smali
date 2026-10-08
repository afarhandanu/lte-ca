.class public Landroid/view/CutoutSpecification$Parser;
.super Ljava/lang/Object;
.source "CutoutSpecification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/CutoutSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private blacklist mBindBottomCutout:Z

.field private blacklist mBindLeftCutout:Z

.field private blacklist mBindRightCutout:Z

.field private blacklist mBottomBound:Landroid/graphics/Rect;

.field private blacklist mInDp:Z

.field private blacklist mInsets:Landroid/graphics/Insets;

.field private blacklist mIsCloserToStartSide:Z

.field private final blacklist mIsShortEdgeOnTop:Z

.field private blacklist mIsTouchShortEdgeEnd:Z

.field private blacklist mIsTouchShortEdgeStart:Z

.field private blacklist mLeftBound:Landroid/graphics/Rect;

.field private final blacklist mMatrix:Landroid/graphics/Matrix;

.field private blacklist mPath:Landroid/graphics/Path;

.field private final blacklist mPhysicalDisplayHeight:I

.field private final blacklist mPhysicalDisplayWidth:I

.field private final blacklist mPhysicalPixelDisplaySizeRatio:F

.field private blacklist mPositionFromBottom:Z

.field private blacklist mPositionFromCenterVertical:Z

.field private blacklist mPositionFromLeft:Z

.field private blacklist mPositionFromRight:Z

.field private blacklist mRightBound:Landroid/graphics/Rect;

.field private blacklist mSafeInsetBottom:I

.field private blacklist mSafeInsetLeft:I

.field private blacklist mSafeInsetRight:I

.field private blacklist mSafeInsetTop:I

.field private final blacklist mStableDensity:F

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private final blacklist mTmpRectF:Landroid/graphics/RectF;

.field private blacklist mTopBound:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBottomBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsets(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Insets;
    .registers 1

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeftBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPath(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Path;
    .registers 1

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/CutoutSpecification$Parser;)F
    .registers 1

    iget p0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalPixelDisplaySizeRatio:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRightBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method public constructor blacklist <init>(FII)V
    .registers 5

    .line 243
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/CutoutSpecification$Parser;-><init>(FIIF)V

    .line 244
    return-void
.end method

.method constructor blacklist <init>(FIIF)V
    .registers 6

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    .line 217
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    .line 228
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    .line 229
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    .line 230
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    .line 232
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    .line 233
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    .line 234
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    .line 255
    iput p1, p0, Landroid/view/CutoutSpecification$Parser;->mStableDensity:F

    .line 256
    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    .line 257
    iput p3, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    .line 258
    iput p4, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalPixelDisplaySizeRatio:F

    .line 259
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    .line 260
    iget p1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    iget p2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-ge p1, p2, :cond_36

    const/4 v0, 0x1

    :cond_36
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    .line 261
    return-void
.end method

.method private blacklist computeBoundsRectAndAddToRegion(Landroid/graphics/Path;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 6

    .line 264
    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 265
    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 266
    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 267
    sget-object p1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p3, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 268
    return-void
.end method

.method private blacklist computeSafeInsets(ILandroid/graphics/Rect;)I
    .registers 5

    .line 309
    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_10

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    if-ge v0, v1, :cond_10

    .line 310
    iget p1, p2, Landroid/graphics/Rect;->right:I

    return p1

    .line 311
    :cond_10
    const/16 v0, 0x30

    if-ne p1, v0, :cond_21

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_21

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-ge v0, v1, :cond_21

    .line 312
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    return p1

    .line 313
    :cond_21
    const/4 v0, 0x5

    if-ne p1, v0, :cond_34

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_34

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    if-ge v0, v1, :cond_34

    .line 314
    iget p1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    return p1

    .line 315
    :cond_34
    const/16 v0, 0x50

    if-ne p1, v0, :cond_48

    iget p1, p2, Landroid/graphics/Rect;->top:I

    if-lez p1, :cond_48

    iget p1, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-ge p1, v0, :cond_48

    .line 316
    iget p1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    return p1

    .line 318
    :cond_48
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist getSafeInset(I)I
    .registers 3

    .line 334
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 335
    iget p1, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    return p1

    .line 336
    :cond_6
    const/16 v0, 0x30

    if-ne p1, v0, :cond_d

    .line 337
    iget p1, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    return p1

    .line 338
    :cond_d
    const/4 v0, 0x5

    if-ne p1, v0, :cond_13

    .line 339
    iget p1, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    return p1

    .line 340
    :cond_13
    const/16 v0, 0x50

    if-ne p1, v0, :cond_1a

    .line 341
    iget p1, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    return p1

    .line 343
    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    .line 349
    const/4 v0, 0x1

    if-eqz p2, :cond_a

    .line 350
    iget-boolean p2, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    invoke-static {p2, v0, p1}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result p1

    goto :goto_32

    .line 352
    :cond_a
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    if-eqz v1, :cond_1a

    .line 353
    iget-boolean p2, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result p1

    goto :goto_32

    .line 354
    :cond_1a
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    if-nez v1, :cond_2a

    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    if-eqz v1, :cond_23

    goto :goto_2a

    .line 358
    :cond_23
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    invoke-static {v0, p2, p1}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result p1

    goto :goto_32

    .line 355
    :cond_2a
    :goto_2a
    iget-boolean p1, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-boolean p2, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    invoke-static {p1, v0, p2}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result p1

    .line 362
    :goto_32
    invoke-direct {p0, p1}, Landroid/view/CutoutSpecification$Parser;->getSafeInset(I)I

    move-result p2

    .line 363
    invoke-direct {p0, p1, p3}, Landroid/view/CutoutSpecification$Parser;->computeSafeInsets(ILandroid/graphics/Rect;)I

    move-result v0

    .line 364
    if-ge p2, v0, :cond_3f

    .line 365
    invoke-direct {p0, p1, v0}, Landroid/view/CutoutSpecification$Parser;->setSafeInset(II)V

    .line 368
    :cond_3f
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method private blacklist parseSpecWithoutDp(Ljava/lang/String;)V
    .registers 9

    .line 430
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 431
    nop

    .line 432
    nop

    .line 433
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 434
    :goto_9
    const/16 v4, 0x40

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_cd

    .line 435
    if-nez v1, :cond_1d

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 438
    :cond_1d
    invoke-virtual {v1, p1, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 440
    const-string v3, "@left"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_37

    .line 441
    iget-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    if-nez v5, :cond_2f

    .line 442
    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    .line 444
    :cond_2f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_cb

    .line 445
    :cond_37
    const-string v3, "@right"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 446
    iget-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    if-nez v5, :cond_45

    .line 447
    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    .line 449
    :cond_45
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_cb

    .line 450
    :cond_4d
    const-string v3, "@bottom"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 451
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    .line 455
    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    .line 456
    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    .line 457
    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    move v3, v4

    goto :goto_cb

    .line 458
    :cond_6a
    const-string v3, "@center_vertical"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 459
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    .line 463
    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    .line 464
    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    move v3, v4

    goto :goto_cb

    .line 465
    :cond_85
    const-string v3, "@cutout"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 466
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    .line 470
    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    move v3, v4

    goto :goto_cb

    .line 471
    :cond_9e
    const-string v3, "@bind_left_cutout"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 472
    iput-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    .line 473
    iput-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    .line 474
    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    .line 476
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    move v3, v4

    goto :goto_cb

    .line 477
    :cond_b3
    const-string v3, "@bind_right_cutout"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 478
    iput-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    .line 479
    iput-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    .line 480
    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    .line 482
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    move v3, v4

    goto :goto_cb

    .line 484
    :cond_c8
    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 487
    :goto_cb
    goto/16 :goto_9

    .line 490
    :cond_cd
    if-nez v1, :cond_d3

    .line 491
    invoke-direct {p0, v0, p1}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    goto :goto_e1

    .line 493
    :cond_d3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    .line 497
    :goto_e1
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 498
    return-void
.end method

.method private blacklist parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V
    .registers 6

    .line 393
    invoke-static {p2}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/view/CutoutSpecification;->-$$Nest$sfgetMINIMAL_ACCEPTABLE_PATH_LENGTH()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 394
    const-string p1, "CutoutSpecification"

    const-string p2, "According to SVG definition, it shouldn\'t happen"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    .line 397
    :cond_12
    invoke-direct {p0}, Landroid/view/CutoutSpecification$Parser;->translateMatrix()V

    .line 399
    invoke-static {p2}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p2

    .line 400
    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 401
    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p1, v0}, Landroid/view/CutoutSpecification$Parser;->computeBoundsRectAndAddToRegion(Landroid/graphics/Path;Landroid/graphics/Region;Landroid/graphics/Rect;)V

    .line 412
    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 413
    return-void

    .line 416
    :cond_2c
    iget-boolean p1, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5b

    .line 417
    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-gtz p1, :cond_3a

    move p1, v0

    goto :goto_3b

    :cond_3a
    move p1, v1

    :goto_3b
    iput-boolean p1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    .line 418
    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-lt p1, v2, :cond_47

    move p1, v0

    goto :goto_48

    :cond_47
    move p1, v1

    :goto_48
    iput-boolean p1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    .line 419
    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_57

    goto :goto_58

    :cond_57
    move v0, v1

    :goto_58
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    goto :goto_83

    .line 421
    :cond_5b
    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-gtz p1, :cond_63

    move p1, v0

    goto :goto_64

    :cond_63
    move p1, v1

    :goto_64
    iput-boolean p1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    .line 422
    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    if-lt p1, v2, :cond_70

    move p1, v0

    goto :goto_71

    :cond_70
    move p1, v1

    :goto_71
    iput-boolean p1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    .line 423
    iget-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_80

    goto :goto_81

    :cond_80
    move v0, v1

    :goto_81
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    .line 426
    :goto_83
    invoke-direct {p0, p2}, Landroid/view/CutoutSpecification$Parser;->setEdgeCutout(Landroid/graphics/Path;)V

    .line 427
    return-void
.end method

.method private blacklist resetStatus(Ljava/lang/StringBuilder;)V
    .registers 3

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 272
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    .line 273
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    .line 274
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    .line 275
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    .line 277
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    .line 278
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    .line 279
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    .line 280
    return-void
.end method

.method private blacklist setEdgeCutout(Landroid/graphics/Path;)V
    .registers 5

    .line 372
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    if-nez v0, :cond_16

    .line 373
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    xor-int/2addr v0, v2

    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, v2}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    goto :goto_57

    .line 374
    :cond_16
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    if-nez v0, :cond_2a

    .line 375
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    xor-int/2addr v0, v2

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0, v1}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    goto :goto_57

    .line 376
    :cond_2a
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    if-nez v0, :cond_3d

    .line 377
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, v2}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    goto :goto_57

    .line 378
    :cond_3d
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    if-nez v0, :cond_64

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    if-nez v0, :cond_64

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    if-nez v0, :cond_64

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    if-nez v0, :cond_64

    .line 380
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0, v1}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    .line 385
    :goto_57
    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_61

    .line 386
    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_63

    .line 388
    :cond_61
    iput-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    .line 390
    :goto_63
    return-void

    .line 382
    :cond_64
    return-void
.end method

.method private blacklist setSafeInset(II)V
    .registers 4

    .line 322
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 323
    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    goto :goto_19

    .line 324
    :cond_6
    const/16 v0, 0x30

    if-ne p1, v0, :cond_d

    .line 325
    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    goto :goto_19

    .line 326
    :cond_d
    const/4 v0, 0x5

    if-ne p1, v0, :cond_13

    .line 327
    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    goto :goto_19

    .line 328
    :cond_13
    const/16 v0, 0x50

    if-ne p1, v0, :cond_19

    .line 329
    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    .line 331
    :cond_19
    :goto_19
    return-void
.end method

.method private blacklist translateMatrix()V
    .registers 6

    .line 284
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_b

    .line 285
    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    int-to-float v0, v0

    goto :goto_15

    .line 286
    :cond_b
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    if-eqz v0, :cond_11

    .line 287
    move v0, v1

    goto :goto_15

    .line 289
    :cond_11
    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 293
    :goto_15
    iget-boolean v3, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    if-eqz v3, :cond_1d

    .line 294
    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    int-to-float v1, v1

    goto :goto_27

    .line 295
    :cond_1d
    iget-boolean v3, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    if-eqz v3, :cond_26

    .line 296
    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    goto :goto_27

    .line 298
    :cond_26
    nop

    .line 301
    :goto_27
    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 302
    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mInDp:Z

    if-eqz v2, :cond_39

    .line 303
    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Landroid/view/CutoutSpecification$Parser;->mStableDensity:F

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mStableDensity:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 305
    :cond_39
    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 306
    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;)Landroid/view/CutoutSpecification;
    .registers 7

    .line 508
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v0, "@dp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 511
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_f

    const/4 v4, 0x1

    goto :goto_10

    :cond_f
    move v4, v2

    :goto_10
    iput-boolean v4, p0, Landroid/view/CutoutSpecification$Parser;->mInDp:Z

    .line 513
    if-eq v1, v3, :cond_33

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 515
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_34

    .line 517
    :cond_33
    nop

    .line 520
    :goto_34
    invoke-direct {p0, p1}, Landroid/view/CutoutSpecification$Parser;->parseSpecWithoutDp(Ljava/lang/String;)V

    .line 521
    iget p1, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    iput-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mInsets:Landroid/graphics/Insets;

    .line 522
    new-instance p1, Landroid/view/CutoutSpecification;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/view/CutoutSpecification;-><init>(Landroid/view/CutoutSpecification$Parser;Landroid/view/CutoutSpecification-IA;)V

    return-object p1
.end method
