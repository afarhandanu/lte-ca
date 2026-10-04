.class public interface abstract Landroid/view/inputmethod/InputConnection;
.super Ljava/lang/Object;
.source "InputConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputConnection$CursorUpdateFilter;,
        Landroid/view/inputmethod/InputConnection$CursorUpdateMode;,
        Landroid/view/inputmethod/InputConnection$HandwritingGestureResult;,
        Landroid/view/inputmethod/InputConnection$GetTextType;
    }
.end annotation


# static fields
.field public static final whitelist CURSOR_UPDATE_FILTER_CHARACTER_BOUNDS:I = 0x8

.field public static final whitelist CURSOR_UPDATE_FILTER_EDITOR_BOUNDS:I = 0x4

.field public static final whitelist CURSOR_UPDATE_FILTER_INSERTION_MARKER:I = 0x10

.field public static final whitelist CURSOR_UPDATE_FILTER_TEXT_APPEARANCE:I = 0x40

.field public static final whitelist CURSOR_UPDATE_FILTER_VISIBLE_LINE_BOUNDS:I = 0x20

.field public static final whitelist CURSOR_UPDATE_IMMEDIATE:I = 0x1

.field public static final whitelist CURSOR_UPDATE_MONITOR:I = 0x2

.field public static final whitelist GET_EXTRACTED_TEXT_MONITOR:I = 0x1

.field public static final whitelist GET_TEXT_WITH_STYLES:I = 0x1

.field public static final whitelist HANDWRITING_GESTURE_RESULT_CANCELLED:I = 0x4

.field public static final whitelist HANDWRITING_GESTURE_RESULT_FAILED:I = 0x3

.field public static final whitelist HANDWRITING_GESTURE_RESULT_FALLBACK:I = 0x5

.field public static final whitelist HANDWRITING_GESTURE_RESULT_SUCCESS:I = 0x1

.field public static final whitelist HANDWRITING_GESTURE_RESULT_UNKNOWN:I = 0x0

.field public static final whitelist HANDWRITING_GESTURE_RESULT_UNSUPPORTED:I = 0x2

.field public static final whitelist INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1


# direct methods
.method public static synthetic blacklist lambda$performHandwritingGesture$0(Ljava/util/function/IntConsumer;)V
    .registers 2

    .line 1052
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public static synthetic blacklist lambda$requestTextBoundsInfo$1(Ljava/util/function/Consumer;)V
    .registers 3

    .line 1296
    new-instance v0, Landroid/view/inputmethod/TextBoundsInfoResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/inputmethod/TextBoundsInfoResult;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract whitelist beginBatchEdit()Z
.end method

.method public abstract whitelist clearMetaKeyStates(I)Z
.end method

.method public abstract whitelist closeConnection()V
.end method

.method public abstract whitelist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
.end method

.method public abstract whitelist commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
.end method

.method public abstract whitelist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
.end method

.method public abstract whitelist commitText(Ljava/lang/CharSequence;I)Z
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 4

    .line 759
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public abstract whitelist deleteSurroundingText(II)Z
.end method

.method public abstract whitelist deleteSurroundingTextInCodePoints(II)Z
.end method

.method public abstract whitelist endBatchEdit()Z
.end method

.method public abstract whitelist finishComposingText()Z
.end method

.method public abstract whitelist getCursorCapsMode(I)I
.end method

.method public abstract whitelist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
.end method

.method public abstract whitelist getHandler()Landroid/os/Handler;
.end method

.method public abstract whitelist getSelectedText(I)Ljava/lang/CharSequence;
.end method

.method public whitelist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .registers 6

    .line 382
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 383
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 385
    invoke-interface {p0, p1, p3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 386
    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 387
    return-object v0

    .line 389
    :cond_e
    invoke-interface {p0, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 390
    if-nez p2, :cond_15

    .line 391
    return-object v0

    .line 393
    :cond_15
    invoke-interface {p0, p3}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 394
    if-nez p3, :cond_1d

    .line 395
    const-string p3, ""

    .line 397
    :cond_1d
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 398
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 399
    new-instance v0, Landroid/view/inputmethod/SurroundingText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 400
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/2addr p1, p3

    const/4 p3, -0x1

    invoke-direct {v0, p2, v1, p1, p3}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    .line 399
    return-object v0
.end method

.method public abstract whitelist getTextAfterCursor(II)Ljava/lang/CharSequence;
.end method

.method public abstract whitelist getTextBeforeCursor(II)Ljava/lang/CharSequence;
.end method

.method public abstract whitelist performContextMenuAction(I)Z
.end method

.method public abstract whitelist performEditorAction(I)Z
.end method

.method public whitelist performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 4

    .line 1051
    if-eqz p2, :cond_c

    if-eqz p3, :cond_c

    .line 1052
    new-instance p1, Landroid/view/inputmethod/InputConnection$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Landroid/view/inputmethod/InputConnection$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/IntConsumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1054
    :cond_c
    return-void
.end method

.method public abstract whitelist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public whitelist performSpellCheck()Z
    .registers 2

    .line 1008
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist previewHandwritingGesture(Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroid/os/CancellationSignal;)Z
    .registers 3

    .line 1078
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 6

    .line 1455
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 1456
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 1458
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1459
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1460
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 1461
    invoke-interface {p0, p3, p4, p5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    .line 1462
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1463
    const/4 p1, 0x1

    return p1
.end method

.method public abstract whitelist reportFullscreenMode(Z)Z
.end method

.method public abstract whitelist requestCursorUpdates(I)Z
.end method

.method public whitelist requestCursorUpdates(II)Z
    .registers 3

    .line 1259
    if-nez p2, :cond_7

    .line 1260
    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result p1

    return p1

    .line 1262
    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist requestTextBoundsInfo(Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/TextBoundsInfoResult;",
            ">;)V"
        }
    .end annotation

    .line 1294
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    new-instance p1, Landroid/view/inputmethod/InputConnection$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3}, Landroid/view/inputmethod/InputConnection$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1297
    return-void
.end method

.method public abstract whitelist sendKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist setComposingRegion(II)Z
.end method

.method public whitelist setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z
    .registers 4

    .line 682
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    move-result p1

    return p1
.end method

.method public abstract whitelist setComposingText(Ljava/lang/CharSequence;I)Z
.end method

.method public whitelist setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 4

    .line 632
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public whitelist setImeConsumesInput(Z)Z
    .registers 2

    .line 1398
    const/4 p1, 0x0

    return p1
.end method

.method public abstract whitelist setSelection(II)Z
.end method

.method public whitelist takeSnapshot()Landroid/view/inputmethod/TextSnapshot;
    .registers 2

    .line 1421
    const/4 v0, 0x0

    return-object v0
.end method
