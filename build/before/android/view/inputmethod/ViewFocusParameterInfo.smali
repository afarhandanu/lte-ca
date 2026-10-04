.class final Landroid/view/inputmethod/ViewFocusParameterInfo;
.super Ljava/lang/Object;
.source "ViewFocusParameterInfo.java"


# instance fields
.field final blacklist mPreviousEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field final blacklist mPreviousSoftInputMode:I

.field final blacklist mPreviousStartInputFlags:I

.field final blacklist mPreviousStartInputReason:I

.field final blacklist mPreviousWindowFlags:I


# direct methods
.method constructor blacklist <init>(Landroid/view/inputmethod/EditorInfo;IIII)V
    .registers 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 46
    iput p2, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousStartInputFlags:I

    .line 47
    iput p3, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousStartInputReason:I

    .line 48
    iput p4, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousSoftInputMode:I

    .line 49
    iput p5, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousWindowFlags:I

    .line 50
    return-void
.end method


# virtual methods
.method blacklist sameAs(Landroid/view/inputmethod/EditorInfo;IIII)Z
    .registers 7

    .line 57
    iget v0, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousStartInputFlags:I

    if-ne v0, p2, :cond_22

    iget p2, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousStartInputReason:I

    if-ne p2, p3, :cond_22

    iget p2, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousSoftInputMode:I

    if-ne p2, p4, :cond_22

    iget p2, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousWindowFlags:I

    if-ne p2, p5, :cond_22

    iget-object p2, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eq p2, p1, :cond_20

    iget-object p2, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p2, :cond_22

    iget-object p2, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 63
    invoke-virtual {p2, p1}, Landroid/view/inputmethod/EditorInfo;->kindofEquals(Landroid/view/inputmethod/EditorInfo;)Z

    move-result p1

    if-eqz p1, :cond_22

    :cond_20
    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 57
    :goto_23
    return p1
.end method
