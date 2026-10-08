.class Landroid/widget/TextView$ChangeWatcher;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeWatcher"
.end annotation


# instance fields
.field private greylist-max-o mBeforeText:Ljava/lang/CharSequence;

.field final synthetic blacklist this$0:Landroid/widget/TextView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/TextView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 16591
    iput-object p1, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TextView;Landroid/widget/TextView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 16626
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 16628
    const/16 v0, 0x800

    invoke-static {p1, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eqz v0, :cond_12

    .line 16629
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 16631
    :cond_12
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 16602
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->-$$Nest$fgetmTransformed(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 16603
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->-$$Nest$fgetmTransformed(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    .line 16606
    :cond_24
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->-$$Nest$msendBeforeTextChanged(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    .line 16607
    return-void
.end method

.method public whitelist onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 12

    .line 16645
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 16646
    return-void
.end method

.method public whitelist onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 8

    .line 16638
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    move p0, p5

    move p5, p4

    move p4, p0

    move-object p0, v0

    invoke-virtual/range {p0 .. p6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 16639
    return-void
.end method

.method public whitelist onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 12

    .line 16652
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 16653
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 16614
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->handleTextChanged(Ljava/lang/CharSequence;III)V

    .line 16616
    iget-object p1, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isVisibleToAccessibility()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 16617
    iget-object p1, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 16618
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    .line 16620
    :cond_17
    return-void
.end method
