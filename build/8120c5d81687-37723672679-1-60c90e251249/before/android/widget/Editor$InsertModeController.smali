.class final Landroid/widget/Editor$InsertModeController;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InsertModeController"
.end annotation


# instance fields
.field private final blacklist mHighlightPaint:Landroid/graphics/Paint;

.field private final blacklist mHighlightPath:Landroid/graphics/Path;

.field private blacklist mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

.field private blacklist mIsInsertModeActive:Z

.field private final blacklist mTextView:Landroid/widget/TextView;

.field private blacklist mUpdatingTransformationMethod:Z


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextView;)V
    .registers 4

    .line 8252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8253
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    .line 8254
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    .line 8255
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    .line 8256
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPaint:Landroid/graphics/Paint;

    .line 8257
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPath:Landroid/graphics/Path;

    .line 8260
    iget-object p1, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    .line 8261
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 8262
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8263
    return-void
.end method

.method private blacklist setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V
    .registers 4

    .line 8334
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mUpdatingTransformationMethod:Z

    .line 8335
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTransformationMethodInternal(Landroid/text/method/TransformationMethod;Z)V

    .line 8336
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/Editor$InsertModeController;->mUpdatingTransformationMethod:Z

    .line 8337
    return-void
.end method


# virtual methods
.method blacklist beforeSetText()V
    .registers 2

    .line 8347
    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mUpdatingTransformationMethod:Z

    if-eqz v0, :cond_5

    .line 8348
    return-void

    .line 8352
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$InsertModeController;->exitInsertMode(Z)V

    .line 8353
    return-void
.end method

.method blacklist enterInsertMode(I)Z
    .registers 5

    .line 8272
    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 8274
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    .line 8275
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 8276
    instance-of v2, v0, Landroid/text/method/OffsetMapping;

    if-eqz v2, :cond_11

    .line 8278
    return v1

    .line 8281
    :cond_11
    iget-object v1, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v1

    .line 8282
    new-instance v2, Landroid/text/method/InsertModeTransformationMethod;

    invoke-direct {v2, p1, v1, v0}, Landroid/text/method/InsertModeTransformationMethod;-><init>(IZLandroid/text/method/TransformationMethod;)V

    iput-object v2, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    .line 8284
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$InsertModeController;->setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V

    .line 8285
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8287
    iput-boolean v1, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    .line 8288
    return v1
.end method

.method blacklist exitInsertMode()V
    .registers 2

    .line 8292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor$InsertModeController;->exitInsertMode(Z)V

    .line 8293
    return-void
.end method

.method blacklist exitInsertMode(Z)V
    .registers 6

    .line 8296
    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    if-nez v0, :cond_5

    return-void

    .line 8297
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    iget-object v2, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    .line 8298
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eq v0, v2, :cond_15

    goto :goto_38

    .line 8304
    :cond_15
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 8305
    iget-object v2, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 8306
    iget-object v3, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    .line 8307
    invoke-virtual {v3}, Landroid/text/method/InsertModeTransformationMethod;->getOldTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    .line 8308
    invoke-direct {p0, v3, p1}, Landroid/widget/Editor$InsertModeController;->setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V

    .line 8309
    iget-object p1, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/Spannable;

    invoke-static {p1, v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8310
    iput-boolean v1, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    .line 8311
    return-void

    .line 8299
    :cond_38
    :goto_38
    iput-boolean v1, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    .line 8300
    return-void
.end method

.method blacklist onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 8314
    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    if-nez v0, :cond_5

    return-void

    .line 8315
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 8316
    instance-of v1, v0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;

    if-eqz v1, :cond_2e

    .line 8317
    iget-object v1, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 8318
    if-nez v1, :cond_18

    return-void

    .line 8319
    :cond_18
    check-cast v0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;

    .line 8321
    invoke-virtual {v0}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getHighlightStart()I

    move-result v2

    .line 8322
    invoke-virtual {v0}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getHighlightEnd()I

    move-result v0

    .line 8323
    iget-object v3, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 8324
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 8326
    :cond_2e
    return-void
.end method

.method blacklist updateTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .registers 7

    .line 8365
    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 8366
    invoke-direct {p0, p1, v1}, Landroid/widget/Editor$InsertModeController;->setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V

    .line 8367
    return-void

    .line 8372
    :cond_9
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 8373
    iget-object v2, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 8374
    iget-object v3, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    iget-object v4, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    .line 8375
    invoke-virtual {v4}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v4

    .line 8374
    invoke-virtual {v3, p1, v4}, Landroid/text/method/InsertModeTransformationMethod;->update(Landroid/text/method/TransformationMethod;Z)Landroid/text/method/InsertModeTransformationMethod;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    .line 8376
    iget-object p1, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    invoke-direct {p0, p1, v1}, Landroid/widget/Editor$InsertModeController;->setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V

    .line 8377
    iget-object p1, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/Spannable;

    invoke-static {p1, v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8378
    return-void
.end method
