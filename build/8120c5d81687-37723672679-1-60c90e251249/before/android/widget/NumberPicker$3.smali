.class Landroid/widget/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor blacklist <init>(Landroid/widget/NumberPicker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 769
    iput-object p1, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFocusChange(Landroid/view/View;Z)V
    .registers 4

    .line 771
    if-eqz p2, :cond_c

    .line 772
    iget-object p1, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1b

    .line 774
    :cond_c
    iget-object p2, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p2}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 775
    iget-object p2, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p2, p1}, Landroid/widget/NumberPicker;->-$$Nest$mvalidateInputTextView(Landroid/widget/NumberPicker;Landroid/view/View;)V

    .line 777
    :goto_1b
    return-void
.end method
