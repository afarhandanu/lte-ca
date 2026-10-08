.class Landroid/widget/DayPickerView;
.super Landroid/view/ViewGroup;
.source "DayPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerView$OnDaySelectedListener;
    }
.end annotation


# static fields
.field private static final blacklist ATTRS_TEXT_COLOR:[I

.field private static final blacklist DEFAULT_END_YEAR:I = 0x834

.field private static final blacklist DEFAULT_LAYOUT:I = 0x1090073

.field private static final blacklist DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final blacklist mAdapter:Landroid/widget/DayPickerPagerAdapter;

.field private final blacklist mMaxDate:Landroid/icu/util/Calendar;

.field private final blacklist mMinDate:Landroid/icu/util/Calendar;

.field private final blacklist mNextButton:Landroid/widget/ImageButton;

.field private final blacklist mOnClickListener:Landroid/view/View$OnClickListener;

.field private blacklist mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final blacklist mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private final blacklist mPrevButton:Landroid/widget/ImageButton;

.field private final blacklist mSelectedDay:Landroid/icu/util/Calendar;

.field private blacklist mTempCalendar:Landroid/icu/util/Calendar;

.field private final blacklist mViewPager:Lcom/android/internal/widget/ViewPager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccessibilityManager(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;
    .registers 1

    iget-object p0, p0, Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNextButton(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDaySelectedListener(Landroid/widget/DayPickerView;)Landroid/widget/DayPickerView$OnDaySelectedListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrevButton(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewPager(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;
    .registers 1

    iget-object p0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateButtonVisibility(Landroid/widget/DayPickerView;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const v0, 0x1010098

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 65
    const v0, 0x101035d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    .line 44
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    .line 45
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    .line 410
    new-instance v0, Landroid/widget/DayPickerView$2;

    invoke-direct {v0, p0}, Landroid/widget/DayPickerView$2;-><init>(Landroid/widget/DayPickerView;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 427
    new-instance v0, Landroid/widget/DayPickerView$3;

    invoke-direct {v0, p0}, Landroid/widget/DayPickerView$3;-><init>(Landroid/widget/DayPickerView;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 76
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 79
    sget-object v0, Lcom/android/internal/R$styleable;->CalendarView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 81
    sget-object v3, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/DayPickerView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 84
    nop

    .line 85
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    .line 84
    const/4 p2, 0x0

    invoke-virtual {v5, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 87
    const/4 p3, 0x2

    invoke-virtual {v5, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 88
    const/4 p4, 0x3

    invoke-virtual {v5, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 90
    const/16 v0, 0x10

    const v3, 0x10303e2

    invoke-virtual {v5, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 93
    const v3, 0x10303e1

    const/16 v4, 0xb

    invoke-virtual {v5, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 96
    const/16 v6, 0xc

    const v7, 0x10303e0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 100
    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 103
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    new-instance v5, Landroid/widget/DayPickerPagerAdapter;

    const v8, 0x1090071

    const v9, 0x1020410

    invoke-direct {v5, v2, v8, v9}, Landroid/widget/DayPickerPagerAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v5, v1, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    .line 108
    iget-object v5, v1, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v5, v0}, Landroid/widget/DayPickerPagerAdapter;->setMonthTextAppearance(I)V

    .line 109
    iget-object v5, v1, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v5, v3}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    .line 110
    iget-object v3, v1, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v3, v6}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    .line 111
    iget-object v3, v1, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v3, v7}, Landroid/widget/DayPickerPagerAdapter;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    .line 113
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 114
    const v3, 0x1090073

    invoke-virtual {v2, v3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 117
    :goto_a7
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_b8

    .line 118
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 119
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 120
    invoke-virtual {p0, v3}, Landroid/widget/DayPickerView;->addView(Landroid/view/View;)V

    .line 121
    goto :goto_a7

    .line 123
    :cond_b8
    const v2, 0x1020496

    invoke-virtual {p0, v2}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 124
    iget-object v2, v1, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, v1, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v2, 0x102041f

    invoke-virtual {p0, v2}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 127
    iget-object v2, v1, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, v1, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v2, 0x10202c8

    invoke-virtual {p0, v2}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    iput-object v2, v1, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    .line 130
    iget-object v2, v1, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    iget-object v3, v1, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .line 131
    iget-object v2, v1, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    iget-object v3, v1, Landroid/widget/DayPickerView;->mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    .line 134
    if-eqz v0, :cond_113

    .line 135
    iget-object v2, v1, Landroid/widget/DayPickerView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v5, Landroid/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {v2, v3, v5, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 138
    if-eqz v2, :cond_110

    .line 139
    iget-object v3, v1, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 140
    iget-object v3, v1, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 142
    :cond_110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    :cond_113
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 147
    invoke-static {p3, v0}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result p3

    if-nez p3, :cond_123

    .line 148
    const/16 p3, 0x76c

    const/4 v2, 0x1

    invoke-virtual {v0, p3, p2, v2}, Landroid/icu/util/Calendar;->set(III)V

    .line 150
    :cond_123
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 152
    invoke-static {p4, v0}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result p3

    if-nez p3, :cond_134

    .line 153
    const/16 p3, 0x834

    const/16 p4, 0x1f

    invoke-virtual {v0, p3, v4, p4}, Landroid/icu/util/Calendar;->set(III)V

    .line 155
    :cond_134
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 157
    cmp-long p3, v9, v7

    if-ltz p3, :cond_15b

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 161
    invoke-static/range {v5 .. v10}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide p3

    .line 164
    invoke-virtual {p0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 165
    invoke-virtual {p0, v7, v8}, Landroid/widget/DayPickerView;->setMinDate(J)V

    .line 166
    invoke-virtual {p0, v9, v10}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    .line 167
    invoke-virtual {p0, p3, p4, p2}, Landroid/widget/DayPickerView;->setDate(JZ)V

    .line 170
    iget-object p1, v1, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    new-instance p2, Landroid/widget/DayPickerView$1;

    invoke-direct {p2, p0}, Landroid/widget/DayPickerView$1;-><init>(Landroid/widget/DayPickerView;)V

    invoke-virtual {p1, p2}, Landroid/widget/DayPickerPagerAdapter;->setOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V

    .line 178
    return-void

    .line 158
    :cond_15b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "maxDate must be >= minDate"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I
    .registers 5

    .line 381
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 382
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p2, p1

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr p2, v1

    return p2
.end method

.method private blacklist getPositionFromDay(J)I
    .registers 5

    .line 386
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, v1}, Landroid/widget/DayPickerView;->getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v0

    .line 387
    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getTempCalendarForTime(J)Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroid/widget/DayPickerView;->getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result p1

    .line 388
    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    return p1
.end method

.method private blacklist getTempCalendarForTime(J)Landroid/icu/util/Calendar;
    .registers 4

    .line 392
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    if-nez v0, :cond_a

    .line 393
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    .line 395
    :cond_a
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 396
    iget-object p1, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    return-object p1
.end method

.method private blacklist setDate(JZZ)V
    .registers 9

    .line 294
    nop

    .line 296
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_13

    .line 297
    iget-object p1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 298
    goto :goto_25

    .line 299
    :cond_13
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_24

    .line 300
    iget-object p1, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 301
    goto :goto_25

    .line 299
    :cond_24
    const/4 v1, 0x0

    .line 304
    :goto_25
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getTempCalendarForTime(J)Landroid/icu/util/Calendar;

    .line 306
    if-nez p4, :cond_2c

    if-eqz v1, :cond_31

    .line 307
    :cond_2c
    iget-object p4, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {p4, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 310
    :cond_31
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getPositionFromDay(J)I

    move-result p1

    .line 311
    iget-object p2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p2}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result p2

    if-eq p1, p2, :cond_42

    .line 312
    iget-object p2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    .line 315
    :cond_42
    iget-object p1, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object p2, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/widget/DayPickerPagerAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    .line 316
    return-void
.end method

.method private blacklist updateButtonVisibility(I)V
    .registers 6

    .line 181
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 182
    :goto_7
    iget-object v3, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v3}, Landroid/widget/DayPickerPagerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    .line 183
    :goto_12
    iget-object p1, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    const/4 v3, 0x4

    if-eqz v2, :cond_19

    move v2, v1

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    move v1, v3

    :goto_23
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 185
    return-void
.end method


# virtual methods
.method public blacklist getBoundsForDate(JLandroid/graphics/Rect;)Z
    .registers 6

    .line 323
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getPositionFromDay(J)I

    move-result v0

    .line 324
    iget-object v1, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_e

    .line 325
    const/4 p1, 0x0

    return p1

    .line 328
    :cond_e
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 329
    iget-object p1, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object p2, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p2, p3}, Landroid/widget/DayPickerPagerAdapter;->getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public blacklist getDate()J
    .registers 3

    .line 319
    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDayOfWeekTextAppearance()I
    .registers 2

    .line 252
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getDayOfWeekTextAppearance()I

    move-result v0

    return v0
.end method

.method public blacklist getDayTextAppearance()I
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public blacklist getFirstDayOfWeek()I
    .registers 2

    .line 337
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public blacklist getMaxDate()J
    .registers 3

    .line 355
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMinDate()J
    .registers 3

    .line 346
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMostVisiblePosition()I
    .registers 2

    .line 403
    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 12

    .line 215
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 216
    iget-object p1, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 217
    iget-object v0, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    goto :goto_f

    .line 219
    :cond_b
    iget-object p1, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 220
    iget-object v0, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 223
    :goto_f
    sub-int/2addr p4, p2

    .line 224
    sub-int/2addr p5, p3

    .line 225
    iget-object p2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p4, p5}, Lcom/android/internal/widget/ViewPager;->layout(IIII)V

    .line 227
    iget-object p2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SimpleMonthView;

    .line 228
    invoke-virtual {p2}, Landroid/widget/SimpleMonthView;->getMonthHeight()I

    move-result p3

    .line 229
    invoke-virtual {p2}, Landroid/widget/SimpleMonthView;->getCellWidth()I

    move-result p5

    .line 233
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v1

    .line 234
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v2

    .line 235
    invoke-virtual {p2}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v3

    sub-int v4, p3, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 236
    invoke-virtual {p2}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v4

    sub-int v5, p5, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 237
    add-int/2addr v1, v4

    add-int/2addr v2, v3

    invoke-virtual {p1, v4, v3, v1, v2}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 239
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p1

    .line 240
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    .line 241
    invoke-virtual {p2}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v2

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr v2, p3

    .line 242
    invoke-virtual {p2}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    .line 243
    sub-int p1, p4, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v2, p4, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 245
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 4

    .line 189
    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    .line 190
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/DayPickerView;->measureChild(Landroid/view/View;II)V

    .line 192
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidthAndState()I

    move-result p1

    .line 193
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeightAndState()I

    move-result p2

    .line 194
    invoke-virtual {p0, p1, p2}, Landroid/widget/DayPickerView;->setMeasuredDimension(II)V

    .line 196
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result p1

    .line 197
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeight()I

    move-result p2

    .line 198
    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 199
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 200
    iget-object v0, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageButton;->measure(II)V

    .line 201
    iget-object v0, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageButton;->measure(II)V

    .line 202
    return-void
.end method

.method public blacklist onRangeChanged()V
    .registers 4

    .line 362
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/DayPickerPagerAdapter;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    .line 366
    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    .line 368
    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/DayPickerView;->updateButtonVisibility(I)V

    .line 369
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 2

    .line 206
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 208
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->requestLayout()V

    .line 209
    return-void
.end method

.method public blacklist setDate(J)V
    .registers 4

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/DayPickerView;->setDate(JZ)V

    .line 272
    return-void
.end method

.method public blacklist setDate(JZ)V
    .registers 5

    .line 282
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    .line 283
    return-void
.end method

.method public blacklist setDayOfWeekTextAppearance(I)V
    .registers 3

    .line 248
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    .line 249
    return-void
.end method

.method public blacklist setDayTextAppearance(I)V
    .registers 3

    .line 256
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    .line 257
    return-void
.end method

.method public blacklist setFirstDayOfWeek(I)V
    .registers 3

    .line 333
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setFirstDayOfWeek(I)V

    .line 334
    return-void
.end method

.method public blacklist setMaxDate(J)V
    .registers 4

    .line 350
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 351
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    .line 352
    return-void
.end method

.method public blacklist setMinDate(J)V
    .registers 4

    .line 341
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 342
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    .line 343
    return-void
.end method

.method public blacklist setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V
    .registers 2

    .line 377
    iput-object p1, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    .line 378
    return-void
.end method

.method public blacklist setPosition(I)V
    .registers 4

    .line 407
    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    .line 408
    return-void
.end method
