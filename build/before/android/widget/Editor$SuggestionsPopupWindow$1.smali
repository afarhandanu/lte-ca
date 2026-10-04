.class Landroid/widget/Editor$SuggestionsPopupWindow$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4263
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 7

    .line 4265
    iget-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object p1, p1, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->-$$Nest$fgetmMisspelledSpanInfo(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/Editor$SuggestionSpanInfo;

    move-result-object v0

    .line 4266
    invoke-static {p1, v0}, Landroid/widget/Editor;->-$$Nest$mfindEquivalentSuggestionSpan(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object p1

    .line 4267
    if-nez p1, :cond_11

    .line 4269
    return-void

    .line 4271
    :cond_11
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 4272
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 4273
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    .line 4274
    if-ltz v1, :cond_83

    if-gt p1, v1, :cond_2c

    goto :goto_83

    .line 4277
    :cond_2c
    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 4279
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4280
    const-string/jumbo v4, "word"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4281
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v2, v2, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    .line 4282
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4281
    const-string v4, "locale"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4283
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v4, 0x10000000

    or-int/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4284
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v2, v2, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->startActivityAsTextOperationUserIfNecessary(Landroid/content/Intent;)V

    .line 4287
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v2}, Landroid/widget/Editor$SuggestionsPopupWindow;->-$$Nest$fgetmMisspelledSpanInfo(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/Editor$SuggestionSpanInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 4288
    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4289
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/widget/Editor;->-$$Nest$mupdateSpellCheckSpans(Landroid/widget/Editor;IIZ)V

    .line 4290
    iget-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {p1}, Landroid/widget/Editor$SuggestionsPopupWindow;->-$$Nest$mhideWithCleanUp(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    .line 4291
    return-void

    .line 4275
    :cond_83
    :goto_83
    return-void
.end method
