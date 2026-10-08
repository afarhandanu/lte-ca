.class Landroid/widget/DatePickerCalendarDelegate$2;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Landroid/widget/YearPickerView$OnYearSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/DatePickerCalendarDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/DatePickerCalendarDelegate;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 263
    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onYearChanged(Landroid/widget/YearPickerView;I)V
    .registers 6

    .line 271
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    iget-object p1, p1, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    .line 272
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    iget-object v1, v1, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 273
    invoke-static {v1, p2}, Landroid/widget/DatePickerCalendarDelegate;->-$$Nest$smgetDaysInMonth(II)I

    move-result v1

    .line 274
    if-le p1, v1, :cond_1f

    .line 275
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    iget-object p1, p1, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 278
    :cond_1f
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    iget-object p1, p1, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    .line 279
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    iget-object p1, p1, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-static {p2}, Landroid/widget/DatePickerCalendarDelegate;->-$$Nest$fgetmMinDate(Landroid/widget/DatePickerCalendarDelegate;)Landroid/icu/util/Calendar;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->compareTo(Landroid/icu/util/Calendar;)I

    move-result p1

    if-gez p1, :cond_49

    .line 280
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    iget-object p1, p1, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-static {p2}, Landroid/widget/DatePickerCalendarDelegate;->-$$Nest$fgetmMinDate(Landroid/widget/DatePickerCalendarDelegate;)Landroid/icu/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_6a

    .line 281
    :cond_49
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    iget-object p1, p1, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-static {p2}, Landroid/widget/DatePickerCalendarDelegate;->-$$Nest$fgetmMaxDate(Landroid/widget/DatePickerCalendarDelegate;)Landroid/icu/util/Calendar;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->compareTo(Landroid/icu/util/Calendar;)I

    move-result p1

    if-lez p1, :cond_6a

    .line 282
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    iget-object p1, p1, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-static {p2}, Landroid/widget/DatePickerCalendarDelegate;->-$$Nest$fgetmMaxDate(Landroid/widget/DatePickerCalendarDelegate;)Landroid/icu/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 284
    :cond_6a
    :goto_6a
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-static {p1, v0, v0}, Landroid/widget/DatePickerCalendarDelegate;->-$$Nest$monDateChanged(Landroid/widget/DatePickerCalendarDelegate;ZZ)V

    .line 287
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/widget/DatePickerCalendarDelegate;->-$$Nest$msetCurrentView(Landroid/widget/DatePickerCalendarDelegate;I)V

    .line 290
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerCalendarDelegate;->-$$Nest$fgetmHeaderYear(Landroid/widget/DatePickerCalendarDelegate;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 291
    return-void
.end method
