.class public Landroid/widget/ImeAwareEditText;
.super Landroid/widget/EditText;
.source "ImeAwareEditText.java"


# instance fields
.field private blacklist mHasPendingShowSoftInputRequest:Z

.field final blacklist mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$niL20ozaIPzxaXBJE8_tVpamRQI(Landroid/widget/ImeAwareEditText;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/ImeAwareEditText;->lambda$new$0()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImeAwareEditText;)V

    iput-object p1, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImeAwareEditText;)V

    iput-object p1, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance p1, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImeAwareEditText;)V

    iput-object p1, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    new-instance p1, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImeAwareEditText;)V

    iput-object p1, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/widget/ImeAwareEditText;->showSoftInputIfNecessary()V

    return-void
.end method

.method private blacklist showSoftInputIfNecessary()V
    .registers 3

    .line 73
    iget-boolean v0, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    if-eqz v0, :cond_17

    .line 74
    nop

    .line 75
    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 77
    iput-boolean v1, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    .line 79
    :cond_17
    return-void
.end method


# virtual methods
.method public whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    .line 64
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 65
    iget-boolean v0, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    if-eqz v0, :cond_12

    .line 66
    iget-object v0, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ImeAwareEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 67
    iget-object v0, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ImeAwareEditText;->post(Ljava/lang/Runnable;)Z

    .line 69
    :cond_12
    return-object p1
.end method

.method public blacklist scheduleShowSoftInput()V
    .registers 4

    .line 82
    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 83
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnection(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    .line 87
    iget-object v2, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ImeAwareEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 88
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 89
    return-void

    .line 94
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    .line 95
    return-void
.end method
