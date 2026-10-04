.class Landroid/widget/TimePickerClockDelegate$4;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TimePickerClockDelegate;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 939
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V
    .registers 7

    .line 945
    iget-object p2, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {p2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmHourView(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    move-result-object p2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1c

    .line 946
    iget-object p2, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {p2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmCommitHour(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;

    move-result-object p2

    .line 947
    invoke-virtual {p1}, Lcom/android/internal/widget/NumericTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmMinuteView(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    move-result-object v0

    goto :goto_2b

    .line 948
    :cond_1c
    iget-object p2, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {p2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmMinuteView(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    move-result-object p2

    if-ne p1, p2, :cond_41

    .line 949
    iget-object p2, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {p2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmCommitMinute(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;

    move-result-object p2

    .line 950
    nop

    .line 955
    :cond_2b
    :goto_2b
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/NumericTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 957
    if-eqz p3, :cond_40

    .line 958
    if-eqz p4, :cond_3b

    .line 961
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 963
    if-eqz v0, :cond_40

    .line 964
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_40

    .line 969
    :cond_3b
    const-wide/16 p3, 0x7d0

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/widget/NumericTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 972
    :cond_40
    :goto_40
    return-void

    .line 952
    :cond_41
    return-void
.end method
