.class Landroid/widget/DatePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "DatePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/DatePickerSpinnerDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/DatePickerSpinnerDelegate;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onValueChange(Landroid/widget/NumberPicker;II)V
    .registers 9

    .line 123
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mupdateInputState(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 124
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    iget-object v1, v1, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 126
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmDaySpinner(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne p1, v0, :cond_53

    .line 127
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result p1

    .line 128
    if-ne p2, p1, :cond_3a

    if-ne p3, v4, :cond_3a

    .line 129
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_52

    .line 130
    :cond_3a
    if-ne p2, v4, :cond_48

    if-ne p3, p1, :cond_48

    .line 131
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_52

    .line 133
    :cond_48
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v3, p3}, Landroid/icu/util/Calendar;->add(II)V

    .line 135
    :goto_52
    goto :goto_95

    :cond_53
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmMonthSpinner(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_84

    .line 136
    const/16 p1, 0xb

    if-ne p2, p1, :cond_6b

    if-nez p3, :cond_6b

    .line 137
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_95

    .line 138
    :cond_6b
    if-nez p2, :cond_79

    if-ne p3, p1, :cond_79

    .line 139
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_95

    .line 141
    :cond_79
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v2, p3}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_95

    .line 143
    :cond_84
    iget-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p2}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmYearSpinner(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_c8

    .line 144
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v4, p3}, Landroid/icu/util/Calendar;->set(II)V

    .line 149
    :goto_95
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    iget-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p2}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p3}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result p3

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 149
    invoke-static {p1, p2, p3, v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$msetDate(Landroid/widget/DatePickerSpinnerDelegate;III)V

    .line 151
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mupdateSpinners(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 152
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mupdateCalendarView(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 153
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mnotifyDateChanged(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 154
    return-void

    .line 146
    :cond_c8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
