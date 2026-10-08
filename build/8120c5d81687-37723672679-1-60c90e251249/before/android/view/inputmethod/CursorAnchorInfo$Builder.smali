.class public final Landroid/view/inputmethod/CursorAnchorInfo$Builder;
.super Ljava/lang/Object;
.source "CursorAnchorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/CursorAnchorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist LINE_BOUNDS_INITIAL_SIZE:I = 0x4


# instance fields
.field private greylist-max-o mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

.field private greylist-max-o mComposingText:Ljava/lang/CharSequence;

.field private greylist-max-o mComposingTextStart:I

.field private blacklist mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

.field private greylist-max-o mInsertionMarkerBaseline:F

.field private greylist-max-o mInsertionMarkerBottom:F

.field private greylist-max-o mInsertionMarkerFlags:I

.field private greylist-max-o mInsertionMarkerHorizontal:F

.field private greylist-max-o mInsertionMarkerTop:F

.field private greylist-max-o mMatrixInitialized:Z

.field private greylist-max-o mMatrixValues:[F

.field private greylist-max-o mSelectionEnd:I

.field private greylist-max-o mSelectionStart:I

.field private blacklist mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

.field private blacklist mVisibleLineBounds:[F

.field private blacklist mVisibleLineBoundsCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCharacterBoundsArrayBuilder(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmComposingText(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmComposingTextStart(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEditorBoundsInfo(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/EditorBoundsInfo;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerBaseline(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerBottom(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerFlags(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerHorizontal(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerTop(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMatrixInitialized(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMatrixValues(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)[F
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionEnd(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionStart(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextAppearanceInfo(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/TextAppearanceInfo;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisibleLineBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)[F
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisibleLineBoundsCount(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    .line 308
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    .line 309
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    .line 311
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    .line 312
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    .line 313
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    .line 314
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    .line 315
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    .line 316
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    .line 317
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    .line 318
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    .line 319
    iput-boolean v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    .line 320
    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    .line 321
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    .line 322
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    return-void
.end method


# virtual methods
.method public whitelist addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .registers 15

    .line 400
    if-ltz p1, :cond_19

    .line 403
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    if-nez v0, :cond_d

    .line 404
    new-instance v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    invoke-direct {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    .line 406
    :cond_d
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->append(IFFFFI)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    .line 407
    return-object p0

    .line 401
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must not be a negative integer."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addVisibleLineBounds(FFFF)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .registers 8

    .line 464
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    array-length v0, v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    add-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_17

    .line 465
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    .line 466
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    .line 468
    :cond_17
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    aput p1, v0, v1

    .line 469
    iget-object p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    aput p2, p1, v0

    .line 470
    iget-object p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    iget p2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    aput p3, p1, p2

    .line 471
    iget-object p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    iget p2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    aput p4, p1, p2

    .line 472
    return-object p0
.end method

.method public whitelist build()Landroid/view/inputmethod/CursorAnchorInfo;
    .registers 5

    .line 495
    iget-boolean v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    if-nez v0, :cond_4c

    .line 498
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    .line 499
    invoke-virtual {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 500
    :goto_15
    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    if-eqz v3, :cond_1e

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    if-lez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    .line 502
    :goto_1f
    if-nez v0, :cond_44

    if-nez v1, :cond_44

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    .line 504
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_44

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    .line 505
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_44

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    .line 506
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_44

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    .line 507
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_4c

    .line 508
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Coordinate transformation matrix is required when positional parameters are specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_4c
    :goto_4c
    invoke-static {p0}, Landroid/view/inputmethod/CursorAnchorInfo;->-$$Nest$smcreate(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clearVisibleLineBounds()Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .registers 2

    .line 485
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    .line 486
    return-object p0
.end method

.method public whitelist reset()V
    .registers 4

    .line 520
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    .line 521
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    .line 522
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    .line 524
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    .line 525
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    .line 526
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    .line 527
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    .line 528
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    .line 529
    iput-boolean v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    .line 530
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    if-eqz v1, :cond_22

    .line 531
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    invoke-virtual {v1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->reset()V

    .line 533
    :cond_22
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    .line 534
    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->clearVisibleLineBounds()Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 535
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    .line 536
    return-void
.end method

.method public whitelist setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .registers 3

    .line 342
    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    .line 343
    if-nez p2, :cond_8

    .line 344
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    goto :goto_f

    .line 347
    :cond_8
    new-instance p1, Landroid/text/SpannedString;

    invoke-direct {p1, p2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    .line 349
    :goto_f
    return-object p0
.end method

.method public whitelist setEditorBoundsInfo(Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .registers 2

    .line 417
    iput-object p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    .line 418
    return-object p0
.end method

.method public whitelist setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .registers 6

    .line 375
    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    .line 376
    iput p2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    .line 377
    iput p3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    .line 378
    iput p4, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    .line 379
    iput p5, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    .line 380
    return-object p0
.end method

.method public whitelist setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .registers 3

    .line 427
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    if-nez v0, :cond_a

    .line 428
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    .line 430
    :cond_a
    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    sget-object p1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :goto_f
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 431
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    .line 432
    return-object p0
.end method

.method public whitelist setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .registers 3

    .line 329
    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    .line 330
    iput p2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    .line 331
    return-object p0
.end method

.method public whitelist setTextAppearanceInfo(Landroid/view/inputmethod/TextAppearanceInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .registers 2

    .line 442
    iput-object p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    .line 443
    return-object p0
.end method
