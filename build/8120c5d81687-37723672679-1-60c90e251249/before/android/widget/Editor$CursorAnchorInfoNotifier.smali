.class final Landroid/widget/Editor$CursorAnchorInfoNotifier;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorAnchorInfoNotifier"
.end annotation


# instance fields
.field final blacklist mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field final greylist-max-o mViewToScreenMatrix:Landroid/graphics/Matrix;

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Editor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4952
    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4953
    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4954
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o updatePosition(IIZZ)V
    .registers 6

    .line 4959
    iget-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    iget-object p1, p1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 4960
    if-eqz p1, :cond_4e

    iget p2, p1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez p2, :cond_b

    goto :goto_4e

    .line 4963
    :cond_b
    iget-object p2, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {p2}, Landroid/widget/Editor;->-$$Nest$mgetInputMethodManager(Landroid/widget/Editor;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p2

    .line 4964
    if-nez p2, :cond_14

    .line 4965
    return-void

    .line 4967
    :cond_14
    iget-object p3, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {p3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnection(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_21

    .line 4968
    return-void

    .line 4973
    :cond_21
    iget p3, p1, Landroid/widget/Editor$InputMethodState;->mUpdateCursorAnchorInfoMode:I

    and-int/lit8 p3, p3, 0x3

    if-nez p3, :cond_28

    .line 4974
    return-void

    .line 4977
    :cond_28
    iget-object p3, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {p3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p3

    iget p1, p1, Landroid/widget/Editor$InputMethodState;->mUpdateCursorAnchorInfoFilter:I

    iget-object p4, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 4978
    invoke-virtual {p3, p1, p4, v0}, Landroid/widget/TextView;->getCursorAnchorInfo(ILandroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object p1

    .line 4981
    if-eqz p1, :cond_4d

    .line 4982
    iget-object p3, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {p3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 4985
    iget-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    iget-object p1, p1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iget p2, p1, Landroid/widget/Editor$InputMethodState;->mUpdateCursorAnchorInfoMode:I

    and-int/lit8 p2, p2, -0x2

    iput p2, p1, Landroid/widget/Editor$InputMethodState;->mUpdateCursorAnchorInfoMode:I

    .line 4988
    :cond_4d
    return-void

    .line 4961
    :cond_4e
    :goto_4e
    return-void
.end method
