.class Landroid/widget/CalendarViewMaterialDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewMaterialDelegate.java"


# instance fields
.field private final blacklist mDayPickerView:Landroid/widget/DayPickerView;

.field private blacklist mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private final blacklist mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOnDateChangeListener(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    .line 132
    new-instance v0, Landroid/widget/CalendarViewMaterialDelegate$1;

    invoke-direct {v0, p0}, Landroid/widget/CalendarViewMaterialDelegate$1;-><init>(Landroid/widget/CalendarViewMaterialDelegate;)V

    iput-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    .line 35
    new-instance v0, Landroid/widget/DayPickerView;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 36
    iget-object p2, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object p3, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    invoke-virtual {p2, p3}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    .line 38
    iget-object p2, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p1, p2}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist getBoundsForDate(JLandroid/graphics/Rect;)Z
    .registers 5

    .line 115
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DayPickerView;->getBoundsForDate(JLandroid/graphics/Rect;)Z

    move-result p1

    .line 116
    if-eqz p1, :cond_28

    .line 119
    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 120
    new-array p1, p1, [I

    .line 121
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p2}, Landroid/widget/DayPickerView;->getLocationOnScreen([I)V

    .line 122
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->getLocationOnScreen([I)V

    .line 123
    const/4 v0, 0x1

    aget p2, p2, v0

    aget p1, p1, v0

    sub-int/2addr p2, p1

    .line 125
    iget p1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->top:I

    .line 126
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 127
    return v0

    .line 129
    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getDate()J
    .registers 3

    .line 105
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDateTextAppearance()I
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public blacklist getFirstDayOfWeek()I
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public blacklist getMaxDate()J
    .registers 3

    .line 80
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMinDate()J
    .registers 3

    .line 70
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getWeekDayTextAppearance()I
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDayOfWeekTextAppearance()I

    move-result v0

    return v0
.end method

.method public blacklist setDate(J)V
    .registers 5

    .line 95
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/DayPickerView;->setDate(JZ)V

    .line 96
    return-void
.end method

.method public blacklist setDate(JZZ)V
    .registers 5

    .line 100
    iget-object p4, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p4, p1, p2, p3}, Landroid/widget/DayPickerView;->setDate(JZ)V

    .line 101
    return-void
.end method

.method public blacklist setDateTextAppearance(I)V
    .registers 3

    .line 54
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setDayTextAppearance(I)V

    .line 55
    return-void
.end method

.method public blacklist setFirstDayOfWeek(I)V
    .registers 3

    .line 85
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 86
    return-void
.end method

.method public blacklist setMaxDate(J)V
    .registers 4

    .line 75
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    .line 76
    return-void
.end method

.method public blacklist setMinDate(J)V
    .registers 4

    .line 65
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    .line 66
    return-void
.end method

.method public blacklist setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .registers 2

    .line 110
    iput-object p1, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    .line 111
    return-void
.end method

.method public blacklist setWeekDayTextAppearance(I)V
    .registers 3

    .line 43
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setDayOfWeekTextAppearance(I)V

    .line 44
    return-void
.end method
