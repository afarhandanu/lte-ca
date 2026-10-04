.class Landroid/widget/YearPickerView$1;
.super Ljava/lang/Object;
.source "YearPickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/YearPickerView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/YearPickerView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 62
    iget-object p1, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    invoke-static {p1}, Landroid/widget/YearPickerView;->-$$Nest$fgetmAdapter(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$YearAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result p1

    .line 63
    iget-object p2, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    invoke-static {p2}, Landroid/widget/YearPickerView;->-$$Nest$fgetmAdapter(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$YearAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/YearPickerView$YearAdapter;->setSelection(I)Z

    .line 65
    iget-object p2, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    invoke-static {p2}, Landroid/widget/YearPickerView;->-$$Nest$fgetmOnYearSelectedListener(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$OnYearSelectedListener;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 66
    iget-object p2, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    invoke-static {p2}, Landroid/widget/YearPickerView;->-$$Nest$fgetmOnYearSelectedListener(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$OnYearSelectedListener;

    move-result-object p2

    iget-object p3, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    invoke-interface {p2, p3, p1}, Landroid/widget/YearPickerView$OnYearSelectedListener;->onYearChanged(Landroid/widget/YearPickerView;I)V

    .line 68
    :cond_26
    return-void
.end method
