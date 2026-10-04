.class public Landroid/util/MonthDisplayHelper;
.super Ljava/lang/Object;
.source "MonthDisplayHelper.java"


# instance fields
.field private greylist-max-o mCalendar:Ljava/util/Calendar;

.field private greylist-max-o mNumDaysInMonth:I

.field private greylist-max-o mNumDaysInPrevMonth:I

.field private greylist-max-o mOffset:I

.field private final greylist-max-o mWeekStartDay:I


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 4

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    .line 69
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    if-lt p3, v0, :cond_41

    const/4 v1, 0x7

    if-gt p3, v1, :cond_41

    .line 52
    iput p3, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    iput-object p3, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    .line 55
    iget-object p3, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p3, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 56
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->set(II)V

    .line 57
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    .line 58
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 59
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 60
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 61
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 63
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    .line 64
    return-void

    .line 50
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private greylist-max-o recalculate()V
    .registers 5

    .line 201
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    .line 203
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 204
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInPrevMonth:I

    .line 205
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 207
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->getFirstDayOfMonth()I

    move-result v0

    .line 208
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    sub-int/2addr v0, v1

    .line 209
    if-gez v0, :cond_29

    .line 210
    add-int/lit8 v0, v0, 0x7

    .line 212
    :cond_29
    iput v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    .line 213
    return-void
.end method


# virtual methods
.method public whitelist getColumnOf(I)I
    .registers 3

    .line 158
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    rem-int/lit8 p1, p1, 0x7

    return p1
.end method

.method public whitelist getDayAt(II)I
    .registers 4

    .line 137
    if-nez p1, :cond_f

    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    if-ge p2, v0, :cond_f

    .line 138
    iget p1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInPrevMonth:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 141
    :cond_f
    mul-int/lit8 p1, p1, 0x7

    add-int/2addr p1, p2

    iget p2, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    .line 143
    iget p2, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    if-le p1, p2, :cond_1f

    .line 144
    iget p2, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    sub-int/2addr p1, p2

    goto :goto_20

    :cond_1f
    nop

    .line 143
    :goto_20
    return p1
.end method

.method public whitelist getDigitsForRow(I)[I
    .registers 6

    .line 117
    if-ltz p1, :cond_15

    const/4 v0, 0x5

    if-gt p1, v0, :cond_15

    .line 122
    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 123
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_14

    .line 124
    invoke-virtual {p0, p1, v2}, Landroid/util/MonthDisplayHelper;->getDayAt(II)I

    move-result v3

    aput v3, v1, v2

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 127
    :cond_14
    return-object v1

    .line 118
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " out of range (0-5)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFirstDayOfMonth()I
    .registers 3

    .line 90
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public whitelist getMonth()I
    .registers 3

    .line 77
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public whitelist getNumberOfDaysInMonth()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    return v0
.end method

.method public whitelist getOffset()I
    .registers 2

    .line 107
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    return v0
.end method

.method public whitelist getRowOf(I)I
    .registers 3

    .line 151
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x7

    return p1
.end method

.method public whitelist getWeekStartDay()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    return v0
.end method

.method public whitelist getYear()I
    .registers 3

    .line 73
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public whitelist isWithinCurrentMonth(II)Z
    .registers 5

    .line 182
    const/4 v0, 0x0

    if-ltz p1, :cond_21

    if-ltz p2, :cond_21

    const/4 v1, 0x5

    if-gt p1, v1, :cond_21

    const/4 v1, 0x6

    if-le p2, v1, :cond_c

    goto :goto_21

    .line 186
    :cond_c
    if-nez p1, :cond_13

    iget v1, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    if-ge p2, v1, :cond_13

    .line 187
    return v0

    .line 190
    :cond_13
    mul-int/lit8 p1, p1, 0x7

    add-int/2addr p1, p2

    iget p2, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    sub-int/2addr p1, p2

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 191
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    if-le p1, v1, :cond_20

    .line 192
    return v0

    .line 194
    :cond_20
    return p2

    .line 183
    :cond_21
    :goto_21
    return v0
.end method

.method public whitelist nextMonth()V
    .registers 4

    .line 173
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 174
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    .line 175
    return-void
.end method

.method public whitelist previousMonth()V
    .registers 4

    .line 165
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 166
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    .line 167
    return-void
.end method
